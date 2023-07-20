
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:page_transition/page_transition.dart';

import '../AdHelper/adshelper.dart';
import '../utils/constants.dart';
import 'ShlokaDetailScreen.dart';

class SholkaScreen extends StatefulWidget {
  final int chapter;

  const SholkaScreen({Key? key,required this.chapter}) : super(key: key);

  @override
  _SholkaScreenState createState() => _SholkaScreenState(chapter);
}

class _SholkaScreenState extends State<SholkaScreen> {

  final int chapter;

  _SholkaScreenState(this.chapter); //constructor

  late BannerAd _bannerAd;

  bool _isBannerAdReady = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _bannerAd = BannerAd(
      adUnitId: AdHelper.bannerAdUnitIdOfHomeScreen,
      request: const AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(
        onAdLoaded: (_) {
          setState(() {
            _isBannerAdReady = true;
          });
        },
        onAdFailedToLoad: (ad, err) {
          print('Failed to load a banner ad: ${err.message}');
          _isBannerAdReady = false;
          ad.dispose();
        },
      ),
    );
    _bannerAd.load();
  }


  @override
  void dispose() {
    super.dispose();
    _bannerAd.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 18,
      initialIndex: chapter,
      child: Scaffold(
        backgroundColor: kmarroncolor,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: kmarroncolor, //change your color here
          ),
          title: Text("चाणक्य नीति हिंदी",
            style: GoogleFonts.aclonica(
                letterSpacing: 0.8,
                fontSize: 24,
                color: kmarroncolor,
                fontWeight: FontWeight.bold)),
          centerTitle: true,
          backgroundColor: kprimarycolor,
          elevation: 10,
          // give the app bar rounded corners

        ),
        body: Column(
          children: <Widget>[
            // the tab bar with two items
            SizedBox(
              height: 50,
              child: AppBar(
                backgroundColor: kmarroncolor,
                bottom: const TabBar(
                  isScrollable: true,
                  labelColor: kprimarycolor,
                  labelStyle: TextStyle(fontWeight: FontWeight.w400,letterSpacing: 0.5),
                  unselectedLabelColor: Colors.white,
                  indicatorColor: kprimarycolor,
                  tabs: [
                    Tab(
                      child: Text("अध्याय 1",style: TextStyle(fontSize: 16),),
                    ),
                    Tab(
                      child: Text("अध्याय 2",style: TextStyle(fontSize: 16,)),
                    ),
                    Tab(
                      child: Text("अध्याय 3",style: TextStyle(fontSize: 16,)),
                    ),
                    Tab(
                      child: Text("अध्याय 4",style: TextStyle(fontSize: 16,)),
                    ),
                    Tab(
                      child: Text("अध्याय 5",style: TextStyle(fontSize: 16,)),
                    ),
                    Tab(
                      child: Text("अध्याय 6",style: TextStyle(fontSize: 16,)),
                    ),
                    Tab(
                      child: Text("अध्याय 7",style: TextStyle(fontSize: 16,)),
                    ),
                    Tab(
                      child: Text("अध्याय 8",style: TextStyle(fontSize: 16,)),
                    ),
                    Tab(
                      child: Text("अध्याय 9",style: TextStyle(fontSize: 16,)),
                    ),
                    Tab(
                      child: Text("अध्याय 10",style: TextStyle(fontSize: 16,)),
                    ),
                    Tab(
                      child: Text("अध्याय 11",style: TextStyle(fontSize: 16,)),
                    ),
                    Tab(
                      child: Text("अध्याय 12",style: TextStyle(fontSize: 16,)),
                    ),
                    Tab(
                      child: Text("अध्याय 13",style: TextStyle(fontSize: 16,)),
                    ),
                    Tab(
                      child: Text("अध्याय 14",style: TextStyle(fontSize: 16,)),
                    ),
                    Tab(
                      child: Text("अध्याय 15",style: TextStyle(fontSize: 16,)),
                    ),
                    Tab(
                      child: Text("अध्याय 16",style: TextStyle(fontSize: 16,)),
                    ),
                    Tab(
                      child: Text("अध्याय 17",style: TextStyle(fontSize: 16,)),
                    ),


                  ],
                ),
              ),
            ),

            // create widgets for each tab bar here
            Expanded(
              child: TabBarView(
                children: [
                  // 1 tab bar view widget
                  Container(
                    color: kmarroncolor,
                    child:  ListView.builder(
                      shrinkWrap: true,
                      itemCount: 17,
                      itemBuilder: (context, i) {
                        return ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: DecoratedBox(
                              decoration:
                              ShapeDecoration(shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                                  color: kprimarycolor.withOpacity(0.9)),
                              child: OutlinedButton(
                                onPressed: () =>
                                {

                                  Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: ShlokaDetailScreen(listIndex : i,chapter: 1)))

                                },
                                style: ButtonStyle(
                                  side: MaterialStateProperty.all(BorderSide(
                                      color: kprimarycolor.withOpacity(0.9),
                                      width: 1.0,
                                      style: BorderStyle.solid)),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),

                                  ),
                                ),
                                child: SingleChildScrollView(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset("assets/images/side.png",scale: 4.5,color: kmarroncolor,),
                                      Center(
                                        child: Padding(
                                          padding: const EdgeInsets.only(top: 10,bottom: 10),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Column(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.all(8.0),
                                                        child: Container(
                                                          child: Text("श्लोक ${i+1}",
                                                            style: GoogleFonts.poppins(
                                                                letterSpacing: 0.8,
                                                                fontSize: 18,
                                                                color: kmarroncolor,
                                                                fontWeight: FontWeight.bold
                                                            ),
                                                            softWrap: false,
                                                            overflow: TextOverflow.fade,
                                                            textAlign: TextAlign.center,),
                                                        ),
                                                      )
                                                    ],
                                                  ),

                                                  // Image.asset('assets/images/bottom.png',
                                                  //   height: 20,width: 300.0, ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Image.asset("assets/images/side.png",scale: 4.5,color: kmarroncolor,),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        );
                      },
                    ),
                  ),

                  // 2 tab bar view widget
                  Container(
                    color: kmarroncolor,
                    child:  ListView.builder(
                      shrinkWrap: true,
                      itemCount: 20,
                      itemBuilder: (context, i) {
                        return ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: DecoratedBox(
                              decoration:
                              ShapeDecoration(shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                                  color: kprimarycolor.withOpacity(0.9)),
                              child: OutlinedButton(
                                onPressed: () =>
                                {
                                  Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: ShlokaDetailScreen(listIndex : i,chapter: 2)))

                                },
                                style: ButtonStyle(
                                  side: MaterialStateProperty.all(BorderSide(
                                      color: kprimarycolor.withOpacity(0.9),
                                      width: 1.0,
                                      style: BorderStyle.solid)),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),

                                  ),
                                ),
                                child: SingleChildScrollView(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset("assets/images/side.png",scale: 4.5,color: kmarroncolor,),
                                      Center(
                                        child: Padding(
                                          padding: const EdgeInsets.only(top: 10,bottom: 10),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Column(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.all(8.0),
                                                        child: Container(
                                                          child: Text("श्लोक ${i+1}",
                                                            style: GoogleFonts.poppins(
                                                                letterSpacing: 0.8,
                                                                fontSize: 18,
                                                                color: kmarroncolor,
                                                                fontWeight: FontWeight.bold
                                                            ),
                                                            softWrap: false,
                                                            overflow: TextOverflow.fade,
                                                            textAlign: TextAlign.center,),
                                                        ),
                                                      )
                                                    ],
                                                  ),

                                                  // Image.asset('assets/images/bottom.png',
                                                  //   height: 20,width: 300.0, ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Image.asset("assets/images/side.png",scale: 4.5,color: kmarroncolor,),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        );
                      },
                    ),
                  ),

                  // 3 tab bar view widget
                  Container(
                    color: kmarroncolor,
                    child:  ListView.builder(
                      shrinkWrap: true,
                      itemCount: 21,
                      itemBuilder: (context, i) {
                        return ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: DecoratedBox(
                              decoration:
                              ShapeDecoration(shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                                  color: kprimarycolor.withOpacity(0.9)),
                              child: OutlinedButton(
                                onPressed: () =>
                                {
                                  Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: ShlokaDetailScreen(listIndex : i,chapter: 3)))
                                },
                                style: ButtonStyle(
                                  side: MaterialStateProperty.all(BorderSide(
                                      color: kprimarycolor.withOpacity(0.9),
                                      width: 1.0,
                                      style: BorderStyle.solid)),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),

                                  ),
                                ),
                                child: SingleChildScrollView(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset("assets/images/side.png",scale: 4.5,color: kmarroncolor,),
                                      Center(
                                        child: Padding(
                                          padding: const EdgeInsets.only(top: 10,bottom: 10),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Column(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.all(8.0),
                                                        child: Container(
                                                          child: Text("श्लोक ${i+1}",
                                                            style: GoogleFonts.poppins(
                                                                letterSpacing: 0.8,
                                                                fontSize: 18,
                                                                color: kmarroncolor,
                                                                fontWeight: FontWeight.bold
                                                            ),
                                                            softWrap: false,
                                                            overflow: TextOverflow.fade,
                                                            textAlign: TextAlign.center,),
                                                        ),
                                                      )
                                                    ],
                                                  ),

                                                  // Image.asset('assets/images/bottom.png',
                                                  //   height: 20,width: 300.0, ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Image.asset("assets/images/side.png",scale: 4.5,color: kmarroncolor,),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        );
                      },
                    ),
                  ),

                  // 4 tab bar view widget
                  Container(
                    color: kmarroncolor,
                    child:  ListView.builder(
                      shrinkWrap: true,
                      itemCount: 19,
                      itemBuilder: (context, i) {
                        return ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: DecoratedBox(
                              decoration:
                              ShapeDecoration(shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                                  color: kprimarycolor.withOpacity(0.9)),
                              child: OutlinedButton(
                                onPressed: () =>
                                {
                                  Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: ShlokaDetailScreen(listIndex : i,chapter: 4)))
                                },
                                style: ButtonStyle(
                                  side: MaterialStateProperty.all(BorderSide(
                                      color: kprimarycolor.withOpacity(0.9),
                                      width: 1.0,
                                      style: BorderStyle.solid)),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),

                                  ),
                                ),
                                child: SingleChildScrollView(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset("assets/images/side.png",scale: 4.5,color: kmarroncolor,),
                                      Center(
                                        child: Padding(
                                          padding: const EdgeInsets.only(top: 10,bottom: 10),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Column(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.all(8.0),
                                                        child: Container(
                                                          child: Text("श्लोक ${i+1}",
                                                            style: GoogleFonts.poppins(
                                                                letterSpacing: 0.8,
                                                                fontSize: 18,
                                                                color: kmarroncolor,
                                                                fontWeight: FontWeight.bold
                                                            ),
                                                            softWrap: false,
                                                            overflow: TextOverflow.fade,
                                                            textAlign: TextAlign.center,),
                                                        ),
                                                      )
                                                    ],
                                                  ),

                                                  // Image.asset('assets/images/bottom.png',
                                                  //   height: 20,width: 300.0, ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Image.asset("assets/images/side.png",scale: 4.5,color: kmarroncolor,),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        );
                      },
                    ),
                  ),

                  // 5 tab bar view widget
                  Container(
                    color: kmarroncolor,
                    child:  ListView.builder(
                      shrinkWrap: true,
                      itemCount: 29,
                      itemBuilder: (context, i) {
                        return ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: DecoratedBox(
                              decoration:
                              ShapeDecoration(shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                                  color: kprimarycolor.withOpacity(0.9)),
                              child: OutlinedButton(
                                onPressed: () =>
                                {
                                  Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: ShlokaDetailScreen(listIndex : i,chapter: 5)))

                                },
                                style: ButtonStyle(
                                  side: MaterialStateProperty.all(BorderSide(
                                      color: kprimarycolor.withOpacity(0.9),
                                      width: 1.0,
                                      style: BorderStyle.solid)),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),

                                  ),
                                ),
                                child: SingleChildScrollView(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset("assets/images/side.png",scale: 4.5,color: kmarroncolor,),
                                      Center(
                                        child: Padding(
                                          padding: const EdgeInsets.only(top: 10,bottom: 10),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Column(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.all(8.0),
                                                        child: Container(
                                                          child: Text("श्लोक ${i+1}",
                                                            style: GoogleFonts.poppins(
                                                                letterSpacing: 0.8,
                                                                fontSize: 18,
                                                                color: kmarroncolor,
                                                                fontWeight: FontWeight.bold
                                                            ),
                                                            softWrap: false,
                                                            overflow: TextOverflow.fade,
                                                            textAlign: TextAlign.center,),
                                                        ),
                                                      )
                                                    ],
                                                  ),

                                                  // Image.asset('assets/images/bottom.png',
                                                  //   height: 20,width: 300.0, ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Image.asset("assets/images/side.png",scale: 4.5,color: kmarroncolor,),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        );
                      },
                    ),
                  ),

                  // 6 tab bar view widget
                  Container(
                    color: kmarroncolor,
                    child:  ListView.builder(
                      shrinkWrap: true,
                      itemCount: 22,
                      itemBuilder: (context, i) {
                        return ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: DecoratedBox(
                              decoration:
                              ShapeDecoration(shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                                  color: kprimarycolor.withOpacity(0.9)),
                              child: OutlinedButton(
                                onPressed: () =>
                                {
                                  Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: ShlokaDetailScreen(listIndex : i,chapter: 6)))

                                },
                                style: ButtonStyle(
                                  side: MaterialStateProperty.all(BorderSide(
                                      color: kprimarycolor.withOpacity(0.9),
                                      width: 1.0,
                                      style: BorderStyle.solid)),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),

                                  ),
                                ),
                                child: SingleChildScrollView(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset("assets/images/side.png",scale: 4.5,color: kmarroncolor,),
                                      Center(
                                        child: Padding(
                                          padding: const EdgeInsets.only(top: 10,bottom: 10),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Column(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.all(8.0),
                                                        child: Container(
                                                          child: Text("श्लोक ${i+1}",
                                                            style: GoogleFonts.poppins(
                                                                letterSpacing: 0.8,
                                                                fontSize: 18,
                                                                color: kmarroncolor,
                                                                fontWeight: FontWeight.bold
                                                            ),
                                                            softWrap: false,
                                                            overflow: TextOverflow.fade,
                                                            textAlign: TextAlign.center,),
                                                        ),
                                                      )
                                                    ],
                                                  ),

                                                  // Image.asset('assets/images/bottom.png',
                                                  //   height: 20,width: 300.0, ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Image.asset("assets/images/side.png",scale: 4.5,color: kmarroncolor,),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        );
                      },
                    ),
                  ),

                  // 7 tab bar view widget
                  Container(
                    color: kmarroncolor,
                    child:  ListView.builder(
                      shrinkWrap: true,
                      itemCount: 22,
                      itemBuilder: (context, i) {
                        return ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: DecoratedBox(
                              decoration:
                              ShapeDecoration(shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                                  color: kprimarycolor.withOpacity(0.9)),
                              child: OutlinedButton(
                                onPressed: () =>
                                {
                                  Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: ShlokaDetailScreen(listIndex : i,chapter: 7)))
                                },
                                style: ButtonStyle(
                                  side: MaterialStateProperty.all(BorderSide(
                                      color: kprimarycolor.withOpacity(0.9),
                                      width: 1.0,
                                      style: BorderStyle.solid)),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),

                                  ),
                                ),
                                child: SingleChildScrollView(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset("assets/images/side.png",scale: 4.5,color: kmarroncolor,),
                                      Center(
                                        child: Padding(
                                          padding: const EdgeInsets.only(top: 10,bottom: 10),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Column(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.all(8.0),
                                                        child: Container(
                                                          child: Text("श्लोक ${i+1}",
                                                            style: GoogleFonts.poppins(
                                                                letterSpacing: 0.8,
                                                                fontSize: 18,
                                                                color: kmarroncolor,
                                                                fontWeight: FontWeight.bold
                                                            ),
                                                            softWrap: false,
                                                            overflow: TextOverflow.fade,
                                                            textAlign: TextAlign.center,),
                                                        ),
                                                      )
                                                    ],
                                                  ),

                                                  // Image.asset('assets/images/bottom.png',
                                                  //   height: 20,width: 300.0, ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Image.asset("assets/images/side.png",scale: 4.5,color: kmarroncolor,),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        );
                      },
                    ),
                  ),

                  // 8 tab bar view widget
                  Container(
                    color: kmarroncolor,
                    child:  ListView.builder(
                      shrinkWrap: true,
                      itemCount: 20,
                      itemBuilder: (context, i) {
                        return ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: DecoratedBox(
                              decoration:
                              ShapeDecoration(shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                                  color: kprimarycolor.withOpacity(0.9)),
                              child: OutlinedButton(
                                onPressed: () =>
                                {
                                  Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: ShlokaDetailScreen(listIndex : i,chapter: 8)))

                                },
                                style: ButtonStyle(
                                  side: MaterialStateProperty.all(BorderSide(
                                      color: kprimarycolor.withOpacity(0.9),
                                      width: 1.0,
                                      style: BorderStyle.solid)),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),

                                  ),
                                ),
                                child: SingleChildScrollView(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset("assets/images/side.png",scale: 4.5,color: kmarroncolor,),
                                      Center(
                                        child: Padding(
                                          padding: const EdgeInsets.only(top: 10,bottom: 10),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Column(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.all(8.0),
                                                        child: Container(
                                                          child: Text("श्लोक ${i+1}",
                                                            style: GoogleFonts.poppins(
                                                                letterSpacing: 0.8,
                                                                fontSize: 18,
                                                                color: kmarroncolor,
                                                                fontWeight: FontWeight.bold
                                                            ),
                                                            softWrap: false,
                                                            overflow: TextOverflow.fade,
                                                            textAlign: TextAlign.center,),
                                                        ),
                                                      )
                                                    ],
                                                  ),

                                                  // Image.asset('assets/images/bottom.png',
                                                  //   height: 20,width: 300.0, ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Image.asset("assets/images/side.png",scale: 4.5,color: kmarroncolor,),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        );
                      },
                    ),
                  ),

                  // 9 tab bar view widget
                  Container(
                    color: kmarroncolor,
                    child:  ListView.builder(
                      shrinkWrap: true,
                      itemCount: 13,
                      itemBuilder: (context, i) {
                        return ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: DecoratedBox(
                              decoration:
                              ShapeDecoration(shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                                  color: kprimarycolor.withOpacity(0.9)),
                              child: OutlinedButton(
                                onPressed: () =>
                                {
                                  Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: ShlokaDetailScreen(listIndex : i,chapter: 9)))
                                },
                                style: ButtonStyle(
                                  side: MaterialStateProperty.all(BorderSide(
                                      color: kprimarycolor.withOpacity(0.9),
                                      width: 1.0,
                                      style: BorderStyle.solid)),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),

                                  ),
                                ),
                                child: SingleChildScrollView(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset("assets/images/side.png",scale: 4.5,color: kmarroncolor,),
                                      Center(
                                        child: Padding(
                                          padding: const EdgeInsets.only(top: 10,bottom: 10),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Column(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.all(8.0),
                                                        child: Container(
                                                          child: Text("श्लोक ${i+1}",
                                                            style: GoogleFonts.poppins(
                                                                letterSpacing: 0.8,
                                                                fontSize: 18,
                                                                color: kmarroncolor,
                                                                fontWeight: FontWeight.bold
                                                            ),
                                                            softWrap: false,
                                                            overflow: TextOverflow.fade,
                                                            textAlign: TextAlign.center,),
                                                        ),
                                                      )
                                                    ],
                                                  ),

                                                  // Image.asset('assets/images/bottom.png',
                                                  //   height: 20,width: 300.0, ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Image.asset("assets/images/side.png",scale: 4.5,color: kmarroncolor,),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        );
                      },
                    ),
                  ),

                  // 10 tab bar view widget
                  Container(
                    color: kmarroncolor,
                    child:  ListView.builder(
                      shrinkWrap: true,
                      itemCount: 17,
                      itemBuilder: (context, i) {
                        return ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: DecoratedBox(
                              decoration:
                              ShapeDecoration(shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                                  color: kprimarycolor.withOpacity(0.9)),
                              child: OutlinedButton(
                                onPressed: () =>
                                {
                                  Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: ShlokaDetailScreen(listIndex : i,chapter: 10)))

                                },
                                style: ButtonStyle(
                                  side: MaterialStateProperty.all(BorderSide(
                                      color: kprimarycolor.withOpacity(0.9),
                                      width: 1.0,
                                      style: BorderStyle.solid)),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),

                                  ),
                                ),
                                child: SingleChildScrollView(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset("assets/images/side.png",scale: 4.5,color: kmarroncolor,),
                                      Center(
                                        child: Padding(
                                          padding: const EdgeInsets.only(top: 10,bottom: 10),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Column(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.all(8.0),
                                                        child: Container(
                                                          child: Text("श्लोक ${i+1}",
                                                            style: GoogleFonts.poppins(
                                                                letterSpacing: 0.8,
                                                                fontSize: 18,
                                                                color: kmarroncolor,
                                                                fontWeight: FontWeight.bold
                                                            ),
                                                            softWrap: false,
                                                            overflow: TextOverflow.fade,
                                                            textAlign: TextAlign.center,),
                                                        ),
                                                      )
                                                    ],
                                                  ),

                                                  // Image.asset('assets/images/bottom.png',
                                                  //   height: 20,width: 300.0, ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Image.asset("assets/images/side.png",scale: 4.5,color: kmarroncolor,),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        );
                      },
                    ),
                  ),

                  // 11 tab bar view widget
                  Container(
                    color: kmarroncolor,
                    child:  ListView.builder(
                      shrinkWrap: true,
                      itemCount: 16,
                      itemBuilder: (context, i) {
                        return ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: DecoratedBox(
                              decoration:
                              ShapeDecoration(shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                                  color: kprimarycolor.withOpacity(0.9)),
                              child: OutlinedButton(
                                onPressed: () =>
                                {
                                  Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: ShlokaDetailScreen(listIndex : i,chapter: 11)))

                                },
                                style: ButtonStyle(
                                  side: MaterialStateProperty.all(BorderSide(
                                      color: kprimarycolor.withOpacity(0.9),
                                      width: 1.0,
                                      style: BorderStyle.solid)),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),

                                  ),
                                ),
                                child: SingleChildScrollView(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset("assets/images/side.png",scale: 4.5,color: kmarroncolor,),
                                      Center(
                                        child: Padding(
                                          padding: const EdgeInsets.only(top: 10,bottom: 10),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Column(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.all(8.0),
                                                        child: Container(
                                                          child: Text("श्लोक ${i+1}",
                                                            style: GoogleFonts.poppins(
                                                                letterSpacing: 0.8,
                                                                fontSize: 18,
                                                                color: kmarroncolor,
                                                                fontWeight: FontWeight.bold
                                                            ),
                                                            softWrap: false,
                                                            overflow: TextOverflow.fade,
                                                            textAlign: TextAlign.center,),
                                                        ),
                                                      )
                                                    ],
                                                  ),

                                                  // Image.asset('assets/images/bottom.png',
                                                  //   height: 20,width: 300.0, ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Image.asset("assets/images/side.png",scale: 4.5,color: kmarroncolor,),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        );
                      },
                    ),
                  ),

                  // 12 tab bar view widget
                  Container(
                    color: kmarroncolor,
                    child:  ListView.builder(
                      shrinkWrap: true,
                      itemCount: 22,
                      itemBuilder: (context, i) {
                        return ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: DecoratedBox(
                              decoration:
                              ShapeDecoration(shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                                  color: kprimarycolor.withOpacity(0.9)),
                              child: OutlinedButton(
                                onPressed: () =>
                                {
                                  Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: ShlokaDetailScreen(listIndex : i,chapter: 12)))

                                },
                                style: ButtonStyle(
                                  side: MaterialStateProperty.all(BorderSide(
                                      color: kprimarycolor.withOpacity(0.9),
                                      width: 1.0,
                                      style: BorderStyle.solid)),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),

                                  ),
                                ),
                                child: SingleChildScrollView(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset("assets/images/side.png",scale: 4.5,color: kmarroncolor,),
                                      Center(
                                        child: Padding(
                                          padding: const EdgeInsets.only(top: 10,bottom: 10),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Column(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.all(8.0),
                                                        child: Container(
                                                          child: Text("श्लोक ${i+1}",
                                                            style: GoogleFonts.poppins(
                                                                letterSpacing: 0.8,
                                                                fontSize: 18,
                                                                color: kmarroncolor,
                                                                fontWeight: FontWeight.bold
                                                            ),
                                                            softWrap: false,
                                                            overflow: TextOverflow.fade,
                                                            textAlign: TextAlign.center,),
                                                        ),
                                                      )
                                                    ],
                                                  ),

                                                  // Image.asset('assets/images/bottom.png',
                                                  //   height: 20,width: 300.0, ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Image.asset("assets/images/side.png",scale: 4.5,color: kmarroncolor,),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        );
                      },
                    ),
                  ),

                  // 13 tab bar view widget
                  Container(
                    color: kmarroncolor,
                    child:  ListView.builder(
                      shrinkWrap: true,
                      itemCount: 21,
                      itemBuilder: (context, i) {
                        return ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: DecoratedBox(
                              decoration:
                              ShapeDecoration(shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                                  color: kprimarycolor.withOpacity(0.9)),
                              child: OutlinedButton(
                                onPressed: () =>
                                {
                                  Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: ShlokaDetailScreen(listIndex : i,chapter: 13)))

                                },
                                style: ButtonStyle(
                                  side: MaterialStateProperty.all(BorderSide(
                                      color: kprimarycolor.withOpacity(0.9),
                                      width: 1.0,
                                      style: BorderStyle.solid)),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),

                                  ),
                                ),
                                child: SingleChildScrollView(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset("assets/images/side.png",scale: 4.5,color: kmarroncolor,),
                                      Center(
                                        child: Padding(
                                          padding: const EdgeInsets.only(top: 10,bottom: 10),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Column(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.all(8.0),
                                                        child: Container(
                                                          child: Text("श्लोक ${i+1}",
                                                            style: GoogleFonts.poppins(
                                                                letterSpacing: 0.8,
                                                                fontSize: 18,
                                                                color: kmarroncolor,
                                                                fontWeight: FontWeight.bold
                                                            ),
                                                            softWrap: false,
                                                            overflow: TextOverflow.fade,
                                                            textAlign: TextAlign.center,),
                                                        ),
                                                      )
                                                    ],
                                                  ),

                                                  // Image.asset('assets/images/bottom.png',
                                                  //   height: 20,width: 300.0, ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Image.asset("assets/images/side.png",scale: 4.5,color: kmarroncolor,),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        );
                      },
                    ),
                  ),

                  // 14 tab bar view widget
                  Container(
                    color: kmarroncolor,
                    child:  ListView.builder(
                      shrinkWrap: true,
                      itemCount: 19,
                      itemBuilder: (context, i) {
                        return ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: DecoratedBox(
                              decoration:
                              ShapeDecoration(shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                                  color: kprimarycolor.withOpacity(0.9)),
                              child: OutlinedButton(
                                onPressed: () =>
                                {
                                  Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: ShlokaDetailScreen(listIndex : i,chapter: 14)))

                                },
                                style: ButtonStyle(
                                  side: MaterialStateProperty.all(BorderSide(
                                      color: kprimarycolor.withOpacity(0.9),
                                      width: 1.0,
                                      style: BorderStyle.solid)),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),

                                  ),
                                ),
                                child: SingleChildScrollView(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset("assets/images/side.png",scale: 4.5,color: kmarroncolor,),
                                      Center(
                                        child: Padding(
                                          padding: const EdgeInsets.only(top: 10,bottom: 10),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Column(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.all(8.0),
                                                        child: Container(
                                                          child: Text("श्लोक ${i+1}",
                                                            style: GoogleFonts.poppins(
                                                                letterSpacing: 0.8,
                                                                fontSize: 18,
                                                                color: kmarroncolor,
                                                                fontWeight: FontWeight.bold
                                                            ),
                                                            softWrap: false,
                                                            overflow: TextOverflow.fade,
                                                            textAlign: TextAlign.center,),
                                                        ),
                                                      )
                                                    ],
                                                  ),

                                                  // Image.asset('assets/images/bottom.png',
                                                  //   height: 20,width: 300.0, ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Image.asset("assets/images/side.png",scale: 4.5,color: kmarroncolor,),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        );
                      },
                    ),
                  ),

                  // 15 tab bar view widget
                  Container(
                    color: kmarroncolor,
                    child:  ListView.builder(
                      shrinkWrap: true,
                      itemCount: 18,
                      itemBuilder: (context, i) {
                        return ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: DecoratedBox(
                              decoration:
                              ShapeDecoration(shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                                  color: kprimarycolor.withOpacity(0.9)),
                              child: OutlinedButton(
                                onPressed: () =>
                                {
                                  Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: ShlokaDetailScreen(listIndex : i,chapter: 15)))

                                },
                                style: ButtonStyle(
                                  side: MaterialStateProperty.all(BorderSide(
                                      color: kprimarycolor.withOpacity(0.9),
                                      width: 1.0,
                                      style: BorderStyle.solid)),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),

                                  ),
                                ),
                                child: SingleChildScrollView(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset("assets/images/side.png",scale: 4.5,color: kmarroncolor,),
                                      Center(
                                        child: Padding(
                                          padding: const EdgeInsets.only(top: 10,bottom: 10),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Column(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.all(8.0),
                                                        child: Container(
                                                          child: Text("श्लोक ${i+1}",
                                                            style: GoogleFonts.poppins(
                                                                letterSpacing: 0.8,
                                                                fontSize: 18,
                                                                color: kmarroncolor,
                                                                fontWeight: FontWeight.bold
                                                            ),
                                                            softWrap: false,
                                                            overflow: TextOverflow.fade,
                                                            textAlign: TextAlign.center,),
                                                        ),
                                                      )
                                                    ],
                                                  ),

                                                  // Image.asset('assets/images/bottom.png',
                                                  //   height: 20,width: 300.0, ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Image.asset("assets/images/side.png",scale: 4.5,color: kmarroncolor,),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        );
                      },
                    ),
                  ),

                  // 16 tab bar view widget
                  Container(
                    color: kmarroncolor,
                    child:  ListView.builder(
                      shrinkWrap: true,
                      itemCount: 16,
                      itemBuilder: (context, i) {
                        return ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: DecoratedBox(
                              decoration:
                              ShapeDecoration(shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                                  color: kprimarycolor.withOpacity(0.9)),
                              child: OutlinedButton(
                                onPressed: () =>
                                {
                                  Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: ShlokaDetailScreen(listIndex : i,chapter: 16)))

                                },
                                style: ButtonStyle(
                                  side: MaterialStateProperty.all(BorderSide(
                                      color: kprimarycolor.withOpacity(0.9),
                                      width: 1.0,
                                      style: BorderStyle.solid)),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),

                                  ),
                                ),
                                child: SingleChildScrollView(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset("assets/images/side.png",scale: 4.5,color: kmarroncolor,),
                                      Center(
                                        child: Padding(
                                          padding: const EdgeInsets.only(top: 10,bottom: 10),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Column(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.all(8.0),
                                                        child: Container(
                                                          child: Text("श्लोक ${i+1}",
                                                            style: GoogleFonts.poppins(
                                                                letterSpacing: 0.8,
                                                                fontSize: 18,
                                                                color: kmarroncolor,
                                                                fontWeight: FontWeight.bold
                                                            ),
                                                            softWrap: false,
                                                            overflow: TextOverflow.fade,
                                                            textAlign: TextAlign.center,),
                                                        ),
                                                      )
                                                    ],
                                                  ),

                                                  // Image.asset('assets/images/bottom.png',
                                                  //   height: 20,width: 300.0, ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Image.asset("assets/images/side.png",scale: 4.5,color: kmarroncolor,),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        );
                      },
                    ),
                  ),

                  // 17 tab bar view widget
                  Container(
                    color: kmarroncolor,
                    child:  ListView.builder(
                      shrinkWrap: true,
                      itemCount: 18,
                      itemBuilder: (context, i) {
                        return ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: DecoratedBox(
                              decoration:
                              ShapeDecoration(shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                                  color: kprimarycolor.withOpacity(0.9)),
                              child: OutlinedButton(
                                onPressed: () =>
                                {
                                  Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: ShlokaDetailScreen(listIndex : i,chapter: 17)))

                                },
                                style: ButtonStyle(
                                  side: MaterialStateProperty.all(BorderSide(
                                      color: kprimarycolor.withOpacity(0.9),
                                      width: 1.0,
                                      style: BorderStyle.solid)),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),

                                  ),
                                ),
                                child: SingleChildScrollView(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset("assets/images/side.png",scale: 4.5,color: kmarroncolor,),
                                      Center(
                                        child: Padding(
                                          padding: const EdgeInsets.only(top: 10,bottom: 10),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Column(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.all(8.0),
                                                        child: Container(
                                                          child: Text("श्लोक ${i+1}",
                                                            style: GoogleFonts.poppins(
                                                                letterSpacing: 0.8,
                                                                fontSize: 18,
                                                                color: kmarroncolor,
                                                                fontWeight: FontWeight.bold
                                                            ),
                                                            softWrap: false,
                                                            overflow: TextOverflow.fade,
                                                            textAlign: TextAlign.center,),
                                                        ),
                                                      )
                                                    ],
                                                  ),

                                                  // Image.asset('assets/images/bottom.png',
                                                  //   height: 20,width: 300.0, ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Image.asset("assets/images/side.png",scale: 4.5,color: kmarroncolor,),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                        );
                      },
                    ),
                  ),


                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isBannerAdReady)
              Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
          ],
        ),


      ),
    );
  }
}