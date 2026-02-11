# Flutter Beginner Lab Package - Complete Guide

**Estimated Time:** 2 to 3 hours  
**Target Audience:** Students who are new to Flutter but have basic programming knowledge  
**Supported Platforms:** Android Emulator and Chrome Web Browser

---

## Package Contents

This lab package contains all the materials you need to teach a comprehensive Flutter workshop:

```
.
├── FLUTTER_LAB_GUIDE.md           # Main instructor guide with installation & setup
├── COMPLETE_FILE_REFERENCE.md     # All files in copy-pastable format
├── starter/                        # Student starter code (incomplete, with TODOs)
│   ├── README.md
│   ├── pubspec.yaml
│   ├── lib/
│   │   ├── main.dart
│   │   ├── screens/
│   │   │   └── home_screen.dart
│   │   └── widgets/
│   │       ├── profile_tile.dart
│   │       └── counter_card.dart
│   └── assets/
│       ├── images/                 # Add avatar.png here
│       └── fonts/                  # Add Poppins fonts here
│
└── answer_key/                     # Instructor solution code (complete)
    ├── README.md
    ├── pubspec.yaml
    ├── lib/
    │   ├── main.dart
    │   ├── screens/
    │   │   └── home_screen.dart
    │   └── widgets/
    │       ├── profile_tile.dart
    │       └── counter_card.dart
    └── assets/
        ├── images/                 # Add avatar.png here
        └── fonts/                  # Add Poppins fonts here
```

---

## Quick Start for Instructors

### 1. Before the Lab

**Prepare Assets:**
1. Download an avatar image (200x200 PNG) and save as `avatar.png` in both:
   - `starter/assets/images/avatar.png`
   - `answer_key/assets/images/avatar.png`

