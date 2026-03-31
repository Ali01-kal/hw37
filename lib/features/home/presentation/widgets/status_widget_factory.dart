import 'package:flutter/material.dart';
import '../../../../enums/status_type.dart';

class StatusWidgetFactory {
  static Widget create(StatusType type) {
    switch (type) {
      case StatusType.loading:
        return const CircularProgressIndicator();

      case StatusType.success:
        return const Icon(Icons.check, color: Colors.green);

      case StatusType.error:
        return const Icon(Icons.error, color: Colors.red);
    }
  }
}