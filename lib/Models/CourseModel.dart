class CourseModel {
  final int id;
  final String title; // غير قابل للقيم الفارغة
  final String subject; // غير قابل للقيم الفارغة
  final String overview; // غير قابل للقيم الفارغة
  final String? photo; // قابل للقيم الفارغة
  final String createdAt; // غير قابل للقيم الفارغة

  CourseModel({
    required this.id,
    required this.title,
    required this.subject,
    required this.overview,
    this.photo,
    required this.createdAt,
  });

  factory CourseModel.fromJson(Map<String, dynamic> json) {
    return CourseModel(
      id: json['id'] as int? ?? 0, // قيمة افتراضية إذا كان null
      title: json['title'] as String? ?? '', // قيمة افتراضية إذا كان null
      subject: json['subject'] as String? ?? '', // قيمة افتراضية إذا كان null
      overview: json['overview'] as String? ?? '', // قيمة افتراضية إذا كان null
      photo: json['photo'] as String?, // قابل للقيم الفارغة
      createdAt: json['createdAt'] as String? ?? '', // قيمة افتراضية إذا كان null
    );
  }

  // Convert the model to a JSON map
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'subject': subject,
      'overview': overview,
      'photo': photo,
      'createdAt': createdAt,
    };
  }
}