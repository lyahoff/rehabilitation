import 'package:flutter/material.dart';
import 'package:rehabilitation/barthel.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'main.dart';

class Merton extends StatefulWidget {
  const Merton({Key? key}) : super(key: key);

  @override
  State<Merton> createState() => _MertonState();
}

class _MertonState extends State<Merton> {
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
                'Шкала Мертон и Саттон',
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
            body: MertonLogic(),
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


class MertonLogic extends StatefulWidget {
  const MertonLogic({Key? key}) : super(key: key);

  @override
  State<MertonLogic> createState() => _MertonLogicState();
}

class _MertonLogicState extends State<MertonLogic> {
  int _totalMerton = 0;
  String _resultMerton = '';

  bool _fun1 = false;
  bool _fun2 = false;
  bool _fun3 = false;
  bool _fun4 = false;
  bool _fun5 = false;
  bool _fun6 = false;
  bool _fun7 = false;
  bool _fun8 = false;

  int _function1 = 0;
  int _function2 = 0;
  int _function3 = 0;
  int _function4 = 0;
  int _function5 = 0;
  int _function6 = 0;
  int _function7 = 0;
  int _function8 = 0;

  bool _moving1 = false;
  bool _moving2 = false;
  bool _moving3 = false;
  bool _moving4 = false;
  bool _moving5 = false;

  int _mv1 = 0;
  int _mv2 = 0;
  int _mv3 = 0;
  int _mv4 = 0;
  int _mv5 = 0;

  bool _individual1 = false;
  bool _individual2 = false;
  bool _individual3 = false;
  bool _individual4 = false;
  bool _individual5 = false;
  bool _individual6 = false;
  bool _individual7 = false;
  bool _individual8 = false;
  bool _individual9 = false;
  bool _individual10 = false;
  bool _individual11 = false;

  int _ind1 = 0;
  int _ind2 = 0;
  int _ind3 = 0;
  int _ind4 = 0;
  int _ind5 = 0;
  int _ind6 = 0;
  int _ind7 = 0;
  int _ind8 = 0;
  int _ind9 = 0;
  int _ind10 = 0;
  int _ind11 = 0;

  bool _dress1 = false;
  bool _dress2 = false;
  bool _dress3 = false;
  bool _dress4 = false;
  bool _dress5 = false;

  int _dr1 = 0;
  int _dr2 = 0;
  int _dr3 = 0;
  int _dr4 = 0;
  int _dr5 = 0;

  bool _feed1 = false;
  bool _feed2 = false;

  int _fd1 = 0;
  int _fd2 = 0;

  bool _work1 = false;
  bool _work2 = false;
  bool _work3 = false;
  bool _work4 = false;
  bool _work5 = false;
  bool _work6 = false;
  bool _work7 = false;
  bool _work8 = false;
  bool _work9 = false;
  bool _work10 = false;

  int _wk1 = 0;
  int _wk2 = 0;
  int _wk3 = 0;
  int _wk4 = 0;
  int _wk5 = 0;
  int _wk6 = 0;
  int _wk7 = 0;
  int _wk8 = 0;
  int _wk9 = 0;
  int _wk10 = 0;

  bool _shopping1 = false;
  bool _shopping2 = false;
  bool _shopping3 = false;
  bool _shopping4 = false;
  bool _shopping5 = false;
  bool _shopping6 = false;
  bool _shopping7 = false;
  bool _shopping8 = false;
  bool _shopping9 = false;
  bool _shopping10 = false;

  int _sp1 = 0;
  int _sp2 = 0;
  int _sp3 = 0;
  int _sp4 = 0;
  int _sp5 = 0;
  int _sp6 = 0;
  int _sp7 = 0;
  int _sp8 = 0;
  int _sp9 = 0;
  int _sp10 = 0;

  bool _different1 = false;
  bool _different2 = false;
  bool _different3 = false;
  bool _different4 = false;
  bool _different5 = false;
  bool _different6 = false;
  bool _different7 = false;

  int _df1 = 0;
  int _df2 = 0;
  int _df3 = 0;
  int _df4 = 0;
  int _df5 = 0;
  int _df6 = 0;
  int _df7 = 0;

  bool _chill1 = false;
  bool _chill2 = false;
  bool _chill3 = false;

