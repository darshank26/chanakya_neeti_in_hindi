import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import '../AdHelper/adshelper.dart';
import '../utils/constants.dart';

import '../utils/chapter1.dart'; // import this
import '../utils/chapter10.dart';
import '../utils/chapter11.dart';
import '../utils/chapter12.dart';
import '../utils/chapter13.dart';
import '../utils/chapter14.dart';
import '../utils/chapter15.dart';
import '../utils/chapter16.dart';
import '../utils/chapter17.dart';
import '../utils/chapter18.dart';
import '../utils/chapter2.dart';
import '../utils/chapter3.dart';
import '../utils/chapter4.dart';
import '../utils/chapter5.dart';
import '../utils/chapter6.dart';
import '../utils/chapter7.dart';
import '../utils/chapter8.dart';
import '../utils/chapter9.dart'; // import this

class ShlokaDetailScreen extends StatefulWidget {
  final int listIndex;
  final int chapter;

  const ShlokaDetailScreen({Key? key,required this.listIndex,required this.chapter}) : super(key: key);

  @override
  _ShlokaDetailScreenState createState() => _ShlokaDetailScreenState(listIndex);
}

class _ShlokaDetailScreenState extends State<ShlokaDetailScreen> {

  bool isLanguageSelected = false;

  final int listIndex;

  _ShlokaDetailScreenState(this.listIndex); //constructor

  late BannerAd _bannerAd;

  bool _isBannerAdReady = false;

  // bool _getValue = false;


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

