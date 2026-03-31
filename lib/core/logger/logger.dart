class Logger {
  static final Logger _instance = Logger._internal();

  factory Logger() => _instance;

  Logger._internal();

  void log(String message) {
    print("[LOG]: $message");
  }
}