import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            elevation: 0, // 그림자 없애기
            backgroundColor: Colors.white, // 배경 색상
            centerTitle: false, // title 중앙 정렬
            iconTheme: IconThemeData(color: Colors.black), // app bar icon color
            title: Text(
              "Food Recipe",
              style: TextStyle(
                color: Colors.black,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {
                  print("go my page");
                },
                icon: Icon(
                  Icons.person_outline,
                ),
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "상품을 검색해주세요.",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        // 돋보기 아이콘
                        suffixIcon: IconButton(
                          icon: Icon(Icons.search),
                          onPressed: () {
                            print("돋보기 아이콘 클릭");
                          },
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    height: 1,
                  )
                ],
              ),
            ),
          ),
          bottomNavigationBar: BottomAppBar()),
    );
  }
}