  int _ch1 = 0;
  int _ch2 = 0;
  int _ch3 = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10),
      children: [
        Card(
          elevation: 2,
          child: ListTile(
            title: Text(
              'Шкала самооценки бытовых возможностей повседневной жизни Мертон и Саттон служит для оценки уровня бытовой и социальной адаптации - использование туалета, умывание, принятие ванны, одевание, прием и приготовление пищи, вождение автомобиля.',
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
                  'Функциональная мобильность',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text('Ходьба в пределах квартиры'),
                  value: _fun1,
                  onChanged: (val) {
                    setState(() {
                      _fun1 = val!;
                      _function1 = 1;
                      if (_fun1 == false) {
                        _function1 = 0;
                      }
                    });
                  }),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text('Ходьба на улице'),
                  value: _fun2,
                  onChanged: (val) {
                    setState(() {
                      _fun2 = val!;
                      _function2 = 1;
                      if (_fun2 == false) {
                        _function2 = 0;
                      }
                    });
                  }),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text('Ходьба по лестнице'),
                  value: _fun3,
                  onChanged: (val) {
                    setState(() {
                      _fun3 = val!;
                      _function3 = 1;
                      if (_fun3 == false) {
                        _function3 = 0;
                      }
                    });
                  }),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title:
                      Text('Управление инвалидной коляской при необходимости'),
                  value: _fun4,
                  onChanged: (val) {
                    setState(() {
                      _fun4 = val!;
                      _function4 = 1;
                      if (_fun4 == false) {
                        _function4 = 0;
                      }
                    });
                  }),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title:
                      Text('Вставание из инвалидной коляски и посадка в нее'),
                  value: _fun5,
                  onChanged: (val) {
                    setState(() {
                      _fun5 = val!;
                      _function5 = 1;
                      if (_fun5 == false) {
                        _function5 = 0;
                      }
                    });
                  }),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text('Выход из автомобиля и посадка в него'),
                  value: _fun6,
                  onChanged: (val) {
                    setState(() {
                      _fun6 = val!;
                      _function6 = 1;
                      if (_fun6 == false) {
                        _function6 = 0;
                      }
                    });
                  }),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text('Управление автомобилем'),
                  value: _fun7,
                  onChanged: (val) {
                    setState(() {
                      _fun7 = val!;
                      _function7 = 1;
                      if (_fun7 == false) {
                        _function7 = 0;
                      }
                    });
                  }),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text('Использование общественного транспорта'),
                  value: _fun8,
                  onChanged: (val) {
                    setState(() {
                      _fun8 = val!;
                      _function8 = 1;
                      if (_fun8 == false) {
                        _function8 = 0;
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
                  'Перемещение',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text('Вставание со стула и посадка на него'),
                  value: _moving1,
                  onChanged: (val) {
                    setState(() {
                      _moving1 = val!;
                      _mv1 = 1;
                      if (_moving1 == false) {
                        _mv1 = 0;
                      }
                    });
                  }),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text('Вставание с кровати и укладывание в нее'),
                  value: _moving2,
                  onChanged: (val) {
                    setState(() {
                      _moving2 = val!;
                      _mv2 = 1;
                      if (_moving2 == false) {
                        _mv2 = 0;
                      }
                    });
                  }),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text('Повороты в кровати'),
                  value: _moving3,
                  onChanged: (val) {
                    setState(() {
                      _moving3 = val!;
                      _mv3 = 1;
                      if (_moving3 == false) {
                        _mv3 = 0;
                      }
                    });
                  }),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text('Использование туалета'),
                  value: _moving4,
                  onChanged: (val) {
                    setState(() {
                      _moving4 = val!;
                      _mv4 = 1;
                      if (_moving4 == false) {
                        _mv4 = 0;
                      }
                    });
                  }),
              CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text('Прием душа/ванны'),
                  value: _moving5,
                  onChanged: (val) {
                    setState(() {
                      _moving5 = val!;
                      _mv5 = 1;
                      if (_moving5 == false) {
                        _mv5 = 0;
                      }
                    });
                  }),
            ],
          ),
        ),
        Card(
          elevation: 2,
          child: Column(children: [
            ListTile(
              title: Text(
                'Индивидуальный уход',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Мытье'),
                value: _individual1,
                onChanged: (val) {
                  setState(() {
                    _individual1 = val!;
                    _ind1 = 1;
                    if (_individual1 == false) {
                      _ind1 = 0;
                    }
                  });
                }),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Мытье и вытирание лица и рук'),
                value: _individual2,
                onChanged: (val) {
                  setState(() {
                    _individual2 = val!;
                    _ind2 = 1;
                    if (_individual2 == false) {
                      _ind2 = 0;
                    }
                  });
                }),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Мытье и вытирание верхней части тела'),
                value: _individual3,
                onChanged: (val) {
                  setState(() {
                    _individual3 = val!;
                    _ind3 = 1;
                    if (_individual3 == false) {
                      _ind3 = 0;
                    }
                  });
                }),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Мытье и вытирание всего тела'),
                value: _individual4,
                onChanged: (val) {
                  setState(() {
                    _individual4 = val!;
                    _ind4 = 1;
                    if (_individual4 == false) {
                      _ind4 = 0;
                    }
                  });
                }),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Чистка зубов'),
                value: _individual5,
                onChanged: (val) {
                  setState(() {
                    _individual5 = val!;
                    _ind5 = 1;
                    if (_individual5 == false) {
                      _ind5 = 0;
                    }
                  });
                }),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Выдавливание зубной пасты из тюбика'),
                value: _individual6,
                onChanged: (val) {
                  setState(() {
                    _individual6 = val!;
                    _ind6 = 1;
                    if (_individual6 == false) {
                      _ind6 = 0;
                    }
                  });
                }),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Подстригание ногтей'),
                value: _individual7,
                onChanged: (val) {
                  setState(() {
                    _individual7 = val!;
                    _ind7 = 1;
                    if (_individual7 == false) {
                      _ind7 = 0;
                    }
                  });
                }),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Мытье головы'),
                value: _individual8,
                onChanged: (val) {
                  setState(() {
                    _individual8 = val!;
                    _ind8 = 1;
                    if (_individual8 == false) {
                      _ind8 = 0;
                    }
                  });
                }),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Причесывание'),
                value: _individual9,
                onChanged: (val) {
                  setState(() {
                    _individual9 = val!;
                    _ind9 = 1;
                    if (_individual9 == false) {
                      _ind9 = 0;
                    }
                  });
                }),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Бритье'),
                value: _individual10,
                onChanged: (val) {
                  setState(() {
                    _individual10 = val!;
                    _ind10 = 1;
                    if (_individual10 == false) {
                      _ind10 = 0;
                    }
                  });
                }),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Использование туалетной бумаги'),
                value: _individual11,
                onChanged: (val) {
                  setState(() {
                    _individual11 = val!;
                    _ind11 = 1;
                    if (_individual11 == false) {
                      _ind11 = 0;
                    }
                  });
                }),
          ]),
        ),
        Card(
          elevation: 2,
          child: Column(children: [
            ListTile(
              title: Text(
                'Одевание',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Надевание и снимание верхней одежды'),
                value: _dress1,
                onChanged: (val) {
                  setState(() {
                    _dress1 = val!;
                    _dr1 = 1;
                    if (_dress1 == false) {
                      _dr1 = 0;
                    }
                  });
                }),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Надевание и снимание нижнего белья'),
                value: _dress2,
                onChanged: (val) {
                  setState(() {
                    _dress2 = val!;
                    _dr2 = 1;
                    if (_dress2 == false) {
                      _dr2 = 0;
                    }
                  });
                }),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Управление пуговицами и молниями'),
                value: _dress3,
                onChanged: (val) {
                  setState(() {
                    _dress3 = val!;
                    _dr3 = 1;
                    if (_dress3 == false) {
                      _dr3 = 0;
                    }
                  });
                }),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Надевание носков'),
                value: _dress4,
                onChanged: (val) {
                  setState(() {
                    _dress4 = val!;
                    _dr4 = 1;
                    if (_dress4 == false) {
                      _dr4 = 0;
                    }
                  });
                }),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Надевание обуви'),
                value: _dress5,
                onChanged: (val) {
                  setState(() {
                    _dress5 = val!;
                    _dr5 = 1;
                    if (_dress5 == false) {
                      _dr5 = 0;
                    }
                  });
                }),
          ]),
        ),
        Card(
          elevation: 2,
          child: Column(children: [
            ListTile(
              title: Text(
                'Прием пищи и питье',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Владение столовыми приборами'),
                value: _feed1,
                onChanged: (val) {
                  setState(() {
                    _feed1 = val!;
                    _fd1 = 1;
                    if (_feed1 == false) {
                      _fd1 = 0;
                    }
                  });
                }),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Питье из чашки/кружки'),
                value: _feed2,
                onChanged: (val) {
                  setState(() {
                    _feed2 = val!;
                    _fd2 = 1;
                    if (_feed2 == false) {
                      _fd2 = 0;
                    }
                  });
                }),
          ]),
        ),
        Card(
          elevation: 2,
          child: Column(children: [
            ListTile(
              title: Text(
                'Производительность домашнего труда',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Ведение домашнего хозяйства/приготовление пищи'),
                value: _work1,
                onChanged: (val) {
                  setState(() {
                    _work1 = val!;
                    _wk1 = 1;
                    if (_work1 == false) {
                      _wk1 = 0;
                    }
                  });
                }),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Приготовление горячих напитков'),
                value: _work2,
                onChanged: (val) {
                  setState(() {
                    _work2 = val!;
                    _wk2 = 1;
                    if (_work2 == false) {
                      _wk2 = 0;
                    }
                  });
                }),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Использование газовой/электрической плиты'),
                value: _work3,
                onChanged: (val) {
                  setState(() {
                    _work3 = val!;
                    _wk3 = 1;
                    if (_work3 == false) {
                      _wk3 = 0;
                    }
                  });
                }),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Поднятие и переноска кастрюль и сковородок'),
                value: _work4,
                onChanged: (val) {
                  setState(() {
                    _work4 = val!;
                    _wk4 = 1;
                    if (_work4 == false) {
                      _wk4 = 0;
                    }
                  });
                }),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Чистка овощей и фруктов'),
                value: _work5,
                onChanged: (val) {
                  setState(() {
                    _work5 = val!;
                    _wk5 = 1;
                    if (_work5 == false) {
                      _wk5 = 0;
                    }
                  });
                }),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Отбивание продуктов и использование терки'),
                value: _work6,
                onChanged: (val) {
                  setState(() {
                    _work6 = val!;
                    _wk6 = 1;
                    if (_work6 == false) {
                      _wk6 = 0;
                    }
                  });
                }),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Открывание бутылок/банок'),
                value: _work7,
                onChanged: (val) {
                  setState(() {
                    _work7 = val!;
                    _wk7 = 1;
                    if (_work7 == false) {
                      _wk7 = 0;
                    }
                  });
                }),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Открывание пакетов'),
                value: _work8,
                onChanged: (val) {
                  setState(() {
                    _work8 = val!;
                    _wk8 = 1;
                    if (_work8 == false) {
                      _wk8 = 0;
                    }
                  });
                }),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Возможность стоять при приготовлении пищи'),
                value: _work9,
                onChanged: (val) {
                  setState(() {
                    _work9 = val!;
                    _wk9 = 1;
                    if (_work9 == false) {
                      _wk9 = 0;
                    }
                  });
                }),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Мытье посуды'),
                value: _work10,
                onChanged: (val) {
                  setState(() {
                    _work10 = val!;
                    _wk10 = 1;
                    if (_work10 == false) {
                      _wk10 = 0;
                    }
                  });
                }),
          ]),
        ),
        Card(
          elevation: 2,
          child: Column(children: [
            ListTile(
              title: Text(
                'Чистка/Стирка/Шопинг',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Использование штепселей, выключателей'),
                value: _shopping1,
                onChanged: (val) {
                  setState(() {
                    _shopping1 = val!;
                    _sp1 = 1;
                    if (_shopping1 == false) {
                      _sp1 = 0;
                    }
                  });
                }),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Использование пылесоса'),
                value: _shopping2,
                onChanged: (val) {
                  setState(() {
                    _shopping2 = val!;
                    _sp2 = 1;
                    if (_shopping2 == false) {
                      _sp2 = 0;
                    }
                  });
                }),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Использование веников/метелок'),
                value: _shopping3,
                onChanged: (val) {
                  setState(() {
                    _shopping3 = val!;
                    _sp3 = 1;
                    if (_shopping3 == false) {
                      _sp3 = 0;
                    }
                  });
                }),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Вытирание пыли'),
                value: _shopping4,
                onChanged: (val) {
                  setState(() {
                    _shopping4 = val!;
                    _sp4 = 1;
                    if (_shopping4 == false) {
                      _sp4 = 0;
                    }
                  });
                }),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Открывание и закрывание кранов'),
                value: _shopping5,
                onChanged: (val) {
                  setState(() {
                    _shopping5 = val!;
                    _sp5 = 1;
                    if (_shopping5 == false) {
                      _sp5 = 0;
                    }
                  });
                }),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Ручная стирка'),
                value: _shopping6,
                onChanged: (val) {
                  setState(() {
                    _shopping6 = val!;
                    _sp6 = 1;
                    if (_shopping6 == false) {
                      _sp6 = 0;
                    }
                  });
                }),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Использование стиральной машины'),
                value: _shopping7,
                onChanged: (val) {
                  setState(() {
                    _shopping7 = val!;
                    _sp7 = 1;
                    if (_shopping7 == false) {
                      _sp7 = 0;
                    }
                  });
                }),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Развешивание одежды'),
                value: _shopping8,
                onChanged: (val) {
                  setState(() {
                    _shopping8 = val!;
                    _sp8 = 1;
                    if (_shopping8 == false) {
                      _sp8 = 0;
                    }
                  });
                }),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Глажка'),
                value: _shopping9,
                onChanged: (val) {
                  setState(() {
                    _shopping9 = val!;
                    _sp9 = 1;
                    if (_shopping9 == false) {
                      _sp9 = 0;
                    }
                  });
                }),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Шопинг'),
                value: _shopping10,
                onChanged: (val) {
                  setState(() {
                    _shopping10 = val!;
                    _sp10 = 1;
                    if (_shopping10 == false) {
                      _sp10 = 0;
                    }
                  });
                }),
          ]),
        ),
        Card(
          elevation: 2,
          child: Column(children: [
            ListTile(
              title: Text(
                'Разное',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Поднимание вещей с пола'),
                value: _different1,
                onChanged: (val) {
                  setState(() {
                    _different1 = val!;
                    _df1 = 1;
                    if (_different1 == false) {
                      _df1 = 0;
                    }
                  });
                }),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Открывание и закрывание дверей дома'),
                value: _different2,
                onChanged: (val) {
                  setState(() {
                    _different2 = val!;
                    _df2 = 1;
                    if (_different2 == false) {
                      _df2 = 0;
                    }
                  });
                }),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Использование ключей'),
                value: _different3,
                onChanged: (val) {
                  setState(() {
                    _different3 = val!;
                    _df3 = 1;
                    if (_different3 == false) {
                      _df3 = 0;
                    }
                  });
                }),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Использование металлических денег'),
                value: _different4,
                onChanged: (val) {
                  setState(() {
                    _different4 = val!;
                    _df4 = 1;
                    if (_different4 == false) {
                      _df4 = 0;
                    }
                  });
                }),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Использование бумажных денег'),
                value: _different5,
                onChanged: (val) {
                  setState(() {
                    _different5 = val!;
                    _df5 = 1;
                    if (_different5 == false) {
                      _df5 = 0;
                    }
                  });
                }),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Использование телефона'),
                value: _different6,
                onChanged: (val) {
                  setState(() {
                    _different6 = val!;
                    _df6 = 1;
                    if (_different6 == false) {
                      _df6 = 0;
                    }
                  });
                }),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Использование ручки/карандаша'),
                value: _different7,
                onChanged: (val) {
                  setState(() {
                    _different7 = val!;
                    _df7 = 1;
                    if (_different7 == false) {
                      _df7 = 0;
                    }
                  });
                }),
          ]),
        ),
        Card(
          elevation: 2,
          child: Column(children: [
            ListTile(
              title: Text(
                'Досуг',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Спокойный отдых'),
                value: _chill1,
                onChanged: (val) {
                  setState(() {
                    _chill1 = val!;
                    _ch1 = 1;
                    if (_chill1 == false) {
                      _ch1 = 0;
                    }
                  });
                }),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Активный отдых'),
                value: _chill2,
                onChanged: (val) {
                  setState(() {
                    _chill2 = val!;
                    _ch2 = 1;
                    if (_chill2 == false) {
                      _ch2 = 0;
                    }
                  });
                }),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Общение'),
                value: _chill3,
                onChanged: (val) {
                  setState(() {
                    _chill3 = val!;
                    _ch3 = 1;
                    if (_chill3 == false) {
                      _ch3 = 0;
                    }
                  });
                }),
          ]),
        ),
        Card(
          elevation: 2,
          child: Column(children: [
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: MertonResult(
                  _resultMerton,
                  _totalMerton,
                  _function1,
                  _function2,
                  _function3,
                  _function4,
                  _function5,
                  _function6,
                  _function7,
                  _function8,
                  _mv1,
                  _mv2,
                  _mv3,
                  _mv4,
                  _mv5,
                  _ind1,
                  _ind2,
                  _ind3,
                  _ind4,
                  _ind5,
                  _ind6,
                  _ind7,
                  _ind8,
                  _ind9,
                  _ind10,
                  _ind11,
                  _dr1,
                  _dr2,
                  _dr3,
                  _dr4,
                  _dr5,
                  _fd1,
                  _fd2,
                  _wk1,
                  _wk2,
                  _wk3,
                  _wk4,
                  _wk5,
                  _wk6,
                  _wk7,
                  _wk8,
                  _wk9,
                  _wk10,
                  _sp1,
                  _sp2,
                  _sp3,
                  _sp4,
                  _sp5,
                  _sp6,
                  _sp7,
                  _sp8,
                  _sp9,
                  _sp10,
                  _df1,
                  _df2,
                  _df3,
                  _df4,
                  _df5,
                  _df6,
                  _df7,
                  _ch1,
                  _ch2,
                  _ch3),
            ),
            SizedBox(
              height: 10,
            ),
          ]),
        ),
      ],
    );
  }
}

