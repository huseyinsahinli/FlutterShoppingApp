import 'package:nectar_ui/core/extensions/string_extensions.dart';
import 'package:nectar_ui/core/init/lang/locale_keys.g.dart';

import '../../../core/constant/image_enum.dart';

class OnBoardModel {
  final String title;
  final String description;
  final dynamic image;

  OnBoardModel(this.title, this.description, this.image);
}

class OnBoardModels {
  static final List<OnBoardModel> onBoardItems = [
    OnBoardModel(
      LocaleKeys.onBoard_page1_title.locale,
      LocaleKeys.onBoard_page1_description.locale,
      ImageEnums.chef.toImagePng,
    ),
    OnBoardModel(
      LocaleKeys.onBoard_page2_title.locale,
      LocaleKeys.onBoard_page2_description.locale,
      ImageEnums.order.toImagePng,
    ),
    OnBoardModel(
      LocaleKeys.onBoard_page3_title.locale,
      LocaleKeys.onBoard_page3_description.locale,
      ImageEnums.delivery.toImagePng,
    ),
  ];
}
