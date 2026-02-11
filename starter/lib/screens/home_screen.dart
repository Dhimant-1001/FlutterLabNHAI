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
