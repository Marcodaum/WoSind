class Profile {
  static final Profile _instance = Profile._internal();
  factory Profile() => _instance;

  Profile._internal() {
    // init things inside this
  }

  String username = "Kimatra";
  String mail = "kilianmack";
  String name = "Kilian Mack";
}
