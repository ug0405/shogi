import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Board(),
    );
  }
}

class Piece {
  final String name;
  final String imageUrl;
  final bool isOpponent;

  Piece({required this.name, required this.imageUrl, this.isOpponent = false});
}

class Board extends StatefulWidget {
  const Board({Key? key}) : super(key: key);

  @override
  _BoardState createState() => _BoardState();
}

class _BoardState extends State<Board> {
  final int rows = 9;
  final int cols = 9;

  final List<List<Piece?>> shogiBoard = [
    [
      Piece(name: '香車', imageUrl: 'assets/image/kyousya.png', isOpponent: true),
      Piece(name: '香車', imageUrl: 'assets/image/kyousya.png', isOpponent: true),
      Piece(name: '銀将', imageUrl: 'assets/image/ginsho.png', isOpponent: true),
      Piece(name: '金将', imageUrl: 'assets/image/kinsho.png', isOpponent: true),
      Piece(name: '王将', imageUrl: 'assets/image/ousho.png', isOpponent: true),
      Piece(name: '金将', imageUrl: 'assets/image/kinsho.png', isOpponent: true),
      Piece(name: '銀将', imageUrl: 'assets/image/ginsho.png', isOpponent: true),
      Piece(name: '桂馬', imageUrl: 'assets/image/keima.png', isOpponent: true),
      Piece(name: '香車', imageUrl: 'assets/image/kyousya.png', isOpponent: true)
    ],
    [
      null,
      Piece(name: '角行', imageUrl: 'assets/image/kakugyo.png', isOpponent: true),
      null,
      null,
      null,
      null,
      null,
      Piece(name: '飛車', imageUrl: 'assets/image/hisya.png', isOpponent: true),
      null
    ],
    [
      Piece(name: '歩', imageUrl: 'assets/image/huhei.png', isOpponent: true),
      Piece(name: '歩', imageUrl: 'assets/image/huhei.png', isOpponent: true),
      Piece(name: '歩', imageUrl: 'assets/image/huhei.png', isOpponent: true),
      Piece(name: '歩', imageUrl: 'assets/image/huhei.png', isOpponent: true),
      Piece(name: '歩', imageUrl: 'assets/image/huhei.png', isOpponent: true),
      Piece(name: '歩', imageUrl: 'assets/image/huhei.png', isOpponent: true),
      Piece(name: '歩', imageUrl: 'assets/image/huhei.png', isOpponent: true),
      Piece(name: '歩', imageUrl: 'assets/image/huhei.png', isOpponent: true),
      Piece(name: '歩', imageUrl: 'assets/image/huhei.png', isOpponent: true),
    ],
    [null, null, null, null, null, null, null, null, null],
    [null, null, null, null, null, null, null, null, null],
    [null, null, null, null, null, null, null, null, null],
    [
      Piece(name: '歩', imageUrl: 'assets/image/huhei.png'),
      Piece(name: '歩', imageUrl: 'assets/image/huhei.png'),
      Piece(name: '歩', imageUrl: 'assets/image/huhei.png'),
      Piece(name: '歩', imageUrl: 'assets/image/huhei.png'),
      Piece(name: '歩', imageUrl: 'assets/image/huhei.png'),
      Piece(name: '歩', imageUrl: 'assets/image/huhei.png'),
      Piece(name: '歩', imageUrl: 'assets/image/huhei.png'),
      Piece(name: '歩', imageUrl: 'assets/image/huhei.png'),
      Piece(name: '歩', imageUrl: 'assets/image/huhei.png'),
    ],
    [
      null,
      Piece(name: '角行', imageUrl: 'assets/image/kakugyo.png'),
      null,
      null,
      null,
      null,
      null,
      Piece(name: '飛車', imageUrl: 'assets/image/hisya.png'),
      null
    ],
    [
      Piece(name: '香車', imageUrl: 'assets/image/kyousya.png'),
      Piece(name: '桂馬', imageUrl: 'assets/image/keima.png'),
      Piece(name: '銀将', imageUrl: 'assets/image/ginsho.png'),
      Piece(name: '金将', imageUrl: 'assets/image/kinsho.png'),
      Piece(name: '王将', imageUrl: 'assets/image/ousho.png'),
      Piece(name: '金将', imageUrl: 'assets/image/kinsho.png'),
      Piece(name: '銀将', imageUrl: 'assets/image/ginsho.png'),
      Piece(name: '桂馬', imageUrl: 'assets/image/keima.png'),
      Piece(name: '香車', imageUrl: 'assets/image/kyousya.png')
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('将棋'),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          color: Color(0xFFD2B48C), // 薄めの茶色の背景色
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: cols,
            ),
            itemBuilder: (BuildContext context, int index) {
              int row = index ~/ cols;
              int col = index % cols;
              Color color = const Color.fromARGB(255, 211, 136, 38);
              Piece? piece = shogiBoard[row][col];

              return GestureDetector(
                onTap: () {
                  // マス目がタップされたときの処理を追加
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: color,
                    border: Border.all(
                      color: Colors.black, // 黒い線の色
                      width: 1.0, // 線の太さ
                    ),
                  ),
                  child: piece != null
                      ? Transform(
                          alignment: Alignment.center,
                          transform: Matrix4.rotationX(
                                  piece.isOpponent ? math.pi : 0) *
                              Matrix4.rotationY(piece.isOpponent
                                  ? math.pi
                                  : 0), // 180度回転（縦方向と横方向の反転）
                          child: Image.asset(
                            piece.imageUrl,
                            fit: BoxFit.contain,
                          ),
                        )
                      : const Center(child: Text("")),
                ),
              );
            },
            itemCount: rows * cols,
          ),
        ),
      ),
    );
  }
}
