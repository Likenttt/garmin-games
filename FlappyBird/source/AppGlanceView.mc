import Toybox.Graphics;
import Toybox.WatchUi;
import Toybox.Application;
import Toybox.Communications;
import Toybox.System;

(:glance)
class AppGlanceView extends WatchUi.GlanceView {
  hidden var glanceHeight;
  hidden var glanceWidth;

  function initialize() {
    GlanceView.initialize();
  }

  function onHide() {}

  function onLayout(dc as Graphics.Dc) as Void {
    glanceWidth = dc.getWidth();
    glanceHeight = dc.getHeight();
  }

  function onUpdate(dc as Graphics.Dc) as Void {
    GlanceView.onUpdate(dc);
    dc.setColor(0, 0 /* Graphics.COLOR_BLACK */);
    dc.clear();
    dc.setColor(0xffffff /* Graphics.COLOR_WHITE */, -1);
    //https://developer.garmin.com/connect-iq/core-topics/resources/#resources
    //String resources in glance must have its scope Thanks jim_58_m
    var best = WatchUi.loadResource(Rez.Strings.Best) + $.mBest;

    dc.drawText(me.glanceWidth * 0.3, me.glanceHeight / 2, 2, best, 4);
  }
}
