class OnBoardModel {
  final String title;
  final String description;
  final String imageName;

  OnBoardModel(this.title, this.description, this.imageName);

  String get imageWithPath => 'assets/images/png/$imageName.png';
}

class OnBoardModels {
  static final List<OnBoardModel> onBoardItems = [
    OnBoardModel('Welcome to our store',
        'Get your groceries in as fast as one hour ', 'ic_chef'),
    OnBoardModel('Order Your Food',
        'Now you can order food any time right from your mobile. ', 'ic_order'),
    OnBoardModel('Delivery in Minutes',
        'Get it delivered within minutes of ordering. ', 'ic_delivery'),
  ];
}
