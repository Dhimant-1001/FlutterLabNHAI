# Flutter Lab - Complete File Reference



## STARTER FOLDER FILES

### `starter/README.md`

```markdown
# My First Flutter App - Student Lab

Welcome to your first Flutter project! This is a hands-on lab where you'll build a personal profile and counter app.

## Setup Instructions

### 1. Prerequisites
Make sure you have completed the Flutter installation from the main lab guide.

### 2. Project Setup
Copy this `starter/` folder to your workspace and rename it to `my_flutter_lab/`.

### 3. Install Dependencies
Open terminal in the project folder and run:
```bash
flutter pub get
```

### 4. Download Assets
Download the avatar image from the provided link or use your own square image. Save it as `assets/images/avatar.png`.

Download Poppins fonts from [Google Fonts](https://fonts.google.com/specimen/Poppins) and place:
- `Poppins-Regular.ttf` in `assets/fonts/`
- `Poppins-Bold.ttf` in `assets/fonts/`

### 5. Run the App

#### Run on Android Emulator:
1. Start your Android emulator from Android Studio (Device Manager)
2. In terminal:
```bash
flutter run
```

#### Run on Chrome (Web):
```bash
flutter run -d chrome
```

---

## Hot Reload Instructions

### VS Code
- **Hot Reload:** Press `r` in terminal OR click lightning bolt icon
- **Hot Restart:** Press `R` in terminal OR click circular arrow icon
- **Shortcut:** Ctrl+S (save file) triggers hot reload automatically

### Android Studio
- **Hot Reload:** Click lightning bolt icon OR press `Ctrl+\` (Windows/Linux) or `Cmd+\` (Mac)
- **Hot Restart:** Click green circular arrow icon OR press `Ctrl+Shift+\` / `Cmd+Shift+\`

### Terminal (CLI)
While `flutter run` is active:
- Press `r` → Hot reload
- Press `R` → Hot restart
- Press `q` → Quit

**When to use each:**
- **Hot Reload** → UI changes, text updates, styling
- **Hot Restart** → State resets, initialization changes, new dependencies

---

## Lab Steps

Complete the following 6 steps in order. Each step builds on the previous one.

---

### Step 1: Basic MaterialApp + Scaffold
**Goal:** Create the app foundation with MaterialApp and Scaffold

**Concepts Covered:**
- MaterialApp widget
- Scaffold structure
- Basic widget tree

**Files to Edit:**
- `lib/main.dart`

**TODOs:**
- [ ] Complete the MaterialApp setup
- [ ] Add a Scaffold with AppBar
- [ ] Add a simple title

**Expected Output:**
You should see a basic app with a blue AppBar showing "My Flutter App" and an empty white body.

---

### Step 2: Create Reusable StatelessWidget
**Goal:** Build a custom ProfileTile widget

**Concepts Covered:**
- StatelessWidget
- Widget composition
- Constructor parameters (props)

**Files to Edit:**
- `lib/widgets/profile_tile.dart`
- `lib/screens/home_screen.dart`

**TODOs:**
- [ ] Complete the ProfileTile widget class
- [ ] Add constructor parameters for name and bio
- [ ] Build the widget layout with Column, Text widgets
- [ ] Use the ProfileTile in HomeScreen

**Expected Output:**
The app displays a profile card with your name and bio in the center of the screen.

---

### Step 3: Add Assets (Image)
**Goal:** Load and display an image asset

**Concepts Covered:**
- pubspec.yaml configuration
- Asset loading
- Image widget
- CircleAvatar

**Files to Edit:**
- `pubspec.yaml`
- `lib/widgets/profile_tile.dart`

**TODOs:**
- [ ] Add assets section to pubspec.yaml
- [ ] Include the `assets/images/` folder
- [ ] Run `flutter pub get`
- [ ] Add CircleAvatar with AssetImage to ProfileTile

**Expected Output:**
The profile card now shows a circular avatar image above the name and bio.

**Test Hot Reload:** Change the name text and save → the UI should update instantly without restarting.

---

### Step 4: StatefulWidget + Counter
**Goal:** Create a counter with state management

**Concepts Covered:**
- StatefulWidget vs StatelessWidget
- State class
- setState() method
- Button callbacks

**Files to Edit:**
- `lib/widgets/counter_card.dart`
- `lib/screens/home_screen.dart`

**TODOs:**
- [ ] Convert CounterCard to StatefulWidget
- [ ] Add a counter variable in State class
- [ ] Implement increment function with setState
- [ ] Add a button that calls increment
- [ ] Display the counter value
- [ ] Add CounterCard to HomeScreen

**Expected Output:**
Below the profile, you see a card with a number (starting at 0) and a "+" button. Clicking the button increments the counter.

**Test Hot Reload:** 
1. Click "+" a few times (counter goes to 5)
2. Change button text in code and save
3. Hot reload preserves state → counter still shows 5
4. Press `R` for hot restart → counter resets to 0

---

### Step 5: Parent-Child Communication
**Goal:** Implement data flow with props and callbacks

**Concepts Covered:**
- Passing data down (props)
- Passing functions up (callbacks)
- Lifting state up

**Files to Edit:**
- `lib/widgets/counter_card.dart`
- `lib/screens/home_screen.dart`

**TODOs:**
- [ ] Move counter state from CounterCard to HomeScreen
- [ ] Pass count value as prop to CounterCard
- [ ] Pass increment and decrement callbacks to CounterCard
- [ ] Add a "-" button in CounterCard
- [ ] Call the callbacks from buttons

**Expected Output:**
The counter card now has both "+" and "-" buttons. The parent (HomeScreen) manages the state, and the child (CounterCard) displays it and triggers changes via callbacks.

---

### Step 6: Polish UI with Theme & Typography
**Goal:** Apply custom theme, fonts, and styling

**Concepts Covered:**
- ThemeData
- Custom fonts
- TextTheme
- Container decoration (gradients)

**Files to Edit:**
- `pubspec.yaml`
- `lib/main.dart`
- `lib/screens/home_screen.dart`
- `lib/widgets/profile_tile.dart`
- `lib/widgets/counter_card.dart`

**TODOs:**
- [ ] Add fonts to pubspec.yaml
- [ ] Run `flutter pub get`
- [ ] Define a custom theme in main.dart with Poppins font
- [ ] Add a gradient background to HomeScreen
- [ ] Style ProfileTile with shadows and padding
- [ ] Style CounterCard with rounded corners and elevation

**Expected Output:**
The app looks polished with:
- Gradient background (purple to blue)
- Custom Poppins font
- Shadow effects on cards
- Smooth rounded corners
- Professional spacing

**Test Hot Reload:**
1. Change the gradient colors in code
2. Save the file
3. The background should update instantly without losing counter state

---

## Testing Checklist

Before submitting, verify:
- [ ] App runs on **Android emulator** without errors
- [ ] App runs on **Chrome** without errors
- [ ] Profile displays with avatar image, name, and bio
- [ ] Counter increments and decrements correctly
- [ ] Hot reload works (try changing text and saving)
- [ ] Hot restart resets counter to 0
- [ ] Custom fonts are applied
- [ ] Gradient background displays correctly

---

## Troubleshooting

If you encounter issues, refer to the "Common Mistakes & Fixes" section in the main lab guide.

Quick fixes:
- **Image not showing?** → Check `pubspec.yaml` indentation and run `flutter pub get`
- **Font not working?** → Same as above
- **Import errors?** → Run `flutter pub get`
- **Hot reload not working?** → Try hot restart (`R`)

---

## Submission

Submit your completed `lib/` folder and `pubspec.yaml` file. Ensure all TODOs are completed and the app compiles without errors.

---

**Happy coding!**
```

