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
