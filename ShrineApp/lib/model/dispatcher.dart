typedef Command = void Function(String event, [int arg]);

class Dispatcher {

  Set<Command> commandListeners = Set();

  void scrollTo(int itemId) {
    _sendCommand("scrollToItem", itemId);
  }

  void openMenu() {
    _sendCommand("openMenu");
  }

  void openCart() {
    _sendCommand("openCart");
  }

  void closeCart() {
    _sendCommand("closeCart");
  }

  void closeMenu() {
    _sendCommand("closeMenu");
  }

  void _sendCommand(String command, [int arg]) {
    if (commandListeners != null) {
      commandListeners.forEach((l) => l(command, arg));
    }
  }

}