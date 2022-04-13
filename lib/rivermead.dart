import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'main.dart';

class Rivermead extends StatefulWidget {
  const Rivermead({Key? key}) : super(key: key);

  @override
  State<Rivermead> createState() => _RivermeadState();
}

class _RivermeadState extends State<Rivermead> {
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
                'Индекс мобильности Ривермид',
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
            body: rivermeadLogic(),
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


class rivermeadLogic extends StatefulWidget {
  const rivermeadLogic({Key? key}) : super(key: key);

  @override
  State<rivermeadLogic> createState() => _rivermeadLogicState();
}

class _rivermeadLogicState extends State<rivermeadLogic> {
  bool val1 = false;
  bool val2 = false;
  bool val3 = false;
  bool val4 = false;
  bool val5 = false;
  bool val6 = false;
  bool val7 = false;
  bool val8 = false;
  bool val9 = false;
  bool val10 = false;
  bool val11 = false;
  bool val12 = false;
  bool val13 = false;
  bool val14 = false;
  bool val15 = false;
  int _rivermeadResult1 = 0;
  int _rivermeadResult2 = 0;
  int _rivermeadResult3 = 0;
  int _rivermeadResult4 = 0;
  int _rivermeadResult5 = 0;
  int _rivermeadResult6 = 0;
  int _rivermeadResult7 = 0;
  int _rivermeadResult8 = 0;
  int _rivermeadResult9 = 0;
  int _rivermeadResult10 = 0;
  int _rivermeadResult11 = 0;
  int _rivermeadResult12 = 0;
  int _rivermeadResult13 = 0;
  int _rivermeadResult14 = 0;
  int _rivermeadResult15 = 0;
  int _rivermeadResult = 0;
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10),
      children: [
        Card(
          elevation: 2,
          child: ListTile(
            title: Text(
              'Индекс мобильности Ривермид (Rivermead Mobility Index - RMI) - методика предназначенная для клинической оценки мобильности пациента',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Card(
          elevation: 2,
          child: Column(
            children: [
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text(
                      'Поворот в постели. Можете ли вы повернуться со спины на бок без посторонней помощи?'),
                  value: val1,
                  onChanged: (val) {
                    setState(() {
                      val1 = val!;
                      _rivermeadResult1 = 1;
                      if (val1 == false) {
                        _rivermeadResult1 = 0;
                      }
                    });
                  }),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text(
                      'Переход в положение сидя. Можете ли вы самостоятельно сесть на край постели из положения лежа?'),
                  value: val2,
                  onChanged: (val) {
                    setState(() {
                      val2 = val!;
                      _rivermeadResult2 = 1;
                      if (val2 == false) {
                        _rivermeadResult2 = 0;
                      }
                    });
                  }),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text(
                      'Равновесие сидя. Можете ли вы сидеть на краю постели без поддержки в течение 10 секунд?'),
                  value: val3,
                  onChanged: (val) {
                    setState(() {
                      val3 = val!;
                      _rivermeadResult3 = 1;
                      if (val3 == false) {
                        _rivermeadResult3 = 0;
                      }
                    });
                  }),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text(
                      'Самостоятельное вставание. Можете ли вы встать с любого стула менее чем за 15 секунд и удерживаться в положении стоя около стула 15 секунд (с помощью рук или, если требуется с помощью вспомогательных средств)?'),
                  value: val4,
                  onChanged: (val) {
                    setState(() {
                      val4 = val!;
                      _rivermeadResult4 = 1;
                      if (val4 == false) {
                        _rivermeadResult4 = 0;
                      }
                    });
                  }),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text(
                      'Самостоятельное стояние. Можете ли вы самостоятельно простоять более 10 секунд без опоры?'),
                  value: val5,
                  onChanged: (val) {
                    setState(() {
                      val5 = val!;
                      _rivermeadResult5 = 1;
                      if (val5 == false) {
                        _rivermeadResult5 = 0;
                      }
                    });
                  }),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text(
                      'Перемещение. Можете ли вы переместиться с постели на стул и обратно без какой-либо помощи?'),
                  value: val6,
                  onChanged: (val) {
                    setState(() {
                      val6 = val!;
                      _rivermeadResult6 = 1;
                      if (val6 == false) {
                        _rivermeadResult6 = 0;
                      }
                    });
                  }),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text(
                      'Ходьба по комнате. Можете ли вы пройти 10 метров, используя при необходимости вспомогательные средства, но без помощи постороннего лица?'),
                  value: val7,
                  onChanged: (val) {
                    setState(() {
                      val7 = val!;
                      _rivermeadResult7 = 1;
                      if (val7 == false) {
                        _rivermeadResult7 = 0;
                      }
                    });
                  }),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text(
                      'Ходьба за пределами квартиры. Можете ли вы ходить за пределами квартиры, по тротуару без посторонней помощи?'),
                  value: val8,
                  onChanged: (val) {
                    setState(() {
                      val8 = val!;
                      _rivermeadResult8 = 1;
                      if (val8 == false) {
                        _rivermeadResult8 = 0;
                      }
                    });
                  }),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text(
                      'Ходьба по комнате без применения вспомогательных средств. Можете ли вы пройти 10 метров в пределах квартиры без вспомогательных средств и без помощи другого лица?'),
                  value: val9,
                  onChanged: (val) {
                    setState(() {
                      val9 = val!;
                      _rivermeadResult9 = 1;
                      if (val9 == false) {
                        _rivermeadResult9 = 0;
                      }
                    });
                  }),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text(
                      'Поднятие предметов с пола. Если вы уронили что-то на пол, можете ли вы пройти 5 метров, поднять предмет, который вы уронили, и вернуться обратно?'),
                  value: val10,
                  onChanged: (val) {
                    setState(() {
                      val10 = val!;
                      _rivermeadResult10 = 1;
                      if (val10 == false) {
                        _rivermeadResult10 = 0;
                      }
                    });
                  }),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text(
                      'Ходьба вне квартиры по пересечённой местности. Можете ли вы без посторонней помощи ходить за пределами квартиры по неровной поверхности (трава,гравий,снег и т.п.)?'),
                  value: val11,
                  onChanged: (val) {
                    setState(() {
                      val11 = val!;
                      _rivermeadResult11 = 1;
                      if (val11 == false) {
                        _rivermeadResult11 = 0;
                      }
                    });
                  }),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text(
                      'Прием ванны. Можете ли вы войти в ванну (душевую кабину) и выйти из нее без присмотра, вымыться самостоятельно?'),
                  value: val12,
                  onChanged: (val) {
                    setState(() {
                      val12 = val!;
                      _rivermeadResult12 = 1;
                      if (val12 == false) {
                        _rivermeadResult12 = 0;
                      }
                    });
                  }),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text(
                      'Бег. Можете ли вы пробежать 10 метров не прихрамывая, за 4 секунды (допускается быстрая ходьба)?'),
                  value: val13,
                  onChanged: (val) {
                    setState(() {
                      val13 = val!;
                      _rivermeadResult13 = 1;
                      if (val13 == false) {
                        _rivermeadResult13 = 0;
                      }
                    });
                  }),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text(
                      'Подъем по лестнице. Можете ли вы подняться по лестнице на один пролет без посторонней помощи?'),
                  value: val14,
                  onChanged: (val) {
                    setState(() {
                      val14 = val!;
                      _rivermeadResult14 = 1;
                      if (val14 == false) {
                        _rivermeadResult14 = 0;
                      }
                    });
                  }),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text(
                      'Подъем и спуск на 4 ступени. Можете ли вы подняться на 4 ступени и спуститься обратно, не используя вспомогательные средства (в том числе без перил)?'),
                  value: val15,
                  onChanged: (val) {
                    setState(() {
                      val15 = val!;
                      _rivermeadResult15 = 1;
                      if (val15 == false) {
                        _rivermeadResult15 = 0;
                      }
                    });
                  }),
            ],
          ),
        ),
        Card(
          elevation: 2,
          child: Column(children: [
            SizedBox(
              height: 5,
            ),
            ListTile(
              title: resultRevermead(
                  _rivermeadResult,
                  _rivermeadResult1,
                  _rivermeadResult2,
                  _rivermeadResult3,
                  _rivermeadResult4,
                  _rivermeadResult5,
                  _rivermeadResult6,
                  _rivermeadResult7,
                  _rivermeadResult8,
                  _rivermeadResult9,
                  _rivermeadResult10,
                  _rivermeadResult11,
                  _rivermeadResult12,
                  _rivermeadResult13,
                  _rivermeadResult14,
                  _rivermeadResult15),
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

Widget resultRevermead(
  int _rivermeadResult,
  int _rivermeadResult1,
  int _rivermeadResult2,
  int _rivermeadResult3,
  int _rivermeadResult4,
  int _rivermeadResult5,
  int _rivermeadResult6,
  int _rivermeadResult7,
  int _rivermeadResult8,
  int _rivermeadResult9,
  int _rivermeadResult10,
  int _rivermeadResult11,
  int _rivermeadResult12,
  int _rivermeadResult13,
  int _rivermeadResult14,
  int _rivermeadResult15,
) {
  _rivermeadResult = _rivermeadResult1 +
      _rivermeadResult2 +
      _rivermeadResult3 +
      _rivermeadResult4 +
      _rivermeadResult5 +
      _rivermeadResult6 +
      _rivermeadResult7 +
      _rivermeadResult8 +
      _rivermeadResult9 +
      _rivermeadResult10 +
      _rivermeadResult11 +
      _rivermeadResult12 +
      _rivermeadResult13 +
      _rivermeadResult14 +
      _rivermeadResult15;
  return Text(
    'Индекс мобильности составляет $_rivermeadResult',
    textAlign: TextAlign.start,
    style: TextStyle(fontWeight: FontWeight.bold),
  );
}
