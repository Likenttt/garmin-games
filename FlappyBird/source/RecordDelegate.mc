using Toybox.WatchUi as Ui;
using Engine;

class RecordDelegate extends Ui.BehaviorDelegate {
  function initialize() {
    BehaviorDelegate.initialize();
  }

  function onSelect() {
    return true;
  }

  function onBack() {
    return false;
  }

  function onMenu() {
    return true;
  }
}
