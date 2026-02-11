# Complete Flutter Lab - File Index

## Quick Navigation Guide

This document provides quick navigation to all files in the Flutter lab package.

---

## File Organization

### Main Documentation (Start Here)

| File | Path | Purpose |
|------|------|---------|
| Master README | ./README.md | Package overview and quick start guide |
| Lab Guide | ./FLUTTER_LAB_GUIDE.md | Installation for Windows, Mac, and Linux plus common mistakes and rubric |
| File Reference | ./COMPLETE_FILE_REFERENCE.md | All code files in copy-pastable format |
| Package Summary | ./PACKAGE_SUMMARY.md | Visual structure, statistics, and checklist |
| This Index | ./FILE_INDEX.md | Navigation guide (you are here) |

---

## STARTER Folder (For Students)

### Documentation
| File | Path | Description |
|------|------|-------------|
| Student README | starter/README.md | Six-step lab instructions and hot reload guide |

### Code Files
| File | Path | Type | Description |
|------|------|------|-------------|
| pubspec.yaml | starter/pubspec.yaml | Config | Dependencies (TODOs for assets) |
| main.dart | starter/lib/main.dart | Dart | App entry (TODOs for MaterialApp) |
| home_screen.dart | starter/lib/screens/home_screen.dart | Dart | Main screen (TODOs for state) |
| profile_tile.dart | starter/lib/widgets/profile_tile.dart | Dart | Profile widget (TODOs for StatelessWidget) |
| counter_card.dart | starter/lib/widgets/counter_card.dart | Dart | Counter widget (TODOs for StatefulWidget) |

### Asset Placeholders
| File | Path | Purpose |
|------|------|---------|
| images/README.md | starter/assets/images/README.md | Instructions to add avatar.png |
| fonts/README.md | starter/assets/fonts/README.md | Instructions to add Poppins fonts |

---

## ANSWER_KEY Folder (For Instructors)

### Documentation
| File | Path | Description |
|------|------|-------------|
| Instructor README | answer_key/README.md | How to run, expected output, and common questions |

### Code Files (Complete Solutions)
| File | Path | Type | Description |
|------|------|------|-------------|
| pubspec.yaml | answer_key/pubspec.yaml | Config | Complete dependencies with assets |
| main.dart | answer_key/lib/main.dart | Dart | Complete MaterialApp with theme |
| home_screen.dart | answer_key/lib/screens/home_screen.dart | Dart | Complete screen with state management |
| profile_tile.dart | answer_key/lib/widgets/profile_tile.dart | Dart | Complete StatelessWidget with styling |
| counter_card.dart | answer_key/lib/widgets/counter_card.dart | Dart | Complete component with props and callbacks |

### Asset Placeholders
| File | Path | Purpose |
|------|------|---------|
| images/README.md | answer_key/assets/images/README.md | Instructions to add avatar.png |
| fonts/README.md | answer_key/assets/fonts/README.md | Instructions to add Poppins fonts |

---

## Which File Should I Read?

### If you are an Instructor

1. Start here: `README.md`
2. Review installation: `FLUTTER_LAB_GUIDE.md`
3. Get all code: `COMPLETE_FILE_REFERENCE.md`
4. Check structure: `PACKAGE_SUMMARY.md`
5. Test solution: `answer_key/`

### If you are a Student

1. Environment setup: `FLUTTER_LAB_GUIDE.md`
2. Lab instructions: `starter/README.md`
3. If stuck: `COMPLETE_FILE_REFERENCE.md` (but try solving it first)
4. Work in the: `starter/` folder

---

## File Statistics

| Category | Count |
|----------|-------|
| Documentation (.md) | 9 files |
| Dart code (.dart) | 8 files |
| Configuration (.yaml) | 2 files |
| Total Files | 22 files |
| Folders | 10 folders |

---

## Find Files by Topic

### Installation and Setup
- `FLUTTER_LAB_GUIDE.md` - Complete installation guide
- `starter/README.md` - Quick setup for students

### Complete Code Reference
- `COMPLETE_FILE_REFERENCE.md` - All files in one place

### Starter Code (Incomplete)
- `starter/lib/main.dart`
- `starter/lib/screens/home_screen.dart`
- `starter/lib/widgets/profile_tile.dart`
- `starter/lib/widgets/counter_card.dart`

### Answer Key (Complete)
- `answer_key/lib/main.dart`
- `answer_key/lib/screens/home_screen.dart`
- `answer_key/lib/widgets/profile_tile.dart`
- `answer_key/lib/widgets/counter_card.dart`

### Configuration
- `starter/pubspec.yaml` - Student version (TODOs)
- `answer_key/pubspec.yaml` - Complete version

### Assets and Fonts
- `starter/assets/images/` - Add avatar.png here
- `starter/assets/fonts/` - Add Poppins fonts here
- `answer_key/assets/images/` - Add avatar.png here
- `answer_key/assets/fonts/` - Add Poppins fonts here

---

## Recommended Reading Order

### For First-Time Instructors

