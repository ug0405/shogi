import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'shogi_piece.dart';

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

// class Piece {
//   final String name;
//   final String imageUrl;
//   final bool isOpponent;

//   Piece({required this.name, required this.imageUrl, this.isOpponent = false});
// }

class Board extends StatefulWidget {
  const Board({Key? key}) : super(key: key);

  @override
  _BoardState createState() => _BoardState();
}

class _BoardState extends State<Board> {
  final int rows = 9;
  final int cols = 9;

  final List<List<ShogiPiece?>> shogiBoard = [
    [
      ShogiPiece(
          name: '香車',
          imageUrl: 'assets/image/kyousya.png',
          isAlly: false,
          type: ShogiPieceType.kyousya),
      ShogiPiece(
          name: '桂馬',
          imageUrl: 'assets/image/kyousya.png',
          isAlly: false,
          type: ShogiPieceType.keima),
      ShogiPiece(
          name: '銀将',
          imageUrl: 'assets/image/ginsho.png',
          isAlly: false,
          type: ShogiPieceType.ginsho),
      ShogiPiece(
          name: '金将',
          imageUrl: 'assets/image/kinsho.png',
          isAlly: false,
          type: ShogiPieceType.kinsho),
      ShogiPiece(
          name: '玉将',
          imageUrl: 'assets/image/gyokusho.png',
          isAlly: false,
          type: ShogiPieceType.gyokusho),
      ShogiPiece(
          name: '金将',
          imageUrl: 'assets/image/kinsho.png',
          isAlly: false,
          type: ShogiPieceType.kinsho),
      ShogiPiece(
          name: '銀将',
          imageUrl: 'assets/image/ginsho.png',
          isAlly: false,
          type: ShogiPieceType.ginsho),
      ShogiPiece(
          name: '桂馬',
          imageUrl: 'assets/image/keima.png',
          isAlly: false,
          type: ShogiPieceType.keima),
      ShogiPiece(
          name: '香車',
          imageUrl: 'assets/image/kyousya.png',
          isAlly: false,
          type: ShogiPieceType.kyousya)
    ],
    [
      null,
      ShogiPiece(
          name: '飛車',
          imageUrl: 'assets/image/hisya.png',
          isAlly: false,
          type: ShogiPieceType.hisya),
      null,
      null,
      null,
      null,
      null,
      ShogiPiece(
          name: '角行',
          imageUrl: 'assets/image/kakugyo.png',
          isAlly: false,
          type: ShogiPieceType.kakugyo),
      null
    ],
    [
      ShogiPiece(
          name: '歩',
          imageUrl: 'assets/image/huhei.png',
          isAlly: false,
          type: ShogiPieceType.hohei),
      ShogiPiece(
          name: '歩',
          imageUrl: 'assets/image/huhei.png',
          isAlly: false,
          type: ShogiPieceType.hohei),
      ShogiPiece(
          name: '歩',
          imageUrl: 'assets/image/huhei.png',
          isAlly: false,
          type: ShogiPieceType.hohei),
      ShogiPiece(
          name: '歩',
          imageUrl: 'assets/image/huhei.png',
          isAlly: false,
          type: ShogiPieceType.hohei),
      ShogiPiece(
          name: '歩',
          imageUrl: 'assets/image/huhei.png',
          isAlly: false,
          type: ShogiPieceType.hohei),
      ShogiPiece(
          name: '歩',
          imageUrl: 'assets/image/huhei.png',
          isAlly: false,
          type: ShogiPieceType.hohei),
      ShogiPiece(
          name: '歩',
          imageUrl: 'assets/image/huhei.png',
          isAlly: false,
          type: ShogiPieceType.hohei),
      ShogiPiece(
          name: '歩',
          imageUrl: 'assets/image/huhei.png',
          isAlly: false,
          type: ShogiPieceType.hohei),
      ShogiPiece(
          name: '歩',
          imageUrl: 'assets/image/huhei.png',
          isAlly: false,
          type: ShogiPieceType.hohei),
    ],
    [null, null, null, null, null, null, null, null, null],
    [null, null, null, null, null, null, null, null, null],
    [null, null, null, null, null, null, null, null, null],
    [
      ShogiPiece(
          name: '歩',
          imageUrl: 'assets/image/huhei.png',
          isAlly: true,
          type: ShogiPieceType.hohei),
      ShogiPiece(
          name: '歩',
          imageUrl: 'assets/image/huhei.png',
          isAlly: true,
          type: ShogiPieceType.hohei),
      ShogiPiece(
          name: '歩',
          imageUrl: 'assets/image/huhei.png',
          isAlly: true,
          type: ShogiPieceType.hohei),
      ShogiPiece(
          name: '歩',
          imageUrl: 'assets/image/huhei.png',
          isAlly: true,
          type: ShogiPieceType.hohei),
      ShogiPiece(
          name: '歩',
          imageUrl: 'assets/image/huhei.png',
          isAlly: true,
          type: ShogiPieceType.hohei),
      ShogiPiece(
          name: '歩',
          imageUrl: 'assets/image/huhei.png',
          isAlly: true,
          type: ShogiPieceType.hohei),
      ShogiPiece(
          name: '歩',
          imageUrl: 'assets/image/huhei.png',
          isAlly: true,
          type: ShogiPieceType.hohei),
      ShogiPiece(
          name: '歩',
          imageUrl: 'assets/image/huhei.png',
          isAlly: true,
          type: ShogiPieceType.hohei),
      ShogiPiece(
          name: '歩',
          imageUrl: 'assets/image/huhei.png',
          isAlly: true,
          type: ShogiPieceType.hohei),
    ],
    [
      null,
      ShogiPiece(
          name: '角行',
          imageUrl: 'assets/image/kakugyo.png',
          isAlly: true,
          type: ShogiPieceType.kakugyo),
      null,
      null,
      null,
      null,
      null,
      ShogiPiece(
          name: '飛車',
          imageUrl: 'assets/image/hisya.png',
          isAlly: true,
          type: ShogiPieceType.hisya),
      null
    ],
    [
      ShogiPiece(
          name: '香車',
          imageUrl: 'assets/image/kyousya.png',
          isAlly: true,
          type: ShogiPieceType.kyousya),
      ShogiPiece(
          name: '桂馬',
          imageUrl: 'assets/image/kyousya.png',
          isAlly: true,
          type: ShogiPieceType.keima),
      ShogiPiece(
          name: '銀将',
          imageUrl: 'assets/image/ginsho.png',
          isAlly: true,
          type: ShogiPieceType.ginsho),
      ShogiPiece(
          name: '金将',
          imageUrl: 'assets/image/kinsho.png',
          isAlly: true,
          type: ShogiPieceType.kinsho),
      ShogiPiece(
          name: '王将',
          imageUrl: 'assets/image/ousho.png',
          isAlly: true,
          type: ShogiPieceType.gyokusho),
      ShogiPiece(
          name: '金将',
          imageUrl: 'assets/image/kinsho.png',
          isAlly: true,
          type: ShogiPieceType.kinsho),
      ShogiPiece(
          name: '銀将',
          imageUrl: 'assets/image/ginsho.png',
          isAlly: true,
          type: ShogiPieceType.ginsho),
      ShogiPiece(
          name: '桂馬',
          imageUrl: 'assets/image/keima.png',
          isAlly: true,
          type: ShogiPieceType.keima),
      ShogiPiece(
          name: '香車',
          imageUrl: 'assets/image/kyousya.png',
          isAlly: true,
          type: ShogiPieceType.kyousya)
    ],
  ];