---

### `starter/pubspec.yaml`

```yaml
name: my_flutter_lab
description: A beginner Flutter lab project for learning widgets, state, and hot reload.
publish_to: 'none'
version: 1.0.0+1

environment:
  sdk: '>=3.0.0 <4.0.0'

dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.2

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^2.0.0

flutter:
  uses-material-design: true
  
  assets:
    # TODO(step-3): Uncomment the line below to enable image assets
    # - assets/images/

  fonts:
    # TODO(step-6): Uncomment the lines below to add custom fonts
    # - family: Poppins
    #   fonts:
    #     - asset: assets/fonts/Poppins-Regular.ttf
    #     - asset: assets/fonts/Poppins-Bold.ttf
    #       weight: 700
```

---

### `starter/lib/main.dart`

```dart
import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO(step-1): Return a MaterialApp widget with title and home
    // The home should be the HomeScreen widget
    
    // TODO(step-6): Add a custom theme with Poppins font family
    // Use ThemeData with fontFamily: 'Poppins'
    // Set a primary color (e.g., Colors.deepPurple)
    
    return const Placeholder();
  }
}
```

---

### `starter/lib/screens/home_screen.dart`

```dart
import 'package:flutter/material.dart';
import '../widgets/profile_tile.dart';
import '../widgets/counter_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // TODO(step-5): Add a counter variable here to lift state up from CounterCard
  // int _counter = 0;
  
  // TODO(step-5): Add increment method
  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }
  
  // TODO(step-5): Add decrement method
  // void _decrementCounter() {
  //   setState(() {
  //     _counter--;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO(step-1): Add an AppBar with title "My Flutter App"
      
      // TODO(step-6): Wrap the body in a Container with a gradient background
      // Use BoxDecoration with a LinearGradient from Colors.deepPurple to Colors.blue
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // TODO(step-2): Add ProfileTile widget here
            // Pass your name and bio as parameters
            // Example: ProfileTile(name: 'Your Name', bio: 'Flutter Developer')
            
            const SizedBox(height: 40),
            
            // TODO(step-4): Add CounterCard widget here
            
            // TODO(step-5): Pass counter value and callbacks to CounterCard
            // CounterCard(
            //   count: _counter,
            //   onIncrement: _incrementCounter,
            //   onDecrement: _decrementCounter,
            // )
          ],
        ),
      ),
    );
  }
}
```

