import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../app/asset_paths.dart';

class AppLogo extends StatelessWidget {
  final double? width;
  final double? height;

  const AppLogo({super.key, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      width: width ?? 100,
      height: height,
      AssetPaths.logoSvg,
    );
  }
}
