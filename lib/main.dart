import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 8),  // 특정 부분에 패딩을 넣을때는 .only를 사용함.
                child: const Text(
                  "TestMessage_1",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Text(
                'TestMessage_2',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  backgroundColor: Colors.blue //error 발생 이유는 Text를 const로 지정하였는데 변수를 넣어기때문에 에러가 발생
                ),
              )
            ],
          ),
          ),
          Icon(
            Icons.start,
            color: Colors.red[500],
          ),
          Text('22')
        ],
      ),
    );

    Widget bodySection = Container(

    );


    return MaterialApp(
      title: 'Test My App', //최근에 사용된 앱에 나오는 title
      home: Scaffold( //앱의 첫 화면을 설정하는 프로퍼티
        appBar: AppBar(
          title: Text('Flutter layout demo'),
        ),
        body: Column(
          children: [
            titleSection,
          ],
        ),
      ),
    );
  }
}
