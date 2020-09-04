package com.mapspeople.mapsindoorsutils;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.text.TextPaint;

public class BadgedIcon {

    private static class Size {
        public float width;
        public float height;
        public Size(float width, float height) {
            this.width = width;
            this.height = height;
        }
    }

    public static Bitmap badgedIcon(Config config) {

        Bitmap source = config.getOriginalIcon();

        Size sourceSize = new Size(source.getWidth(), source.getHeight());

        PointF bagdePosOffset = config.getBagdePosition().getPoint();

        TextPaint tp = new TextPaint();
        tp.setTypeface(config.getBadgeFont());
        tp.setColor( config.getBadgeTextColor() );

        Rect textBounds = new Rect();

        String text = config.getBadgeText();

        tp.getTextBounds( text, 0, text.length(), textBounds );

        float scale = 3;//UIScreen.main.scale
        float padding = config.getBadgePadding() * 2.0f;
        float badgeWidth = (textBounds.width() + padding) * scale;
        float badgeHeight = (textBounds.height() + padding) * scale;
        if (badgeWidth < badgeHeight) {
            badgeWidth = badgeHeight;
        }
        Size badgeSize = new Size(badgeWidth, badgeHeight);

        float badgeWidthFraction = badgeSize.width / sourceSize.width;
        float badgeHeightFraction = badgeSize.height / sourceSize.height;

        float widthFactor = Math.max(bagdePosOffset.x, 1 - bagdePosOffset.x) + badgeWidthFraction / 2.0f;
        float heightFactor = Math.max(bagdePosOffset.y, 1 - bagdePosOffset.y) + badgeHeightFraction / 2.0f;

        float newWidth = 1.0f;
        float newHeight = 1.0f;

        if (widthFactor > 1) {
            newWidth = (widthFactor * 2 - 1) * sourceSize.width;
        }
        if (heightFactor > 1) {
            newHeight = (heightFactor * 2 - 1) * sourceSize.height;
        }

        Size newSize = new Size(newWidth, newHeight);

        PointF imagePos = new PointF(
                (newWidth - sourceSize.width) / 2,
                (newHeight - sourceSize.height) / 2
        );

        // Now add the icon on the left side of the background rect
        Bitmap result = Bitmap.createBitmap( (int)newSize.width, (int)newSize.height, Bitmap.Config.ARGB_8888 );
        Canvas canvas = new Canvas( result );

        canvas.drawBitmap(config.getOriginalIcon(), imagePos.x, imagePos.y, new Paint());

        Paint background = new Paint();
        background.setColor(config.getBadgeBackgroundColor());

        //drawBadge(text, tp, background, config.getBadgePadding(), config.getBadgeFont(), canvas);

        return result;

    }



    private static void drawBadge( String text, TextPaint textPaint, Paint backgroundPaint, Typeface typeface, RectF rect, float padding, Canvas canvas) {

        canvas.drawRoundRect( rect, 5.0f, 5.0f, backgroundPaint );

        // stroke circle
        //background.setColor( Color.WHITE );
        //background.setStyle( Paint.Style.STROKE );
        //background.setStrokeWidth( 2 );
        //canvas.drawCircle( radius, radius, radius - 1, background );

        canvas.drawText( text, 0, 0, textPaint );

    }

}
