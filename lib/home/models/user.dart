class User {
  final String id;
  final String name;
  final String email;
  final String password;
  final DateTime createdAt;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.createdAt,
  });

  String getInitials() {
    return name.isNotEmpty
        ? name.trim().split(' ').map((e) => e[0]).take(2).join().toUpperCase()
        : '';
  }


  bool checkCredentials(String email, String password) {
    return this.email == email && this.password == password;
  }


}
