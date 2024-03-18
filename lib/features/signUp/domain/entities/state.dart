class States {
  String?name;
  String? capital;

  States({this.name, this.capital});

  States.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    capital = json['capital'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['capital'] = capital;
    return data;
  }
}