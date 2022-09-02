class Hospital {
  String name;
  String address;
  String img;

  Hospital(this.name, this.address, this.img);

  static List<Hospital> hospitalInfo() {
    return [
      Hospital('Diet', 'Health Tips', 'assets/h1.jpg'),
      Hospital('Diabetes', 'Health Issue', 'assets/h2.jpg'),
      Hospital('Stroke', 'Treatment', 'assets/h3.jpg'),
      Hospital('Cancer', 'Awareness', 'assets/h4.jpg')
    ];
  }

  static List<Hospital> mostPopular() {
    return [
      Hospital('Diet', 'Health Tips', 'assets/h1.jpg'),
      Hospital('Diabetes', 'Health Issue', 'assets/h2.jpg'),
      Hospital('Diabetes', 'Health Issue', 'assets/h3.jpg'),
      Hospital('Stroke', 'Treatment', 'assets/h4.jpg')
    ];
  }
}
