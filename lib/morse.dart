import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'main.dart';


class Morse extends StatefulWidget {
  const Morse({Key? key}) : super(key: key);

  @override
  State<Morse> createState() => _MorseState();
}

class _MorseState extends State<Morse> {
  BannerAd? bannerAd;
  bool isLoaded = false;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    bannerAd = BannerAd(
      size: AdSize.banner,
      adUnitId: "ca-app-pub-5645343935667918/8167040103",
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
              elevation: 0,
              title: Text(
                'Шкала падений Морзе',
                style: TextStyle(color: Colors.black),
              ),
              centerTitle: true,
              backgroundColor: Colors.white,
              leading: Builder(
                builder: (BuildContext context) {
                  return IconButton(
                    icon: const Icon(Icons.arrow_back),
                    color: Colors.black,
                    onPressed: () {
                      runApp(Rehabilitology());
                    },
                    tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                  );
                },
              ),
            ),
            body: MorseLogic(),
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
          ),
        ));
  }
}


class MorseLogic extends StatefulWidget {
  const MorseLogic({Key? key}) : super(key: key);

  @override
  State<MorseLogic> createState() => _MorseLogicState();
}

class _MorseLogicState extends State<MorseLogic> {
  int _val1 = 0;
  int _val2 = 0;
  int _val3 = 0;
  int _val4 = 0;
  int _val5 = 0;
  int _val6 = 0;
  int _total = 0;
  String _result = '';
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10),
      children: [
        Card(
          elevation: 2,
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'Шкала падений Морзе используется для оценки вероятности риска падения, в связи с наличием наследственных или приобретенных факторов риска.',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        Card(
          elevation: 2,
          child: Column(children: [
            ListTile(
              title: Text(
                'Падал ли пациент в последние 3 мес?',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            RadioListTile(
                title: Text('Да'),
                value: _val1,
                groupValue: 25,
                onChanged: (val) {
                  setState(() {
                    _val1 = 25;
                  });
                }),
            RadioListTile(
                title: Text('Нет'),
                value: _val1,
                groupValue: 0,
                onChanged: (val) {
                  setState(() {
                    _val1 = 0;
                  });
                }),
          ]),
        ),
        Card(
          elevation: 2,
          child: Column(children: [
            ListTile(
              title: Text(
                'Есть ли сопутствующее заболевание?',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            RadioListTile(
                title: Text('Да'),
                value: _val2,
                groupValue: 15,
                onChanged: (val) {
                  setState(() {
                    _val2 = 15;
                  });
                }),
            RadioListTile(
                title: Text('Нет'),
                value: _val2,
                groupValue: 0,
                onChanged: (val) {
                  setState(() {
                    _val2 = 0;
                  });
                }),
          ]),
        ),
        Card(
          elevation: 2,
          child: Column(children: [
            ListTile(
              title: Text(
                'Самостоятельность при ходьбе',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            RadioListTile(
                title: Text(
                    'Ходит сам (даже если при помощи кого-то), или строгий постельный режим, неподвижно лежит'),
                value: _val3,
                groupValue: 0,
                onChanged: (val) {
                  setState(() {
                    _val3 = 0;
                  });
                }),
            RadioListTile(
                title: Text('Костыли/ходунки/трость'),
                value: _val3,
                groupValue: 15,
                onChanged: (val) {
                  setState(() {
                    _val3 = 15;
                  });
                }),
            RadioListTile(
                title: Text('Опирается о мебель или стены для поддержки'),
                value: _val3,
                groupValue: 30,
                onChanged: (val) {
                  setState(() {
                    _val3 = 30;
                  });
                }),
          ]),
        ),
        Card(
          elevation: 2,
          child: Column(children: [
            ListTile(
              title: Text(
                'Принимает внутривенное вливание/принимает гепарин, фраксипарин',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            RadioListTile(
                title: Text('Да'),
                value: _val4,
                groupValue: 25,
                onChanged: (val) {
                  setState(() {
                    _val4 = 25;
                  });
                }),
            RadioListTile(
                title: Text('Нет'),
                value: _val4,
                groupValue: 0,
                onChanged: (val) {
                  setState(() {
                    _val4 = 0;
                  });
                }),
          ]),
        ),
        Card(
          elevation: 2,
          child: Column(children: [
            ListTile(
              title: Text(
                'Походка',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            RadioListTile(
                title: Text('Нормальная (ходит свободно)'),
                value: _val5,
                groupValue: 0,
                onChanged: (val) {
                  setState(() {
                    _val5 = 0;
                  });
                }),
            RadioListTile(
                title: Text(
                    'Слегка несвободная (ходит с остановками, шаги короткие, иногда с задержкой)'),
                value: _val5,
                groupValue: 10,
                onChanged: (val) {
                  setState(() {
                    _val5 = 10;
                  });
                }),
            RadioListTile(
                title: Text(
                    'Нарушения (не может встать, ходит опираясь, смотрит вниз)'),
                value: _val5,
                groupValue: 20,
                onChanged: (val) {
                  setState(() {
                    _val5 = 20;
                  });
                }),
          ]),
        ),
        Card(
          elevation: 2,
          child: Column(children: [
            ListTile(
              title: Text(
                'Психическое состояние',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            RadioListTile(
                title: Text('Знает о своей способности двигаться'),
                value: _val6,
                groupValue: 0,
                onChanged: (val) {
                  setState(() {
                    _val6 = 0;
                  });
                }),
            RadioListTile(
                title: Text(
                    'Не знает или забывает, что нужна помощь при движении'),
                value: _val6,
                groupValue: 15,
                onChanged: (val) {
                  setState(() {
                    _val6 = 15;
                  });
                }),
          ]),
        ),
        Card(
          elevation: 2,
          child: Column(children: [
            SizedBox(
              height: 5,
            ),
            ListTile(
              title: resultMorse(
                  _result, _total, _val1, _val2, _val3, _val4, _val5, _val6),
            ),
            SizedBox(
              height: 5,
            ),
          ]),
        ),
      ],
    );
  }
}

Widget header(String title) {
  return Text(
    title,
    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
  );
}

Widget resultMorse(
  String _result,
  int _total,
  int _val1,
  int _val2,
  int _val3,
  int _val4,
  int _val5,
  int _val6,
) {
  _total = _val1 + _val2 + _val3 + _val4 + _val5 + _val6;

  if (_total <= 24) {
    _result = 'Нет риска падений';
  }
  if (_total >= 25 && _total <= 50) {
    _result = 'Низкая степень риска падений';
  }
  if (_total >= 51) {
    _result = 'Высокая степень риска падений';
  }

  return Text(_result,
      style: TextStyle(
        fontWeight: FontWeight.bold,
      ));
}