2. Download Poppins fonts from [Google Fonts](https://fonts.google.com/specimen/Poppins):
   - Extract `Poppins-Regular.ttf` and `Poppins-Bold.ttf`
   - Place in both:
     - `starter/assets/fonts/`
     - `answer_key/assets/fonts/`

**Test the Answer Key:**
```bash
cd answer_key
flutter pub get
flutter run
```

Verify:
- App launches on Android emulator
- App launches on Chrome (`flutter run -d chrome`)
- All assets load correctly
- Counter works properly

### 2. Distribute to Students

**Option A:** Zip and share
```bash
zip -r flutter_lab_starter.zip starter/
```

**Option B:** GitHub repository
- Create a repo with the `starter/` folder
- Students clone and start working

**Option C:** Direct copy
- Copy `starter/` folder to each student's workspace

### 3. During the Lab

**Guide students through:**
1. Environment setup (refer to `FLUTTER_LAB_GUIDE.md`)
2. Running `flutter doctor`
3. Creating an emulator
4. Installing assets
5. Completing the 6-step progression

**Use `COMPLETE_FILE_REFERENCE.md` to:**
- Show code examples
- Help stuck students
- Debug issues

---

## Quick Start for Students

### 1. Setup Environment

Follow the complete installation guide in `FLUTTER_LAB_GUIDE.md` for your OS:
- Windows
- macOS
- Linux

### 2. Get the Starter Code

Copy the `starter/` folder to your workspace and rename to `my_flutter_lab/`.

### 3. Install Assets

Download and place:
- Avatar image → `assets/images/avatar.png`
- Poppins fonts → `assets/fonts/`

See README files in each assets folder for instructions.

### 4. Install Dependencies

```bash
cd my_flutter_lab
flutter pub get
```

### 5. Run the App

**Android Emulator:**
```bash
flutter run
```

**Chrome (Web):**
```bash
flutter run -d chrome
```

### 6. Complete the Lab

Open `README.md` in the starter folder and follow the 6-step progression.

---

## Learning Objectives

By completing this lab, students will be able to:

1. Understand Flutter project structure (pubspec.yaml, lib/, assets/)
2. Build user interfaces with Widgets (Container, Text, Column, Row, Image, etc.)
3. Create StatelessWidgets for reusable components
4. Create StatefulWidgets for dynamic, changing UIs
5. Manage state with setState()
6. Implement parent-child communication (props and callbacks)
7. Load and display assets (images and fonts)
8. Apply theming and styling
9. Use Hot Reload and Hot Restart for rapid development
10. Run apps on Android and Web

---

## Lab Progression (6 Steps)

### Step 1: Basic MaterialApp + Scaffold
- Create app foundation
- Add AppBar and empty body
- Understand MaterialApp widget

### Step 2: Create StatelessWidget
- Build reusable ProfileTile component
- Pass props (name, bio)
- Compose widgets with Column and Text

### Step 3: Add Assets
- Configure pubspec.yaml
- Load and display images
- Use CircleAvatar

### Step 4: StatefulWidget + Counter
- Convert to StatefulWidget
- Add local state
- Use setState() to update UI
- Test hot reload vs hot restart

### Step 5: Parent-Child Communication
- Lift state up to parent
- Pass data down via props
- Pass callbacks up for actions
- Add increment and decrement buttons

### Step 6: Polish UI
- Add custom fonts
- Apply gradient backgrounds
- Style cards with shadows
- Create professional spacing

---

## Grading Rubric (10 Points)

| Step | Points | Criteria |
|------|--------|----------|
| Step 1 | 1 pt | MaterialApp and Scaffold work correctly |
| Step 2 | 2 pts | ProfileTile StatelessWidget displays name and bio |
| Step 3 | 2 pts | Avatar image loads from assets |
| Step 4 | 2 pts | Counter increments with setState |
| Step 5 | 2 pts | Callbacks work, parent manages state |
| Step 6 | 1 pt | Theme, fonts, and gradient applied |
| **Total** | **10 pts** | |

---

## Common Issues & Solutions

Refer to `FLUTTER_LAB_GUIDE.md` for a comprehensive list of 12+ common mistakes and fixes.

**Top 3 Issues:**

1. **pubspec.yaml indentation** → Use exactly 2 spaces, no tabs
2. **Missing `flutter pub get`** → Run after editing pubspec.yaml
3. **Hot reload not applying** → Use hot restart (R) for state resets

---

## Files Reference

### Main Documents
- **FLUTTER_LAB_GUIDE.md** - Complete lab guide with OS-specific installation
- **COMPLETE_FILE_REFERENCE.md** - All code files in copy-pastable format
- **README.md** (this file) - Package overview

### Starter Code (for students)
- `starter/README.md` - Student instructions
- `starter/pubspec.yaml` - With TODOs
- `starter/lib/main.dart` - With TODOs
- `starter/lib/screens/home_screen.dart` - With TODOs
- `starter/lib/widgets/profile_tile.dart` - With TODOs
- `starter/lib/widgets/counter_card.dart` - With TODOs

### Answer Key (for instructors)
- `answer_key/README.md` - Instructor notes
- `answer_key/pubspec.yaml` - Complete
- `answer_key/lib/main.dart` - Complete
- `answer_key/lib/screens/home_screen.dart` - Complete
- `answer_key/lib/widgets/profile_tile.dart` - Complete
- `answer_key/lib/widgets/counter_card.dart` - Complete

---

## Testing Checklist

Before deploying this lab:

- [ ] Answer key compiles without errors
- [ ] Answer key runs on Android emulator
- [ ] Answer key runs on Chrome
- [ ] Avatar image displays correctly
- [ ] Poppins font is applied
- [ ] Counter increments and decrements
- [ ] Hot reload works
- [ ] Hot restart resets state
- [ ] All TODOs in starter code are clear and specific
- [ ] Student README has complete instructions

---

## Next Steps After Lab

Suggest students explore:
- Official Flutter docs: [flutter.dev](https://flutter.dev)
- Flutter Widget Catalog: [docs.flutter.dev/ui/widgets](https://docs.flutter.dev/ui/widgets)
- More advanced topics: Navigation, State Management (Provider, Riverpod), Animations
- Build a multi-screen app
- Add API integration

---

## License

This lab package is provided for educational purposes. Feel free to adapt and customize for your workshop or classroom.

---

## Support

For questions or issues with this lab package:
1. Check `FLUTTER_LAB_GUIDE.md` Common Mistakes section
2. Review `COMPLETE_FILE_REFERENCE.md` for code examples
3. Test with the answer_key folder

---

**Happy Teaching!**