---

### `starter/lib/widgets/profile_tile.dart`

```dart
import 'package:flutter/material.dart';

// TODO(step-2): Create a StatelessWidget called ProfileTile
// It should accept 'name' and 'bio' as required parameters in the constructor

class ProfileTile extends StatelessWidget {
  // TODO(step-2): Add final fields for name and bio
  // final String name;
  // final String bio;
  
  // TODO(step-2): Add constructor
  // const ProfileTile({
  //   super.key,
  //   required this.name,
  //   required this.bio,
  // });

  const ProfileTile({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO(step-2): Build a Column containing:
    // - CircleAvatar with a placeholder (Icon or Text)
    // - SizedBox for spacing (height: 16)
    // - Text widget showing 'name' with fontSize 24 and fontWeight bold
    // - SizedBox for spacing (height: 8)
    // - Text widget showing 'bio' with fontSize 16 and grey color
    
    // TODO(step-3): Replace CircleAvatar placeholder with AssetImage
    // CircleAvatar(
    //   radius: 50,
    //   backgroundImage: AssetImage('assets/images/avatar.png'),
    // )
    
    // TODO(step-6): Wrap the Column in a Container with:
    // - padding: EdgeInsets.all(20)
    // - decoration: BoxDecoration with white color, borderRadius 16, and shadow
    // Use: boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10, spreadRadius: 2)]
    
    return const Placeholder();
  }
}
```

---

### `starter/lib/widgets/counter_card.dart`

```dart
import 'package:flutter/material.dart';

// TODO(step-4): Convert this to a StatefulWidget
// 1. Change 'extends StatelessWidget' to 'extends StatefulWidget'
// 2. Return a State object from createState()
// 3. Create a private State class _CounterCardState

class CounterCard extends StatelessWidget {
  // TODO(step-5): Add these parameters when converting to receive props from parent:
  // final int count;
  // final VoidCallback onIncrement;
  // final VoidCallback onDecrement;
  
  // TODO(step-5): Add constructor:
  // const CounterCard({
  //   super.key,
  //   required this.count,
  //   required this.onIncrement,
  //   required this.onDecrement,
  // });

  const CounterCard({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO(step-4): In the State class, add a counter variable:
    // int _count = 0;
    
    // TODO(step-4): Add an increment method using setState:
    // void _increment() {
    //   setState(() {
    //     _count++;
    //   });
    // }
    
    // TODO(step-5): Remove the local _count and _increment method
    // Use the count and onIncrement props passed from parent instead
    
    // TODO(step-4): Build a Column containing:
    // - Text showing "Counter" as title (fontSize 20, fontWeight bold)
    // - SizedBox(height: 16)
    // - Text showing the counter value (fontSize 48, fontWeight bold)
    // - SizedBox(height: 16)
    // - ElevatedButton with "+" text that calls the increment method
    
    // TODO(step-5): Add a Row with two buttons: "-" and "+"
    // The "-" button should call onDecrement
    // The "+" button should call onIncrement
    // Add spacing between buttons with SizedBox(width: 16)
    
    // TODO(step-6): Wrap everything in a Container with:
    // - width: 200
    // - padding: EdgeInsets.all(24)
    // - decoration: BoxDecoration with:
    //   - color: Colors.white
    //   - borderRadius: BorderRadius.circular(20)
    //   - boxShadow for elevation effect
    
    return const Placeholder();
  }
}
```

