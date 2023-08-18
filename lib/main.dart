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
          imagePath: 'assets/image/kyousya.png',
          isAlly: false,
          type: ShogiPieceType.kyousya),
      ShogiPiece(
          name: '桂馬',
          imagePath: 'assets/image/kyousya.png',
          isAlly: false,
          type: ShogiPieceType.keima),
      ShogiPiece(
          name: '銀将',
          imagePath: 'assets/image/ginsho.png',
          isAlly: false,
          type: ShogiPieceType.ginsho),
      ShogiPiece(
          name: '金将',
          imagePath: 'assets/image/kinsho.png',
          isAlly: false,
          type: ShogiPieceType.kinsho),
      ShogiPiece(
          name: '玉将',
          imagePath: 'assets/image/gyokusho.png',
          isAlly: false,
          type: ShogiPieceType.gyokusho),
      ShogiPiece(
          name: '金将',
          imagePath: 'assets/image/kinsho.png',
          isAlly: false,
          type: ShogiPieceType.kinsho),
      ShogiPiece(
          name: '銀将',
          imagePath: 'assets/image/ginsho.png',
          isAlly: false,
          type: ShogiPieceType.ginsho),
      ShogiPiece(
          name: '桂馬',
          imagePath: 'assets/image/keima.png',
          isAlly: false,
          type: ShogiPieceType.keima),
      ShogiPiece(
          name: '香車',
          imagePath: 'assets/image/kyousya.png',
          isAlly: false,
          type: ShogiPieceType.kyousya)
    ],
    [
      null,
      ShogiPiece(
          name: '飛車',
          imagePath: 'assets/image/hisya.png',
          isAlly: false,
          type: ShogiPieceType.hisya),
      null,
      null,
      null,
      null,
      null,
      ShogiPiece(
          name: '角行',
          imagePath: 'assets/image/kakugyo.png',
          isAlly: false,
          type: ShogiPieceType.kakugyo),
      null
    ],
    [
      ShogiPiece(
          name: '歩',
          imagePath: 'assets/image/huhei.png',
          isAlly: false,
          type: ShogiPieceType.hohei),
      ShogiPiece(
          name: '歩',
          imagePath: 'assets/image/huhei.png',
          isAlly: false,
          type: ShogiPieceType.hohei),
      ShogiPiece(
          name: '歩',
          imagePath: 'assets/image/huhei.png',
          isAlly: false,
          type: ShogiPieceType.hohei),
      ShogiPiece(
          name: '歩',
          imagePath: 'assets/image/huhei.png',
          isAlly: false,
          type: ShogiPieceType.hohei),
      ShogiPiece(
          name: '歩',
          imagePath: 'assets/image/huhei.png',
          isAlly: false,
          type: ShogiPieceType.hohei),
      ShogiPiece(
          name: '歩',
          imagePath: 'assets/image/huhei.png',
          isAlly: false,
          type: ShogiPieceType.hohei),
      ShogiPiece(
          name: '歩',
          imagePath: 'assets/image/huhei.png',
          isAlly: false,
          type: ShogiPieceType.hohei),
      ShogiPiece(
          name: '歩',
          imagePath: 'assets/image/huhei.png',
          isAlly: false,
          type: ShogiPieceType.hohei),
      ShogiPiece(
          name: '歩',
          imagePath: 'assets/image/huhei.png',
          isAlly: false,
          type: ShogiPieceType.hohei),
    ],
    [null, null, null, null, null, null, null, null, null],
    [null, null, null, null, null, null, null, null, null],
    [null, null, null, null, null, null, null, null, null],
    [
      ShogiPiece(
          name: '歩',
          imagePath: 'assets/image/huhei.png',
          isAlly: true,
          type: ShogiPieceType.hohei),
      ShogiPiece(
          name: '歩',
          imagePath: 'assets/image/huhei.png',
          isAlly: true,
          type: ShogiPieceType.hohei),
      ShogiPiece(
          name: '歩',
          imagePath: 'assets/image/huhei.png',
          isAlly: true,
          type: ShogiPieceType.hohei),
      ShogiPiece(
          name: '歩',
          imagePath: 'assets/image/huhei.png',
          isAlly: true,
          type: ShogiPieceType.hohei),
      ShogiPiece(
          name: '歩',
          imagePath: 'assets/image/huhei.png',
          isAlly: true,
          type: ShogiPieceType.hohei),
      ShogiPiece(
          name: '歩',
          imagePath: 'assets/image/huhei.png',
          isAlly: true,
          type: ShogiPieceType.hohei),
      ShogiPiece(
          name: '歩',
          imagePath: 'assets/image/huhei.png',
          isAlly: true,
          type: ShogiPieceType.hohei),
      ShogiPiece(
          name: '歩',
          imagePath: 'assets/image/huhei.png',
          isAlly: true,
          type: ShogiPieceType.hohei),
      ShogiPiece(
          name: '歩',
          imagePath: 'assets/image/huhei.png',
          isAlly: true,
          type: ShogiPieceType.hohei),
    ],
    [
      null,
      ShogiPiece(
          name: '角行',
          imagePath: 'assets/image/kakugyo.png',
          isAlly: true,
          type: ShogiPieceType.kakugyo),
      null,
      null,
      null,
      null,
      null,
      ShogiPiece(
          name: '飛車',
          imagePath: 'assets/image/hisya.png',
          isAlly: true,
          type: ShogiPieceType.hisya),
      null
    ],
    [
      ShogiPiece(
          name: '香車',
          imagePath: 'assets/image/kyousya.png',
          isAlly: true,
          type: ShogiPieceType.kyousya),
      ShogiPiece(
          name: '桂馬',
          imagePath: 'assets/image/keima.png',
          isAlly: true,
          type: ShogiPieceType.keima),
      ShogiPiece(
          name: '銀将',
          imagePath: 'assets/image/ginsho.png',
          isAlly: true,
          type: ShogiPieceType.ginsho),
      ShogiPiece(
          name: '金将',
          imagePath: 'assets/image/kinsho.png',
          isAlly: true,
          type: ShogiPieceType.kinsho),
      ShogiPiece(
          name: '王将',
          imagePath: 'assets/image/ousho.png',
          isAlly: true,
          type: ShogiPieceType.ousho),
      ShogiPiece(
          name: '金将',
          imagePath: 'assets/image/kinsho.png',
          isAlly: true,
          type: ShogiPieceType.kinsho),
      ShogiPiece(
          name: '銀将',
          imagePath: 'assets/image/ginsho.png',
          isAlly: true,
          type: ShogiPieceType.ginsho),
      ShogiPiece(
          name: '桂馬',
          imagePath: 'assets/image/keima.png',
          isAlly: true,
          type: ShogiPieceType.keima),
      ShogiPiece(
          name: '香車',
          imagePath: 'assets/image/kyousya.png',
          isAlly: true,
          type: ShogiPieceType.kyousya)
    ],
  ];
  // 相手の駒を取るためのリストを宣言
  List<ShogiPiece> takenPieces = [];
  //敵のコマのリスト
  List<ShogiPiece> enemyTakenPieces = [];
  //味方の駒のリスト
  List<ShogiPiece> allyTakenPieces = [];
  bool isPieceSelected = false;
  bool isPlayer1Turn = true; // プレイヤー1のターンかどうかを管理するフラグ
  int selectedRow = -1;
  int selectedCol = -1;
  ShogiPiece? selectedTakenPiece; // 選択された取った駒
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
      case ShogiPieceType.promotedHohei:
      case ShogiPieceType.promotedKyousya:
      case ShogiPieceType.promotedKeima:
      case ShogiPieceType.promotedGinsho:
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
      case ShogiPieceType.promotedKakugyo:
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
      case ShogiPieceType.promotedHisya: // 成り飛車の動き // 成り飛車の動き
        // 飛車の上方向
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

        // 飛車の下方向
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

        // 飛車の左方向
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

        // 飛車の右方向
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

        // 成り飛車の斜めに1マスだけ移動
        if (isValidMove(row - 1, col - 1, piece)) {
          candidateMoves.add([row - 1, col - 1]);
        }
        if (isValidMove(row - 1, col + 1, piece)) {
          candidateMoves.add([row - 1, col + 1]);
        }
        if (isValidMove(row + 1, col - 1, piece)) {
          candidateMoves.add([row + 1, col - 1]);
        }
        if (isValidMove(row + 1, col + 1, piece)) {
          candidateMoves.add([row + 1, col + 1]);
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
      // 駒を取る処理を追加

      ShogiPiece? takenPiece = shogiBoard[toRow][toCol];
      if (takenPiece != null && takenPiece.isAlly != piece.isAlly) {
        // 成り駒であれば、元の駒に戻す
        if (takenPiece.canPromote) {
          takenPiece = ShogiPiece(
            name: takenPiece.name,
            imagePath: getOriginalPiecePath(takenPiece.imagePath),
            isAlly: takenPiece.isAlly == true ? false : true,
            type: getOriginalPieceType(takenPiece.type), // 成る前の駒のタイプに戻す処理が必要
            canPromote: false,
          );
        } else {
          takenPiece = ShogiPiece(
            name: takenPiece.name,
            imagePath: takenPiece.imagePath,
            isAlly: takenPiece.isAlly == true ? false : true,
            type: takenPiece.type, // 成る前の駒のタイプに戻す処理が必要
            canPromote: false,
          );
        }
        // 駒を取る場合の処理
        if (piece.isAlly) {
          allyTakenPieces.add(takenPiece);
        } else {
          enemyTakenPieces.add(takenPiece);
        }
        print("Taken piece: ${takenPiece.name}, ${takenPiece.imagePath}");

        // 相手の駒をボード上から削除
        shogiBoard[toRow][toCol] = null;
        // ここで必要な処理を実装してください
      }

// 成るかどうかの条件判定
      if ((toRow <= 2 && piece.isAlly || toRow >= 6 && !piece.isAlly) &&
          !piece.canPromote &&
          (piece.type == ShogiPieceType.hohei ||
              piece.type == ShogiPieceType.kyousya ||
              piece.type == ShogiPieceType.keima ||
              piece.type == ShogiPieceType.ginsho ||
              piece.type == ShogiPieceType.kakugyo ||
              piece.type == ShogiPieceType.hisya)) {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('成りますか？'),
              actions: <Widget>[
                TextButton(
                  child: Text('はい'),
                  onPressed: () {
                    shogiBoard[toRow][toCol] = ShogiPiece(
                      name: piece.name,
                      imagePath: getPromotedPiecePath(piece.imagePath),
                      isAlly: piece.isAlly,
                      type: getPromotedPieceType(piece.type),
                      canPromote: true,
                    );

                    shogiBoard[fromRow][fromCol] = null;
                    Navigator.of(context).pop();
                    setState(() {
                      isPieceSelected = false;
                      selectedRow = -1;
                      selectedCol = -1;
                      moveRange = [];
                    });
                  },
                ),
                TextButton(
                  child: Text('いいえ'),
                  onPressed: () {
                    shogiBoard[toRow][toCol] = piece;
                    shogiBoard[fromRow][fromCol] = null;
                    Navigator.of(context).pop();
                    setState(() {
                      isPieceSelected = false;
                      selectedRow = -1;
                      selectedCol = -1;
                      moveRange = [];
                    });
                  },
                ),
              ],
            );
          },
        );
      } else {
        // 成らない場合は通常の駒の移動処理
        shogiBoard[toRow][toCol] = piece;
        shogiBoard[fromRow][fromCol] = null;
        setState(() {
          isPieceSelected = false;
          selectedRow = -1;
          selectedCol = -1;
          moveRange = [];
        });
      }
    }

    // TODO: 駒を取る処理や成る処理などを追加する可能性があります

    // 駒の選択を解除
    setState(() {
      isPieceSelected = false;
      selectedRow = -1;
      selectedCol = -1;
    });
  }

  //駒のタイプを設定
  ShogiPieceType getPromotedPieceType(ShogiPieceType type) {
    switch (type) {
      case ShogiPieceType.hohei:
        return ShogiPieceType.promotedHohei;
      case ShogiPieceType.kyousya:
        return ShogiPieceType.promotedKyousya;
      case ShogiPieceType.keima:
        return ShogiPieceType.promotedKeima;
      case ShogiPieceType.ginsho:
        return ShogiPieceType.promotedGinsho;
      case ShogiPieceType.kakugyo:
        return ShogiPieceType.promotedKakugyo;
      case ShogiPieceType.hisya:
        return ShogiPieceType.promotedHisya;
      // 他の駒の成り判定も追加
      default:
        return type;
    }
  }

  ShogiPieceType getOriginalPieceType(ShogiPieceType promotedType) {
    switch (promotedType) {
      case ShogiPieceType.promotedHohei:
        return ShogiPieceType.hohei;
      case ShogiPieceType.promotedHisya:
        return ShogiPieceType.hisya;
      case ShogiPieceType.promotedKyousya:
        return ShogiPieceType.kyousya;
      case ShogiPieceType.promotedKeima:
        return ShogiPieceType.keima;
      case ShogiPieceType.promotedGinsho:
        return ShogiPieceType.ginsho;
      case ShogiPieceType.promotedKakugyo:
        return ShogiPieceType.kakugyo;
      default:
        return promotedType; // 成り駒でない場合はそのまま返す
    }
  }

  //駒のパスを設定
  String getPromotedPiecePath(String imagePath) {
    switch (imagePath) {
      case 'assets/image/huhei.png':
        return 'assets/image/promotedHohei.png';
      case 'assets/image/kyousya.png':
        return 'assets/image/promotedKyousya.png';
      case 'assets/image/keima.png':
        return 'assets/image/promotedKeima.png';
      case 'assets/image/ginsho.png':
        return 'assets/image/promotedGinsho.png';
      case 'assets/image/kakugyo.png':
        return 'assets/image/promotedKakugyo.png';
      case 'assets/image/hisya.png':
        return 'assets/image/promotedHisya.png';
      default:
        return imagePath;
    }
  }

  String getOriginalPiecePath(String imagePath) {
    switch (imagePath) {
      case 'assets/image/promotedHohei.png':
        return 'assets/image/huhei.png';
      case 'assets/image/promotedKyousya.png':
        return 'assets/image/kyousya.png';
      case 'assets/image/promotedKeima.png':
        return 'assets/image/keima.png';
      case 'assets/image/promotedGinsho.png':
        return 'assets/image/ginsho.png';
      case 'assets/image/promotedKakugyo.png':
        return 'assets/image/kakugyo.png';
      case 'assets/image/promotedHisya.png':
        return 'assets/image/hisya.png';
      default:
        return imagePath;
    }
  }

  // 盤面の表示部分の itemBuilder 内で、選択中の駒を置く処理を実装
  void placeSelectedPiece(int row, int col) {
    if (canPlacePiece(row, col)) {
      shogiBoard[row][col] = selectedTakenPiece;

      if (selectedTakenPiece!.isAlly) {
        allyTakenPieces.remove(selectedTakenPiece); // 選択した駒をリストから削除
      } else {
        enemyTakenPieces.remove(selectedTakenPiece); // 選択した駒をリストから削除
      }
      setState(() {
        selectedTakenPiece = null; // 選択中の駒をリセット
        moveRange = [];
      });
    } else if (!canPlacePiece(row, col)) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('2歩は禁止です'),
            actions: <Widget>[
              TextButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  bool canPlacePiece(int row, int col) {
    bool hasSameDirectionPawn = false;

    // 同じ列に同じ方向の歩が存在するかチェック
    if (selectedTakenPiece!.type == ShogiPieceType.hohei) {
      for (int r = 8; r >= 0; r--) {
        ShogiPiece? piece = shogiBoard[r][col];
        if (piece != null &&
            piece.type == ShogiPieceType.hohei &&
            piece.isAlly == selectedTakenPiece!.isAlly) {
          hasSameDirectionPawn = true;
          break;
        }
      }
    }
    //
    bool canPlace =
        // moveRange.any((coord) => coord[0] == row && coord[1] == col) &&
        shogiBoard[row][col] == null &&
            selectedTakenPiece != null &&
            !hasSameDirectionPawn;

    print("canPlacePiece: row=$row, col=$col, canPlace=$canPlace");

    return canPlace;
  }

  void switchTurn() {
    isPlayer1Turn = !isPlayer1Turn; // ターンを切り替える
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(isPlayer1Turn ? 'Player 1のターン' : 'Player 2のターン'),
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 150,
              ), //
              //敵がとった駒の表示
              SizedBox(
                height: 100, // 適宜調整
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: enemyTakenPieces.length,
                  itemBuilder: (context, index) {
                    ShogiPiece takenPiece = enemyTakenPieces[index];
                    bool isSelected = takenPiece == selectedTakenPiece;
                    print(
                        "Taken piece index: $index, URL: ${enemyTakenPieces[index].imagePath}");
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          if (isSelected) {
                            selectedTakenPiece =
                                null; // 選択された駒が再度タップされたらハイライトを解除
                          } else {
                            selectedTakenPiece = takenPiece;
                          }
                        });
                      },
                      child: Container(
                        width: 50,
                        height: 50,
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color:
                                isSelected ? Colors.blue : Colors.transparent,
                            width: 2,
                          ),
                        ),
                        child: Image.asset(
                          takenPiece.imagePath,
                          fit: BoxFit.contain,
                        ),
                      ),
                    );
                  },
                ),
              ),
              //盤面の表示
              Container(
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
                    bool isHighlighted = moveRange
                        .any((coord) => coord[0] == row && coord[1] == col);
                    return GestureDetector(
                      onTap: () {
                        //Player1はisAlly=trueの駒を動かせる
                        if ((isPlayer1Turn && piece?.isAlly == true) ||
                            (!isPlayer1Turn && piece?.isAlly == false)) {
                          if (isPieceSelected) {
                            if (selectedRow == row && selectedCol == col) {
                              // 同じマスを再度タップした場合、選択を解除
                              setState(() {
                                isPieceSelected = false;
                                selectedRow = -1;
                                selectedCol = -1;
                              });
                            } else {
                              // 駒の移動処理
                              if ((isPlayer1Turn && piece?.isAlly == true) ||
                                  (!isPlayer1Turn && piece?.isAlly == false)) {}
                              movePiece(selectedRow, selectedCol, row, col);
                              setState(() {
                                isPieceSelected = false;
                                selectedRow = -1;
                                selectedCol = -1;
                              });

                              // ターンを切り替える
                              switchTurn();
                            }
                          } else if (piece != null) {
                            setState(() {
                              isPieceSelected = true;
                              selectedRow = row;
                              selectedCol = col;

                              // 選択された駒の移動範囲を計算
                              moveRange = calculateMoveRange(row, col, piece);
                            });
                            // }
                          }
                          //選択した駒の移動処理
                        } else if (((isPlayer1Turn &&
                                isPieceSelected &&
                                (piece?.isAlly == null ||
                                    piece?.isAlly == false)) ||
                            (!isPlayer1Turn &&
                                isPieceSelected &&
                                (piece?.isAlly == null ||
                                    piece?.isAlly == true)))) {
                          if (moveRange.any(
                              (coord) => coord[0] == row && coord[1] == col)) {
                            movePiece(selectedRow, selectedCol, row, col);
                            setState(() {
                              isPieceSelected = false;
                              selectedRow = -1;
                              selectedCol = -1;
                            });
                            // ターンを切り替える
                            switchTurn();
                          }
                          // 取った駒の配置処理
                        } else if (selectedTakenPiece != null &&
                                (isPlayer1Turn &&
                                    selectedTakenPiece?.isAlly == true) ||
                            (!isPlayer1Turn &&
                                selectedTakenPiece?.isAlly == false)) {
                          placeSelectedPiece(row, col);
                          // ターンを切り替える
                          switchTurn();
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
                                transform: Matrix4.rotationX(
                                        piece.isAlly ? 0 : math.pi) *
                                    Matrix4.rotationY(piece.isAlly
                                        ? 0
                                        : math.pi), // 180度回転（縦方向と横方向の反転）
                                child: Image.asset(
                                  piece.imagePath,
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
              // 自分がとった駒の表示
              SizedBox(
                height: 100, // 適宜調整
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: allyTakenPieces.length,
                  itemBuilder: (context, index) {
                    ShogiPiece takenPiece = allyTakenPieces[index];
                    bool isSelected = takenPiece == selectedTakenPiece;
                    print(
                        "Taken piece index: $index, URL: ${allyTakenPieces[index].imagePath}");
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          if (isSelected) {
                            selectedTakenPiece =
                                null; // 選択された駒が再度タップされたらハイライトを解除
                          } else {
                            selectedTakenPiece = takenPiece;
                          }
                        });
                      },
                      child: Container(
                        width: 50,
                        height: 50,
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color:
                                isSelected ? Colors.blue : Colors.transparent,
                            width: 2,
                          ),
                        ),
                        child: Image.asset(
                          takenPiece.imagePath,
                          fit: BoxFit.contain,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
