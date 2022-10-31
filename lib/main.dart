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
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> dataList = [
      {
        'foodType': '수제버거',
        'url': "https://i.ibb.co/VtK43vv/burger.jpg",
      },
      {
        'foodType': '건강식',
        'url': "https://i.ibb.co/2KbN5pV/soup.jpg",
      },
      {
        'foodType': '한식',
        'url': "https://i.ibb.co/KXJD0rN/korean-meals.jpg",
      },
      {
        'foodType': '디저트',
        'url': "https://i.ibb.co/9Yn3t0w/tiramisu.jpg",
      },
      {
        'foodType': '피자',
        'url': "https://i.ibb.co/P9nKtt2/pizza.jpg",
      },
      {
        'foodType': '볶음밥',
        'url': "https://i.ibb.co/3svVzM1/shakshuka.jpg",
      },
    ];

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          "Food Recipe",
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.person_outline,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "상품을 검색해주세요.",
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                suffixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),
              ),
            ),
          ),
          Divider(
            height: 1,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: dataList.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: const EdgeInsets.all(8),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.network(
                        dataList[index]['url'],
                        width: double.infinity,
                        height: 120,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        width: double.infinity,
                        height: 120,
                        color: Colors.black.withOpacity(0.5),
                      ),
                      Text(
                        dataList[index]['foodType'],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 50,
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
