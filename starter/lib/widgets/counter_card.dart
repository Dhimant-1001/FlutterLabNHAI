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