  bool isPieceSelected = false;
  int selectedRow = -1;
  int selectedCol = -1;

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
              ShogiPiece? piece = shogiBoard[row][col];

              return GestureDetector(
                onTap: () {
                  if (isPieceSelected) {
                    if (selectedRow == row && selectedCol == col) {
                      // 同じマスを再度タップした場合、選択を解除
                      setState(() {
                        isPieceSelected = false;
                        selectedRow = -1;
                        selectedCol = -1;
                      });
                    } else {
                      // 移動先のマスに駒を移動
                      shogiBoard[row][col] =
                          shogiBoard[selectedRow][selectedCol];
                      shogiBoard[selectedRow][selectedCol] = null;
                      setState(() {
                        isPieceSelected = false;
                        selectedRow = -1;
                        selectedCol = -1;
                      });
                    }
                  } else if (piece != null) {
                    setState(() {
                      isPieceSelected = true;
                      selectedRow = row;
                      selectedCol = col;
                    });
                  }
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: color,
                    border: Border.all(
                      color: Colors.black, // 黒い線の色
                      width: 1.0, // 線の太さ
                    ),
                    boxShadow: isPieceSelected &&
                            selectedRow == row &&
                            selectedCol == col
                        ? [
                            BoxShadow(
                              color: Colors.blue.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 10,
                            ),
                          ]
                        : [],
                  ),
                  child: piece != null
                      ? Transform(
                          alignment: Alignment.center,
                          transform:
                              Matrix4.rotationX(piece.isAlly ? 0 : math.pi) *
                                  Matrix4.rotationY(piece.isAlly
                                      ? 0
                                      : math.pi), // 180度回転（縦方向と横方向の反転）
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
