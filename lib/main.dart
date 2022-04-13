import 'package:flutter/material.dart';
import 'package:rehabilitation/about.dart';
import 'package:rehabilitation/barthel.dart';
import 'package:rehabilitation/hauser.dart';
import 'package:rehabilitation/merton.dart';
import 'package:rehabilitation/morse.dart';
import 'package:rehabilitation/pain.dart';
import 'package:rehabilitation/rankin.dart';
import 'package:rehabilitation/rivermead.dart';
import 'package:rehabilitation/waterlow.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

void main(List<String> args) {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(const Rehabilitology());
}

class Rehabilitology extends StatelessWidget {
  const Rehabilitology({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Калькулятор реабилитолога',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  BannerAd? bannerAd;
  bool isLoaded = false;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    bannerAd = BannerAd(
      size: AdSize.banner,
      adUnitId: "ca-app-pub-5645343935667918/1793203444",
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
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Калькулятор реабилитолога',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              runApp(About());
            },
            icon: Icon(Icons.help),
            color: Colors.black,
          )
        ],
      ),
      body: ListView(padding: EdgeInsets.all(10), children: [
        CustomCard(
            'Индекс Бартел',
            'Шкала оценки уровня повседневной активности пациента для решения вопроса о нуждаемости его в уходе',
            'assets/barthel.png',
            () => Barthel()),
        CustomCard(
            'Шкала Ватерлоу',
            'Используется для оценки риска развития пролежней у пациента',
            'assets/waterlow.png',
            () => Waterlow()),
        CustomCard(
            'Шкала Мертон и Саттон',
            'Служит для оценки уровня бытовой и социальной адаптации',
            'assets/merton.png',
            () => Merton()),
        CustomCard(
            'Шкала падений Морзе',
            'Используется для оценки вероятности риска падения, в связи с наличием наследственных или приобретенных факторов риска',
            'assets/morse.png',
            () => Morse()),
        CustomCard(
            'Поведенческая шкала боли',
            'Шкала, применяемая для оценки уровня боли у неконтактного пациента, основанная на поведенческих реакциях',
            'assets/pain.png',
            () => Pain()),
        CustomCard(
            'Шкала Рэнкина',
            'Универсальная шкала оценки инвалидности, независимости и исходов реабилитации. Часто используется для оценки степени инвалидизации после инсульта',
            'assets/renkin.png',
            () => Rankin()),
        CustomCard(
            'Индекс мобильности Ривермид',
            'Методика предназначенная для клинической оценки мобильности пациента',
            'assets/rivermead.png',
            () => Rivermead()),
        CustomCard(
            'Индекс ходьбы Хаузера',
            'Используется для оценки локомоторной функции пациента',
            'assets/hauser.png',
            () => Hauser()),
        Card(
          elevation: 2,
          child: Container(),
        )
      ]),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50,
          width: double.infinity,
          child: Column(
            children: [
              isLoaded
                  ? Container(
                      height: 50,
                      child: AdWidget(
                        ad: bannerAd!,
                      ),
                    )
                  : SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}

Widget CustomCard(String title, String subtitle, String imagePath, foo()) {
  return Card(
      shadowColor: Colors.black,
      color: Colors.white,
      elevation: 2,
      child: InkWell(
        onTap: (() => {runApp(foo())}),
        child: Column(
          children: [
            ListTile(
              leading: Image.asset(imagePath),
              title: Text('$title\n'),
              subtitle: Text('$subtitle'),
            ),
          ],
        ),
      ));
}
