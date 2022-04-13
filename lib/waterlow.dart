import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'main.dart';

class Waterlow extends StatefulWidget {
  const Waterlow({Key? key}) : super(key: key);

  @override
  State<Waterlow> createState() => _WaterlowState();
}

class _WaterlowState extends State<Waterlow> {
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
                'Шкала Ватерлоу',
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
            body: WaterlowLogic(),
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


class WaterlowLogic extends StatefulWidget {
  const WaterlowLogic({Key? key}) : super(key: key);

  @override
  State<WaterlowLogic> createState() => _WaterlowLogicState();
}

class _WaterlowLogicState extends State<WaterlowLogic> {
  int _val1 = 1;
  int _val2 = 1;
  int _val3 = 0;
  int _val4 = 0;
  int _val5 = 0;
  int _val6 = 0;

  bool _sk1 = false;
  bool _sk2 = false;
  bool _sk3 = false;
  bool _sk4 = false;
  bool _sk5 = false;
  bool _sk6 = false;

  int _skin1 = 0;
  int _skin2 = 0;
  int _skin3 = 0;
  int _skin4 = 0;
  int _skin5 = 0;
  int _skin6 = 0;

  bool _factors1 = false;
  bool _factors2 = false;
  bool _factors3 = false;
  bool _factors4 = false;
  bool _factors5 = false;
  bool _factors6 = false;
  bool _factors7 = false;
  bool _factors8 = false;
  bool _factors9 = false;
  bool _factors10 = false;
  bool _factors11 = false;
  bool _factors12 = false;
  bool _factors13 = false;
  bool _factors14 = false;
  bool _factors15 = false;

  int _fk1 = 0;
  int _fk2 = 0;
  int _fk3 = 0;
  int _fk4 = 0;
  int _fk5 = 0;
  int _fk6 = 0;
  int _fk7 = 0;
  int _fk8 = 0;
  int _fk9 = 0;
  int _fk10 = 0;
  int _fk11 = 0;
  int _fk12 = 0;
  int _fk13 = 0;
  int _fk14 = 0;
  int _fk15 = 0;

  int _totalWaterlow = 0;

