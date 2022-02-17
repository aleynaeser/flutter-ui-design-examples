class User {
  final String imagePath;
  final String name;
  final String job;
  final String about;

  const User({
    required this.imagePath,
    required this.name,
    required this.job,
    required this.about,
  });

  User copy({
    String? imagePath,
    String? name,
    String? job,
    String? about,
    bool? isDarkMode,
  }) =>
      User(
        imagePath: imagePath ?? this.imagePath,
        name: name ?? this.name,
        job: job ?? this.job,
        about: about ?? this.about,
      );

  static User fromJson(Map<String, dynamic> json) => User(
        imagePath: json['imagePath'],
        name: json['name'],
        job: json['job'],
        about: json['about'],
      );

  Map<String, dynamic> toJson() => {
        'imagePath': imagePath,
        'name': name,
        'job': job,
        'about': about,
      };
}