    if(widget.chapter == 1)
    {
        return DefaultTabController(
          length: 17,
          initialIndex: listIndex,
          child: Scaffold(
            backgroundColor: kdetailbackground,
            appBar: AppBar(
              iconTheme: IconThemeData(
                color: kmarroncolor, //change your color here
              ),
              title:
              Text("अध्याय ${widget.chapter}",
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
              children: [
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
                          child: Text("श्लोक 1",style: TextStyle(fontSize: 16),),
                        ),
                        Tab(
                          child: Text("श्लोक 2",style: TextStyle(fontSize: 16,)),
                        ),
                        Tab(
                          child: Text("श्लोक 3",style: TextStyle(fontSize: 16,)),
                        ),
                        Tab(
                          child: Text("श्लोक 4",style: TextStyle(fontSize: 16,)),
                        ),
                        Tab(
                          child: Text("श्लोक 5",style: TextStyle(fontSize: 16,)),
                        ),
                        Tab(
                          child: Text("श्लोक 6",style: TextStyle(fontSize: 16,)),
                        ),
                        Tab(
                          child: Text("श्लोक 7",style: TextStyle(fontSize: 16,)),
                        ),
                        Tab(
                          child: Text("श्लोक 8",style: TextStyle(fontSize: 16,)),
                        ),
                        Tab(
                          child: Text("श्लोक 9",style: TextStyle(fontSize: 16,)),
                        ),
                        Tab(
                          child: Text("श्लोक 10",style: TextStyle(fontSize: 16,)),
                        ),
                        Tab(
                          child: Text("श्लोक 11",style: TextStyle(fontSize: 16,)),
                        ),
                        Tab(
                          child: Text("श्लोक 12",style: TextStyle(fontSize: 16,)),
                        ),
                        Tab(
                          child: Text("श्लोक 13",style: TextStyle(fontSize: 16,)),
                        ),
                        Tab(
                          child: Text("श्लोक 14",style: TextStyle(fontSize: 16,)),
                        ),
                        Tab(
                          child: Text("श्लोक 15",style: TextStyle(fontSize: 16,)),
                        ),
                        Tab(
                          child: Text("श्लोक 16",style: TextStyle(fontSize: 16,)),
                        ),
                        Tab(
                          child: Text("श्लोक 17",style: TextStyle(fontSize: 16,)),
                        ),
                        
                      ],
                    ),
                  ),
                ),

                Expanded(
                  child: TabBarView(

                    children: [
                      // 1 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Center(
                              child: Container(
                                padding: const EdgeInsets.all(40),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_one_trans_sanskrit[0],
                                          style: GoogleFonts.aclonica(
                                            letterSpacing: 2,
                                            fontSize: 22,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      // 2 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Center(
                              child: Container(
                                padding: const EdgeInsets.all(40),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_one_trans_sanskrit[1],
                                          style: GoogleFonts.aclonica(
                                            letterSpacing: 2,
                                            fontSize: 22,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      // 3 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Center(
                              child: Container(
                                padding: const EdgeInsets.all(40),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_one_trans_sanskrit[2],
                                          style: GoogleFonts.aclonica(
                                            letterSpacing: 2,
                                            fontSize: 22,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      // 4 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Center(
                              child: Container(
                                padding: const EdgeInsets.all(40),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_one_trans_sanskrit[3],
                                          style: GoogleFonts.aclonica(
                                            letterSpacing: 2,
                                            fontSize: 22,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      // 5 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Center(
                              child: Container(
                                padding: const EdgeInsets.all(40),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_one_trans_sanskrit[4],
                                          style: GoogleFonts.aclonica(
                                            letterSpacing: 2,
                                            fontSize: 22,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      // 6 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Center(
                              child: Container(
                                padding: const EdgeInsets.all(40),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_one_trans_sanskrit[5],
                                          style: GoogleFonts.aclonica(
                                            letterSpacing: 2,
                                            fontSize: 22,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      // 7 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Center(
                              child: Container(
                                padding: const EdgeInsets.all(40),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_one_trans_sanskrit[6],
                                          style: GoogleFonts.aclonica(
                                            letterSpacing: 2,
                                            fontSize: 22,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      // 8 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Center(
                              child: Container(
                                padding: const EdgeInsets.all(40),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_one_trans_sanskrit[7],
                                          style: GoogleFonts.aclonica(
                                            letterSpacing: 2,
                                            fontSize: 22,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      // 9 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Center(
                              child: Container(
                                padding: const EdgeInsets.all(40),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_one_trans_sanskrit[8],
                                          style: GoogleFonts.aclonica(
                                            letterSpacing: 2,
                                            fontSize: 22,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      // 10 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Center(
                              child: Container(
                                padding: const EdgeInsets.all(40),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_one_trans_sanskrit[9],
                                          style: GoogleFonts.aclonica(
                                            letterSpacing: 2,
                                            fontSize: 22,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      // 11 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Center(
                              child: Container(
                                padding: const EdgeInsets.all(40),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_one_trans_sanskrit[10],
                                          style: GoogleFonts.aclonica(
                                            letterSpacing: 2,
                                            fontSize: 22,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      // 12 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Center(
                              child: Container(
                                padding: const EdgeInsets.all(40),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_one_trans_sanskrit[11],
                                          style: GoogleFonts.aclonica(
                                            letterSpacing: 2,
                                            fontSize: 22,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      // 13 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Center(
                              child: Container(
                                padding: const EdgeInsets.all(40),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_one_trans_sanskrit[12],
                                          style: GoogleFonts.aclonica(
                                            letterSpacing: 2,
                                            fontSize: 22,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      // 14 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Center(
                              child: Container(
                                padding: const EdgeInsets.all(40),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_one_trans_sanskrit[13],
                                          style: GoogleFonts.aclonica(
                                            letterSpacing: 2,
                                            fontSize: 22,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      // 15 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Center(
                              child: Container(
                                padding: const EdgeInsets.all(40),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_one_trans_sanskrit[14],
                                          style: GoogleFonts.aclonica(
                                            letterSpacing: 2,
                                            fontSize: 22,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      // 16 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Center(
                              child: Container(
                                padding: const EdgeInsets.all(40),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_one_trans_sanskrit[15],
                                          style: GoogleFonts.aclonica(
                                            letterSpacing: 2,
                                            fontSize: 22,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      // 17 tab bar view widget
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Stack(
                          children: [
                            SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                            Center(
                              child: Container(
                                padding: const EdgeInsets.all(40),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Text(
                                          chapter_one_trans_sanskrit[16],
                                          style: GoogleFonts.aclonica(
                                            letterSpacing: 2,
                                            fontSize: 22,
                                            height: 2,
                                            fontWeight: FontWeight.w700,
                                            color: kprimarycolor,
                                          ),
                                          textAlign: TextAlign.center,),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),

                          ],

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
    else if (widget.chapter == 2)
    {
      return DefaultTabController(
        length: 20,
        initialIndex: listIndex,
        child: Scaffold(
          backgroundColor: kdetailbackground,
          appBar: AppBar(
            iconTheme: IconThemeData(
              color: kmarroncolor, //change your color here
            ),
            title:
            Text("अध्याय ${widget.chapter}",
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
            children: [
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
                        child: Text("श्लोक 1",style: TextStyle(fontSize: 16),),
                      ),
                      Tab(
                        child: Text("श्लोक 2",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("श्लोक 3",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("श्लोक 4",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("श्लोक 5",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("श्लोक 6",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("श्लोक 7",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("श्लोक 8",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("श्लोक 9",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("श्लोक 10",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("श्लोक 11",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("श्लोक 12",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("श्लोक 13",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("श्लोक 14",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("श्लोक 15",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("श्लोक 16",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("श्लोक 17",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("श्लोक 18",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("श्लोक 19",style: TextStyle(fontSize: 16,)),
                      ),
                      Tab(
                        child: Text("श्लोक 20",style: TextStyle(fontSize: 16,)),
                      ),

                    ],
                  ),
                ),
              ),

              Expanded(
                child: TabBarView(

                  children: [
                    // 1 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Center(
                            child: Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Container(
                                      child: Text(
                                        chapter_two_trans_sanskrit[0],
                                        style: GoogleFonts.aclonica(
                                          letterSpacing: 2,
                                          fontSize: 22,
                                          height: 2,
                                          fontWeight: FontWeight.w700,
                                          color: kprimarycolor,
                                        ),
                                        textAlign: TextAlign.center,),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 2 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Center(
                            child: Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Container(
                                      child: Text(
                                        chapter_two_trans_sanskrit[1],
                                        style: GoogleFonts.aclonica(
                                          letterSpacing: 2,
                                          fontSize: 22,
                                          height: 2,
                                          fontWeight: FontWeight.w700,
                                          color: kprimarycolor,
                                        ),
                                        textAlign: TextAlign.center,),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 3 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Center(
                            child: Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Container(
                                      child: Text(
                                        chapter_two_trans_sanskrit[2],
                                        style: GoogleFonts.aclonica(
                                          letterSpacing: 2,
                                          fontSize: 22,
                                          height: 2,
                                          fontWeight: FontWeight.w700,
                                          color: kprimarycolor,
                                        ),
                                        textAlign: TextAlign.center,),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 4 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Center(
                            child: Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Container(
                                      child: Text(
                                        chapter_two_trans_sanskrit[3],
                                        style: GoogleFonts.aclonica(
                                          letterSpacing: 2,
                                          fontSize: 22,
                                          height: 2,
                                          fontWeight: FontWeight.w700,
                                          color: kprimarycolor,
                                        ),
                                        textAlign: TextAlign.center,),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 5 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Center(
                            child: Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Container(
                                      child: Text(
                                        chapter_two_trans_sanskrit[4],
                                        style: GoogleFonts.aclonica(
                                          letterSpacing: 2,
                                          fontSize: 22,
                                          height: 2,
                                          fontWeight: FontWeight.w700,
                                          color: kprimarycolor,
                                        ),
                                        textAlign: TextAlign.center,),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 6 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Center(
                            child: Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Container(
                                      child: Text(
                                        chapter_two_trans_sanskrit[5],
                                        style: GoogleFonts.aclonica(
                                          letterSpacing: 2,
                                          fontSize: 22,
                                          height: 2,
                                          fontWeight: FontWeight.w700,
                                          color: kprimarycolor,
                                        ),
                                        textAlign: TextAlign.center,),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 7 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Center(
                            child: Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Container(
                                      child: Text(
                                        chapter_two_trans_sanskrit[6],
                                        style: GoogleFonts.aclonica(
                                          letterSpacing: 2,
                                          fontSize: 22,
                                          height: 2,
                                          fontWeight: FontWeight.w700,
                                          color: kprimarycolor,
                                        ),
                                        textAlign: TextAlign.center,),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 8 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Center(
                            child: Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Container(
                                      child: Text(
                                        chapter_two_trans_sanskrit[7],
                                        style: GoogleFonts.aclonica(
                                          letterSpacing: 2,
                                          fontSize: 22,
                                          height: 2,
                                          fontWeight: FontWeight.w700,
                                          color: kprimarycolor,
                                        ),
                                        textAlign: TextAlign.center,),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 9 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Center(
                            child: Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Container(
                                      child: Text(
                                        chapter_two_trans_sanskrit[8],
                                        style: GoogleFonts.aclonica(
                                          letterSpacing: 2,
                                          fontSize: 22,
                                          height: 2,
                                          fontWeight: FontWeight.w700,
                                          color: kprimarycolor,
                                        ),
                                        textAlign: TextAlign.center,),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 10 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Center(
                            child: Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Container(
                                      child: Text(
                                        chapter_two_trans_sanskrit[9],
                                        style: GoogleFonts.aclonica(
                                          letterSpacing: 2,
                                          fontSize: 22,
                                          height: 2,
                                          fontWeight: FontWeight.w700,
                                          color: kprimarycolor,
                                        ),
                                        textAlign: TextAlign.center,),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 11 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Center(
                            child: Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Container(
                                      child: Text(
                                        chapter_two_trans_sanskrit[10],
                                        style: GoogleFonts.aclonica(
                                          letterSpacing: 2,
                                          fontSize: 22,
                                          height: 2,
                                          fontWeight: FontWeight.w700,
                                          color: kprimarycolor,
                                        ),
                                        textAlign: TextAlign.center,),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 12 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Center(
                            child: Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Container(
                                      child: Text(
                                        chapter_two_trans_sanskrit[11],
                                        style: GoogleFonts.aclonica(
                                          letterSpacing: 2,
                                          fontSize: 22,
                                          height: 2,
                                          fontWeight: FontWeight.w700,
                                          color: kprimarycolor,
                                        ),
                                        textAlign: TextAlign.center,),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 13 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Center(
                            child: Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Container(
                                      child: Text(
                                        chapter_two_trans_sanskrit[12],
                                        style: GoogleFonts.aclonica(
                                          letterSpacing: 2,
                                          fontSize: 22,
                                          height: 2,
                                          fontWeight: FontWeight.w700,
                                          color: kprimarycolor,
                                        ),
                                        textAlign: TextAlign.center,),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 14 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Center(
                            child: Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Container(
                                      child: Text(
                                        chapter_two_trans_sanskrit[13],
                                        style: GoogleFonts.aclonica(
                                          letterSpacing: 2,
                                          fontSize: 22,
                                          height: 2,
                                          fontWeight: FontWeight.w700,
                                          color: kprimarycolor,
                                        ),
                                        textAlign: TextAlign.center,),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 15 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Center(
                            child: Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Container(
                                      child: Text(
                                        chapter_two_trans_sanskrit[14],
                                        style: GoogleFonts.aclonica(
                                          letterSpacing: 2,
                                          fontSize: 22,
                                          height: 2,
                                          fontWeight: FontWeight.w700,
                                          color: kprimarycolor,
                                        ),
                                        textAlign: TextAlign.center,),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 16 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Center(
                            child: Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Container(
                                      child: Text(
                                        chapter_two_trans_sanskrit[15],
                                        style: GoogleFonts.aclonica(
                                          letterSpacing: 2,
                                          fontSize: 22,
                                          height: 2,
                                          fontWeight: FontWeight.w700,
                                          color: kprimarycolor,
                                        ),
                                        textAlign: TextAlign.center,),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                    // 17 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Center(
                            child: Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Container(
                                      child: Text(
                                        chapter_two_trans_sanskrit[16],
                                        style: GoogleFonts.aclonica(
                                          letterSpacing: 2,
                                          fontSize: 22,
                                          height: 2,
                                          fontWeight: FontWeight.w700,
                                          color: kprimarycolor,
                                        ),
                                        textAlign: TextAlign.center,),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),

                    // 18 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Center(
                            child: Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Container(
                                      child: Text(
                                        chapter_two_trans_sanskrit[17],
                                        style: GoogleFonts.aclonica(
                                          letterSpacing: 2,
                                          fontSize: 22,
                                          height: 2,
                                          fontWeight: FontWeight.w700,
                                          color: kprimarycolor,
                                        ),
                                        textAlign: TextAlign.center,),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),


                    // 19 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Center(
                            child: Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Container(
                                      child: Text(
                                        chapter_two_trans_sanskrit[18],
                                        style: GoogleFonts.aclonica(
                                          letterSpacing: 2,
                                          fontSize: 22,
                                          height: 2,
                                          fontWeight: FontWeight.w700,
                                          color: kprimarycolor,
                                        ),
                                        textAlign: TextAlign.center,),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),


                    // 20 tab bar view widget
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Stack(
                        children: [
                          SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset("assets/images/image.png",width: double.infinity,fit: BoxFit.fill,)),
                          Center(
                            child: Container(
                              padding: const EdgeInsets.all(40),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Container(
                                      child: Text(
                                        chapter_two_trans_sanskrit[19],
                                        style: GoogleFonts.aclonica(
                                          letterSpacing: 2,
                                          fontSize: 22,
                                          height: 2,
                                          fontWeight: FontWeight.w700,
                                          color: kprimarycolor,
                                        ),
                                        textAlign: TextAlign.center,),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                          ),

                        ],

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


    return Container();

  }


}
