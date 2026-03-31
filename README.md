# HW37 - Design Patterns in Flutter

This Flutter project demonstrates design patterns: Singleton & Factory.

---

## ✅ Singleton vs get_it (DI)

### 🔹 get_it деген не?
Service locator (Dependency Injection)

### ➕ Singleton плюсы:
- Жеңіл жазылады
- Қосымша кітапхана қажет емес
- Глобально қолжетімді
- Жылдам
- Кішкентай проектке ыңғайлы

### ➖ Singleton минусы:
- Тест жасау қиын
- Tight coupling
- Dependency көрінбейді
- Масштабта қиын
- Mock жасау қиын

### ➕ get_it плюсы:
- Dependency анық көрінеді
- Тест оңай (mock)
- Масштабқа жақсы
- Flexible
- Clean architecture-ға сәйкес

### ➖ get_it минусы:
- Қосымша setup керек
- Бастапқыда қиын
- Overkill (кіші проектке)
- Dependency басқару керек
- Debug кейде қиын

---

## ✅ Unit Test – Singleton тек 1 рет жасалады

```dart
import 'package:flutter_test/flutter_test.dart';
import 'package:your_project/core/logger/logger.dart';

void main() {
  test('Singleton test', () {
    final logger1 = Logger();
    final logger2 = Logger();

    expect(identical(logger1, logger2), true);
  });
}
