import 'package:flutter/material.dart';
import 'main.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';


class Barthel extends StatefulWidget {
  const Barthel({Key? key}) : super(key: key);

  @override
  State<Barthel> createState() => _BarthelState();
}

class _BarthelState extends State<Barthel> {
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
              'Индекс Бартел',
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
                  tooltip:
                  MaterialLocalizations.of(context).openAppDrawerTooltip,
                );
              },
            ),
          ),
          body: BarthelRadio(),
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
      ),
    );
  }
}




class BarthelRadio extends StatefulWidget {
  const BarthelRadio({Key? key}) : super(key: key);

  @override
  State<BarthelRadio> createState() => _BarthelRadioState();
}

class _BarthelRadioState extends State<BarthelRadio> {
  int _val1 = 0;
  int _val2 = 0;
  int _val3 = 0;
  int _val4 = 0;
  int _val5 = 0;
  int _val6 = 0;
  int _val7 = 0;
  int _val8 = 0;
  int _val9 = 0;
  int _val10 = 0;

  int _total = 0;
  String barthelResult = '';

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10),
      children: [
        Card(
          child: ListTile(
            title: Text(
              'Индекс Бартел (Barthel index) - шкала оценки уровня повседневной активности пациента для решения вопроса о нуждаемости его в уходе.',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Card(
          child: Column(children: [
            ListTile(
              title: Text(
                'Контроль дефекации',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            RadioListTile(
                title: Text(
                    'Недержание (или нуждается в применении клизмы, которую ставит ухаживающее лицо)'),
                value: _val1,
                groupValue: 0,
                onChanged: (val) {
                  setState(() {
                    _val1 = 0;
                  });
                }),
            RadioListTile(
                title: Text(
                    'Случайные инциденты (не чаще 1 раза в неделю), либо требуется помощь при использовании клизмы, свеч'),
                value: _val1,
                groupValue: 5,
                onChanged: (val) {
                  setState(() {
                    _val1 = 5;
                  });
                }),
            RadioListTile(
                title: Text(
                    'Полный контроль дефекации, при необходимости может использовать клизму или свечи, не нуждается в помощи'),
                value: _val1,
                groupValue: 10,
                onChanged: (val) {
                  setState(() {
                    _val1 = 10;
                  });
                }),
          ]),
        ),
        Card(
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'Контроль мочеиспускания',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              RadioListTile(
                  title: Text(
                      'Недержание, или используется катетер, управлять которым сам больной не может'),
                  value: _val2,
                  groupValue: 0,
                  onChanged: (val) {
                    setState(() {
                      _val2 = 0;
                    });
                  }),
              RadioListTile(
                  title:
                      Text('Случайные инциденты (максимум 1 раз за 24 часа)'),
                  value: _val2,
                  groupValue: 5,
                  onChanged: (val) {
                    setState(() {
                      _val2 = 5;
                    });
                  }),
              RadioListTile(
                  title: Text(
                      'Полный контроль мочеиспускания (в том числе те случаи катетеризации мочевого пузыря, когда больной самостоятельно управляется с катетером)'),
                  value: _val2,
                  groupValue: 10,
                  onChanged: (val) {
                    setState(() {
                      _val2 = 10;
                    });
                  }),
            ],
          ),
        ),
        Card(
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'Персональная гигиена (чистка зубов, манипуляции с зубными протезами, причёсывание, бритьё, умывание лица)',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              RadioListTile(
                  title: Text(
                      'Нуждается в помощи при выполнении процедур личной гигиены'),
                  value: _val3,
                  groupValue: 0,
                  onChanged: (val) {
                    setState(() {
                      _val3 = 0;
                    });
                  }),
              RadioListTile(
                  title: Text(
                      'Независимость при умывании лица, причёсывании, чистке зубов, бритье (орудия для этого обеспечиваются)'),
                  value: _val3,
                  groupValue: 5,
                  onChanged: (val) {
                    setState(() {
                      _val3 = 5;
                    });
                  }),
            ],
          ),
        ),
        Card(
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'Посещение туалета (перемещение в туалете, раздевание, очищение кожных покровов, одевание, выход из туалета)',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              RadioListTile(
                  title: Text('полностью зависим от помощи окружающих'),
                  value: _val4,
                  groupValue: 0,
                  onChanged: (val) {
                    setState(() {
                      _val4 = 0;
                    });
                  }),
              RadioListTile(
                  title: Text(
                      'Нуждается в некоторой помощи, однако часть действий, в том числе гигиенические процедуры, может выполнять самостоятельно'),
                  value: _val4,
                  groupValue: 5,
                  onChanged: (val) {
                    setState(() {
                      _val4 = 5;
                    });
                  }),
              RadioListTile(
                  title: Text(
                      'Не нуждается в помощи (при перемещении, снятии и одевании одежды, выполнении гигиенических процедур)'),
                  value: _val4,
                  groupValue: 10,
                  onChanged: (val) {
                    setState(() {
                      _val4 = 10;
                    });
                  }),
            ],
          ),
        ),
        Card(
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'Приём пищи',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              RadioListTile(
                  title: Text(
                      'Полностью зависим от помощи окружающих (необходимо кормление с посторонней помощью)'),
                  value: _val5,
                  groupValue: 0,
                  onChanged: (val) {
                    setState(() {
                      _val5 = 0;
                    });
                  }),
              RadioListTile(
                  title: Text(
                      'Частично нуждается в помощи, например, при разрезании пищи, намазывании масла на хлеб и т.д., при этом принимает пищу самостоятельно'),
                  value: _val5,
                  groupValue: 5,
                  onChanged: (val) {
                    setState(() {
                      _val5 = 5;
                    });
                  }),
              RadioListTile(
                  title: Text(
                      'Не нуждается в помощи (способен есть любую нормальную пищу, не только мягкую; самостоятельно пользуется всеми необходимыми столовыми приборами; пища приготавливается и сервируется другими лицами, но не разрезается)'),
                  value: _val5,
                  groupValue: 10,
                  onChanged: (val) {
                    setState(() {
                      _val5 = 10;
                    });
                  }),
            ],
          ),
        ),
        Card(
          child: Column(children: [
            ListTile(
              title: Text(
                'Перемещение (с кровати на стул и обратно)',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            RadioListTile(
                title: Text(
                    'Перемещение невозможно, не способен сидеть (удерживать равновесие), для поднятия с постели требуется помощь двух человек'),
                value: _val6,
                groupValue: 0,
                onChanged: (val) {
                  setState(() {
                    _val6 = 0;
                  });
                }),
            RadioListTile(
                title: Text(
                    'При вставании с постели требуется значительная физическая помощь (одного сильного/обученного лица или двух обычных лиц)'),
                value: _val6,
                groupValue: 5,
                onChanged: (val) {
                  setState(() {
                    _val6 = 5;
                  });
                }),
            RadioListTile(
                title: Text(
                    'Может самостоятельно сидеть в постели, при вставании с постели требуется незначительная помощь (физическая, одного лица) или требуется присмотр, вербальная помощь'),
                value: _val6,
                groupValue: 10,
                onChanged: (val) {
                  setState(() {
                    _val6 = 10;
                  });
                }),
            RadioListTile(
                title: Text('Не нуждается в помощи'),
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
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'Мобильность (перемещения в пределах дома/палаты и вне дома; могут использоваться вспомогательные средства)',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              RadioListTile(
                  title: Text('Не способен к передвижению'),
                  value: _val7,
                  groupValue: 0,
                  onChanged: (val) {
                    setState(() {
                      _val7 = 0;
                    });
                  }),
              RadioListTile(
                  title: Text(
                      'Может передвигаться с помощью инвалидной коляски, в том числе огибать углы и пользоваться дверями'),
                  value: _val7,
                  groupValue: 5,
                  onChanged: (val) {
                    setState(() {
                      _val7 = 5;
                    });
                  }),
              RadioListTile(
                  title: Text(
                      'Может ходить с помощью одного лица (физическая поддержка либо присмотр и моральная поддержка)'),
                  value: _val7,
                  groupValue: 10,
                  onChanged: (val) {
                    setState(() {
                      _val7 = 10;
                    });
                  }),
              RadioListTile(
                  title: Text(
                      'Не нуждается в помощи (но может использовать вспомогательные средства, например, трость)'),
                  value: _val7,
                  groupValue: 15,
                  onChanged: (val) {
                    setState(() {
                      _val7 = 15;
                    });
                  }),
            ],
          ),
        ),
        Card(
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'Одевание',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              RadioListTile(
                  title: Text('Полностью зависим от помощи окружающих'),
                  value: _val8,
                  groupValue: 0,
                  onChanged: (val) {
                    setState(() {
                      _val8 = 0;
                    });
                  }),
              RadioListTile(
                  title: Text(
                      'Частично нуждается в помощи (например, при застёгивании пуговиц, кнопок и т.п.), но более половины действий выполняет самостоятельно, некоторые виды одежды может одевать полностью самостоятельно, затрачивая на это разумное количество времени'),
                  value: _val8,
                  groupValue: 5,
                  onChanged: (val) {
                    setState(() {
                      _val8 = 5;
                    });
                  }),
              RadioListTile(
                  title: Text(
                      'Не нуждается в помощи, в том числе при застёгивании пуговиц, кнопок, завязывании шнурков и т.п., может выбирать и надевать любую одежду'),
                  value: _val8,
                  groupValue: 10,
                  onChanged: (val) {
                    setState(() {
                      _val8 = 10;
                    });
                  }),
            ],
          ),
        ),
        Card(
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'Подъём по лестнице',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              RadioListTile(
                  title: Text(
                      'Не способен подниматься по лестнице, даже с поддержкой'),
                  value: _val9,
                  groupValue: 0,
                  onChanged: (val) {
                    setState(() {
                      _val9 = 0;
                    });
                  }),
              RadioListTile(
                  title: Text('Нуждается в присмотре или физической поддержке'),
                  value: _val9,
                  groupValue: 5,
                  onChanged: (val) {
                    setState(() {
                      _val9 = 5;
                    });
                  }),
              RadioListTile(
                  title: Text(
                      'Не нуждается в помощи (может использовать вспомогательные средства)'),
                  value: _val9,
                  groupValue: 10,
                  onChanged: (val) {
                    setState(() {
                      _val9 = 10;
                    });
                  }),
            ],
          ),
        ),
        Card(
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'Приём ванны',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              RadioListTile(
                  title: Text('Нуждается в помощи'),
                  value: _val10,
                  groupValue: 0,
                  onChanged: (val) {
                    setState(() {
                      _val10 = 0;
                    });
                  }),
              RadioListTile(
                  title: Text(
                      'Принимает ванну (входит и выходит из неё, моется) без посторонней помощи и присмотра, или моется под душем, не требуя присмотра и помощи'),
                  value: _val10,
                  groupValue: 5,
                  onChanged: (val) {
                    setState(() {
                      _val10 = 5;
                    });
                  }),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Card(
          child: Column(children: [
            ListTile(
              title: header(
                  'Результат баллов: ${_val1 + _val2 + _val3 + _val4 + _val5 + _val6 + _val7 + _val8 + _val9 + _val10}'),
            ),
            ListTile(
              title: result(barthelResult, _total, _val1, _val2, _val3, _val4,
                  _val5, _val6, _val7, _val8, _val9, _val10),
            )
          ]),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

Widget result(
    String barthelResult,
    int _total,
    int _val1,
    int _val2,
    int _val3,
    int _val4,
    int _val5,
    int _val6,
    int _val7,
    int _val8,
    int _val9,
    int _val10) {
  _total = _val1 +
      _val2 +
      _val3 +
      _val4 +
      _val5 +
      _val6 +
      _val7 +
      _val8 +
      _val9 +
      _val9;
  barthelResult = '';
  if (_total <= 20) {
    barthelResult = 'Полная зависимость от постороннего ухода';
  }
  if (_total > 20 && _total <= 60) {
    barthelResult = 'Выраженная зависимость от постороннего ухода';
  }
  if (_total > 60 && _total <= 90) {
    barthelResult = 'Умеренная зависимость от постороннего ухода';
  }
  if (_total > 91) {
    barthelResult = 'Лёгкая зависимость от постороннего ухода';
  }
  return Text(
    barthelResult,
    textAlign: TextAlign.start,
    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
  );
}

Widget header(String header) {
  return Text(
    header,
    textAlign: TextAlign.start,
    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
  );
}
