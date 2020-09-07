package com.mapspeople.mapsindoorsutils;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;

import junit.framework.TestCase;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;


import java.io.File;
import java.net.URL;

public class BadgedIconTest {

    @Before
    public void setUp() throws Exception {

    }

    @Test
    public void testBadgedIcon() {

        Bitmap icon = Bitmap.createBitmap(40, 40, Bitmap.Config.ARGB_8888);

        Canvas canvas = new Canvas(icon);
        Paint p = new Paint();
        p.setColor(Color.GREEN);
        canvas.drawCircle(20,20,20,p);

        Config config = new ConfigBuilder(icon, "test").build();

        Bitmap badgedIcon = BadgedIcon.badgedIcon(config);

        Assert.assertNotNull(badgedIcon);
    }
}