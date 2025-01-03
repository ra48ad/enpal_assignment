import 'package:enpal_assignment/core/ui/design_system/spacing.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: Spacing.s,
          children: [
            OutlinedButton(
              onPressed: () => Navigator.of(context).pushNamed('/book'),
              child: Text('Book an appointment'),
            ),
            OutlinedButton(
              onPressed: () => Navigator.of(context).pushNamed('/manage'),
              child: Text('Manage appointments'),
            ),
          ],
        ),
      ),
    );
  }
}
