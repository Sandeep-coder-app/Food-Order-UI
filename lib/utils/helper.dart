import 'package:flutter_svg/flutter_svg.dart';

const String icon_path = "assets/";

getSvgIcon(icon) {
  return SvgPicture.asset(icon_path + icon);
}

getImageNetwork(url) {
  return url;
}