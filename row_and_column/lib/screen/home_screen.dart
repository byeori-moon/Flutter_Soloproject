import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          bottom: false,
          child: Container(
            color: Colors.black,
            height: MediaQuery.of(context).size.height,//실핼중인 시뮬레이터(디바이스)의 사이즈
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.max,
              children: [
                //Expended: Expanded 위젯으로 감싸져 있는 자식들끼리 남은 공간을 배분하여 모두 가져간다.
                //flex: 나머지 공간을 나누는 비율
                //Flexible: 비율만큼 공간을 차지하되, 자식 자체의 width와 height를 제외한 남는 공간은 사용하진 않음.
                Flexible(
                  child: Container(
                    color: Colors.red,
                    width: 50.0,
                    height: 50.0,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.orange,
                    width: 50.0,
                    height: 50.0,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.yellow,
                    width: 50.0,
                    height: 50.0,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.green,
                    width: 50.0,
                    height: 50.0,
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}