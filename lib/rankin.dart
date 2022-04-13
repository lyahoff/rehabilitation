import 'package:flutter/material.dart';
import 'main.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class Rankin extends StatefulWidget {
  const Rankin({Key? key}) : super(key: key);

  @override
  State<Rankin> createState() => _RankinState();
}

class _RankinState extends State<Rankin> {
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
                'Шкала Рэнкина',
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
            body: RankinLogic(),
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


class RankinLogic extends StatefulWidget {
  const RankinLogic({Key? key}) : super(key: key);

  @override
  State<RankinLogic> createState() => _RankinLogicState();
}

class _RankinLogicState extends State<RankinLogic> {
  int _rankin = 0;
  String _rankinText = '';
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10),
      children: [
        Column(
          children: [
            Card(
              elevation: 2,
              child: ListTile(
                title: Text(
                  'Модифицированная шкала Рэнкина (Modified Rankin Scale - mRS) универсальная шкала оценки инвалидности, независимости и исходов реабилитации. Часто используется для оценки степени инвалидизации после инсульта.',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Card(
              elevation: 2,
              child: Column(
                children: [
                  RadioListTile(
                    value: _rankin,
                    groupValue: 0,
                    onChanged: (val) {
                      setState(() {
                        _rankin = 0;
                      });
                    },
                    title: Text('Нет симптомов'),
                  ),
                  RadioListTile(
                    value: _rankin,
                    groupValue: 1,
                    onChanged: (val) {
                      setState(() {
                        _rankin = 1;
                      });
                    },
                    title: Text(
                        'Отсутствие существенных нарушений жизнедеятельности, несмотря на наличие некоторых симптомов: способен выполнять все повседневные обязанности'),
                  ),
                  RadioListTile(
                    value: _rankin,
                    groupValue: 2,
                    onChanged: (val) {
                      setState(() {
                        _rankin = 2;
                      });
                    },
                    title: Text(
                        'Легкое нарушение жизнедеятельности: неспособен выполнять некоторые прежние обязанности, однако справляется с собственными делами без посторонней помощи'),
                  ),
                  RadioListTile(
                    value: _rankin,
                    groupValue: 3,
                    onChanged: (val) {
                      setState(() {
                        _rankin = 3;
                      });
                    },
                    title: Text(
                        'Умеренное нарушение жизнедеятельности: требуется некоторая помощь, однако способен ходить без посторонней помощи'),
                  ),
                  RadioListTile(
                    value: _rankin,
                    groupValue: 4,
                    onChanged: (val) {
                      setState(() {
                        _rankin = 4;
                      });
                    },
                    title: Text(
                        'Выраженное нарушение жизнедеятельности: неспособен ходить без посторонней помощи, неспособен справляться со своими физическими потребностями без посторонней помощи'),
                  ),
                  RadioListTile(
                    value: _rankin,
                    groupValue: 5,
                    onChanged: (val) {
                      setState(() {
                        _rankin = 5;
                      });
                    },
                    title: Text(
                        'Тяжелое нарушение жизнедеятельности: прикован к постели, недержание мочи и кала, требует постоянной помощи и присмотра персонала'),
                  ),
                  RadioListTile(
                    value: _rankin,
                    groupValue: 6,
                    onChanged: (val) {
                      setState(() {
                        _rankin = 6;
                      });
                    },
                    title: Text('Пациент умер'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
        Card(
          child: rankinResult(_rankin, _rankinText),
          elevation: 2,
        ),
      ],
    );
  }
}

Widget rankinResult(int _rankin, String _rankinText) {
  if (_rankin == 0) {
    _rankinText = 'Нет симптомов';
  }
  if (_rankin == 1) {
    _rankinText =
        '''Отсутствие существенных ограничений жизнедеятельности, несмотря на наличие некоторых симптомов болезни;

Cпособен выполнять обычные повседневные обязанности;

Могут быть определенные симптомы (физические или когнитивные): снижение настроения, стенокардия, артериальная гипертензия, перелом, рубец, нарушения речи, проблемы с передвижением или чувствительностью, нарушение толерантности к нагрузке и другие;

Имеется ограничение жизнедеятельности, но может вернуться на прежнюю работу, поддерживать прежний уровень активности и социальной жизни;

Тратит столько же времени на выполнение дел, как и раньше до болезни''';
  }
  if (_rankin == 2) {
    _rankinText = '''Легкое ограничение жизнедеятельности;

Неспособен выполнять некоторые прежние обязанности, но справляется с собственными делами без посторонней помощи;

Имеет симптомы заболевания;

Не может выполнять ту активность, которая была до заболевания (вождение автомобиля, чтение, письмо, танцы, работа и др.);

Может самостоятельно за собой ухаживать (сам одевается и раздевается, ходит в магазин, готовит еду, может совершать небольшие путешествия и переезды, самостоятельно передвигается и др.);

Не нуждается в наблюдении;

Может проживать один дома от недели и более без помощи''';
  }
  if (_rankin == 3) {
    _rankinText =
        '''Умеренное ограничение жизнедеятельности; потребность в некоторой помощи, но ходит самостоятельно;

Имеет симптомы заболевания;

Может передвигаться самостоятельно и без посторонней помощи;

Самостоятельно одевается, раздевается, ходит в туалет, ест и выполняет др. виды повседневной активности;

Нуждается в помощи при выполнении сложных видов активности: приготовление пищи, уборке дома, поход в магазин за покупками;

Нуждается в помощниках при ведении финансовых дел;

Может проживать один дома без помощи от 1 суток до 1 недели''';
  }
  if (_rankin == 4) {
    _rankinText = '''Выраженное ограничения жизнедеятельности;

Неспособен передвигаться без посторонней помощи и справляться со своими физическими потребностями без посторонней помощи;

Имеет симптомы заболевания;

Не может передвигаться самостоятельно и без посторонней помощи;

Нуждается в помощи при выполнении повседневных задач: одевание, раздевание, туалет, прием пищи и др.;

В обычной жизни нуждается в ухаживающем, или того, кто находится рядом;

Может проживать один дома без помощи до 1 суток''';
  }
  if (_rankin == 5) {
    _rankinText =
        '''Грубое нарушение жизнедеятельности; прикован к постели, потребность в постоянной помощи медицинского персонала;

Имеет симптомы заболевания;

Не может передвигаться самостоятельно и без посторонней помощи;

Нуждается в помощи при выполнении всех повседневных задач: одевание, раздевание, туалет, прием пищи и др.;

Нуждается в ухаживающем постоянно (и днем, и ночью);

Не может быть оставлен один дома без посторонней помощи;''';
  }
  if (_rankin == 6) {
    _rankinText = 'Пациент умер';
  }

  return ListTile(
    title: Text(
      _rankinText,
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    ),
  );
}
