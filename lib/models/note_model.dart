class NoteModel {
  final String title;
  final String subTitle;
  final String date;
  final int color;
  NoteModel({
    required this.title,
    required this.color,
    required this.date,
    required this.subTitle,
  });
  factory NoteModel.fromJson(jsonData) {
    return NoteModel(
      title: jsonData['title'],
      color: jsonData['color'],
      date: jsonData['date'],
      subTitle: jsonData['subTitle'],
    );
  }
}
