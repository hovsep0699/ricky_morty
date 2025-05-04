# Ricky Morty Project

This repository contains the code for the **Ricky Morty** Flutter project. It handles preference management, theme handling, language preferences, and other app-related functionalities. Unit testing is implemented using `Mockito` to mock dependencies and `SharedPreferences` for local storage operations.

## Table of Contents

- [Installation](#installation)
- [Testing](#testing)

## Installation

### Prerequisites

Ensure that you have the following installed:

- Flutter SDK: [Installation Guide](https://flutter.dev/docs/get-started/install)
- Android Studio or Xcode for emulator setup.

**Clone the repository:**

   ```bash
   git clone https://github.com/yourusername/ricky_morty.git
   cd ricky_morty
   ```

## Testing

**Get Dependencies**
   ```bash
   flutter clean cache
   ```
   ```
   flutter pub get
   ```

**Run tests**
 ```bash
   flutter test
 ```
**Build apk**
```bash
flutter build apk --release
```

   
