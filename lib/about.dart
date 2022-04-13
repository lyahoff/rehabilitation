import 'package:flutter/material.dart';
import 'package:rehabilitation/main.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  BannerAd? bannerAd;
  bool isLoaded = false;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    bannerAd = BannerAd(
      size: AdSize.largeBanner,
      adUnitId: "ca-app-pub-5645343935667918/4227795090",
      listener: BannerAdListener(onAdLoaded: (ad) {
        setState(() {
          isLoaded = true;
        });
      }, onAdFailedToLoad: (ad, error) {
        ad.dispose();
      }),
      request: AdRequest(),
    );
    bannerAd!.load();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WillPopScope(
        onWillPop: () async {
          runApp(Rehabilitology());
          return false;
        },
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: Text(
              'О приложении',
              style: TextStyle(color: Colors.black),
            ),
            centerTitle: true,
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () {
                runApp(Rehabilitology());
              },
            ),
          ),
          body: ListView(
            padding: EdgeInsets.all(10),
            children: [
              Card(
                elevation: 2,
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                          'Данное приложение представляет собой список многих необходимых калькуляторов для врачей реабилитологов, терапевтов, невропатологов и прочих специалистов'),
                    ),
                    ListTile(
                      title: Text(
                          'Все полученные результаты вычислений не являются диагнозами, и их необходимо интерпретировать специалистами.'),
                    )
                  ],
                ),
              ),
              Card(
                elevation: 2,
                child: ListTile(
                  title: Text(
                      'Все иконки используемые в приложении были взяты с сайта\n https://www.flaticon.com/packs/physiotherapy-13'),
                ),
              )
            ],
          ),
          bottomNavigationBar: BottomAppBar(
            child: Container(
              height: 100,
              width: double.infinity,
              child: Column(
                children: [
                  isLoaded
                      ? Container(
                    height: 100,
                    child: AdWidget(
                      ad: bannerAd!,
                    ),
                  )
                      : SizedBox()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

