enum ShogiPieceType {
  hohei,
  hisya,
  kyousya,
  keima,
  kinsho,
  ginsho,
  kakugyo,
  ousho,
  gyokusho,
  promotedHohei,
  promotedHisya,
  promotedKyousya,
  promotedKeima,
  promotedGinsho,
  promotedKakugyo,
}

class ShogiPiece {
  final String name;
  final String imageUrl;
  final bool isAlly;
  final ShogiPieceType type;

  ShogiPiece({
    required this.name,
    required this.imageUrl,
    this.isAlly = true,
    required this.type,
  });
}
