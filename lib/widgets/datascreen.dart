import 'package:flutter/material.dart';
import 'package:exchangeapp/model/currencymodel.dart';
import 'package:exchangeapp/thememanager/darkmode.dart';

// ignore: must_be_immutable
class DataScreen extends StatefulWidget {
  CurrencyModel code;
  String currenyCode;
  ThemeManager data;
  DataScreen(this.code, this.data, this.currenyCode);

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
        GestureDetector(
          child: GridTile(
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
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
                    height: 10.0,
                  ),
                  Text(
                    widget.code.AED,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  Text(
                    'د.إ',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.black54,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('images/usa.png'),
                        ),
                      ))
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => SimpleDialog(
                title: Text(
                  'Rate Exchange',
                  textAlign: TextAlign.center,
                ),
                children: [
                  Text(
                    '1 ${widget.currenyCode} = ${widget.code.AED} AED',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            );
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
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
                    height: 10.0,
                  ),
                  Text(
                    widget.code.ARS,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    '	\$',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.black54,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('images/argentina.png'),
                        ),
                      ))
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => SimpleDialog(
                title: Text(
                  'Rate Exchange',
                  textAlign: TextAlign.center,
                ),
                children: [
                  Text(
                    '1 ${widget.currenyCode} = ${widget.code.AED} ARS',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            );
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
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
                    height: 10.0,
                  ),
                  Text(
                    widget.code.AUD,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    '\$',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.black54,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('images/australia.png'),
                        ),
                      ))
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => SimpleDialog(
                title: Text(
                  'Rate Exchange',
                  textAlign: TextAlign.center,
                ),
                children: [
                  Text(
                    '1 ${widget.currenyCode} = ${widget.code.AED} AUD',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            );
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
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
                    height: 10.0,
                  ),
                  Text(
                    widget.code.BGN,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'лв',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.black54,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('images/bulgaria.png'),
                        ),
                      ))
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => SimpleDialog(
                title: Text(
                  'Rate Exchange',
                  textAlign: TextAlign.center,
                ),
                children: [
                  Text(
                    '1 ${widget.currenyCode} = ${widget.code.AED} BGN',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            );
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
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
                    height: 10.0,
                  ),
                  Text(
                    widget.code.BRL,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    '	R\$',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.black54,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('images/brazil.png'),
                        ),
                      ))
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => SimpleDialog(
                title: Text(
                  'Rate Exchange',
                  textAlign: TextAlign.center,
                ),
                children: [
                  Text(
                    '1 ${widget.currenyCode} = ${widget.code.AED} BRL',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            );
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
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
                    height: 10.0,
                  ),
                  Text(
                    widget.code.BSD,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    '\$',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.black54,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('images/bahamas.png'),
                        ),
                      ))
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => SimpleDialog(
                title: Text(
                  'Rate Exchange',
                  textAlign: TextAlign.center,
                ),
                children: [
                  Text(
                    '1 ${widget.currenyCode} = ${widget.code.AED} BSD',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            );
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
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
                    height: 10.0,
                  ),
                  Text(
                    widget.code.CHF,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    '€',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.black54,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('images/switzerland.png'),
                        ),
                      ))
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => SimpleDialog(
                title: Text(
                  'Rate Exchange',
                  textAlign: TextAlign.center,
                ),
                children: [
                  Text(
                    '1 ${widget.currenyCode} = ${widget.code.AED} CHF',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            );
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
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
                    height: 10.0,
                  ),
                  Text(
                    widget.code.CLP,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    '\$',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.black54,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('images/chile.png'),
                        ),
                      ))
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => SimpleDialog(
                title: Text(
                  'Rate Exchange',
                  textAlign: TextAlign.center,
                ),
                children: [
                  Text(
                    '1 ${widget.currenyCode} = ${widget.code.AED} CLP',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            );
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
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
                    height: 10.0,
                  ),
                  Text(
                    widget.code.CNY,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    '¥',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.black54,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('images/china.png'),
                        ),
                      ))
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => SimpleDialog(
                title: Text(
                  'Rate Exchange',
                  textAlign: TextAlign.center,
                ),
                children: [
                  Text(
                    '1 ${widget.currenyCode} = ${widget.code.AED} CNY',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            );
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
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
                    height: 10.0,
                  ),
                  Text(
                    widget.code.COP,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    '\$',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.black54,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('images/colombia.png'),
                        ),
                      ))
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => SimpleDialog(
                title: Text(
                  'Rate Exchange',
                  textAlign: TextAlign.center,
                ),
                children: [
                  Text(
                    '1 ${widget.currenyCode} = ${widget.code.AED} COP',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            );
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
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
                    height: 10.0,
                  ),
                  Text(
                    widget.code.CZK,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Kč',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.black54,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.grey,
                          backgroundImage:
                              AssetImage('images/czechrepublic.png'),
                        ),
                      ))
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => SimpleDialog(
                title: Text(
                  'Rate Exchange',
                  textAlign: TextAlign.center,
                ),
                children: [
                  Text(
                    '1 ${widget.currenyCode} = ${widget.code.AED} CZK',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            );
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
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
                    height: 10.0,
                  ),
                  Text(
                    widget.code.DKK,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'kr',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.black54,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('images/denmark.png'),
                        ),
                      ))
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => SimpleDialog(
                title: Text(
                  'Rate Exchange',
                  textAlign: TextAlign.center,
                ),
                children: [
                  Text(
                    '1 ${widget.currenyCode} = ${widget.code.AED} DKK',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            );
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
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
                    height: 10.0,
                  ),
                  Text(
                    widget.code.DOP,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'RD\$',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.black54,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('images/dominica.png'),
                        ),
                      ))
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => SimpleDialog(
                title: Text(
                  'Rate Exchange',
                  textAlign: TextAlign.center,
                ),
                children: [
                  Text(
                    '1 ${widget.currenyCode} = ${widget.code.AED} DOP',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            );
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
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
                    height: 10.0,
                  ),
                  Text(
                    widget.code.EGP,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    '£',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.black54,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('images/egypt.png'),
                        ),
                      ))
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => SimpleDialog(
                title: Text(
                  'Rate Exchange',
                  textAlign: TextAlign.center,
                ),
                children: [
                  Text(
                    '1 ${widget.currenyCode} = ${widget.code.AED} EGP',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            );
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
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
                    height: 10.0,
                  ),
                  Text(
                    widget.code.EUR,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    '€',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.black54,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('images/europeunion.png'),
                        ),
                      ))
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => SimpleDialog(
                title: Text(
                  'Rate Exchange',
                  textAlign: TextAlign.center,
                ),
                children: [
                  Text(
                    '1 ${widget.currenyCode} = ${widget.code.AED} EUR',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            );
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
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
                    height: 10.0,
                  ),
                  Text(
                    widget.code.FJD,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    '\$',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.black54,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('images/fiji.png'),
                        ),
                      ))
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => SimpleDialog(
                title: Text(
                  'Rate Exchange',
                  textAlign: TextAlign.center,
                ),
                children: [
                  Text(
                    '1 ${widget.currenyCode} = ${widget.code.AED} FJD',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            );
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
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
                    height: 10.0,
                  ),
                  Text(
                    widget.code.GBP,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    '£',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.black54,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('images/uk.png'),
                        ),
                      ))
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => SimpleDialog(
                title: Text(
                  'Rate Exchange',
                  textAlign: TextAlign.center,
                ),
                children: [
                  Text(
                    '1 ${widget.currenyCode} = ${widget.code.AED} GBP',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            );
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
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
                    height: 10.0,
                  ),
                  Text(
                    widget.code.GTQ,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    '	Q',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.black54,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('images/gautemela.png'),
                        ),
                      ))
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => SimpleDialog(
                title: Text(
                  'Rate Exchange',
                  textAlign: TextAlign.center,
                ),
                children: [
                  Text(
                    '1 ${widget.currenyCode} = ${widget.code.AED} GTQ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            );
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
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
                    height: 10.0,
                  ),
                  Text(
                    widget.code.HKD,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    '\$',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.black54,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('images/hongkong.png'),
                        ),
                      ))
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => SimpleDialog(
                title: Text(
                  'Rate Exchange',
                  textAlign: TextAlign.center,
                ),
                children: [
                  Text(
                    '1 ${widget.currenyCode} = ${widget.code.AED} HKD',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            );
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
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
                    height: 10.0,
                  ),
                  Text(
                    widget.code.HRK,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'kn',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.black54,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('images/croatia.png'),
                        ),
                      ))
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => SimpleDialog(
                title: Text(
                  'Rate Exchange',
                  textAlign: TextAlign.center,
                ),
                children: [
                  Text(
                    '1 ${widget.currenyCode} = ${widget.code.AED} HRK',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            );
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
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
                    height: 10.0,
                  ),
                  Text(
                    widget.code.HUF,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Ft',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.black54,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('images/hungary.png'),
                        ),
                      ))
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => SimpleDialog(
                title: Text(
                  'Rate Exchange',
                  textAlign: TextAlign.center,
                ),
                children: [
                  Text(
                    '1 ${widget.currenyCode} = ${widget.code.AED} HUF',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            );
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
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
                    height: 10.0,
                  ),
                  Text(
                    widget.code.IDR,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Rp',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.black54,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('images/indonesia.png'),
                        ),
                      ))
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => SimpleDialog(
                title: Text(
                  'Rate Exchange',
                  textAlign: TextAlign.center,
                ),
                children: [
                  Text(
                    '1 ${widget.currenyCode} = ${widget.code.AED} IDR',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            );
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
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
                    height: 10.0,
                  ),
                  Text(
                    widget.code.ILS,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    '₪',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                      padding: EdgeInsets.only(bottom: 3.0),
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.black54,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('images/israel.png'),
                        ),
                      ))
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => SimpleDialog(
                title: Text(
                  'Rate Exchange',
                  textAlign: TextAlign.center,
                ),
                children: [
                  Text(
                    '1 ${widget.currenyCode} = ${widget.code.AED} ILS',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            );
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
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
                    height: 10.0,
                  ),
                  Text(
                    widget.code.INR,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    '₹',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.black54,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('images/india.png'),
                        ),
                      ))
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => SimpleDialog(
                title: Text(
                  'Rate Exchange',
                  textAlign: TextAlign.center,
                ),
                children: [
                  Text(
                    '1 ${widget.currenyCode} = ${widget.code.AED} INR',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            );
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
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
                    height: 10.0,
                  ),
                  Text(
                    widget.code.ISK,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'kr',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.black54,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('images/iceland.png'),
                        ),
                      ))
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => SimpleDialog(
                title: Text(
                  'Rate Exchange',
                  textAlign: TextAlign.center,
                ),
                children: [
                  Text(
                    '1 ${widget.currenyCode} = ${widget.code.AED} ISK',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            );
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
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
                    height: 10.0,
                  ),
                  Text(
                    widget.code.JPY,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    '¥',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.black54,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('images/japan.png'),
                        ),
                      ))
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => SimpleDialog(
                title: Text(
                  'Rate Exchange',
                  textAlign: TextAlign.center,
                ),
                children: [
                  Text(
                    '1 ${widget.currenyCode} = ${widget.code.AED} JPY',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            );
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
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
                    height: 10.0,
                  ),
                  Text(
                    widget.code.KRW,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    '₩',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(bottom: 10.0),
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.black54,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('images/northkorea.png'),
                        ),
                      ))
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => SimpleDialog(
                title: Text(
                  'Rate Exchange',
                  textAlign: TextAlign.center,
                ),
                children: [
                  Text(
                    '1 ${widget.currenyCode} = ${widget.code.AED} KRW',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            );
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
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
                    height: 10.0,
                  ),
                  Text(
                    widget.code.KZT,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'лв',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.black54,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('images/kazakhstan.png'),
                        ),
                      ))
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => SimpleDialog(
                title: Text(
                  'Rate Exchange',
                  textAlign: TextAlign.center,
                ),
                children: [
                  Text(
                    '1 ${widget.currenyCode} = ${widget.code.AED} KZT',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            );
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
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
                    height: 10.0,
                  ),
                  Text(
                    widget.code.MVR,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    '	Rf',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.black54,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('images/maldives.png'),
                        ),
                      ))
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => SimpleDialog(
                title: Text(
                  'Rate Exchange',
                  textAlign: TextAlign.center,
                ),
                children: [
                  Text(
                    '1 ${widget.currenyCode} = ${widget.code.AED} MVR',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            );
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
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
                    height: 10.0,
                  ),
                  Text(
                    widget.code.MYR,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'RM',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.black54,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('images/malaysia.png'),
                        ),
                      ))
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => SimpleDialog(
                title: Text(
                  'Rate Exchange',
                  textAlign: TextAlign.center,
                ),
                children: [
                  Text(
                    '1 ${widget.currenyCode} = ${widget.code.AED} MYR',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            );
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
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
                    height: 10.0,
                  ),
                  Text(
                    widget.code.NOK,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'kr',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.black54,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('images/norway.png'),
                        ),
                      ))
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => SimpleDialog(
                title: Text(
                  'Rate Exchange',
                  textAlign: TextAlign.center,
                ),
                children: [
                  Text(
                    '1 ${widget.currenyCode} = ${widget.code.AED} NOK',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            );
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
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
                    height: 10.0,
                  ),
                  Text(
                    widget.code.NZD,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    '\$',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.black54,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('images/newzealand.png'),
                        ),
                      ))
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => SimpleDialog(
                title: Text(
                  'Rate Exchange',
                  textAlign: TextAlign.center,
                ),
                children: [
                  Text(
                    '1 ${widget.currenyCode} = ${widget.code.AED} NZD',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            );
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
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
                    height: 10.0,
                  ),
                  Text(
                    widget.code.PAB,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'B/.',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.black54,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('images/panama.png'),
                        ),
                      ))
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => SimpleDialog(
                title: Text(
                  'Rate Exchange',
                  textAlign: TextAlign.center,
                ),
                children: [
                  Text(
                    '1 ${widget.currenyCode} = ${widget.code.AED} PAB',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            );
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
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
                    height: 10.0,
                  ),
                  Text(
                    widget.code.PEN,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'S/.',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.black54,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('images/peru.png'),
                        ),
                      ))
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => SimpleDialog(
                title: Text(
                  'Rate Exchange',
                  textAlign: TextAlign.center,
                ),
                children: [
                  Text(
                    '1 ${widget.currenyCode} = ${widget.code.AED} PEN',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            );
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
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
                    height: 10.0,
                  ),
                  Text(
                    widget.code.PHP,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    '₱',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.black54,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('images/philippines.png'),
                        ),
                      ))
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => SimpleDialog(
                title: Text(
                  'Rate Exchange',
                  textAlign: TextAlign.center,
                ),
                children: [
                  Text(
                    '1 ${widget.currenyCode} = ${widget.code.AED} PHP',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            );
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
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
                    height: 10.0,
                  ),
                  Text(
                    widget.code.PKR,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    '₨',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.black54,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('images/pakistan.png'),
                        ),
                      ))
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => SimpleDialog(
                title: Text(
                  'Rate Exchange',
                  textAlign: TextAlign.center,
                ),
                children: [
                  Text(
                    '1 ${widget.currenyCode} = ${widget.code.AED} PKR',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            );
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
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
                    height: 10.0,
                  ),
                  Text(
                    widget.code.PLN,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'zł',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.black54,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('images/poland.png'),
                        ),
                      ))
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => SimpleDialog(
                title: Text(
                  'Rate Exchange',
                  textAlign: TextAlign.center,
                ),
                children: [
                  Text(
                    '1 ${widget.currenyCode} = ${widget.code.AED} PLN',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            );
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
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
                    height: 10.0,
                  ),
                  Text(
                    widget.code.PYG,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Gs',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.black54,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('images/paraguay.png'),
                        ),
                      ))
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => SimpleDialog(
                title: Text(
                  'Rate Exchange',
                  textAlign: TextAlign.center,
                ),
                children: [
                  Text(
                    '1 ${widget.currenyCode} = ${widget.code.AED} PYG',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            );
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
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
                    height: 10.0,
                  ),
                  Text(
                    widget.code.SAR,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  Text(
                    '﷼',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                      padding: EdgeInsets.only(bottom: 1.0),
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.black54,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('images/saudiarabia.png'),
                        ),
                      ))
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => SimpleDialog(
                title: Text(
                  'Rate Exchange',
                  textAlign: TextAlign.center,
                ),
                children: [
                  Text(
                    '1 ${widget.currenyCode} = ${widget.code.AED} SAR',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            );
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
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
                    height: 10.0,
                  ),
                  Text(
                    widget.code.SEK,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'kr',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.black54,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('images/sweden.png'),
                        ),
                      ))
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => SimpleDialog(
                title: Text(
                  'Rate Exchange',
                  textAlign: TextAlign.center,
                ),
                children: [
                  Text(
                    '1 ${widget.currenyCode} = ${widget.code.AED} SEK',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            );
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
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
                    height: 10.0,
                  ),
                  Text(
                    widget.code.SGD,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    '\$',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.black54,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('images/singapore.png'),
                        ),
                      ))
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => SimpleDialog(
                title: Text(
                  'Rate Exchange',
                  textAlign: TextAlign.center,
                ),
                children: [
                  Text(
                    '1 ${widget.currenyCode} = ${widget.code.AED} SGD',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            );
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
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
                    height: 10.0,
                  ),
                  Text(
                    widget.code.THB,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    '฿	',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                      padding: EdgeInsets.only(bottom: 2.0),
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.black54,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('images/thailand.png'),
                        ),
                      ))
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => SimpleDialog(
                title: Text(
                  'Rate Exchange',
                  textAlign: TextAlign.center,
                ),
                children: [
                  Text(
                    '1 ${widget.currenyCode} = ${widget.code.AED} THB',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            );
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
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
                    height: 10.0,
                  ),
                  Text(
                    widget.code.TRY,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    '₺',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.black54,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('images/turkey.png'),
                        ),
                      ))
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => SimpleDialog(
                title: Text(
                  'Rate Exchange',
                  textAlign: TextAlign.center,
                ),
                children: [
                  Text(
                    '1 ${widget.currenyCode} = ${widget.code.AED} TRY',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            );
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
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
                    height: 10.0,
                  ),
                  Text(
                    widget.code.TWD,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'NT\$',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.black54,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('images/taiwan.png'),
                        ),
                      ))
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => SimpleDialog(
                title: Text(
                  'Rate Exchange',
                  textAlign: TextAlign.center,
                ),
                children: [
                  Text(
                    '1 ${widget.currenyCode} = ${widget.code.AED} TWD',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            );
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
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
                    height: 10.0,
                  ),
                  Text(
                    widget.code.UAH,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    '₴',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.black54,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('images/ukraine.png'),
                        ),
                      ))
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => SimpleDialog(
                title: Text(
                  'Rate Exchange',
                  textAlign: TextAlign.center,
                ),
                children: [
                  Text(
                    '1 ${widget.currenyCode} = ${widget.code.AED} UAH',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            );
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
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
                    height: 10.0,
                  ),
                  Text(
                    widget.code.USD,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    '\$',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.black54,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('images/usa.png'),
                        ),
                      ))
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => SimpleDialog(
                title: Text(
                  'Rate Exchange',
                  textAlign: TextAlign.center,
                ),
                children: [
                  Text(
                    '1 ${widget.currenyCode} = ${widget.code.AED} USD',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            );
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
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
                    height: 10.0,
                  ),
                  Text(
                    widget.code.UYU,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    '\$U',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.black54,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('images/uruguay.png'),
                        ),
                      ))
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => SimpleDialog(
                title: Text(
                  'Rate Exchange',
                  textAlign: TextAlign.center,
                ),
                children: [
                  Text(
                    '1 ${widget.currenyCode} = ${widget.code.AED} UYU',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            );
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
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
                    height: 10.0,
                  ),
                  Text(
                    widget.code.ZAR,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'R',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.black54,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('images/southafrica.png'),
                        ),
                      ))
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => SimpleDialog(
                title: Text(
                  'Rate Exchange',
                  textAlign: TextAlign.center,
                ),
                children: [
                  Text(
                    '1 ${widget.currenyCode} = ${widget.code.AED} ZAR',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