Widget MertonResult(
  String _resultMerton,
  int _totalMerton,
  int _function1,
  int _function2,
  int _function3,
  int _function4,
  int _function5,
  int _function6,
  int _function7,
  int _function8,
  int _mv1,
  int _mv2,
  int _mv3,
  int _mv4,
  int _mv5,
  int _ind1,
  int _ind2,
  int _ind3,
  int _ind4,
  int _ind5,
  int _ind6,
  int _ind7,
  int _ind8,
  int _ind9,
  int _ind10,
  int _ind11,
  int _dr1,
  int _dr2,
  int _dr3,
  int _dr4,
  int _dr5,
  int _fd1,
  int _fd2,
  int _wk1,
  int _wk2,
  int _wk3,
  int _wk4,
  int _wk5,
  int _wk6,
  int _wk7,
  int _wk8,
  int _wk9,
  int _wk10,
  int _sp1,
  int _sp2,
  int _sp3,
  int _sp4,
  int _sp5,
  int _sp6,
  int _sp7,
  int _sp8,
  int _sp9,
  int _sp10,
  int _df1,
  int _df2,
  int _df3,
  int _df4,
  int _df5,
  int _df6,
  int _df7,
  int _ch1,
  int _ch2,
  int _ch3,
) {
  _totalMerton = (_function1 +
      _function2 +
      _function3 +
      _function4 +
      _function5 +
      _function6 +
      _function7 +
      _function8 +
      _mv1 +
      _mv2 +
      _mv3 +
      _mv4 +
      _mv5 +
      _ind1 +
      _ind2 +
      _ind3 +
      _ind4 +
      _ind5 +
      _ind6 +
      _ind7 +
      _ind8 +
      _ind9 +
      _ind10 +
      _ind11 +
      _dr1 +
      _dr2 +
      _dr3 +
      _dr4 +
      _dr5 +
      _fd1 +
      _fd2 +
      _wk1 +
      _wk2 +
      _wk3 +
      _wk4 +
      _wk5 +
      _wk6 +
      _wk7 +
      _wk8 +
      _wk9 +
      _wk10 +
      _sp1 +
      _sp2 +
      _sp3 +
      _sp4 +
      _sp5 +
      _sp6 +
      _sp7 +
      _sp8 +
      _sp9 +
      _sp10 +
      _df1 +
      _df2 +
      _df3 +
      _df4 +
      _df5 +
      _df6 +
      _df7 +
      _ch1 +
      _ch2 +
      _ch3);

  if (_totalMerton == 0) {
    _resultMerton = 'Отсутствие бытовой адаптации';
  }
  if (_totalMerton >= 1 && _totalMerton <= 29) {
    _resultMerton = 'Минимальная адаптация';
  }
  if (_totalMerton >= 30 && _totalMerton <= 45) {
    _resultMerton = 'Удовлетворительная адаптация';
  }
  if (_totalMerton >= 46 && _totalMerton <= 58) {
    _resultMerton = 'Достаточная адаптация';
  }
  if (_totalMerton >= 59) {
    _resultMerton = 'Полная бытовая адаптация';
  }

  return header('Сумма баллов составляет $_totalMerton\n\n$_resultMerton');
}
