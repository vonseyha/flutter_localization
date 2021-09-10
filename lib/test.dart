import 'package:flutter/material.dart';
import 'package:flutter_localization/providers/locale_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    // var _lang = AppLocalizeService.of(context);
    return Consumer<LocaleProvider>(builder: (context, provider, snapshot) {
      // var lang = provider.locale ?? Localizations.localeOf(context);
      return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppLocalizations.of(context)!.english_language,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 25.0),
              Container(
                child: IconButton(
                  icon: Icon(
                    Icons.cached_outlined
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Test1()));
                  }
              ), 
              )       
            ],
          ),
        ),
      );
    });
  }
}


class Test1 extends StatefulWidget {
  @override
  _Test1State createState() => _Test1State();
}

class _Test1State extends State<Test> {
  @override
  Widget build(BuildContext context) {
    // var _lang = AppLocalizations.of(context);
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppLocalizations.of(context)!.english_language,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 25.0),
              // Container(
              //   child: IconButton(
              //     icon: Icon(
              //       Icons.add
              //     ),
              //     onPressed: (){
              //       Navigator.push(context, MaterialPageRoute(builder: (context) => Test1()));
              //     }
              // ), 
              // )       

            ],
          ),
        ),
      );
  }
}
