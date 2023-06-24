class FavouriteModel {
  late final String title;
  late final int year;

  FavouriteModel(dynamic obj) {
    title = obj['title'];
    year = obj['year'];
  }

  FavouriteModel.fromJson(Map<String, dynamic> data) {
    title = data['title'];
    year = data['year'];
  }

  Map<String, dynamic> toMap() => {
    'title': title,
    'year': year,
  };
}