---

## ANSWER KEY FOLDER FILES

### `answer_key/README.md`

```markdown
# My First Flutter App - Answer Key (Instructors Only)

This folder contains the complete, working solution for the Flutter lab.

## How to Run

### Prerequisites
- Flutter SDK installed (3.16+ recommended)
- Android Studio with emulator configured OR Chrome for web testing
- VS Code with Flutter/Dart extensions (optional)

### Setup Steps

1. **Navigate to this folder:**
```bash
cd answer_key
```

2. **Install dependencies:**
```bash
flutter pub get
```

3. **Download required assets:**
   
Download the avatar image and save as `assets/images/avatar.png`.

Download Poppins fonts from [Google Fonts](https://fonts.google.com/specimen/Poppins):
- Save `Poppins-Regular.ttf` to `assets/fonts/`
- Save `Poppins-Bold.ttf` to `assets/fonts/`

Alternatively, use the provided assets if included in the lab package.

4. **Run on Android Emulator:**
```bash
flutter run
```

5. **Run on Chrome (Web):**
```bash
flutter run -d chrome
```

---

## Expected Output

### Visual Appearance
- **Background:** Smooth gradient from deep purple (top) to blue (bottom)
- **Profile Card:**
  - Circular avatar image at top
  - User name in large bold Poppins font
  - Bio text in smaller grey font
  - White card with rounded corners and shadow
- **Counter Card:**
  - "Counter" title text
  - Large counter number display
  - Two buttons ("-" and "+") in a row
  - White card with rounded corners and shadow

### Functionality
1. **Counter Increment/Decrement:** Clicking "+" increases counter, "-" decreases it
2. **Hot Reload:** Changing UI code (colors, text) updates instantly without losing counter state
3. **Hot Restart:** Pressing `R` resets the counter to 0
4. **Responsive:** Works on both mobile (emulator) and web (Chrome)

---

## Testing Checklist

Verify the following:
- [ ] App launches without errors on Android emulator
- [ ] App launches without errors on Chrome
- [ ] Avatar image displays correctly
- [ ] Poppins font is applied to all text
- [ ] Gradient background renders smoothly
- [ ] Counter starts at 0
- [ ] "+" button increments counter
- [ ] "-" button decrements counter
- [ ] Hot reload preserves counter state
- [ ] Hot restart resets counter to 0
- [ ] No console errors or warnings

---

## Code Structure

```
answer_key/
├── pubspec.yaml          # Dependencies and asset declarations
├── lib/
│   ├── main.dart         # App entry point, MaterialApp, theme
│   ├── screens/
│   │   └── home_screen.dart    # Main screen with state management
│   └── widgets/
│       ├── profile_tile.dart   # StatelessWidget for profile display
│       └── counter_card.dart   # StatefulWidget converted to stateless with props
└── assets/
    ├── images/
    │   └── avatar.png
    └── fonts/
        ├── Poppins-Regular.ttf
        └── Poppins-Bold.ttf
