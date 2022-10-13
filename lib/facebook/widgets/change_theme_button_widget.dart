import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_2_figma_2/facebook/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class ChangeThemeButtonWidget extends StatelessWidget {
  const ChangeThemeButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeprovider=Provider.of<Themeprovider>(context);
    return Switch.adaptive(value: themeprovider.isDarkMode,
    onChanged:(value) {
      
    },);
  }
}