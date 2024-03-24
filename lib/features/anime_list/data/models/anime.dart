abstract class Anime {
  // String? sTypename;
  int? id;
  String? status;
  int? score;
  int? progress;
  int? repeat;
  bool? private;
  String? notes;
  DateTime? startedAt;
  DateTime? completedAt;
  DateTime? updatedAt;
  Media? media;

  Anime({
    // this.sTypename,
    this.id,
    this.status,
    this.score,
    this.progress,
    this.repeat,
    this.private,
    this.notes,
    this.startedAt,
    this.completedAt,
    this.updatedAt,
    this.media,
  });

  Anime.fromJson() {
    throw UnimplementedError();
  }

  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}

class Media {
  // String? sTypename;
  int? id;
  int? idMal;
  Title? title;
  String? format;
  String? status;
  String? description;
  DateTime? startDate;
  DateTime? endDate;
  int? episodes;
  int? duration;
  String? countryOfOrigin;
  Trailer? trailer;
  int? updatedAt;
  CoverImage? coverImage;
  List<String>? genres;
  List<String>? synonyms;
  int? averageScore;
  int? popularity;
  String? season;
  int? seasonYear;
  // Studios? studios;
  // Null? nextAiringEpisode;

  Media({
    // this.sTypename,
    this.id,
    this.idMal,
    this.title,
    this.format,
    this.status,
    this.description,
    this.startDate,
    this.endDate,
    this.episodes,
    this.duration,
    this.countryOfOrigin,
    this.trailer,
    this.updatedAt,
    this.coverImage,
    this.genres,
    this.synonyms,
    this.averageScore,
    this.popularity,
    // this.studios,
    // this.nextAiringEpisode
    this.season,
    this.seasonYear,
  });

  Media.fromJson(Map<String, dynamic> json) {
    // sTypename = json['__typename'];
    id = json['id'] as int? ?? 0;
    idMal = json['idMal'] as int? ?? 0;
    title = Title.fromJson(json['title'] as Map<String, dynamic>);
    format = json['format'] as String? ?? '';
    status = json['status'] as String? ?? '';
    description = json['description'] as String? ?? '';
    startDate = DateTime(json['startDate']?['year'] as int? ?? 0, json['startDate']?['month'] as int? ?? 0, json['startDate']?['day'] as int? ?? 0);
    endDate = DateTime(json['endDate']?['year'] as int? ?? 0, json['endDate']?['month'] as int? ?? 0, json['endDate']?['day'] as int? ?? 0);
    episodes = json['episodes'] as int? ?? 0;
    duration = json['duration'] as int? ?? 0;
    countryOfOrigin = json['countryOfOrigin'] as String? ?? '';
    trailer = json.containsValue('trailer') ? Trailer.fromJson(json['trailer'] as Map<String, dynamic>) : null;
    updatedAt = json['updatedAt'] as int? ?? 0;
    coverImage = CoverImage.fromJson(json['coverImage'] as Map<String, dynamic>);
    genres = json['genres'].cast<String>() as List<String>? ?? <String>[];
    synonyms = json['synonyms'].cast<String>() as List<String>? ?? <String>[];
    averageScore = json['averageScore'] as int? ?? 0;
    popularity = json['popularity'] as int? ?? 0;
    season = json['season'] as String? ?? '';
    seasonYear = json['seasonYear'] as int? ?? 0;
    // studios = json['studios'] != null ? Studios.fromJson(json['studios']) : null;
    // nextAiringEpisode = json['nextAiringEpisode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    // data['__typename'] = sTypename;
    data['id'] = id;
    data['idMal'] = idMal;
    if (title != null) {
      data['title'] = title!.toJson();
    }
    data['format'] = format;
    data['status'] = status;
    data['description'] = description;
    // if (startDate != null) {
    //   data['startDate'] = startDate!.toJson();
    // }
    // if (endDate != null) {
    //   data['endDate'] = endDate!.toJson();
    // }
    data['episodes'] = episodes;
    data['duration'] = duration;
    data['countryOfOrigin'] = countryOfOrigin;
    if (trailer != null) {
      data['trailer'] = trailer!.toJson();
    }
    data['updatedAt'] = updatedAt;
    if (coverImage != null) {
      data['coverImage'] = coverImage!.toJson();
    }
    data['genres'] = genres;
    data['synonyms'] = synonyms;
    data['averageScore'] = averageScore;
    data['popularity'] = popularity;
    // if (studios != null) {
    //   data['studios'] = studios!.toJson();
    // }
    // data['nextAiringEpisode'] = this.nextAiringEpisode;
    data['season'] = season;
    data['seasonYear'] = seasonYear;
    return data;
  }
}

