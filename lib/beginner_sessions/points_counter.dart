import 'package:flutter/material.dart';

class PointsCounter extends StatefulWidget {
  const PointsCounter({super.key});

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int count1 = 0;
  int count2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text(
          'Points Counter',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                item(
                  teamNumber: 1,
                ),
                item(
                  teamNumber: 2,
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  count1 = 0;
                  count2 = 0;
                });
              },
              child: Text('Reset'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        useLegacyColorScheme: true,
        items:  [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'add',
          ),
        ],
      ),
    );
  }

  Widget item({
    required int teamNumber,
  }) {
    return Column(
      children: [
        Text(
          'Team $teamNumber',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        Text(
          teamNumber == 1 ? '$count1' : '$count2',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 40,
          ),
        ),
        customButton(
          teamNumber: teamNumber,
          num: 2,
        ),
        customButton(
          teamNumber: teamNumber,
          num: 4,
        ),
        customButton(
          teamNumber: teamNumber,
          num: 6,
        ),
      ],
    );
  }

  Widget customButton({
    required int teamNumber,
    required int num,
  }) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          teamNumber == 1 ? count1 += num : count2 += num;
        });
      },
      child: Text('add $num point'),
    );
  }
}
