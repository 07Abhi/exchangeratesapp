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
  final _scrollController = ScrollController();
  final scaffKey = GlobalKey<ScaffoldState>();
  String codevalue = "USD";

  final _textController = TextEditingController();
  CurrencyModel currency = new CurrencyModel();
  Future<void> refreshData()async{
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
      onRefresh: ()=>refreshData(),
          child: Scaffold(
        key: scaffKey,
        resizeToAvoidBottomPadding: false,
        floatingActionButton: Align(
          alignment: Alignment.bottomCenter,
          child: FloatingActionButton(
            backgroundColor: Colors.indigoAccent,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
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
              ? TextField(
                  controller: _textController,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(
                          Icons.send,
                          color: Theme.of(context).accentColor,
                        ),
                        onPressed: () {
                          if (_textController.text.isNotEmpty) {
                            getSpecificData(_textController.text);
                            _textController.clear();
                            setState(
                              () {
                                isSearch = false;
                                hideSearch = true;
                              },
                            );
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
                      hintText: 'Curreny Code (except USD)',
                      fillColor: data.themeInfo ? Colors.black54 : Colors.white,
                      filled: true),
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
        body: _isData ? DataScreen(currency, data) : ShimEffect(),
      ),
    );
  }
}

class DataScreen extends StatefulWidget {
  CurrencyModel code;
  ThemeManager data;
  DataScreen(this.code, this.data);

  @override
  _DataScreenState createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      itemExtent: 52,
      children: [
        ListTile(
          leading: Text(
            'AED',
            style: TextStyle(
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color:widget.data.themeInfo?Colors.pink:Colors.indigoAccent),
          ),
          title: Text(
            widget.code.AED,
            style: TextStyle(
              fontFamily: 'Srisakdi',
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Text(
            'د.إ',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
        Divider(
          height: 3.0,
          color: Colors.indigoAccent,
        ),
        ListTile(
          leading: Text(
            'ARS',
            style: TextStyle(
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color:widget.data.themeInfo?Colors.pink:Colors.indigoAccent),
          ),
          title: Text(
            widget.code.ARS,
            style: TextStyle(
              fontFamily: 'Srisakdi',
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Text(
            '	\$',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
        Divider(
          height: 3.0,
          color: Colors.indigoAccent,
        ),
        ListTile(
          leading: Text(
            'AUD',
            style: TextStyle(
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color:widget.data.themeInfo?Colors.pink:Colors.indigoAccent),
          ),
          title: Text(
            widget.code.AUD,
            style: TextStyle(
              fontFamily: 'Srisakdi',
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Text(
            '\$',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
        Divider(
          height: 3.0,
          color: Colors.indigoAccent,
        ),
        ListTile(
          leading: Text(
            'BGN',
            style: TextStyle(
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color:widget.data.themeInfo?Colors.pink:Colors.indigoAccent),
          ),
          title: Text(
            widget.code.BGN,
            style: TextStyle(
              fontFamily: 'Srisakdi',
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Text(
            'лв',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
        Divider(
          height: 3.0,
          color: Colors.indigoAccent,
        ),
        ListTile(
          leading: Text(
            'BRL',
            style: TextStyle(
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color:widget.data.themeInfo?Colors.pink:Colors.indigoAccent),
          ),
          title: Text(
            widget.code.BRL,
            style: TextStyle(
              fontFamily: 'Srisakdi',
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Text(
            '	R\$',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
        Divider(
          height: 3.0,
          color: Colors.indigoAccent,
        ),
        ListTile(
          leading: Text(
            'BSD',
            style: TextStyle(
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color:widget.data.themeInfo?Colors.pink:Colors.indigoAccent),
          ),
          title: Text(
            widget.code.BSD,
            style: TextStyle(
              fontFamily: 'Srisakdi',
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Text(
            '\$',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
        Divider(
          height: 3.0,
          color: Colors.indigoAccent,
        ),
        ListTile(
          leading: Text(
            'CHF',
            style: TextStyle(
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color:widget.data.themeInfo?Colors.pink:Colors.indigoAccent),
          ),
          title: Text(
            widget.code.CHF,
            style: TextStyle(
              fontFamily: 'Srisakdi',
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Text(
            '€',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
        Divider(
          height: 3.0,
          color: Colors.indigoAccent,
        ),
        ListTile(
          leading: Text(
            'CLP',
            style: TextStyle(
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color:widget.data.themeInfo?Colors.pink:Colors.indigoAccent),
          ),
          title: Text(
            widget.code.CLP,
            style: TextStyle(
              fontFamily: 'Srisakdi',
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Text(
            '\$',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
        Divider(
          height: 3.0,
          color: Colors.indigoAccent,
        ),
        ListTile(
          leading: Text(
            'CNY',
            style: TextStyle(
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color:widget.data.themeInfo?Colors.pink:Colors.indigoAccent),
          ),
          title: Text(
            widget.code.CNY,
            style: TextStyle(
              fontFamily: 'Srisakdi',
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Text(
            '¥',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
        Divider(
          height: 3.0,
          color: Colors.indigoAccent,
        ),
        ListTile(
          leading: Text(
            'COP',
            style: TextStyle(
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color:widget.data.themeInfo?Colors.pink:Colors.indigoAccent),
          ),
          title: Text(
            widget.code.COP,
            style: TextStyle(
              fontFamily: 'Srisakdi',
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Text(
            '\$',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
        Divider(
          height: 3.0,
          color: Colors.indigoAccent,
        ),
        ListTile(
          leading: Text(
            'CZK',
            style: TextStyle(
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color:widget.data.themeInfo?Colors.pink:Colors.indigoAccent),
          ),
          title: Text(
            widget.code.CZK,
            style: TextStyle(
              fontFamily: 'Srisakdi',
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Text(
            'Kč',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
        Divider(
          height: 3.0,
          color: Colors.indigoAccent,
        ),
        ListTile(
          leading: Text(
            'DKK',
            style: TextStyle(
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color:widget.data.themeInfo?Colors.pink:Colors.indigoAccent),
          ),
          title: Text(
            widget.code.DKK,
            style: TextStyle(
              fontFamily: 'Srisakdi',
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Text(
            'kr',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
        Divider(
          height: 3.0,
          color: Colors.indigoAccent,
        ),
        ListTile(
          leading: Text(
            'DOP',
            style: TextStyle(
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color:widget.data.themeInfo?Colors.pink:Colors.indigoAccent),
          ),
          title: Text(
            widget.code.DOP,
            style: TextStyle(
              fontFamily: 'Srisakdi',
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Text(
            'RD\$',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
        Divider(
          height: 3.0,
          color: Colors.indigoAccent,
        ),
        ListTile(
          leading: Text(
            'EGP',
            style: TextStyle(
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color:widget.data.themeInfo?Colors.pink:Colors.indigoAccent),
          ),
          title: Text(
            widget.code.EGP,
            style: TextStyle(
              fontFamily: 'Srisakdi',
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Text(
            '£',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
        Divider(
          height: 3.0,
          color: Colors.indigoAccent,
        ),
        ListTile(
          leading: Text(
            'EUR',
            style: TextStyle(
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color:widget.data.themeInfo?Colors.pink:Colors.indigoAccent),
          ),
          title: Text(
            widget.code.EUR,
            style: TextStyle(
              fontFamily: 'Srisakdi',
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Text(
            '€',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
        Divider(
          height: 3.0,
          color: Colors.indigoAccent,
        ),
        ListTile(
          leading: Text(
            'FJD',
            style: TextStyle(
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color:widget.data.themeInfo?Colors.pink:Colors.indigoAccent),
          ),
          title: Text(
            widget.code.FJD,
            style: TextStyle(
              fontFamily: 'Srisakdi',
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Text(
            '\$',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
        Divider(
          height: 3.0,
          color: Colors.indigoAccent,
        ),
        ListTile(
          leading: Text(
            'GBP',
            style: TextStyle(
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color:widget.data.themeInfo?Colors.pink:Colors.indigoAccent),
          ),
          title: Text(
            widget.code.GBP,
            style: TextStyle(
              fontFamily: 'Srisakdi',
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Text(
            '£',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
        Divider(
          height: 3.0,
          color: Colors.indigoAccent,
        ),
        ListTile(
          leading: Text(
            'GTQ',
            style: TextStyle(
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color:widget.data.themeInfo?Colors.pink:Colors.indigoAccent),
          ),
          title: Text(
            widget.code.GTQ,
            style: TextStyle(
              fontFamily: 'Srisakdi',
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Text(
            '	Q',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
        Divider(
          height: 3.0,
          color: Colors.indigoAccent,
        ),
        ListTile(
          leading: Text(
            'HKD',
            style: TextStyle(
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color:widget.data.themeInfo?Colors.pink:Colors.indigoAccent),
          ),
          title: Text(
            widget.code.HKD,
            style: TextStyle(
              fontFamily: 'Srisakdi',
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Text(
            '\$',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
        Divider(
          height: 3.0,
          color: Colors.indigoAccent,
        ),
        ListTile(
          leading: Text(
            'HRK',
            style: TextStyle(
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color:widget.data.themeInfo?Colors.pink:Colors.indigoAccent),
          ),
          title: Text(
            widget.code.HRK,
            style: TextStyle(
              fontFamily: 'Srisakdi',
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Text(
            'kn',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
        Divider(
          height: 3.0,
          color: Colors.indigoAccent,
        ),
        ListTile(
          leading: Text(
            'HUF',
            style: TextStyle(
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color:widget.data.themeInfo?Colors.pink:Colors.indigoAccent),
          ),
          title: Text(
            widget.code.HUF,
            style: TextStyle(
              fontFamily: 'Srisakdi',
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Text(
            'Ft',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
        Divider(
          height: 3.0,
          color: Colors.indigoAccent,
        ),
        ListTile(
          leading: Text(
            'IDR',
            style: TextStyle(
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color:widget.data.themeInfo?Colors.pink:Colors.indigoAccent),
          ),
          title: Text(
            widget.code.IDR,
            style: TextStyle(
              fontFamily: 'Srisakdi',
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Text(
            'Rp',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
        Divider(
          height: 3.0,
          color: Colors.indigoAccent,
        ),
        ListTile(
          leading: Text(
            'ILS',
            style: TextStyle(
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color:widget.data.themeInfo?Colors.pink:Colors.indigoAccent),
          ),
          title: Text(
            widget.code.ILS,
            style: TextStyle(
              fontFamily: 'Srisakdi',
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Text(
            '₪',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
        Divider(
          height: 3.0,
          color: Colors.indigoAccent,
        ),
        ListTile(
          leading: Text(
            'INR',
            style: TextStyle(
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color:widget.data.themeInfo?Colors.pink:Colors.indigoAccent),
          ),
          title: Text(
            widget.code.INR,
            style: TextStyle(
              fontFamily: 'Srisakdi',
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Text(
            '₹',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
        Divider(
          height: 3.0,
          color: Colors.indigoAccent,
        ),
        ListTile(
          leading: Text(
            'ISK',
            style: TextStyle(
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color:widget.data.themeInfo?Colors.pink:Colors.indigoAccent),
          ),
          title: Text(
            widget.code.ISK,
            style: TextStyle(
              fontFamily: 'Srisakdi',
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Text(
            'kr',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
        Divider(
          height: 3.0,
        ),
        ListTile(
          leading: Text(
            'JPY',
            style: TextStyle(
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color:widget.data.themeInfo?Colors.pink:Colors.indigoAccent),
          ),
          title: Text(
            widget.code.JPY,
            style: TextStyle(
              fontFamily: 'Srisakdi',
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Text(
            '¥',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
        Divider(
          height: 3.0,
          color: Colors.indigoAccent,
        ),
        ListTile(
          leading: Text(
            'KRW',
            style: TextStyle(
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color:widget.data.themeInfo?Colors.pink:Colors.indigoAccent),
          ),
          title: Text(
            widget.code.KRW,
            style: TextStyle(
              fontFamily: 'Srisakdi',
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Text(
            '₩',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
        Divider(
          height: 3.0,
          color: Colors.indigoAccent,
        ),
        ListTile(
          leading: Text(
            'KZT',
            style: TextStyle(
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color:widget.data.themeInfo?Colors.pink:Colors.indigoAccent),
          ),
          title: Text(
            widget.code.KZT,
            style: TextStyle(
              fontFamily: 'Srisakdi',
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Text(
            'лв',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
        Divider(
          height: 3.0,
          color: Colors.indigoAccent,
        ),
        ListTile(
          leading: Text(
            'MVR',
            style: TextStyle(
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color:widget.data.themeInfo?Colors.pink:Colors.indigoAccent),
          ),
          title: Text(
            widget.code.MVR,
            style: TextStyle(
              fontFamily: 'Srisakdi',
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Text(
            '	Rf',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
        Divider(
          height: 3.0,
          color: Colors.indigoAccent,
        ),
        ListTile(
          leading: Text(
            'MYR',
            style: TextStyle(
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color:widget.data.themeInfo?Colors.pink:Colors.indigoAccent),
          ),
          title: Text(
            widget.code.MYR,
            style: TextStyle(
              fontFamily: 'Srisakdi',
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Text(
            'RM',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
        Divider(
          height: 3.0,
          color: Colors.indigoAccent,
        ),
        ListTile(
          leading: Text(
            'NOK',
            style: TextStyle(
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color:widget.data.themeInfo?Colors.pink:Colors.indigoAccent),
          ),
          title: Text(
            widget.code.NOK,
            style: TextStyle(
              fontFamily: 'Srisakdi',
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Text(
            'kr',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
        Divider(
          height: 3.0,
          color: Colors.indigoAccent,
        ),
        ListTile(
          leading: Text(
            'NZD',
            style: TextStyle(
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color:widget.data.themeInfo?Colors.pink:Colors.indigoAccent),
          ),
          title: Text(
            widget.code.NZD,
            style: TextStyle(
              fontFamily: 'Srisakdi',
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Text(
            '\$',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
        Divider(
          height: 3.0,
          color: Colors.indigoAccent,
        ),
        ListTile(
          leading: Text(
            'PAB',
            style: TextStyle(
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color:widget.data.themeInfo?Colors.pink:Colors.indigoAccent),
          ),
          title: Text(
            widget.code.PAB,
            style: TextStyle(
              fontFamily: 'Srisakdi',
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Text(
            'B/.',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
        Divider(
          height: 3.0,
          color: Colors.indigoAccent,
        ),
        ListTile(
          leading: Text(
            'PEN',
            style: TextStyle(
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color:widget.data.themeInfo?Colors.pink:Colors.indigoAccent),
          ),
          title: Text(
            widget.code.PEN,
            style: TextStyle(
              fontFamily: 'Srisakdi',
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Text(
            'S/.',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
        Divider(
          height: 3.0,
          color: Colors.indigoAccent,
        ),
        ListTile(
          leading: Text(
            'PHP',
            style: TextStyle(
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color:widget.data.themeInfo?Colors.pink:Colors.indigoAccent),
          ),
          title: Text(
            widget.code.PHP,
            style: TextStyle(
              fontFamily: 'Srisakdi',
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Text(
            '₱',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
        Divider(
          height: 3.0,
          color: Colors.indigoAccent,
        ),
        ListTile(
          leading: Text(
            'PKR',
            style: TextStyle(
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color:widget.data.themeInfo?Colors.pink:Colors.indigoAccent),
          ),
          title: Text(
            widget.code.PKR,
            style: TextStyle(
              fontFamily: 'Srisakdi',
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Text(
            '₨',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
        Divider(
          height: 3.0,
          color: Colors.indigoAccent,
        ),
        ListTile(
          leading: Text(
            'PLN',
            style: TextStyle(
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color:widget.data.themeInfo?Colors.pink:Colors.indigoAccent),
          ),
          title: Text(
            widget.code.PLN,
            style: TextStyle(
              fontFamily: 'Srisakdi',
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Text(
            'zł',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
        Divider(
          height: 3.0,
          color: Colors.indigoAccent,
        ),
        ListTile(
          leading: Text(
            'PYG',
            style: TextStyle(
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color:widget.data.themeInfo?Colors.pink:Colors.indigoAccent),
          ),
          title: Text(
            widget.code.PYG,
            style: TextStyle(
              fontFamily: 'Srisakdi',
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Text(
            'Gs',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
        Divider(
          height: 3.0,
          color: Colors.indigoAccent,
        ),
        ListTile(
          leading: Text(
            'SAR',
            style: TextStyle(
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color:widget.data.themeInfo?Colors.pink:Colors.indigoAccent),
          ),
          title: Text(
            widget.code.SAR,
            style: TextStyle(
              fontFamily: 'Srisakdi',
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Text(
            '﷼',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
        Divider(
          height: 3.0,
          color: Colors.indigoAccent,
        ),
        ListTile(
          leading: Text(
            'SEK',
            style: TextStyle(
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color:widget.data.themeInfo?Colors.pink:Colors.indigoAccent),
          ),
          title: Text(
            widget.code.SEK,
            style: TextStyle(
              fontFamily: 'Srisakdi',
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Text(
            'kr',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
        Divider(
          height: 3.0,
          color: Colors.indigoAccent,
        ),
        ListTile(
          leading: Text(
            'SGD',
            style: TextStyle(
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color:widget.data.themeInfo?Colors.pink:Colors.indigoAccent),
          ),
          title: Text(
            widget.code.SGD,
            style: TextStyle(
              fontFamily: 'Srisakdi',
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Text(
            '\$',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
        Divider(
          height: 3.0,
          color: Colors.indigoAccent,
        ),
        ListTile(
          leading: Text(
            'THB',
            style: TextStyle(
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color:widget.data.themeInfo?Colors.pink:Colors.indigoAccent),
          ),
          title: Text(
            widget.code.THB,
            style: TextStyle(
              fontFamily: 'Srisakdi',
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Text(
            '฿	',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
        Divider(
          height: 3.0,
          color: Colors.indigoAccent,
        ),
        ListTile(
          leading: Text(
            'TRY',
            style: TextStyle(
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color:widget.data.themeInfo?Colors.pink:Colors.indigoAccent),
          ),
          title: Text(
            widget.code.TRY,
            style: TextStyle(
              fontFamily: 'Srisakdi',
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Text(
            '₺',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
        Divider(
          height: 3.0,
          color: Colors.indigoAccent,
        ),
        ListTile(
          leading: Text(
            'TWD',
            style: TextStyle(
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color:widget.data.themeInfo?Colors.pink:Colors.indigoAccent),
          ),
          title: Text(
            widget.code.TWD,
            style: TextStyle(
              fontFamily: 'Srisakdi',
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Text(
            'NT\$',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
        Divider(
          height: 3.0,
          color: Colors.indigoAccent,
        ),
        ListTile(
          leading: Text(
            'UAH',
            style: TextStyle(
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color:widget.data.themeInfo?Colors.pink:Colors.indigoAccent),
          ),
          title: Text(
            widget.code.UAH,
            style: TextStyle(
              fontFamily: 'Srisakdi',
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Text(
            '₴',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
        Divider(
          height: 3.0,
          color: Colors.indigoAccent,
        ),
        ListTile(
          leading: Text(
            'USD',
            style: TextStyle(
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color:widget.data.themeInfo?Colors.pink:Colors.indigoAccent),
          ),
          title: Text(
            widget.code.USD,
            style: TextStyle(
              fontFamily: 'Srisakdi',
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Text(
            '\$',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
        Divider(
          height: 3.0,
          color: Colors.indigoAccent,
        ),
        ListTile(
          leading: Text(
            'UYU',
            style: TextStyle(
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color:widget.data.themeInfo?Colors.pink:Colors.indigoAccent),
          ),
          title: Text(
            widget.code.UYU,
            style: TextStyle(
              fontFamily: 'Srisakdi',
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Text(
            '\$U',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
        Divider(
          height: 3.0,
          color: Colors.indigoAccent,
        ),
        ListTile(
          leading: Text(
            'ZAR',
            style: TextStyle(
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color:widget.data.themeInfo?Colors.pink:Colors.indigoAccent),
          ),
          title: Text(
            widget.code.ZAR,
            style: TextStyle(
              fontFamily: 'Srisakdi',
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Text(
            'R',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
        Divider(
          height: 3.0,
          color: Colors.indigoAccent,
        ),
      ],
    );
  }
}