  String _result = '';

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10),
      children: [
        Card(
          elevation: 2,
          child: ListTile(
            title: Text(
              'Шкала Ватерлоу используется для оценки риска развития пролежней у пациента.',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Card(
          elevation: 2,
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'Пол',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              RadioListTile(
                  title: Text('Мужской'),
                  value: _val1,
                  groupValue: 1,
                  onChanged: (val) {
                    setState(() {
                      _val1 = 1;
                    });
                  }),
              RadioListTile(
                  title: Text('Женский'),
                  value: _val1,
                  groupValue: 2,
                  onChanged: (val) {
                    setState(() {
                      _val1 = 2;
                    });
                  }),
            ],
          ),
        ),
        Card(
          elevation: 2,
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'Возраст',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              RadioListTile(
                  title: Text('14–49 лет'),
                  value: _val2,
                  groupValue: 1,
                  onChanged: (val) {
                    setState(() {
                      _val2 = 1;
                    });
                  }),
              RadioListTile(
                  title: Text('50–64'),
                  value: _val2,
                  groupValue: 2,
                  onChanged: (val) {
                    setState(() {
                      _val2 = 2;
                    });
                  }),
              RadioListTile(
                  title: Text('65–74'),
                  value: _val2,
                  groupValue: 3,
                  onChanged: (val) {
                    setState(() {
                      _val2 = 3;
                    });
                  }),
              RadioListTile(
                  title: Text('75–80'),
                  value: _val2,
                  groupValue: 4,
                  onChanged: (val) {
                    setState(() {
                      _val2 = 4;
                    });
                  }),
              RadioListTile(
                  title: Text('81 лет и более'),
                  value: _val2,
                  groupValue: 5,
                  onChanged: (val) {
                    setState(() {
                      _val2 = 5;
                    });
                  }),
            ],
          ),
        ),
        Card(
          elevation: 2,
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'Физическое телосложение / масса тела',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              RadioListTile(
                  title: Text('Среднее'),
                  value: _val3,
                  groupValue: 0,
                  onChanged: (val) {
                    setState(() {
                      _val3 = 0;
                    });
                  }),
              RadioListTile(
                  title: Text('Выше среднего'),
                  value: _val3,
                  groupValue: 1,
                  onChanged: (val) {
                    setState(() {
                      _val3 = 1;
                    });
                  }),
              RadioListTile(
                  title: Text('Тучность'),
                  value: _val3,
                  groupValue: 2,
                  onChanged: (val) {
                    setState(() {
                      _val3 = 2;
                    });
                  }),
              RadioListTile(
                  title: Text('Ниже среднего'),
                  value: _val3,
                  groupValue: 3,
                  onChanged: (val) {
                    setState(() {
                      _val3 = 3;
                    });
                  }),
            ],
          ),
        ),
        Card(
          elevation: 2,
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'Недержание мочи и кала',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              RadioListTile(
                  title: Text('Используется катетер'),
                  value: _val4,
                  groupValue: 0,
                  onChanged: (val) {
                    setState(() {
                      _val4 = 0;
                    });
                  }),
              RadioListTile(
                  title: Text('Эпизодическое недержание'),
                  value: _val4,
                  groupValue: 1,
                  onChanged: (val) {
                    setState(() {
                      _val4 = 1;
                    });
                  }),
              RadioListTile(
                  title:
                      Text('Используется катетер, но имеется недержание кала'),
                  value: _val4,
                  groupValue: 2,
                  onChanged: (val) {
                    setState(() {
                      _val4 = 2;
                    });
                  }),
              RadioListTile(
                  title: Text('Недержание мочи и кала'),
                  value: _val4,
                  groupValue: 3,
                  onChanged: (val) {
                    setState(() {
                      _val4 = 3;
                    });
                  }),
            ],
          ),
        ),
        Card(
          elevation: 2,
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'Отклонение состояния кожи',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text('Атрофичная, напоминает папиросную бумагу'),
                  value: _sk1,
                  onChanged: (val) {
                    setState(() {
                      _sk1 = val!;
                      _skin1 = 1;
                      if (_sk1 == false) {
                        _skin1 = 0;
                      }
                    });
                  }),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text('Сухая'),
                  value: _sk2,
                  onChanged: (val) {
                    setState(() {
                      _sk2 = val!;
                      _skin2 = 1;
                      if (_sk2 == false) {
                        _skin2 = 0;
                      }
                    });
                  }),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text('Отечная'),
                  value: _sk3,
                  onChanged: (val) {
                    setState(() {
                      _sk3 = val!;
                      _skin3 = 1;
                      if (_sk3 == false) {
                        _skin3 = 0;
                      }
                    });
                  }),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text('Липкая'),
                  value: _sk4,
                  onChanged: (val) {
                    setState(() {
                      _sk4 = val!;
                      _skin4 = 1;
                      if (_sk4 == false) {
                        _skin4 = 0;
                      }
                    });
                  }),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text('Изменение цвета'),
                  value: _sk5,
                  onChanged: (val) {
                    setState(() {
                      _sk5 = val!;
                      _skin5 = 2;
                      if (_sk5 == false) {
                        _skin5 = 0;
                      }
                    });
                  }),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text('Нарушение целостности'),
                  value: _sk6,
                  onChanged: (val) {
                    setState(() {
                      _sk6 = val!;
                      _skin6 = 3;
                      if (_sk6 == false) {
                        _skin6 = 0;
                      }
                    });
                  }),
            ],
          ),
        ),
        Card(
          elevation: 2,
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'Способность к передвижению',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              RadioListTile(
                  title: Text('Полная'),
                  value: _val5,
                  groupValue: 0,
                  onChanged: (val) {
                    setState(() {
                      _val5 = 0;
                    });
                  }),
              RadioListTile(
                  title: Text('Беспокойство'),
                  value: _val5,
                  groupValue: 1,
                  onChanged: (val) {
                    setState(() {
                      _val5 = 1;
                    });
                  }),
              RadioListTile(
                  title: Text('Апатия'),
                  value: _val5,
                  groupValue: 2,
                  onChanged: (val) {
                    setState(() {
                      _val5 = 2;
                    });
                  }),
              RadioListTile(
                  title: Text('Ограниченная'),
                  value: _val5,
                  groupValue: 3,
                  onChanged: (val) {
                    setState(() {
                      _val5 = 3;
                    });
                  }),
              RadioListTile(
                  title: Text('Используется тракция'),
                  value: _val5,
                  groupValue: 4,
                  onChanged: (val) {
                    setState(() {
                      _val5 = 4;
                    });
                  }),
              RadioListTile(
                  title: Text('Не ходит'),
                  value: _val5,
                  groupValue: 5,
                  onChanged: (val) {
                    setState(() {
                      _val5 = 5;
                    });
                  }),
            ],
          ),
        ),
        Card(
          elevation: 2,
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'Аппетит',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              RadioListTile(
                  title: Text('Средний'),
                  value: _val6,
                  groupValue: 0,
                  onChanged: (val) {
                    setState(() {
                      _val6 = 0;
                    });
                  }),
              RadioListTile(
                  title: Text('Снижен'),
                  value: _val6,
                  groupValue: 1,
                  onChanged: (val) {
                    setState(() {
                      _val6 = 1;
                    });
                  }),
              RadioListTile(
                  title: Text('Назогастральная трубка / только жидкое питание'),
                  value: _val6,
                  groupValue: 2,
                  onChanged: (val) {
                    setState(() {
                      _val6 = 2;
                    });
                  }),
              RadioListTile(
                  title: Text('Анорексия'),
                  value: _val6,
                  groupValue: 3,
                  onChanged: (val) {
                    setState(() {
                      _val6 = 3;
                    });
                  }),
            ],
          ),
        ),
        Card(
          elevation: 2,
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'Дополнительные факторы',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text('Терминальная Кахексия'),
                  value: _factors1,
                  onChanged: (val) {
                    setState(() {
                      _factors1 = val!;
                      _fk1 = 8;
                      if (_factors1 == false) {
                        _fk1 = 0;
                      }
                    });
                  }),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text('Сердечная недостаточность'),
                  value: _factors2,
                  onChanged: (val) {
                    setState(() {
                      _factors2 = val!;
                      _fk2 = 5;
                      if (_factors2 == false) {
                        _fk2 = 0;
                      }
                    });
                  }),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text('Болезнь периферических сосудов'),
                  value: _factors3,
                  onChanged: (val) {
                    setState(() {
                      _factors3 = val!;
                      _fk3 = 5;
                      if (_factors3 == false) {
                        _fk3 = 0;
                      }
                    });
                  }),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text('Анемия'),
                  value: _factors4,
                  onChanged: (val) {
                    setState(() {
                      _factors4 = val!;
                      _fk4 = 2;
                      if (_factors4 == false) {
                        _fk4 = 0;
                      }
                    });
                  }),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text('Курящий'),
                  value: _factors5,
                  onChanged: (val) {
                    setState(() {
                      _factors5 = val!;
                      _fk5 = 1;
                      if (_factors5 == false) {
                        _fk5 = 0;
                      }
                    });
                  }),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text('Диабетический неврологический дефицит'),
                  value: _factors6,
                  onChanged: (val) {
                    setState(() {
                      _factors6 = val!;
                      _fk6 = 5;
                      if (_factors6 == false) {
                        _fk6 = 0;
                      }
                    });
                  }),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text(
                      'Неврологический дефицит, связанный с рассеянным склерозом'),
                  value: _factors7,
                  onChanged: (val) {
                    setState(() {
                      _factors7 = val!;
                      _fk7 = 5;
                      if (_factors7 == false) {
                        _fk7 = 0;
                      }
                    });
                  }),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text('Неврологический дефицит, связанный с инсультом'),
                  value: _factors8,
                  onChanged: (val) {
                    setState(() {
                      _factors8 = val!;
                      _fk8 = 5;
                      if (_factors8 == false) {
                        _fk8 = 0;
                      }
                    });
                  }),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text('Моторно-сенсорный неврологический дефицит'),
                  value: _factors9,
                  onChanged: (val) {
                    setState(() {
                      _factors9 = val!;
                      _fk9 = 5;
                      if (_factors9 == false) {
                        _fk9 = 0;
                      }
                    });
                  }),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text('Параплегический неврологический дефицит'),
                  value: _factors10,
                  onChanged: (val) {
                    setState(() {
                      _factors10 = val!;
                      _fk10 = 5;
                      if (_factors10 == false) {
                        _fk10 = 0;
                      }
                    });
                  }),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text(
                      'Недавние ортопедические хирургические вмешательства ниже уровня талии'),
                  value: _factors11,
                  onChanged: (val) {
                    setState(() {
                      _factors11 = val!;
                      _fk11 = 5;
                      if (_factors11 == false) {
                        _fk11 = 0;
                      }
                    });
                  }),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text(
                      'Недавняя спинальная анестезия (операция продолжительностью более 2 часов)'),
                  value: _factors12,
                  onChanged: (val) {
                    setState(() {
                      _factors12 = val!;
                      _fk12 = 5;
                      if (_factors12 == false) {
                        _fk12 = 0;
                      }
                    });
                  }),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text('Прием цитотоксических препаратов'),
                  value: _factors13,
                  onChanged: (val) {
                    setState(() {
                      _factors13 = val!;
                      _fk13 = 4;
                      if (_factors13 == false) {
                        _fk13 = 0;
                      }
                    });
                  }),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text('Прием высокой дозы кортикостероидов'),
                  value: _factors14,
                  onChanged: (val) {
                    setState(() {
                      _factors14 = val!;
                      _fk14 = 4;
                      if (_factors14 == false) {
                        _fk14 = 0;
                      }
                    });
                  }),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text('Прием противовоспалительных препаратов'),
                  value: _factors15,
                  onChanged: (val) {
                    setState(() {
                      _factors15 = val!;
                      _fk15 = 4;
                      if (_factors15 == false) {
                        _fk15 = 0;
                      }
                    });
                  }),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Card(
          elevation: 2,
          child: Column(
            children: [
              ListTile(
                title: WaterlowResult(
                    _val1,
                    _val2,
                    _val3,
                    _val4,
                    _val5,
                    _val6,
                    _skin1,
                    _skin2,
                    _skin3,
                    _skin4,
                    _skin5,
                    _skin6,
                    _fk1,
                    _fk2,
                    _fk3,
                    _fk4,
                    _fk5,
                    _fk6,
                    _fk7,
                    _fk8,
                    _fk9,
                    _fk10,
                    _fk11,
                    _fk12,
                    _fk13,
                    _fk14,
                    _fk15,
                    _totalWaterlow,
                    _result),
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}

Widget WaterlowResult(
  int _val1,
  int _val2,
  int _val3,
  int _val4,
  int _val5,
  int _val6,
  int _skin1,
  int _skin2,
  int _skin3,
  int _skin4,
  int _skin5,
  int _skin6,
  int _fk1,
  int _fk2,
  int _fk3,
  int _fk4,
  int _fk5,
  int _fk6,
  int _fk7,
  int _fk8,
  int _fk9,
  int _fk10,
  int _fk11,
  int _fk12,
  int _fk13,
  int _fk14,
  int _fk15,
  int _totalWaterlow,
  String _result,
) {
  _totalWaterlow = _val1 +
      _val2 +
      _val3 +
      _val4 +
      _val5 +
      _val6 +
      _skin1 +
      _skin2 +
      _skin3 +
      _skin4 +
      _skin5 +
      _skin6 +
      _fk1 +
      _fk2 +
      _fk3 +
      _fk4 +
      _fk5 +
      _fk6 +
      _fk7 +
      _fk8 +
      _fk9 +
      _fk10 +
      _fk11 +
      _fk12 +
      _fk13 +
      _fk14 +
      _fk15;

  if (_totalWaterlow <= 9) {
    _result =
        'Результат составляет $_totalWaterlow \n\nРиска возникновения пролежней нет';
  }
  if (_totalWaterlow >= 10 && _totalWaterlow <= 14) {
    _result =
        'Результат составляет $_totalWaterlow \n\nЕсть риск развития пролежней';
  }
  if (_totalWaterlow >= 15 && _totalWaterlow <= 19) {
    _result =
        'Результат составляет $_totalWaterlow \n\nВысокая степень риска развития пролежней';
  }
  if (_totalWaterlow >= 20) {
    _result =
        'Результат составляет $_totalWaterlow \n\nОчень высокая степень риска развития пролежней ';
  }

  return Text(
    _result,
    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
  );
}
