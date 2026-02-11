# Complete Flutter Lab Guide
# My First Flutter App – Beginner Lab (2-3 Hours)

---

## Lab Overview

### Learning Objectives
- Understand Flutter project structure and `pubspec.yaml`
- Build UI using Widgets (Container, Text, Column, Row, Image, etc.)
- Differentiate between **StatelessWidget** and **StatefulWidget**
- Use **Hot Reload** and **Hot Restart** to speed up development
- Manage state with `setState()`
- Implement parent-child data flow (props and callbacks)
- Load and display assets (images)
- Apply theming and custom typography
- Run Flutter apps on **Android Emulator** and **Chrome (web)**

### Estimated Time
**2 to 3 hours** (including setup)

### Prerequisites
- Basic programming knowledge (variables, functions, conditionals)
- No prior Flutter or Dart experience required
- A computer running Windows, macOS, or Linux
- Stable internet connection for initial setup

### What Students Will Build
A simple **Personal Profile & Counter App** that:
- Displays a user profile card with name, bio, and avatar image
- Shows a counter that increments when a button is pressed
- Demonstrates reusable widgets, state management, and parent-child communication
- Uses custom assets and theming for a polished look

**Screenshot Description:**
The final app displays a centered profile tile with a circular avatar image, name, and bio text. Below it, a counter card shows a number and has "+" and "-" buttons. The UI uses a gradient background, custom fonts, and smooth animations.

---

## Installation & Environment Setup Guide

### Windows Installation

