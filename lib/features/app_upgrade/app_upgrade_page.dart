import 'package:apptemplate/core/locale/translations.dart';
import 'package:apptemplate/ui_design/app_colors.dart';
import 'package:apptemplate/ui_design/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:store_redirect/store_redirect.dart';

class AppUpgradePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var translations = Translations.of(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          translations.text("upgrade_required").toUpperCase(),
          style: TextStyle(fontSize: AppSizes.generalTitleSize),
        ),
      ),
      body: Column(
        children: <Widget>[
          Spacer(),
          Container(
            width: MediaQuery.of(context).size.width * 0.7,
            child: Text(
              translations.text("upgrade_available_info"),
              style: TextStyle(fontSize: AppSizes.generalTitleSize),
              textAlign: TextAlign.center,
            ),
          ),
          Spacer(),
          RaisedButton(
            child: Text(
              translations.text("upgrade").toUpperCase(),
              style: TextStyle(color: AppColors.buttonTextColor(context)),
            ),
            onPressed: () {
              StoreRedirect.redirect();
            },
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
