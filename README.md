# Task Manager App 📝

A simple and clean Task Management mobile application built with Flutter.

## Features

- ✅ Add new tasks with title and description
- ✅ Mark tasks as completed
- ✅ Delete tasks
- ✅ Tasks saved locally on device (no internet needed)
- ✅ Clean and modern UI
- ✅ Splash screen on launch

## Screenshots

| Splash Screen | Home Screen | Add Task |
|---|---|---|
| App launches with logo | View all your tasks | Add new task easily |

## Tech Stack

| Technology | Usage |
|---|---|
| Flutter | UI Framework |
| Dart | Programming Language |
| Shared Preferences | Local Storage |
| Material Design 3 | UI Components |

## Project Structure

```
lib/
├── main.dart              # App entry point
├── models/
│   └── task.dart          # Task data model
├── screens/
│   ├── splash_screen.dart # Launch screen
│   ├── home_screen.dart   # Main screen showing tasks
│   └── add_task_screen.dart # Screen to add new task
├── services/
│   └── task_service.dart  # Handles saving and loading tasks
└── widgets/
    └── task_tile.dart     # Single task item widget
```

## Getting Started

### Prerequisites
- Flutter SDK installed
- Android Studio or VS Code
- Android Emulator or Physical Device

### Installation

1. Clone or download this project
2. Open terminal in project folder
3. Run the following commands:

```bash
flutter clean
flutter pub get
flutter run
```

### Build APK

To build a release APK for Android:

```bash
flutter build apk --release
```

APK will be located at:
```
build/app/outputs/flutter-apk/app-release.apk
```

## Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  shared_preferences: ^2.2.2
  cupertino_icons: ^1.0.6
```

## How to Use

1. **Launch the app** — Splash screen appears for 2 seconds
2. **Home Screen** — See all your tasks listed
3. **Add Task** — Tap the + button to add a new task
4. **Complete Task** — Tap the checkbox to mark task as done
5. **Delete Task** — Swipe or tap delete to remove a task

## Developer

- **Name:** Zeeshan
- **Project:** Task Manager App
- **Built with:** Flutter & Dart


