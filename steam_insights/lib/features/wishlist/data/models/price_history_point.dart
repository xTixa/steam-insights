/// API-facing DTO for a wishlist item's price history, if/when a price API
/// is wired up. The persisted embedded version lives with WishlistItemModel
/// in core/database/models since Isar embedded objects must live alongside
/// the schema they embed in.
class PriceHistoryPointDto {
  const PriceHistoryPointDto({
    required this.recordedAt,
    required this.priceCents,
    required this.currency,
  });

  factory PriceHistoryPointDto.fromJson(Map<String, dynamic> json) {
    return PriceHistoryPointDto(
      recordedAt: DateTime.parse(json['recorded_at'] as String),
      priceCents: (json['price_cents'] as num).toDouble(),
      currency: json['currency'] as String,
    );
  }

  final DateTime recordedAt;
  final double priceCents;
  final String currency;
}
