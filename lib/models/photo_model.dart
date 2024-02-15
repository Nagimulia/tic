class PhotosModel {
  String? url;
  SrcModel? src;
  PhotosModel({this.url, this.src});

  factory PhotosModel.fromMap(Map<String, dynamic> parsedJson) {
    return PhotosModel(
        url: parsedJson['url'], src: SrcModel.fromMap(parsedJson['src']));
  }
}

class SrcModel {
  String? portrait;
  String? original;
  String? large2x;
  String? large;
  String? medium;
  String? small;
  String? landscape;
  String? tiny;
  SrcModel(
      {this.landscape,
      this.large,
      this.large2x,
      this.medium,
      this.original,
      this.portrait,
      this.small,
      this.tiny});

  factory SrcModel.fromMap(Map<String, dynamic> srcJson) {
    return SrcModel(
      portrait: srcJson['portrait'],
      landscape: srcJson['landscape'],
      large: srcJson['large'],
      large2x: srcJson['large2x'],
      medium: srcJson['medium'],
      original: srcJson['original'],
      small: srcJson['small'],
      tiny: srcJson['tiny'],
    );
  }
}
