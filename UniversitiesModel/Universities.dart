class un {
  List<String> domains;
  List<String> webPages;
  String name;
  String alphaTwoCode;
  Null stateProvince;
  String country;

  un(
      {this.domains,
      this.webPages,
      this.name,
      this.alphaTwoCode,
      this.stateProvince,
      this.country});

  un.fromJson(Map<String, dynamic> json) {
    domains = json['domains'].cast<String>();
    webPages = json['web_pages'].cast<String>();
    name = json['name'];
    alphaTwoCode = json['alpha_two_code'];
    stateProvince = json['state-province'];
    country = json['country'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['domains'] = this.domains;
    data['web_pages'] = this.webPages;
    data['name'] = this.name;
    data['alpha_two_code'] = this.alphaTwoCode;
    data['state-province'] = this.stateProvince;
    data['country'] = this.country;
    return data;
  }
}
