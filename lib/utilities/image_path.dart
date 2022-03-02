import 'package:flutter_svg/flutter_svg.dart';
import 'package:nectar_ui/utilities/constants.dart';

class ImagePath {
  static const String _imagesPath = "assets/images/";
  static const String _iconsPath = "assets/icons/";
  /*Pass*/
  static List exploreListImagePath = [
    _imagesPath + "frashFruitsVegetable.png",
    _imagesPath + "cookingOil.png",
    _imagesPath + "meatFish.png",
    _imagesPath + "bakerySnacks.png",
    _imagesPath + "dairyEggs.png",
    _imagesPath + "beverages.png",
    _imagesPath + "frashFruitsVegetable.png",
    _imagesPath + "frashFruitsVegetable.png",
  ];
  static List groceriesListImagePath = [
    _imagesPath + "been.png",
    _imagesPath + "rice.png",
    _imagesPath + "been.png",
  ];
  /*main*/
  static const String aboutIconPath = _iconsPath + "about.svg";
  static const String addressIconPath = _iconsPath + "address.svg";
  static const String bellIconPath = _iconsPath + "bell.svg";
  static const String creditIconPath = _iconsPath + "credit.svg";
  static const String detailsIconPath = _iconsPath + "details.svg";
  static const String helpIconPath = _iconsPath + "help.svg";
  static const String orderIconPath = _iconsPath + "order.svg";
  static const String ticketIconPath = _iconsPath + "ticket.svg";
  static const String pencilIconPath = _iconsPath + "pencil.svg";
  static const String logoutIconPath = _iconsPath + "logout.svg";
  static const String backArrowIconPath = _iconsPath + "backarrow.svg";
  static const String addIconPath = _iconsPath + "arti.svg";
  static const String removeIconPath = _iconsPath + "eksi.svg";
  static const String closeIconPath = _iconsPath + "cross.svg";
  static const String deleteIconPath = _iconsPath + "delete.svg";
  static const String shopIconPath = _iconsPath + "store.svg";
  static const String exploreIconPath = _iconsPath + "explore.svg";
  static const String cartIconPath = _iconsPath + "cart.svg";
  static const String favouriteIconPath = _iconsPath + "heart.svg";
  static const String accountIconPath = _iconsPath + "user.svg";
  static const String logoIconPath = _iconsPath + "logo.svg";
  static const String locationIconPath = _iconsPath + "location.svg";

  static final shopIcon = SvgPicture.asset(shopIconPath);
  static final shopIconActive =
      SvgPicture.asset(shopIconPath, color: cMainColor);
  static final exploreIcon = SvgPicture.asset(exploreIconPath);
  static final exploreIconActive =
      SvgPicture.asset(exploreIconPath, color: cMainColor);
  static final cartIcon = SvgPicture.asset(cartIconPath);
  static final cartIconActive =
      SvgPicture.asset(cartIconPath, color: cMainColor);
  static final favouriteIcon = SvgPicture.asset(favouriteIconPath);
  static final favouriteIconActive =
      SvgPicture.asset(favouriteIconPath, color: cMainColor);
  static final accountIcon = SvgPicture.asset(accountIconPath);
  static final accountIconActive =
      SvgPicture.asset(accountIconPath, color: cMainColor);
  static final pencilIcon = SvgPicture.asset(pencilIconPath);
  static final backArrowIcon = SvgPicture.asset(backArrowIconPath);
  static final logoutIcon = SvgPicture.asset(logoutIconPath);
  static final addIcon = SvgPicture.asset(addIconPath);
  static final removeIcon = SvgPicture.asset(removeIconPath);
  static final closeIcon = SvgPicture.asset(closeIconPath);
  static final deleteIcon = SvgPicture.asset(deleteIconPath);
  static final logoIcon = SvgPicture.asset(logoIconPath);
  static final locationIcon = SvgPicture.asset(locationIconPath);
}