class Title {
  // String? sTypename;
  String? romaji;
  String? english;
  String? native;
  String? userPreferred;

  Title({
    // this.sTypename,
    this.romaji,
    this.english,
    this.native,
    this.userPreferred,
  });

  Title.fromJson(Map<String, dynamic> json) {
    // sTypename = json['__typename'];
    romaji = json['romaji'] as String? ?? '';
    english = json['english'] as String? ?? '';
    native = json['native'] as String? ?? '';
    userPreferred = json['userPreferred'] as String? ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    // data['__typename'] = sTypename;
    data['romaji'] = romaji;
    data['english'] = english;
    data['native'] = native;
    data['userPreferred'] = userPreferred;
    return data;
  }
}

class Trailer {
  // String? sTypename;
  String? id;
  String? site;

  Trailer({
    // this.sTypename,
    this.id,
    this.site,
  });

  Trailer.fromJson(Map<String, dynamic> json) {
    // sTypename = json['__typename'];
    id = json['id'] as String? ?? '';
    site = json['site'] as String? ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    // data['__typename'] = sTypename;
    data['id'] = id;
    data['site'] = site;
    return data;
  }
}

class CoverImage {
  // String? sTypename;
  String? large;

  CoverImage({
    // this.sTypename,
    this.large,
  });

  CoverImage.fromJson(Map<String, dynamic> json) {
    // sTypename = json['__typename'];
    large = json['large'] as String? ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    // data['__typename'] = sTypename;
    data['large'] = large;
    return data;
  }
}

// class Studios {
//   // String? sTypename;
//   List<Edges>? edges;

//   Studios(
//       {
//       // this.sTypename,
//       this.edges});

//   Studios.fromJson(Map<String, dynamic> json) {
//     // sTypename = json['__typename'];
//     if (json['edges'] != null) {
//       edges = <Edges>[];
//       json['edges'].forEach((v) {
//         edges!.add(Edges.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     // data['__typename'] = sTypename;
//     if (edges != null) {
//       data['edges'] = edges!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class Edges {
//   // String? sTypename;
//   bool? isMain;
//   Node? node;

//   Edges(
//       {
//       // this.sTypename,
//       this.isMain,
//       this.node});

//   Edges.fromJson(Map<String, dynamic> json) {
//     // sTypename = json['__typename'];
//     isMain = json['isMain'];
//     node = json['node'] != null ? Node.fromJson(json['node']) : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     // data['__typename'] = sTypename;
//     data['isMain'] = isMain;
//     if (node != null) {
//       data['node'] = node!.toJson();
//     }
//     return data;
//   }
// }

// class Node {
//   // String? sTypename;
//   String? name;

//   Node(
//       {
//       // this.sTypename,
//       this.name});

//   Node.fromJson(Map<String, dynamic> json) {
//     // sTypename = json['__typename'];
//     name = json['name'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     // data['__typename'] = sTypename;
//     data['name'] = name;
//     return data;
//   }
// }

//define my anime list implementation
// class MyAnime implements Anime {
//   const MyAnime({
//     required this.title,
//     required this.genre,
//     required this.episodes,
//   });

//   @override
//   final String title;
//   @override
//   final String genre;
//   @override
//   final int episodes;

//   @override
//   Map<String, dynamic> toJson() => throw UnimplementedError();

//   factory MyAnime.fromJson(Map<String, dynamic> json) {
//     throw UnimplementedError();
//   }
// }