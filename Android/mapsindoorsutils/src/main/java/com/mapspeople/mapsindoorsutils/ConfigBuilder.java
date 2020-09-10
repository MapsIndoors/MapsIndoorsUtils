package com.mapspeople.mapsindoorsutils;

import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Typeface;

public class ConfigBuilder {
    private Bitmap originalIcon;
    private String badgeText;
    private int badgeTextColor = Color.WHITE;
    private float badgePadding = 2;
    private int badgeBackgroundColor = Color.DKGRAY;
    private Typeface badgeFont = Typeface.createFromFile("/system/fonts/DroidSans.ttf");
    private BagdePosition bagdePosition = BagdePosition.topRight;
    private float fontSize = 12.0f;
    private float density = 2.0f;

    public ConfigBuilder setOriginalIcon(Bitmap originalIcon) {
        this.originalIcon = originalIcon;
        return this;
    }

    public ConfigBuilder setBadgeText(String badgeText) {
        this.badgeText = badgeText;
        return this;
    }

    public ConfigBuilder setBadgeTextColor(int badgeTextColor) {
        this.badgeTextColor = badgeTextColor;
        return this;
    }

    public ConfigBuilder setBadgePadding(float badgePadding) {
        this.badgePadding = badgePadding;
        return this;
    }

    public ConfigBuilder setBadgeBackgroundColor(int badgeBackgroundColor) {
        this.badgeBackgroundColor = badgeBackgroundColor;
        return this;
    }

    public ConfigBuilder setBadgeFont(Typeface badgeFont) {
        this.badgeFont = badgeFont;
        return this;
    }

    public ConfigBuilder setBagdePosition(BagdePosition bagdePosition) {
        this.bagdePosition = bagdePosition;
        return this;
    }

    public ConfigBuilder setFontSize(float fontSize) {
        this.fontSize = fontSize;
        return this;
    }

    public ConfigBuilder setDensity(float density) {
        this.density = density;
        return this;
    }

    public ConfigBuilder(Bitmap originalIcon, String badgeText) {
        this.originalIcon = originalIcon;
        this.badgeText = badgeText;
    }

    public Config build() {
        return new Config(this);
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