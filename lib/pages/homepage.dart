import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:toast/toast.dart';
import 'package:exchangeapp/main.dart';
import 'package:exchangeapp/widgets/datascreen.dart';
import 'package:exchangeapp/thememanager/darkmode.dart';
import 'package:exchangeapp/model/currencymodel.dart';
import 'package:exchangeapp/networking/networking.dart';
import 'package:provider/provider.dart';
import '../networking/cachedatasaving.dart';
import 'package:flutter/material.dart';
import '../widgets/shimeffect.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isSearch = false;
  bool hideSearch = true;
  bool _isData = false;
  final textFieldKey = GlobalKey<AutoCompleteTextFieldState>();
  final scaffKey = GlobalKey<ScaffoldState>();
  String codevalue = "USD";

  final _textController = TextEditingController();
  CurrencyModel currency = new CurrencyModel();
  Future<void> refreshData() async {
    var data = await NetworksAPI().getAPIData(codevalue);
    setState(() {
      currency = data;
      _isData = true;
    });
  }

  Future<void> getData() async {
    var data = await CacheFile().getCacheData();
    setState(() {
      _isData = true;
      currency = data;
    });
  }

  Future getSpecificData(String code) async {
    setState(() {
      _isData = false;
    });
    if (code == 'USD') {
      getData();
    } else {
      var data = await NetworksAPI().getAPIData(code);
      print('data fetched $data');
      setState(() {
        codevalue = code;
        currency = data;
        _isData = true;
      });
    }
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var data = Provider.of<ThemeManager>(context);
    return RefreshIndicator(
      onRefresh: () => refreshData(),
      child: Scaffold(
        key: scaffKey,
        resizeToAvoidBottomPadding: false,
        floatingActionButton: Align(
          alignment: Alignment.bottomCenter,
          child: FloatingActionButton(
            backgroundColor: data.themeInfo ? Colors.pink : Colors.indigoAccent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            onPressed: () {
              SnackBar snackBar = SnackBar(
                content: Text('Current base currency:- $codevalue'),
                action: SnackBarAction(
                    label: 'Ok',
                    onPressed: () {
                      scaffKey.currentState.hideCurrentSnackBar();
                    }),
              );
              scaffKey.currentState.showSnackBar(snackBar);
            },
            child: Text(
              codevalue,
              style: TextStyle(
                fontFamily: 'Ubuntu',
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        appBar: AppBar(
          title: isSearch
              ? AutoCompleteTextField(
                  key: textFieldKey,
                  clearOnSubmit: false,
                  suggestions: suggestions,
                  controller: _textController,
                  itemFilter: (item, query) {
                    return item.toLowerCase().startsWith(query.toLowerCase());
                  },
                  itemSorter: (a, b) {
                    return a.compareTo(b);
                  },
                  itemBuilder: (context, suggestions) {
                    return ListTile(
                      title: Text(suggestions),
                    );
                  },
                  itemSubmitted: (suggestions) {
                    setState(() {
                      _textController.text = suggestions;
                    });
                  },
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons.send,
                        color: Theme.of(context).accentColor,
                      ),
                      onPressed: () {
                        if (_textController.text.isNotEmpty) {
                          if (availableCode.contains(_textController.text)) {
                            getSpecificData(_textController.text);
                            _textController.clear();
                            setState(
                              () {
                                isSearch = false;
                                hideSearch = true;
                              },
                            );
                          } else {
                            Toast.show('Code is not available', context,
                                gravity: Toast.BOTTOM,
                                duration: Toast.LENGTH_LONG,
                                backgroundColor: Colors.black87,
                                textColor: Colors.white70);
                          }
                        } else {
                          setState(() {
                            isSearch = false;
                            hideSearch = true;
                          });
                        }
                      },
                    ),
                    prefixIcon: IconButton(
                      icon: Icon(Icons.clear),
                      onPressed: () {
                        setState(() {
                          isSearch = false;
                          hideSearch = true;
                        });
                      },
                    ),
                    hintText: 'Curreny Code',
                    fillColor: data.themeInfo ? Colors.black54 : Colors.white,
                    filled: true,
                  ),
                )
              : Text(
                  'Exchange Rates',
                  style: TextStyle(fontFamily: 'Ubuntu'),
                ),
          centerTitle: true,
          actions: [
            Visibility(
              visible: hideSearch,
              child: IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  setState(() {
                    isSearch = true;
                    hideSearch = false;
                  });
                },
              ),
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: <Color>[
                    Theme.of(context).accentColor,
                    Colors.indigoAccent,
                  ], begin: Alignment.bottomLeft, end: Alignment.centerRight),
                ),
                child: Center(
                  child: Text(
                    'Exchange Rates',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Consumer<ThemeManager>(
                builder: (context, data, _) => ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text('Dark-Mode'),
                  trailing: Switch(
                    value: data.themeInfo,
                    onChanged: (val) => data.themeToggeler(),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: _isData ? DataScreen(currency, data,codevalue) : ShimEffect(),
      ),
    );
  }
}
