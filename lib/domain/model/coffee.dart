import 'dart:convert';

class Coffee {
  final int id;
  final String uid;
  final String blendName;
  final String origin;
  final String variety;
  final String notes;
  final String intensifier;
  Coffee({
    required this.id,
    required this.uid,
    required this.blendName,
    required this.origin,
    required this.variety,
    required this.notes,
    required this.intensifier,
  });

  Coffee copyWith({
    int? id,
    String? uid,
    String? blendName,
    String? origin,
    String? variety,
    String? notes,
    String? intensifier,
  }) {
    return Coffee(
      id: id ?? this.id,
      uid: uid ?? this.uid,
      blendName: blendName ?? this.blendName,
      origin: origin ?? this.origin,
      variety: variety ?? this.variety,
      notes: notes ?? this.notes,
      intensifier: intensifier ?? this.intensifier,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'uid': uid,
      'blendName': blendName,
      'origin': origin,
      'variety': variety,
      'notes': notes,
      'intensifier': intensifier,
    };
  }

  factory Coffee.fromMap(Map<String, dynamic> map) {
    return Coffee(
      id: map['id']?.toInt() ?? 0,
      uid: map['uid'] ?? '',
      blendName: map['blendName'] ?? '',
      origin: map['origin'] ?? '',
      variety: map['variety'] ?? '',
      notes: map['notes'] ?? '',
      intensifier: map['intensifier'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Coffee.fromJson(String source) => Coffee.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Coffee(id: $id, uid: $uid, blendName: $blendName, origin: $origin, variety: $variety, notes: $notes, intensifier: $intensifier)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Coffee &&
        other.id == id &&
        other.uid == uid &&
        other.blendName == blendName &&
        other.origin == origin &&
        other.variety == variety &&
        other.notes == notes &&
        other.intensifier == intensifier;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        uid.hashCode ^
        blendName.hashCode ^
        origin.hashCode ^
        variety.hashCode ^
        notes.hashCode ^
        intensifier.hashCode;
  }
}
