import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'AdHelper/adshelper.dart';
import 'Screens/MainScreen.dart';
import 'utils/constants.dart';

AppOpenAd? openAd;

Future<void> loadAd() async {
  await AppOpenAd.load(adUnitId: AdHelper.appOpenAd, request: const AdRequest(),
      adLoadCallback: AppOpenAdLoadCallback(
          onAdLoaded: (ad){
            openAd = ad;
            openAd!.show();
          },
          onAdFailedToLoad: (error){
            print('open ad load failed $error');
          }),
      orientation: AppOpenAd.orientationPortrait);
}


void showAd()
{
  if(openAd == null)
  {
    print('trying to show before loading');
    loadAd();
    return;
  }
  openAd!.fullScreenContentCallback = FullScreenContentCallback(
      onAdShowedFullScreenContent: (ad) {
        print('onAdShowedFullScreenContent');
      },
      onAdFailedToShowFullScreenContent: (ad,error)
      {
        ad.dispose();
        print('failed to load $error');
        openAd = null;
        loadAd();
      },
      onAdDismissedFullScreenContent: (ad)
      {
        ad.dispose();
        print('onAdWillDismissFullScreenContent');
        openAd = null;
        loadAd();
      }
  );
  openAd!.show();
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(MyApp());

  MobileAds.instance.initialize();

  // await loadAd();

}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _debugLabelString = "";

  late String _emailAddress;

  late String _externalUserId;

  bool _enableConsentButton = false;

  bool _requireConsent = true;


  @override
  void initState() {
    super.initState();
    initPlatformState();
    _handleConsent();
    // _handleSendNotification();

  }

  Future<void> initPlatformState() async {
    if (!mounted) return;
    OneSignal.shared.setLogLevel(OSLogLevel.verbose, OSLogLevel.none);
    OneSignal.shared.setRequiresUserPrivacyConsent(_requireConsent);
    var settings = {
      OSiOSSettings.autoPrompt: false,
      OSiOSSettings.promptBeforeOpeningPushUrl: true
    };

    // OneSignal.shared
    //     .setNotificationReceivedHandler((OSNotification notification) {
    //   this.setState(() {
    //     _debugLabelString =
    //     "Received notification: \n${notification.jsonRepresentation().replaceAll("\\n", "\n")}";
    //   });
    // });

    OneSignal.shared
        .setNotificationOpenedHandler((OSNotificationOpenedResult result) {
      this.setState(() {
        _debugLabelString =
        "Opened notification: \n${result.notification.jsonRepresentation().replaceAll("\\n", "\n")}";
      });
    });

    OneSignal.shared
        .setInAppMessageClickedHandler((OSInAppMessageAction action) {
      this.setState(() {
        _debugLabelString =
        "In App Message Clicked: \n${action.jsonRepresentation().replaceAll("\\n", "\n")}";
      });
    });

    OneSignal.shared
        .setSubscriptionObserver((OSSubscriptionStateChanges changes) {
      // print("SUBSCRIPTION STATE CHANGED: ${changes.jsonRepresentation()}");
    });

    OneSignal.shared.setPermissionObserver((OSPermissionStateChanges changes) {
      // print("PERMISSION STATE CHANGED: ${changes.jsonRepresentation()}");
    });

    OneSignal.shared.setEmailSubscriptionObserver(
            (OSEmailSubscriptionStateChanges changes) {
          // print("EMAIL SUBSCRIPTION STATE CHANGED ${changes.jsonRepresentation()}");
        });

    // NOTE: Replace with your own app ID from https://www.onesignal.com
    await OneSignal.shared
        .setAppId("e4dbc35c-33a8-4500-b198-53a911a4b3d2");

    // OneSignal.shared
    //     .setInFocusDisplayType(OSNotificationDisplayType.notification);
  }

  void _handleConsent() {
    print("Setting consent to true");
    OneSignal.shared.consentGranted(true);
  }

  // void _handleSendNotification() async {
  //   var status = await OneSignal.shared.getPermissionSubscriptionState();
  //   var playerId = status.subscriptionStatus.userId;
  // }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chanakya Neeti Hindi',
      theme : ThemeData(
        brightness: Brightness.light,
        primaryColor: kprimarycolor,
        primaryTextTheme: TextTheme(
          bodyText1: TextStyle(),
          bodyText2: TextStyle(),
          subtitle1: TextStyle(),
        ).apply(
          bodyColor:kprimarycolor,
          displayColor: kprimarycolor,
          decorationColor: kprimarycolor,
        ),
        scaffoldBackgroundColor: ksecondcolor,
        primaryIconTheme: IconThemeData(
          color:const Color(0xfffB2EBF2),
        ),
        primarySwatch: Colors.blue,
        accentColor: Colors.yellow,

        tabBarTheme: TabBarTheme(
          labelColor: Color(0xfffB2EBF2),
          unselectedLabelColor: Color(0xfffB2EBF2),
        ),
        appBarTheme: AppBarTheme(
          color: kprimarycolor,
        ),
        buttonTheme: ButtonThemeData(),
        textTheme: TextTheme(
          bodyText1: TextStyle(),
          bodyText2: TextStyle(),
          subtitle1: TextStyle(),
        ).apply(
          bodyColor: Colors.blue[700],
          displayColor: Colors.blue[700],
          decorationColor: Color(0xff247188),
        ),
        iconTheme: IconThemeData(color: Color(0xff2a77a0),),
        buttonColor: Color(0xff2a77a0),

      ),

      home: IntroSplashScreen(),
    );
  }
}

class IntroSplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<IntroSplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds:3 ), ()=>
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomeScreen())));
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chanakya Neeti Hindi',
      home: Scaffold(
        body: Container(
          color: Colors.white,
          child: Stack(
            children: [
              Image.asset('assets/images/logo.png' ,
                height: double.infinity,
                width: double.infinity,
                alignment: Alignment.center,),


              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 8,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        "Designed & Developed By - Darshan Komu",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.aBeeZee(textStyle: TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.w600,))

                    ),
                  ),
                ),
              ),

            ],
          ),
        ),

      ),

    );
  }

}
