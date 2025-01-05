import 'package:flutter/material.dart';
import 'package:yongdon/widget/my_calender.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '용돈기입장',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: MyCalender(),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.red,
                height: 250,
                width: 150,
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                color: Colors.blue,
                height: 250,
                width: 150,
              ),
            ],
          )
        ],
      ),
    );
  }
}
