package com.mapspeople.mapsindoorsutils;

import android.graphics.PointF;

/// Badge position model. Use the static getters to get positions for top right, top left, bottom left and bottom right.
public class BagdePosition {
    /// Static getter a top right position value.
    public static BagdePosition topRight = new BagdePosition(0.9f, 0.1f);
    /// Static getter a top left position value.
    public static BagdePosition topLeft = new BagdePosition(0.1f, 0.1f);
    /// Static getter a bottom right position value.
    public static BagdePosition bottomRight = new BagdePosition(0.9f, 0.9f);
    /// Static getter a bottom left position value.
    public static BagdePosition bottomLeft = new BagdePosition(0.1f, 0.9f);

    private PointF point;

    public PointF getPoint() {
        return point;
    }

    public BagdePosition(Float x, Float y) {
        point = new PointF(x, y);
    }
}