#### 1. Install Flutter SDK
1. Download Flutter SDK from [flutter.dev](https://docs.flutter.dev/get-started/install/windows)
2. Extract the ZIP file to `C:\src\flutter` (avoid spaces in path)
3. Add Flutter to PATH:
   - Search "Environment Variables" in Start Menu
   - Click "Environment Variables"
   - Under "User variables", find "Path" and click "Edit"
   - Click "New" and add `C:\src\flutter\bin`
   - Click OK on all dialogs

4. Open a **new** Command Prompt and verify:
```bash
flutter --version
```

#### 2. Run Flutter Doctor
```bash
flutter doctor
```

This command checks your environment. You'll likely see issues – that's normal.

#### 3. Fix Common Issues (Windows)

**Android Toolchain Issues:**
```bash
flutter doctor --android-licenses
```
Accept all licenses by typing `y`.

**Missing cmdline-tools:**
1. Open Android Studio
2. Go to **Tools > SDK Manager**
3. Click **SDK Tools** tab
4. Check **Android SDK Command-line Tools (latest)**
5. Click Apply

#### 4. Install Android Studio
1. Download from [developer.android.com/studio](https://developer.android.com/studio)
2. Run installer, choose standard setup
3. After installation, open Android Studio
4. Go to **Plugins** (File > Settings > Plugins)
5. Search and install **Flutter** plugin
6. Restart Android Studio

#### 5. Create Android Emulator (AVD)
1. In Android Studio, click **Device Manager** (phone icon on right sidebar)
2. Click **Create Device**
3. Select **Pixel 5** (or any phone)
4. Click Next
5. Select **System Image** – choose latest API level (e.g., API 34 "UpsideDownCake")
6. Click Next, then Finish
7. Click the Play ▶ button to start emulator

#### 6. Install VS Code (Alternative to Android Studio)
1. Download from [code.visualstudio.com](https://code.visualstudio.com/)
2. Install it
3. Open VS Code
4. Go to Extensions (Ctrl+Shift+X)
5. Search and install:
   - **Flutter** (by Dart Code)
   - **Dart** (by Dart Code)

#### 7. Enable Flutter Web Support
```bash
flutter config --enable-web
```

Check devices:
```bash
flutter devices
```

You should see Chrome and your emulator.

---

### macOS Installation

#### 1. Install Flutter SDK
1. Download Flutter SDK from [flutter.dev](https://docs.flutter.dev/get-started/install/macos)
2. Extract to your home directory:
```bash
cd ~
unzip ~/Downloads/flutter_macos_*.zip
```

3. Add to PATH (for Zsh – macOS default):
```bash
echo 'export PATH="$PATH:$HOME/flutter/bin"' >> ~/.zshrc
source ~/.zshrc
```

4. Verify:
```bash
flutter --version
```

#### 2. Run Flutter Doctor
```bash
flutter doctor
```

#### 3. Fix Common Issues (macOS)

**Xcode Issues:**
1. Install Xcode from App Store
2. Open Xcode and accept license
3. Run:
```bash
sudo xcodebuild -license
sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer
sudo xcodebuild -runFirstLaunch
```

**CocoaPods:**
```bash
sudo gem install cocoapods
```

**Android Licenses:**
```bash
flutter doctor --android-licenses
```

#### 4. Install Android Studio
Follow same steps as Windows (#4-5 above)

#### 5. Install VS Code
Follow same steps as Windows (#6 above)

#### 6. Enable Web Support
```bash
flutter config --enable-web
flutter devices
```

---

### Linux Installation (Ubuntu/Debian)

#### 1. Install Required Dependencies
```bash
sudo apt-get update
sudo apt-get install curl git unzip xz-utils zip libglu1-mesa
```

#### 2. Install Flutter SDK
```bash
cd ~
git clone https://github.com/flutter/flutter.git -b stable
```

Add to PATH:
```bash
echo 'export PATH="$PATH:$HOME/flutter/bin"' >> ~/.bashrc
source ~/.bashrc
```

Verify:
```bash
flutter --version
```

#### 3. Run Flutter Doctor
```bash
flutter doctor
```

#### 4. Install Android Studio
1. Download from [developer.android.com/studio](https://developer.android.com/studio)
2. Extract and run:
```bash
cd ~/Downloads
tar -xvf android-studio-*.tar.gz
cd android-studio/bin
./studio.sh
```

3. Follow installer wizard
4. Install Flutter plugin (same as Windows)

#### 5. Create Android Emulator
Follow same steps as Windows (#5 above)

#### 6. Install VS Code
```bash
sudo snap install code --classic
```

Install Flutter + Dart extensions (same as Windows)

#### 7. Enable Web Support
```bash
flutter config --enable-web
flutter devices
```

---

### Recommended Versions
- **Flutter SDK:** Use latest stable (3.16+ recommended)
- **Dart SDK:** Comes bundled with Flutter
- **Android Studio:** Latest stable version
- **VS Code:** Latest version

---

## Folder Structure

```
my_flutter_lab/
├── pubspec.yaml
├── README.md
├── lib/
│   ├── main.dart
│   ├── screens/
│   │   └── home_screen.dart
│   └── widgets/
│       ├── counter_card.dart
│       └── profile_tile.dart
└── assets/
    ├── images/
    │   └── avatar.png
    └── fonts/
        ├── Poppins-Regular.ttf
        └── Poppins-Bold.ttf
```

---

## Common Mistakes & Fixes

### 1. pubspec.yaml Indentation Errors
**Problem:** `Error: The asset directory "assets/images/" does not exist`

**Fix:** Ensure exactly 2 spaces for indentation (no tabs):
```yaml
flutter:
  assets:
    - assets/images/
```

### 2. Missing `flutter pub get`
**Problem:** Import errors or packages not found

**Fix:** Always run after editing `pubspec.yaml`:
```bash
flutter pub get
```

### 3. Hot Reload Not Applying Changes
**Problem:** Changed code but UI didn't update

**Fix:** 
- Hot reload only updates UI, not app lifecycle
- Use **Hot Restart** (Shift+Cmd+\ in VS Code)
- Or press `R` in terminal

### 4. Using const with Changing State
**Problem:**
```dart
const Text('$count') // ERROR
```

**Fix:** Remove const when using variables:
```dart
Text('$count')
```

### 5. setState Misuse
**Problem:**
```dart
count++;  // No UI update
```

**Fix:** Wrap in setState:
```dart
setState(() {
  count++;
});
```

### 6. Asset Path Issues
**Problem:** Image not showing

**Fix:**
- Check path in `pubspec.yaml` matches actual folder
- Ensure `flutter pub get` was run
- Use exact filename with extension

### 7. Emulator/Device Not Showing
**Problem:** `flutter devices` shows nothing

**Fix:**
- Start emulator from Android Studio
- For web: `flutter config --enable-web`
- Restart IDE and run `flutter devices` again

### 8. Android Licenses Not Accepted
**Problem:** `flutter doctor` shows Android licenses error

**Fix:**
```bash
flutter doctor --android-licenses
```
Type `y` for all prompts.

### 9. Web Not Enabled
**Problem:** Chrome doesn't appear in devices

**Fix:**
```bash
flutter config --enable-web
flutter devices
```

### 10. Context/Theme Misuse
**Problem:**
```dart
Theme.of(context) // ERROR: No MediaQuery widget found
```

**Fix:** Use context from a widget inside MaterialApp:
```dart
@override
Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
      body: Builder(
        builder: (context) => Text('', style: Theme.of(context).textTheme.headline4)
      )
    )
  );
}
```

### 11. Hot Reload Preserves State
**Problem:** Counter resets to old value after hot reload

**This is expected:** Hot reload preserves state. Use hot restart (R) to reset.

### 12. Missing Keyboard in Emulator
**Problem:** Can't type in emulator

**Fix:** Click emulator window to focus, or enable software keyboard in emulator settings.

---

## Grading Rubric (10 Points)

| Step | Points | Criteria |
|------|--------|----------|
| **Step 1** | 1 pt | Basic MaterialApp and Scaffold render correctly |
| **Step 2** | 2 pts | ProfileTile widget created as StatelessWidget and displays correctly |
| **Step 3** | 2 pts | Asset added to pubspec.yaml correctly and image displays |
| **Step 4** | 2 pts | Counter widget converted to StatefulWidget with working setState |
| **Step 5** | 2 pts | Parent-child communication: props and callbacks work correctly |
| **Step 6** | 1 pt | Theme and typography applied, hot reload demonstrated |
| **Total** | **10 pts** | |

---

## Next Steps After Lab

- Explore official Flutter documentation: [flutter.dev/docs](https://flutter.dev/docs)
- Try Flutter's built-in widgets: ListView, GridView, Stack, etc.
- Learn navigation and routing
- Build a multi-screen app
- Explore state management (Provider, Riverpod, Bloc)

---

**Good luck! Have fun building with Flutter!**
