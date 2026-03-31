import 'package:flutter/material.dart';
import '../../../core/logger/logger.dart';
import '../../../core/analytics/analytics_service.dart';
import '../presentation/widgets/status_widget_factory.dart';
import '../../../enums/status_type.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final logger = Logger();
    final analytics = AnalyticsService();

    logger.log("Home opened");
    analytics.trackEvent("Home Screen");

    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StatusWidgetFactory.create(StatusType.loading),
          StatusWidgetFactory.create(StatusType.success),
          StatusWidgetFactory.create(StatusType.error),
        ],
      ),
    );
  }
}