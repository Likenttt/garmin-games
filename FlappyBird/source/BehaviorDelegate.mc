using Toybox.WatchUi as Ui;
using Engine;

class BehaviorDelegate extends Ui.BehaviorDelegate {
  function initialize() {
    BehaviorDelegate.initialize();
  }

  function onSelect() {
    jump();
    return true;
  }

  //perhaps increase up accelerometer
  function onPreviousPage() {
    return true;
  }
  //perhaps increase gravity
  function onNextPage() {
    return true;
  }

  function jump() {
    $.mPlayerSpeed -= Engine.PLAYER_JUMP_SPEED * 60;
  }

  function onMenu() {
    var title = Ui.loadResource(Rez.Strings.AppName);
    var best = Ui.loadResource(Rez.Strings.Best) + $.mBest;
    Ui.pushView(new RecordView(title, best), new RecordDelegate(), Ui.SLIDE_UP);
    return true;
  }
}
