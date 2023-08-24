using Toybox.WatchUi as Ui;
using Toybox.System as Sys;

class RecordView extends Ui.View {
  hidden var title;
  hidden var best;

  hidden var width;
  hidden var height;
  function initialize(title, best) {
    View.initialize();
    me.title = title;
    me.best = best;
  }

  // Load your resources here
  function onLayout(dc) {
    me.width = dc.getWidth();
    me.height = dc.getHeight();
  }

  function onUpdate(dc) {
    dc.setColor(0, 0);
    dc.clear();
    dc.setColor(0xffffff, -1);
    dc.drawText(me.width / 2, me.height * 0.382, 2, me.title, 5); //1 - golden ratio
    dc.drawText(me.width / 2, me.height / 2, 2, me.best, 5);
  }
}
