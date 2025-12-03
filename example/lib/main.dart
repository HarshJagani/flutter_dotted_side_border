import 'package:flutter/material.dart';
import 'package:dotted_side_border/dotted_side_border.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dotted Side Border Demo',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      home: const DemoPage(),
    );
  }
}

class DemoPage extends StatelessWidget {
  const DemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dotted Side Border Examples'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          spacing: 25,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Different Positions',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            // Bottom border
            DottedSideBorder(
              gradient: LinearGradient(colors: [Colors.red, Colors.blue]),
              strokeWidth: 2,
              gap: 5,
              padding: 10,
              position: DottedLinePosition.bottom,
              child: const Text(
                'Bottom Border',
                style: TextStyle(fontSize: 16),
              ),
            ),

            // Top border
            DottedSideBorder(
              color: Colors.red,
              strokeWidth: 2,
              gap: 5,
              padding: 10,
              position: DottedLinePosition.top,
              child: const Text('Top Border', style: TextStyle(fontSize: 16)),
            ),

            // Left border
            DottedSideBorder(
              color: Colors.green,
              strokeWidth: 2,
              gap: 5,
              padding: 10,
              position: DottedLinePosition.left,
              child: const Text('Left Border', style: TextStyle(fontSize: 16)),
            ),

            // Right border
            DottedSideBorder(
              color: Colors.orange,
              strokeWidth: 2,
              gap: 5,
              padding: 10,
              position: DottedLinePosition.right,
              child: const Text('Right Border', style: TextStyle(fontSize: 16)),
            ),

            const Text(
              'Different Styles',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            // Thick border
            DottedSideBorder(
              color: Colors.purple,
              strokeWidth: 4,
              gap: 8,
              padding: 12,
              position: DottedLinePosition.bottom,
              child: const Text(
                'Thick Border (strokeWidth: 4, gap: 8)',
                style: TextStyle(fontSize: 16),
              ),
            ),

            // Thin border
            DottedSideBorder(
              color: Colors.teal,
              strokeWidth: 1,
              gap: 2,
              padding: 8,
              position: DottedLinePosition.bottom,
              child: const Text(
                'Thin Border (strokeWidth: 1, gap: 2)',
                style: TextStyle(fontSize: 16),
              ),
            ),

            const Text(
              'Practical Examples',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            // Card with dotted border
            Card(
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  spacing: 12,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Section Title',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    DottedSideBorder(
                      color: Colors.grey,
                      strokeWidth: 1.5,
                      gap: 4,
                      padding: 12,
                      position: DottedLinePosition.bottom,
                      child: const Text(
                        'This is a card with a dotted separator',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    const Text(
                      'More content below the separator',
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),

            // List items with dotted borders
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  DottedSideBorder(
                    color: Colors.grey.shade400,
                    strokeWidth: 1,
                    gap: 3,
                    padding: 0,
                    position: DottedLinePosition.bottom,
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Icon(Icons.check_circle, color: Colors.green),
                          SizedBox(width: 12),
                          Text('List Item 1'),
                        ],
                      ),
                    ),
                  ),
                  DottedSideBorder(
                    color: Colors.grey.shade400,
                    strokeWidth: 1,
                    gap: 3,
                    padding: 0,
                    position: DottedLinePosition.bottom,
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Icon(Icons.check_circle, color: Colors.green),
                          SizedBox(width: 12),
                          Text('List Item 2'),
                        ],
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Icon(Icons.check_circle, color: Colors.green),
                        SizedBox(width: 12),
                        Text('List Item 3'),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