1. `README.md` - Get an overview
2. `PACKAGE_SUMMARY.md` - Understand the structure
3. `FLUTTER_LAB_GUIDE.md` - Review installation steps
4. `answer_key/README.md` - See expected output
5. Test the `answer_key/` code
6. Review the `starter/` TODOs
7. `COMPLETE_FILE_REFERENCE.md` - Reference during the lab

### For Students

1. `FLUTTER_LAB_GUIDE.md` - Install Flutter
2. `starter/README.md` - Follow the 6 steps
3. `COMPLETE_FILE_REFERENCE.md` - Only if you are really stuck

---

## Learning Path Through Files

### Step 1: Basic App Setup
Files to edit:
- `starter/lib/main.dart`
- `starter/lib/screens/home_screen.dart`

### Step 2: StatelessWidget
Files to edit:
- `starter/lib/widgets/profile_tile.dart`
- `starter/lib/screens/home_screen.dart`

### Step 3: Assets
Files to edit:
- `starter/pubspec.yaml`
- `starter/lib/widgets/profile_tile.dart`
- Add: `starter/assets/images/avatar.png`

### Step 4: StatefulWidget
Files to edit:
- `starter/lib/widgets/counter_card.dart`
- `starter/lib/screens/home_screen.dart`

### Step 5: Props and Callbacks
Files to edit:
- `starter/lib/widgets/counter_card.dart`
- `starter/lib/screens/home_screen.dart`

### Step 6: Theming and Polish
Files to edit:
- `starter/pubspec.yaml`
- `starter/lib/main.dart`
- `starter/lib/screens/home_screen.dart`
- `starter/lib/widgets/profile_tile.dart`
- `starter/lib/widgets/counter_card.dart`
- Add: `starter/assets/fonts/Poppins-Regular.ttf`
- Add: `starter/assets/fonts/Poppins-Bold.ttf`

---

## Quick Command Reference

### Navigate to folders
```bash
cd starter/           # Student workspace
cd answer_key/        # Instructor reference
```

### View files
```bash
cat README.md                           # Main overview
cat FLUTTER_LAB_GUIDE.md                # Installation guide
cat COMPLETE_FILE_REFERENCE.md          # All code
cat starter/README.md                   # Student instructions
cat answer_key/README.md                # Instructor notes
```

### Edit starter files
```bash
# Students work on these:
nano starter/lib/main.dart
nano starter/lib/screens/home_screen.dart
nano starter/lib/widgets/profile_tile.dart
nano starter/lib/widgets/counter_card.dart
nano starter/pubspec.yaml
```

### View answer key
```bash
# Instructors reference these:
cat answer_key/lib/main.dart
cat answer_key/lib/screens/home_screen.dart
cat answer_key/lib/widgets/profile_tile.dart
cat answer_key/lib/widgets/counter_card.dart
```

---

## Package Contents at a Glance

```
Flutter Lab Package
├── Documentation (5 files)
│   ├── README.md
│   ├── FLUTTER_LAB_GUIDE.md
│   ├── COMPLETE_FILE_REFERENCE.md
│   ├── PACKAGE_SUMMARY.md
│   └── FILE_INDEX.md (this file)
│
├── starter/ (Student workspace)
│   ├── README.md
│   ├── pubspec.yaml
│   ├── lib/ (4 .dart files with TODOs)
│   └── assets/ (2 placeholder READMEs)
│
└── answer_key/ (Instructor reference)
    ├── README.md
    ├── pubspec.yaml
    ├── lib/ (4 complete .dart files)
    └── assets/ (2 placeholder READMEs)
```

---

## Verification Checklist

Use this to verify all files exist:

### Root Level
- [ ] README.md
- [ ] FLUTTER_LAB_GUIDE.md
- [ ] COMPLETE_FILE_REFERENCE.md
- [ ] PACKAGE_SUMMARY.md
- [ ] FILE_INDEX.md

### starter/
- [ ] README.md
- [ ] pubspec.yaml
- [ ] lib/main.dart
- [ ] lib/screens/home_screen.dart
- [ ] lib/widgets/profile_tile.dart
- [ ] lib/widgets/counter_card.dart
- [ ] assets/images/README.md
- [ ] assets/fonts/README.md

### answer_key/
- [ ] README.md
- [ ] pubspec.yaml
- [ ] lib/main.dart
- [ ] lib/screens/home_screen.dart
- [ ] lib/widgets/profile_tile.dart
- [ ] lib/widgets/counter_card.dart
- [ ] assets/images/README.md
- [ ] assets/fonts/README.md

**Total: 22 files**

---

## Success Criteria

This lab package is ready when:

- [ ] All 22 files exist
- [ ] Starter code has TODOs (no solutions)
- [ ] Answer key compiles without errors
- [ ] Assets instructions are clear
- [ ] Installation guide covers Windows, Mac, and Linux
- [ ] The 6 lab steps are well-defined
- [ ] Common mistakes guide is comprehensive
- [ ] Grading rubric is aligned with the steps

---

**Navigation complete. Choose your path and start teaching or learning Flutter.**
