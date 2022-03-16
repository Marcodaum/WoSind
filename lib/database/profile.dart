class Profile {
  static final Profile _instance = Profile._internal();
  factory Profile() => _instance;

  Profile._internal() {
    // init things inside this
  }

  String username = "Kimatra";
  String mail = "kilianmack@gmx.de";
  String name = "Kilian Mack";

  void setUsername(String username) {
    this.username = username;
  }

  String getUsername() {
    return this.username;
  }

  void setMail(String mail) {
    this.mail = mail;
  }

  String getMail() {
    return this.mail;
  }

  void setName(String name) {
    this.name = name;
  }

  String getName() {
    return this.name;
  }
}
