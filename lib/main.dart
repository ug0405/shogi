import 'dart:math';

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
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Board(),
    );
  }
}

class Board extends StatefulWidget {
  const Board({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
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
          type: ShogiPieceType.ousho),
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
  List<List<int>> moveRange = [];
  List<List<int>> calculateMoveRange(int row, int col, ShogiPiece piece) {
    List<List<int>> candidateMoves = [];

    int direction = piece.isAlly ? -1 : 1;

    switch (piece.type) {
      case ShogiPieceType.hohei:
        var newRow = row + direction;
        // 自分の駒が前にある場合は進めないため、1マスだけチェック
        if (newRow >= 0 && newRow < rows && shogiBoard[newRow][col] == null) {
          candidateMoves.add([newRow, col]);
        }

        // 敵の駒がある場合、そのマスを含めて移動範囲に追加
        if (newRow >= 0 &&
            newRow < rows &&
            shogiBoard[newRow][col] != null &&
            shogiBoard[newRow][col]!.isAlly != piece.isAlly) {
          candidateMoves.add([newRow, col]);
        }

        break;
      case ShogiPieceType.kyousya:
        int newRow = row + direction;

        // 香車の前方に進む可能性のあるマスを追加
        while (newRow >= 0 && newRow < rows) {
          if (shogiBoard[newRow][col] == null) {
            candidateMoves.add([newRow, col]);
            newRow += direction;
          } else {
            break; // 味方か敵の駒があるため、これ以上進めない
          }
        }

        // 敵の駒がある場合、そのマスを含めて移動範囲に追加
        if (newRow >= 0 &&
            newRow < rows &&
            shogiBoard[newRow][col] != null &&
            shogiBoard[newRow][col]!.isAlly != piece.isAlly) {
          candidateMoves.add([newRow, col]);
        }
        break;
      case ShogiPieceType.keima:
        if (col - 1 >= 0) {
          // 左に移動可能
          int newRow = row + (2 * direction);
          int newCol = col - 1;
          if (isValidMove(newRow, newCol, piece)) {
            candidateMoves.add([newRow, newCol]);
          }
        }
        if (col + 1 < cols) {
          // 右に移動可能
          int newRow = row + (2 * direction);
          int newCol = col + 1;
          if (isValidMove(newRow, newCol, piece)) {
            candidateMoves.add([newRow, newCol]);
          }
        }
        break;
      case ShogiPieceType.ginsho:
        // 前方斜め左に移動可能
        int newRow = row + (1 * direction);
        int newCol = col - 1;
        if (isValidMove(newRow, newCol, piece)) {
          candidateMoves.add([newRow, newCol]);
        }

        // 前方斜め右に移動可能
        newRow = row + (1 * direction);
        newCol = col + 1;
        if (isValidMove(newRow, newCol, piece)) {
          candidateMoves.add([newRow, newCol]);
        }

        // 前方に移動可能
        newRow = row + (1 * direction);
        newCol = col;
        if (isValidMove(newRow, newCol, piece)) {
          candidateMoves.add([newRow, newCol]);
        }

        // 後方斜め左に移動可能
        newRow = row - (1 * direction);
        newCol = col - 1;
        if (isValidMove(newRow, newCol, piece)) {
          candidateMoves.add([newRow, newCol]);
        }

        // 後方斜め右に移動可能
        newRow = row - (1 * direction);
        newCol = col + 1;
        if (isValidMove(newRow, newCol, piece)) {
          candidateMoves.add([newRow, newCol]);
        }
        break;
      case ShogiPieceType.kinsho:
        // 前方斜め左に移動可能
        int newRow = row + (1 * direction);
        int newCol = col - 1;
        if (isValidMove(newRow, newCol, piece)) {
          candidateMoves.add([newRow, newCol]);
        }

        // 前方斜め右に移動可能
        newRow = row + (1 * direction);
        newCol = col + 1;
        if (isValidMove(newRow, newCol, piece)) {
          candidateMoves.add([newRow, newCol]);
        }

        // 前方に移動可能
        newRow = row + (1 * direction);
        newCol = col;
        if (isValidMove(newRow, newCol, piece)) {
          candidateMoves.add([newRow, newCol]);
        }

        // 後方に移動可能
        newRow = row - (1 * direction);
        newCol = col;
        if (isValidMove(newRow, newCol, piece)) {
          candidateMoves.add([newRow, newCol]);
        }

        // 左に移動可能
        newRow = row;
        newCol = col - 1;
        if (isValidMove(newRow, newCol, piece)) {
          candidateMoves.add([newRow, newCol]);
        }

        // 右に移動可能
        newRow = row;
        newCol = col + 1;
        if (isValidMove(newRow, newCol, piece)) {
          candidateMoves.add([newRow, newCol]);
        }
        break;
      case ShogiPieceType.kakugyo:
        // 左上方向
        for (int i = 1; row - i >= 0 && col - i >= 0; i++) {
          if (isValidMove(row - i, col - i, piece)) {
            candidateMoves.add([row - i, col - i]);
            if (shogiBoard[row - i][col - i] != null) {
              break;
            }
          } else {
            break;
          }
        }

        // 右上方向
        for (int i = 1; row - i >= 0 && col + i < cols; i++) {
          if (isValidMove(row - i, col + i, piece)) {
            candidateMoves.add([row - i, col + i]);
            if (shogiBoard[row - i][col + i] != null) {
              break;
            }
          } else {
            break;
          }
        }

        // 左下方向
        for (int i = 1; row + i < rows && col - i >= 0; i++) {
          if (isValidMove(row + i, col - i, piece)) {
            candidateMoves.add([row + i, col - i]);
            if (shogiBoard[row + i][col - i] != null) {
              break;
            }
          } else {
            break;
          }
        }

        // 右下方向
        for (int i = 1; row + i < rows && col + i < cols; i++) {
          if (isValidMove(row + i, col + i, piece)) {
            candidateMoves.add([row + i, col + i]);
            if (shogiBoard[row + i][col + i] != null) {
              break;
            }
          } else {
            break;
          }
        }
        break;
      case ShogiPieceType.hisya:
        // 上方向
        for (int i = row - 1; i >= 0; i--) {
          if (isValidMove(i, col, piece)) {
            candidateMoves.add([i, col]);
            if (shogiBoard[i][col] != null) {
              break;
            }
          } else {
            break;
          }
        }

        // 下方向
        for (int i = row + 1; i < rows; i++) {
          if (isValidMove(i, col, piece)) {
            candidateMoves.add([i, col]);
            if (shogiBoard[i][col] != null) {
              break;
            }
          } else {
            break;
          }
        }

        // 左方向
        for (int i = col - 1; i >= 0; i--) {
          if (isValidMove(row, i, piece)) {
            candidateMoves.add([row, i]);
            if (shogiBoard[row][i] != null) {
              break;
            }
          } else {
            break;
          }
        }

        // 右方向
        for (int i = col + 1; i < cols; i++) {
          if (isValidMove(row, i, piece)) {
            candidateMoves.add([row, i]);
            if (shogiBoard[row][i] != null) {
              break;
            }
          } else {
            break;
          }
        }
        break;
      case ShogiPieceType.ousho:
      case ShogiPieceType.gyokusho:
        // 上方向
        if (isValidMove(row - 1, col, piece)) {
          candidateMoves.add([row - 1, col]);
        }

        // 下方向
        if (isValidMove(row + 1, col, piece)) {
          candidateMoves.add([row + 1, col]);
        }

        // 左方向
        if (isValidMove(row, col - 1, piece)) {
          candidateMoves.add([row, col - 1]);
        }

        // 右方向
        if (isValidMove(row, col + 1, piece)) {
          candidateMoves.add([row, col + 1]);
        }

        // 左上方向
        if (isValidMove(row - 1, col - 1, piece)) {
          candidateMoves.add([row - 1, col - 1]);
        }

        // 右上方向
        if (isValidMove(row - 1, col + 1, piece)) {
          candidateMoves.add([row - 1, col + 1]);
        }

        // 左下方向
        if (isValidMove(row + 1, col - 1, piece)) {
          candidateMoves.add([row + 1, col - 1]);
        }

        // 右下方向
        if (isValidMove(row + 1, col + 1, piece)) {
          candidateMoves.add([row + 1, col + 1]);
        }
        break;
      default:
        break;
    }

    return candidateMoves;
  }

  bool isValidMove(int row, int col, ShogiPiece piece) {
    if (row >= 0 && row < rows && col >= 0 && col < cols) {
      ShogiPiece? targetPiece = shogiBoard[row][col];
      if (targetPiece == null || targetPiece.isAlly != piece.isAlly) {
        return true;
      }
    }
    return false;
  }

  bool isValidPosition(int row, int col) {
    return row >= 0 && row < rows && col >= 0 && col < cols;
  }

  void movePiece(int fromRow, int fromCol, int toRow, int toCol) {
    ShogiPiece? piece = shogiBoard[fromRow][fromCol];

    // 移動可能範囲を計算
    List<List<int>> moveRange = calculateMoveRange(fromRow, fromCol, piece!);

    // 移動先がハイライトされているか確認
    bool isHighlightedMove =
        moveRange.any((coord) => coord[0] == toRow && coord[1] == toCol);

    // ハイライトされている場合のみ移動を許可
    if (piece != null && isHighlightedMove) {
      shogiBoard[toRow][toCol] = piece;
      shogiBoard[fromRow][fromCol] = null;
    }

    // TODO: 駒を取る処理や成る処理などを追加する可能性があります

    // 駒の選択を解除
    setState(() {
      isPieceSelected = false;
      selectedRow = -1;
      selectedCol = -1;
    });
  }

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
              bool isHighlighted =
                  moveRange.any((coord) => coord[0] == row && coord[1] == col);
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
                      // shogiBoard[row][col] =
                      //     shogiBoard[selectedRow][selectedCol];
                      // shogiBoard[selectedRow][selectedCol] = null;

                      movePiece(selectedRow, selectedCol, row, col);
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

                      // 選択された駒の移動範囲を計算
                      moveRange = calculateMoveRange(row, col, piece);
                    });
                  }
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: (isHighlighted && isPieceSelected)
                        ? Colors.green
                        : color,
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
