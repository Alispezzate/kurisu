//define anilist implementation
import 'package:kurisu/features/anime_list/data/models/anime.dart';

class AniListAnime implements Anime {
  @override
  DateTime? completedAt;

  @override
  int? id;

  @override
  Media? media;

  @override
  String? notes;

  @override
  bool? private;

  @override
  int? progress;

  @override
  int? repeat;

  // @override
  // String? sTypename;

  @override
  int? score;

  @override
  DateTime? startedAt;

  @override
  String? status;

  @override
  DateTime? updatedAt;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    // data['__typename'] = sTypename;
    data['id'] = id;
    data['status'] = status;
    data['score'] = score;
    data['progress'] = progress;
    data['repeat'] = repeat;
    data['private'] = private;
    data['notes'] = notes;
    // if (startedAt != null) {
    //   data['startedAt'] = startedAt!.toJson();
    // }
    // if (completedAt != null) {
    //   data['completedAt'] = completedAt!.toJson();
    // }
    // data['updatedAt'] = updatedAt;
    if (media != null) {
      data['media'] = media!.toJson();
    }
    return data;
  }

  AniListAnime.fromJson(Map<String, dynamic> json) {
    // sTypename = json['__typename'];
    id = json['id'] as int?;
    status = json['status'] as String?;
    score = json['score'] as int?;
    progress = json['progress'] as int?;
    repeat = json['repeat'] as int?;
    private = json['private'] as bool?;
    notes = json['notes'] as String?;
    startedAt = json['startedAt']?['year'] != null && json['startedAt']?['month'] != null && json['startedAt']?['day'] != null
        ? DateTime(json['startedAt']?['year'] as int? ?? 0, json['startedAt']?['month'] as int? ?? 0, json['startedAt']?['day'] as int? ?? 0)
        : null;
    completedAt = json['completedAt']?['year'] != null && json['completedAt']?['month'] != null && json['completedAt']?['day'] != null
        ? DateTime(json['completedAt']?['year'] as int? ?? 0, json['completedAt']?['month'] as int? ?? 0, json['completedAt']?['day'] as int? ?? 0)
        : null;
    //convert from second since epoch to datetime
    updatedAt = (json['updatedAt'] != null && json['updatedAt'] is int && json['updatedAt'] as int > 0)
        ? DateTime.fromMillisecondsSinceEpoch((json['updatedAt'] as int) * 1000)
        : null;
    media = Media.fromJson(json['media'] as Map<String, dynamic>);
  }
}
