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
      body: Stack(
        children: [
          Column(
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
                    color: Colors.red[50],
                    height: 250,
                    width: 150,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    color: Colors.blue[50],
                    height: 250,
                    width: 150,
                  ),
                ],
              )
            ],
          ),
          // 총계 정보
          Positioned(
            left: 30,
            bottom: 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildTotalInfo('총 수입', '0', Colors.red[700]!),
                SizedBox(height: 8),
                _buildTotalInfo('총 지출', '0', Colors.blue[700]!),
                SizedBox(height: 8),
                _buildTotalInfo('총 합계', '0', Colors.black),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTotalInfo(String label, String amount, Color color) {
    return Row(
      children: [
        SizedBox(
          width: 60,
          child: Text(
            label,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(width: 8),
        Text(
          '$amount원',
          style: TextStyle(
            color: color,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
