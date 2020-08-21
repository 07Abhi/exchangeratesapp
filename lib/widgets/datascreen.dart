import 'package:flutter/material.dart';
import 'package:exchangeapp/model/currencymodel.dart';
import 'package:exchangeapp/thememanager/darkmode.dart';

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
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
      ),
      children: [
        GridTile(
          child: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'AED',
                  style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: widget.data.themeInfo
                          ? Colors.pink
                          : Colors.indigoAccent),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  widget.code.AED,
                  style: TextStyle(
                      fontFamily: 'Srisakdi',
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                ),
                SizedBox(height: 20.0),
                Text(
                  'د.إ',
                  style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    color: Theme.of(context).accentColor,
                  ),
                ),
              ],
            ),
            elevation: 4.0,
          ),
        ),
        GridTile(
            child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'ARS',
                style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: widget.data.themeInfo
                        ? Colors.pink
                        : Colors.indigoAccent),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                widget.code.ARS,
                style: TextStyle(
                    fontFamily: 'Srisakdi',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              SizedBox(height: 20.0),
              Text(
                '	\$',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ],
          ),
          elevation: 4.0,
        )),
        GridTile(
            child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'AUD',
                style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: widget.data.themeInfo
                        ? Colors.pink
                        : Colors.indigoAccent),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                widget.code.AUD,
                style: TextStyle(
                    fontFamily: 'Srisakdi',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              SizedBox(height: 20.0),
              Text(
                '\$',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ],
          ),
          elevation: 4.0,
        )),
        GridTile(
            child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'BGN',
                style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: widget.data.themeInfo
                        ? Colors.pink
                        : Colors.indigoAccent),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                widget.code.BGN,
                style: TextStyle(
                    fontFamily: 'Srisakdi',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'лв',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ],
          ),
          elevation: 4.0,
        )),
        GridTile(
            child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'BRL',
                style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: widget.data.themeInfo
                        ? Colors.pink
                        : Colors.indigoAccent),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                widget.code.BRL,
                style: TextStyle(
                    fontFamily: 'Srisakdi',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              SizedBox(height: 20.0),
              Text(
                '	R\$',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ],
          ),
          elevation: 4.0,
        )),
        GridTile(
            child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'BSD',
                style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: widget.data.themeInfo
                        ? Colors.pink
                        : Colors.indigoAccent),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                widget.code.BSD,
                style: TextStyle(
                    fontFamily: 'Srisakdi',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              SizedBox(height: 20.0),
              Text(
                '\$',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ],
          ),
          elevation: 4.0,
        )),
        GridTile(
            child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'CHF',
                style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: widget.data.themeInfo
                        ? Colors.pink
                        : Colors.indigoAccent),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                widget.code.CHF,
                style: TextStyle(
                    fontFamily: 'Srisakdi',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              SizedBox(height: 20.0),
              Text(
                '€',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ],
          ),
          elevation: 4.0,
        )),
        GridTile(
            child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'CLP',
                style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: widget.data.themeInfo
                        ? Colors.pink
                        : Colors.indigoAccent),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                widget.code.CLP,
                style: TextStyle(
                    fontFamily: 'Srisakdi',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              SizedBox(height: 20.0),
              Text(
                '\$',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ],
          ),
          elevation: 4.0,
        )),
        GridTile(
            child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'CNY',
                style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: widget.data.themeInfo
                        ? Colors.pink
                        : Colors.indigoAccent),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                widget.code.CNY,
                style: TextStyle(
                    fontFamily: 'Srisakdi',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              SizedBox(height: 20.0),
              Text(
                '¥',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ],
          ),
          elevation: 4.0,
        )),
        GridTile(
            child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'COP',
                style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: widget.data.themeInfo
                        ? Colors.pink
                        : Colors.indigoAccent),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                widget.code.COP,
                style: TextStyle(
                    fontFamily: 'Srisakdi',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              SizedBox(height: 20.0),
              Text(
                '\$',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ],
          ),
          elevation: 4.0,
        )),
        GridTile(
            child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'CZK',
                style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: widget.data.themeInfo
                        ? Colors.pink
                        : Colors.indigoAccent),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                widget.code.CZK,
                style: TextStyle(
                    fontFamily: 'Srisakdi',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'Kč',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ],
          ),
          elevation: 4.0,
        )),
        GridTile(
            child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'DKK',
                style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: widget.data.themeInfo
                        ? Colors.pink
                        : Colors.indigoAccent),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                widget.code.DKK,
                style: TextStyle(
                    fontFamily: 'Srisakdi',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'kr',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ],
          ),
          elevation: 4.0,
        )),
        GridTile(
            child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'DOP',
                style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: widget.data.themeInfo
                        ? Colors.pink
                        : Colors.indigoAccent),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                widget.code.DOP,
                style: TextStyle(
                    fontFamily: 'Srisakdi',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'RD\$',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ],
          ),
          elevation: 4.0,
        )),
        GridTile(
            child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'EGP',
                style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: widget.data.themeInfo
                        ? Colors.pink
                        : Colors.indigoAccent),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                widget.code.EGP,
                style: TextStyle(
                    fontFamily: 'Srisakdi',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              SizedBox(height: 20.0),
              Text(
                '£',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ],
          ),
          elevation: 4.0,
        )),
        GridTile(
            child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'EUR',
                style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: widget.data.themeInfo
                        ? Colors.pink
                        : Colors.indigoAccent),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                widget.code.EUR,
                style: TextStyle(
                    fontFamily: 'Srisakdi',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              SizedBox(height: 20.0),
              Text(
                '€',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ],
          ),
          elevation: 4.0,
        )),
        GridTile(
            child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'FJD',
                style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: widget.data.themeInfo
                        ? Colors.pink
                        : Colors.indigoAccent),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                widget.code.FJD,
                style: TextStyle(
                    fontFamily: 'Srisakdi',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              SizedBox(height: 20.0),
              Text(
                '\$',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ],
          ),
          elevation: 4.0,
        )),
        GridTile(
            child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'GBP',
                style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: widget.data.themeInfo
                        ? Colors.pink
                        : Colors.indigoAccent),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                widget.code.GBP,
                style: TextStyle(
                    fontFamily: 'Srisakdi',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              SizedBox(height: 20.0),
              Text(
                '£',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ],
          ),
          elevation: 4.0,
        )),
        GridTile(
            child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'GTQ',
                style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: widget.data.themeInfo
                        ? Colors.pink
                        : Colors.indigoAccent),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                widget.code.GTQ,
                style: TextStyle(
                    fontFamily: 'Srisakdi',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              SizedBox(height: 20.0),
              Text(
                '	Q',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ],
          ),
          elevation: 4.0,
        )),
        GridTile(
            child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'HKD',
                style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: widget.data.themeInfo
                        ? Colors.pink
                        : Colors.indigoAccent),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                widget.code.HKD,
                style: TextStyle(
                    fontFamily: 'Srisakdi',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              SizedBox(height: 20.0),
              Text(
                '\$',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ],
          ),
          elevation: 4.0,
        )),
        GridTile(
            child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'HRK',
                style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: widget.data.themeInfo
                        ? Colors.pink
                        : Colors.indigoAccent),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                widget.code.HRK,
                style: TextStyle(
                    fontFamily: 'Srisakdi',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'kn',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ],
          ),
          elevation: 4.0,
        )),
        GridTile(
            child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'HUF',
                style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: widget.data.themeInfo
                        ? Colors.pink
                        : Colors.indigoAccent),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                widget.code.HUF,
                style: TextStyle(
                    fontFamily: 'Srisakdi',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'Ft',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ],
          ),
          elevation: 4.0,
        )),
        GridTile(
            child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'IDR',
                style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: widget.data.themeInfo
                        ? Colors.pink
                        : Colors.indigoAccent),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                widget.code.IDR,
                style: TextStyle(
                    fontFamily: 'Srisakdi',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'Rp',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ],
          ),
          elevation: 4.0,
        )),
        GridTile(
            child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'ILS',
                style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: widget.data.themeInfo
                        ? Colors.pink
                        : Colors.indigoAccent),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                widget.code.ILS,
                style: TextStyle(
                    fontFamily: 'Srisakdi',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              SizedBox(height: 20.0),
              Text(
                '₪',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ],
          ),
          elevation: 4.0,
        )),
        GridTile(
            child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'INR',
                style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: widget.data.themeInfo
                        ? Colors.pink
                        : Colors.indigoAccent),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                widget.code.INR,
                style: TextStyle(
                    fontFamily: 'Srisakdi',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              SizedBox(height: 20.0),
              Text(
                '₹',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ],
          ),
          elevation: 4.0,
        )),
        GridTile(
            child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'ISK',
                style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: widget.data.themeInfo
                        ? Colors.pink
                        : Colors.indigoAccent),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                widget.code.ISK,
                style: TextStyle(
                    fontFamily: 'Srisakdi',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'kr',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ],
          ),
          elevation: 4.0,
        )),
        GridTile(
            child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'JPY',
                style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: widget.data.themeInfo
                        ? Colors.pink
                        : Colors.indigoAccent),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                widget.code.JPY,
                style: TextStyle(
                    fontFamily: 'Srisakdi',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              SizedBox(height: 20.0),
              Text(
                '¥',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ],
          ),
          elevation: 4.0,
        )),
        GridTile(
            child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'KRW',
                style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: widget.data.themeInfo
                        ? Colors.pink
                        : Colors.indigoAccent),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                widget.code.KRW,
                style: TextStyle(
                    fontFamily: 'Srisakdi',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              SizedBox(height: 20.0),
              Text(
                '₩',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ],
          ),
          elevation: 4.0,
        )),
        GridTile(
            child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'KZT',
                style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: widget.data.themeInfo
                        ? Colors.pink
                        : Colors.indigoAccent),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                widget.code.KZT,
                style: TextStyle(
                    fontFamily: 'Srisakdi',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'лв',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ],
          ),
          elevation: 4.0,
        )),
        GridTile(
            child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'MVR',
                style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: widget.data.themeInfo
                        ? Colors.pink
                        : Colors.indigoAccent),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                widget.code.MVR,
                style: TextStyle(
                    fontFamily: 'Srisakdi',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              SizedBox(height: 20.0),
              Text(
                '	Rf',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ],
          ),
          elevation: 4.0,
        )),
        GridTile(
            child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'MYR',
                style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: widget.data.themeInfo
                        ? Colors.pink
                        : Colors.indigoAccent),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                widget.code.MYR,
                style: TextStyle(
                    fontFamily: 'Srisakdi',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'RM',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ],
          ),
          elevation: 4.0,
        )),
        GridTile(
            child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'NOK',
                style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: widget.data.themeInfo
                        ? Colors.pink
                        : Colors.indigoAccent),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                widget.code.NOK,
                style: TextStyle(
                    fontFamily: 'Srisakdi',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'kr',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ],
          ),
          elevation: 4.0,
        )),
        GridTile(
            child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'NZD',
                style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: widget.data.themeInfo
                        ? Colors.pink
                        : Colors.indigoAccent),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                widget.code.NZD,
                style: TextStyle(
                    fontFamily: 'Srisakdi',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              SizedBox(height: 20.0),
              Text(
                '\$',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ],
          ),
          elevation: 4.0,
        )),
        GridTile(
            child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'PAB',
                style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: widget.data.themeInfo
                        ? Colors.pink
                        : Colors.indigoAccent),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                widget.code.PAB,
                style: TextStyle(
                    fontFamily: 'Srisakdi',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'B/.',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ],
          ),
          elevation: 4.0,
        )),
        GridTile(
            child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'PEN',
                style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: widget.data.themeInfo
                        ? Colors.pink
                        : Colors.indigoAccent),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                widget.code.PEN,
                style: TextStyle(
                    fontFamily: 'Srisakdi',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'S/.',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ],
          ),
          elevation: 4.0,
        )),
        GridTile(
            child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'PHP',
                style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: widget.data.themeInfo
                        ? Colors.pink
                        : Colors.indigoAccent),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                widget.code.PHP,
                style: TextStyle(
                    fontFamily: 'Srisakdi',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              SizedBox(height: 20.0),
              Text(
                '₱',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ],
          ),
          elevation: 4.0,
        )),
        GridTile(
            child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'PKR',
                style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: widget.data.themeInfo
                        ? Colors.pink
                        : Colors.indigoAccent),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                widget.code.PKR,
                style: TextStyle(
                    fontFamily: 'Srisakdi',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              SizedBox(height: 20.0),
              Text(
                '₨',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ],
          ),
          elevation: 4.0,
        )),
        GridTile(
            child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'PLN',
                style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: widget.data.themeInfo
                        ? Colors.pink
                        : Colors.indigoAccent),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                widget.code.PLN,
                style: TextStyle(
                    fontFamily: 'Srisakdi',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'zł',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ],
          ),
          elevation: 4.0,
        )),
        GridTile(
            child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'PYG',
                style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: widget.data.themeInfo
                        ? Colors.pink
                        : Colors.indigoAccent),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                widget.code.PYG,
                style: TextStyle(
                    fontFamily: 'Srisakdi',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'Gs',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ],
          ),
          elevation: 4.0,
        )),
        GridTile(
            child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'SAR',
                style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: widget.data.themeInfo
                        ? Colors.pink
                        : Colors.indigoAccent),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                widget.code.SAR,
                style: TextStyle(
                    fontFamily: 'Srisakdi',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              SizedBox(height: 20.0),
              Text(
                '﷼',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ],
          ),
          elevation: 4.0,
        )),
        GridTile(
            child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'SEK',
                style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: widget.data.themeInfo
                        ? Colors.pink
                        : Colors.indigoAccent),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                widget.code.SEK,
                style: TextStyle(
                    fontFamily: 'Srisakdi',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'kr',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ],
          ),
          elevation: 4.0,
        )),
        GridTile(
            child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'SGD',
                style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: widget.data.themeInfo
                        ? Colors.pink
                        : Colors.indigoAccent),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                widget.code.SGD,
                style: TextStyle(
                    fontFamily: 'Srisakdi',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              SizedBox(height: 20.0),
              Text(
                '\$',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ],
          ),
          elevation: 4.0,
        )),
        GridTile(
            child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'THB',
                style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: widget.data.themeInfo
                        ? Colors.pink
                        : Colors.indigoAccent),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                widget.code.THB,
                style: TextStyle(
                    fontFamily: 'Srisakdi',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              SizedBox(height: 20.0),
              Text(
                '฿	',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ],
          ),
          elevation: 4.0,
        )),
        GridTile(
            child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'TRY',
                style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: widget.data.themeInfo
                        ? Colors.pink
                        : Colors.indigoAccent),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                widget.code.TRY,
                style: TextStyle(
                    fontFamily: 'Srisakdi',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              SizedBox(height: 20.0),
              Text(
                '₺',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ],
          ),
          elevation: 4.0,
        )),
        GridTile(
            child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'TWD',
                style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: widget.data.themeInfo
                        ? Colors.pink
                        : Colors.indigoAccent),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                widget.code.TWD,
                style: TextStyle(
                    fontFamily: 'Srisakdi',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'NT\$',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ],
          ),
          elevation: 4.0,
        )),
        GridTile(
            child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'UAH',
                style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: widget.data.themeInfo
                        ? Colors.pink
                        : Colors.indigoAccent),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                widget.code.UAH,
                style: TextStyle(
                    fontFamily: 'Srisakdi',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              SizedBox(height: 20.0),
              Text(
                '₴',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ],
          ),
          elevation: 4.0,
        )),
        GridTile(
            child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'USD',
                style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: widget.data.themeInfo
                        ? Colors.pink
                        : Colors.indigoAccent),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                widget.code.USD,
                style: TextStyle(
                    fontFamily: 'Srisakdi',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              SizedBox(height: 20.0),
              Text(
                '\$',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ],
          ),
          elevation: 4.0,
        )),
        GridTile(
            child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'UYU',
                style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: widget.data.themeInfo
                        ? Colors.pink
                        : Colors.indigoAccent),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                widget.code.UYU,
                style: TextStyle(
                    fontFamily: 'Srisakdi',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              SizedBox(height: 20.0),
              Text(
                '\$U',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ],
          ),
          elevation: 4.0,
        )),
        GridTile(
            child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'ZAR',
                style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: widget.data.themeInfo
                        ? Colors.pink
                        : Colors.indigoAccent),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                widget.code.ZAR,
                style: TextStyle(
                    fontFamily: 'Srisakdi',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'R',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ],
          ),
          elevation: 4.0,
        )),
      ],
    );
  }
}
