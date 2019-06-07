// ignore: camel_case_types
class deals {
  String _imageUrl;
  String _name;
  String _discount;

  deals(this._imageUrl, this._name, this._discount);

  String get discount => _discount;

  String get name => _name;

  String get imageUrl => _imageUrl;
}
