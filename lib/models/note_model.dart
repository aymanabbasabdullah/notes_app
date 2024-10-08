import 'package:hive/hive.dart';
part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  String title;
  @HiveField(1)
  String subTitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
  int color;

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