```

---

## Key Learning Points Demonstrated

1. **MaterialApp Setup:** Proper app initialization with theme
2. **StatelessWidget:** ProfileTile receives and displays props
3. **StatefulWidget:** CounterCard initially manages own state (step 4)
4. **Lifting State Up:** Counter state moved to parent HomeScreen (step 5)
5. **Props:** Parent passes data down to children
6. **Callbacks:** Child widgets trigger parent methods via function props
7. **Assets:** Images and fonts loaded via pubspec.yaml
8. **Theming:** Custom fonts, colors, and consistent styling
9. **Hot Reload:** Instant UI updates during development

---

## Common Student Questions & Answers

**Q: Why use StatefulWidget for counter?**
A: We need to track changing data (count) and rebuild the UI when it changes. StatelessWidget can't do this.

**Q: Why move state up to parent in step 5?**
A: To demonstrate parent-child communication patterns. In real apps, shared state often lives in a common ancestor.

**Q: What's the difference between hot reload and hot restart?**
A: Hot reload updates UI instantly but preserves state. Hot restart re-runs main() and resets all state.

**Q: Why use const constructors?**
A: Performance optimization. Const widgets are built once and reused, reducing rebuilds.

**Q: Can I use a different font?**
A: Yes! Download any font from Google Fonts and update pubspec.yaml accordingly.

---

**This answer key should compile and run successfully without any modifications.**
```

---

### `answer_key/pubspec.yaml`

```yaml
name: my_flutter_lab
description: A beginner Flutter lab project for learning widgets, state, and hot reload.
publish_to: 'none'
version: 1.0.0+1

environment:
  sdk: '>=3.0.0 <4.0.0'

dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.2

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^2.0.0

flutter:
  uses-material-design: true
  
  assets:
    - assets/images/

  fonts:
    - family: Poppins
      fonts:
        - asset: assets/fonts/Poppins-Regular.ttf
        - asset: assets/fonts/Poppins-Bold.ttf
          weight: 700
```

---

### `answer_key/lib/main.dart`

```dart
import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: 'Poppins',
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
```

---

### `answer_key/lib/screens/home_screen.dart`

```dart
import 'package:flutter/material.dart';
import '../widgets/profile_tile.dart';
import '../widgets/counter_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;
  
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  
  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Flutter App'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.deepPurple,
              Colors.blue,
            ],
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const ProfileTile(
                  name: 'Alex Johnson',
                  bio: 'Flutter Developer & Mobile Enthusiast',
                ),
                const SizedBox(height: 40),
                CounterCard(
                  count: _counter,
                  onIncrement: _incrementCounter,
                  onDecrement: _decrementCounter,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
```

---

### `answer_key/lib/widgets/profile_tile.dart`

```dart
import 'package:flutter/material.dart';

class ProfileTile extends StatelessWidget {
  final String name;
  final String bio;
  
  const ProfileTile({
    super.key,
    required this.name,
    required this.bio,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            spreadRadius: 2,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/images/avatar.png'),
          ),
          const SizedBox(height: 16),
          Text(
            name,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            bio,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
```

---

### `answer_key/lib/widgets/counter_card.dart`

```dart
import 'package:flutter/material.dart';

class CounterCard extends StatelessWidget {
  final int count;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  
  const CounterCard({
    super.key,
    required this.count,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            spreadRadius: 2,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Counter',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            '$count',
            style: const TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: onDecrement,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(16),
                ),
                child: const Icon(Icons.remove, size: 24),
              ),
              const SizedBox(width: 16),
              ElevatedButton(
                onPressed: onIncrement,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(16),
                ),
                child: const Icon(Icons.add, size: 24),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
```

---

## Asset Files Needed (Both Folders)

### Avatar Image
Place a square image file at:
- `starter/assets/images/avatar.png`
- `answer_key/assets/images/avatar.png`

You can download from: [UI Faces](https://uifaces.co/) or use any square profile image.

### Poppins Fonts
Download from [Google Fonts](https://fonts.google.com/specimen/Poppins) and place:

- `starter/assets/fonts/Poppins-Regular.ttf`
- `starter/assets/fonts/Poppins-Bold.ttf`
- `answer_key/assets/fonts/Poppins-Regular.ttf`
- `answer_key/assets/fonts/Poppins-Bold.ttf`

---

## Quick Start Commands

### For Students (Starter Folder):
```bash
cd starter
flutter pub get
flutter run
```

### For Instructors (Answer Key):
```bash
cd answer_key
flutter pub get
flutter run
```

---

**All files are ready to copy-paste and use!**
