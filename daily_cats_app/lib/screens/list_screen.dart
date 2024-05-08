import 'package:flutter/material.dart';

import '../models/cat.dart';

final List<Cat> cats = [
    Cat(
        id: "0",
        name: "별님이",
        title: "오늘의 귀염둥이",
        link: "assets/images/cat_00.png",
        likeCount: 1930,
        replyCount: 6,
        created: DateTime(2022, 11, 13, 22, 14, 53, 982),
    ),
    Cat(
        id: "1",
        name: "버찌",
        title: "너만 본단 말이야",
        link: "assets/images/cat_01.png",
        likeCount: 3023,
        replyCount: 9,
        created: DateTime(2022, 10, 24, 11, 00, 23, 689),
    ),
    Cat(
        id: "2",
        name: "레이",
        title: "암 소 씨리어스",
        link: "assets/images/cat_02.png",
        likeCount: 1003,
        replyCount: 2,
        created: DateTime(2022, 1, 6, 11, 24, 9, 353),
    ),
    Cat(
        id: "3",
        name: "굿보이",
        title: "고양이와 함께 춤을",
        link: "assets/images/cat_03.png",
        likeCount: 2012,
        replyCount: 53,
        created: DateTime(2021, 12, 31, 23, 59, 59, 999),
    ),
    Cat(
        id: "4",
        name: "차라",
        title: "이래뵈어도 난 왕족 고양이야",
        link: "assets/images/cat_04.png",
        likeCount: 443,
        replyCount: 1,
        created: DateTime(2022, 4, 23, 17, 32, 50, 725),
    ),
];

class ListScreen extends StatefulWidget {
    const ListScreen({super.key});
    @override
    State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text("Daily Cats"), 
                actions : [
                    IconButton(
                        icon: const Icon(Icons.camera_alt),
                        onPressed: () {},
                    ),
                ],
            ),
            body: GridView.builder(
                padding: const EdgeInsets.only(
                    top: 10.0,
                    left: 10.0,
                    right: 10.0,
                ),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0,
                    childAspectRatio: 1.0,
                ),
                itemCount: cats.length,
                itemBuilder: (_, int index) => GestureDetector(
                    onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => DetailScreen(
                                    cat: cats[index],
                                ),
                            ),
                        );
                    },
                ),
            ),
        );
    }
}