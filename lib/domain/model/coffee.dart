class Coffee {
  final int id;
  final String uid;
  final String blendName;
  final String origin;
  final String variety;
  final String notes;
  final String intensifier;

  const Coffee(
      {required this.id,
      required this.uid,
      required this.blendName,
      required this.origin,
      required this.variety,
      required this.notes,
      required this.intensifier});

  factory Coffee.fromJson(Map<String, dynamic> json) {
    return Coffee(
        id: json['id'],
        uid: json['uid'],
        blendName: json['blend_name'],
        origin: json['origin'],
        variety: json['variety'],
        notes: json['notes'],
        intensifier: json['intensifier']);
  }
}
