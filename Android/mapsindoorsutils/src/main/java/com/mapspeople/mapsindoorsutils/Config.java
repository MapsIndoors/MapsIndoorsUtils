package com.mapspeople.mapsindoorsutils;


import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Typeface;

/// Badge icon configuration model.
public class Config {
    /// The source icon image.
    private Bitmap originalIcon;

    /// The badge text that should be rendered inside the badge.
    private String badgeText;

    /// Set the badge text color.
    private int badgeTextColor;
    /// Set the padding between the badge text and the edge of the badge. Default is 2 points.
    private float badgePadding;
    /// Set the background color for the badge. Default is DarkGray.
    private int badgeBackgroundColor;
    /// Set the font that should be used when rendering the badge text. Default is system font with size 16.
    private Typeface badgeFont;
    /// Set the position of the badge. Default is top right.
    private BagdePosition bagdePosition;
    /// Set the font size of the badge. Default is 12 points.
    private float fontSize;
    /// Set the density of the resulting image. Default is 2 (xhdpi).
    private float density;

    /// Badge icon configuration constructor.
    /// - Parameters:
    ///   - originalIcon: The original icon image on which a badge must be added.
    ///   - badgeText: The badge text string.
    public Config(ConfigBuilder builder) {
        this.originalIcon = builder.getOriginalIcon();
        this.badgeText = builder.getBadgeText();
        this.badgeTextColor = builder.getBadgeTextColor();
        this.badgePadding = builder.getBadgePadding();
        this.badgeBackgroundColor = builder.getBadgeBackgroundColor();
        this.badgeFont = builder.getBadgeFont();
        this.bagdePosition = builder.getBagdePosition();
        this.fontSize = builder.getFontSize();
        this.density = builder.getDensity();
    }


    public Bitmap getOriginalIcon() {
        return originalIcon;
    }

    public String getBadgeText() {
        return badgeText;
    }

    public int getBadgeTextColor() {
        return badgeTextColor;
    }

    public float getBadgePadding() {
        return badgePadding;
    }

    public int getBadgeBackgroundColor() {
        return badgeBackgroundColor;
    }

    public Typeface getBadgeFont() {
        return badgeFont;
    }

    public BagdePosition getBagdePosition() {
        return bagdePosition;
    }

    public float getFontSize() {
        return fontSize;
    }

    public float getDensity() {
        return density;
    }
}
