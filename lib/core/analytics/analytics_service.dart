class AnalyticsService {
  static final AnalyticsService _instance = AnalyticsService._internal();

  factory AnalyticsService() => _instance;

  AnalyticsService._internal();

  void trackEvent(String event) {
    print("[ANALYTICS]: $event");
  }
}