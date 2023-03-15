mixin Assets {
  static AssetIcons get icons => AssetIcons();
  static AssetImages get images => AssetImages();
}

class AssetIcons {
  String location = 'assets/icons';
  String get back => '$location/back.svg';
}

class AssetImages {
  String location = 'assets/images';
  String get app => '$location/app.png';
}
