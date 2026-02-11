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
