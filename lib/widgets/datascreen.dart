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
  Widget currecnyTitle(String code) {
    return Expanded(
      flex: 1,
      child: Text(
        code,
        style: TextStyle(
          fontSize: 23.0,
          fontWeight: FontWeight.bold,
          color: Theme.of(context).accentColor,
        ),
      ),
    );
  }

  Widget currencyValue(String value) {
    return Expanded(
      flex: 1,
      child: Text(
        value,
        style: TextStyle(
            fontFamily: 'Ubuntu',
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
            color: widget.data.themeInfo ? Colors.pink : Colors.indigoAccent),
      ),
    );
  }

  Widget currencySymbol(String symbol) {
    return Expanded(
      flex: 1,
      child: Text(
        symbol,
        style: TextStyle(
          fontFamily: 'Ubuntu',
          fontWeight: FontWeight.bold,
          fontSize: 25.0,
          color: Theme.of(context).accentColor,
        ),
      ),
    );
  }

  Widget currencyFlag(String assetimage) {
    return Expanded(
      flex: 2,
      child: CircleAvatar(
        radius: 32,
        backgroundColor: Colors.black54,
        child: CircleAvatar(
          radius: 30.0,
          backgroundColor: Colors.grey,
          backgroundImage: AssetImage(assetimage),
        ),
      ),
    );
  }

  void displayRate(String base, String data, String currencycode) {
    showDialog(
      context: context,
      builder: (context) => SimpleDialog(
        title: Text(
          'Rate Exchange',
          textAlign: TextAlign.center,
        ),
        children: [
          Text(
            '1 $base = $data $currencycode',
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
  }

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
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  currecnyTitle('AED'),
                  currencyValue(widget.code.AED),
                  currencySymbol('د.إ'),
                  currencyFlag('images/uae.png'),
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            displayRate(widget.currenyCode, widget.code.AED, 'AED');
          },
        ),   
        GestureDetector(
          child: GridTile(
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  currecnyTitle('ARS'),
                  currencyValue(widget.code.ARS),
                  currencySymbol('\$'),
                  currencyFlag('images/argentina.png'),
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            displayRate(widget.currenyCode, widget.code.ARS, 'ARS');
          },
        ),   
        GestureDetector(
          child: GridTile(
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  currecnyTitle('AUD'),
                  currencyValue(widget.code.AUD),
                  currencySymbol('\$'),
                  currencyFlag('images/australia.png'),
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            displayRate(widget.currenyCode, widget.code.AUD, 'AUD');
          },
        ),   
        GestureDetector(
          child: GridTile(
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  currecnyTitle('BGN'),
                  currencyValue(widget.code.BGN),
                  currencySymbol('лв'),
                  currencyFlag('images/bulgaria.png'),
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            displayRate(widget.currenyCode, widget.code.BGN, 'BGN');
          },
        ),   

        GestureDetector(
          child: GridTile(
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  currecnyTitle('BRL'),
                  currencyValue(widget.code.BRL),
                  currencySymbol('R\$'),
                  currencyFlag('images/brazil.png'),
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            displayRate(widget.currenyCode, widget.code.BRL, 'BRL');
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  currecnyTitle('BSD'),
                  currencyValue(widget.code.BSD),
                  currencySymbol('\$'),
                  currencyFlag('images/bahamas.png'),
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            displayRate(widget.currenyCode, widget.code.BSD, 'BSD');
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  currecnyTitle('CHF'),
                  currencyValue(widget.code.CHF),
                  currencySymbol('\$'),
                  currencyFlag('images/switzerland.png'),
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            displayRate(widget.currenyCode, widget.code.CHF, 'CHF');
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  currecnyTitle('CLP'),
                  currencyValue(widget.code.CLP),
                  currencySymbol('\$'),
                  currencyFlag('images/chile.png'),
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            displayRate(widget.currenyCode, widget.code.CLP, 'CLP');
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  currecnyTitle('CNY'),
                  currencyValue(widget.code.CNY),
                  currencySymbol('¥'),
                  currencyFlag('images/china.png'),
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            displayRate(widget.currenyCode, widget.code.CNY, 'CNY');
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  currecnyTitle('COP'),
                  currencyValue(widget.code.COP),
                  currencySymbol('Kč'),
                  currencyFlag('images/colombia.png'),
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            displayRate(widget.currenyCode, widget.code.COP, 'COP');
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  currecnyTitle('CZK'),
                  currencyValue(widget.code.CZK),
                  currencySymbol('Kč'),
                  currencyFlag('images/czechrepublic.png'),
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            displayRate(widget.currenyCode, widget.code.CZK, 'CZK');
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  currecnyTitle('DKK'),
                  currencyValue(widget.code.DKK),
                  currencySymbol('Kr.'),
                  currencyFlag('images/denmark.png'),
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            displayRate(widget.currenyCode, widget.code.DKK, 'DKK');
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  currecnyTitle('DOP'),
                  currencyValue(widget.code.DOP),
                  currencySymbol('£'),
                  currencyFlag('images/dominica.png'),
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            displayRate(widget.currenyCode, widget.code.DOP, 'DOP');
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  currecnyTitle('EGP'),
                  currencyValue(widget.code.EGP),
                  currencySymbol('£'),
                  currencyFlag('images/egypt.png'),
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            displayRate(widget.currenyCode, widget.code.EGP, 'EGP');
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  currecnyTitle('EUR'),
                  currencyValue(widget.code.EUR),
                  currencySymbol('€'),
                  currencyFlag('images/europeunion.png'),
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            displayRate(widget.currenyCode, widget.code.EUR, 'EUR');
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  currecnyTitle('FJD'),
                  currencyValue(widget.code.FJD),
                  currencySymbol('\$'),
                  currencyFlag('images/fiji.png'),
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            displayRate(widget.currenyCode, widget.code.FJD, 'FJD');
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  currecnyTitle('GBP'),
                  currencyValue(widget.code.GBP),
                  currencySymbol('£'),
                  currencyFlag('images/uk.png'),
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            displayRate(widget.currenyCode, widget.code.GBP, 'GBP');
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  currecnyTitle('GTQ'),
                  currencyValue(widget.code.GTQ),
                  currencySymbol('Q'),
                  currencyFlag('images/gautemela.png'),
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            displayRate(widget.currenyCode, widget.code.GTQ, 'GTQ');
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  currecnyTitle('HKD'),
                  currencyValue(widget.code.HKD),
                  currencySymbol('\$'),
                  currencyFlag('images/hongkong.png'),
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            displayRate(widget.currenyCode, widget.code.HKD, 'HKD');
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  currecnyTitle('HRK'),
                  currencyValue(widget.code.HRK),
                  currencySymbol('kn'),
                  currencyFlag('images/croatia.png'),
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            displayRate(widget.currenyCode, widget.code.HRK, 'HRK');
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  currecnyTitle('HUF'),
                  currencyValue(widget.code.HUF),
                  currencySymbol('Ft'),
                  currencyFlag('images/hungary.png'),
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            displayRate(widget.currenyCode, widget.code.HUF, 'HUF');
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  currecnyTitle('IDR'),
                  currencyValue(widget.code.IDR),
                  currencySymbol('₪'),
                  currencyFlag('images/indonesia.png'),
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            displayRate(widget.currenyCode, widget.code.IDR, 'IDR');
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  currecnyTitle('ILS'),
                  currencyValue(widget.code.ILS),
                  currencySymbol('₪'),
                  currencyFlag('images/israel.png'),
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            displayRate(widget.currenyCode, widget.code.ILS, 'ILS');
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  currecnyTitle('INR'),
                  currencyValue(widget.code.INR),
                  currencySymbol('₹'),
                  currencyFlag('images/india.png'),
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            displayRate(widget.currenyCode, widget.code.INR, 'INR');
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  currecnyTitle('ISK'),
                  currencyValue(widget.code.ISK),
                  currencySymbol('kr'),
                  currencyFlag('images/iceland.png'),
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            displayRate(widget.currenyCode, widget.code.ISK, 'ISK');
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  currecnyTitle('JPY'),
                  currencyValue(widget.code.JPY),
                  currencySymbol('¥'),
                  currencyFlag('images/japan.png'),
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            displayRate(widget.currenyCode, widget.code.JPY, 'JPY');
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  currecnyTitle('KRW'),
                  currencyValue(widget.code.KRW),
                  currencySymbol('₩'),
                  currencyFlag('images/northkorea.png'),
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            displayRate(widget.currenyCode, widget.code.KRW, 'KRW');
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  currecnyTitle('KZT'),
                  currencyValue(widget.code.KZT),
                  currencySymbol('лв'),
                  currencyFlag('images/kazakhstan.png'),
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            displayRate(widget.currenyCode, widget.code.KZT, 'KZT');
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  currecnyTitle('MVR'),
                  currencyValue(widget.code.MVR),
                  currencySymbol('Rf'),
                  currencyFlag('images/maldives.png'),
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            displayRate(widget.currenyCode, widget.code.MVR, 'MVR');
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  currecnyTitle('MYR'),
                  currencyValue(widget.code.MYR),
                  currencySymbol('RM'),
                  currencyFlag('images/malaysia.png'),
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            displayRate(widget.currenyCode, widget.code.MYR, 'MYR');
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  currecnyTitle('NOK'),
                  currencyValue(widget.code.NOK),
                  currencySymbol('Kr'),
                  currencyFlag('images/norway.png'),
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            displayRate(widget.currenyCode, widget.code.NOK, 'NOK');
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  currecnyTitle('NZD'),
                  currencyValue(widget.code.NZD),
                  currencySymbol('\$'),
                  currencyFlag('images/newzealand.png'),
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            displayRate(widget.currenyCode, widget.code.NZD, 'NZD');
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  currecnyTitle('PAB'),
                  currencyValue(widget.code.PAB),
                  currencySymbol('B.'),
                  currencyFlag('images/panama.png'),
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            displayRate(widget.currenyCode, widget.code.PAB, 'PAB');
          },
        ),

        GestureDetector(
          child: GridTile(
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  currecnyTitle('PEN'),
                  currencyValue(widget.code.PEN),
                  currencySymbol('S.'),
                  currencyFlag('images/peru.png'),
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            displayRate(widget.currenyCode, widget.code.PEN, 'PEN');
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  currecnyTitle('PHP'),
                  currencyValue(widget.code.PHP),
                  currencySymbol('P'),
                  currencyFlag('images/philippines.png'),
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            displayRate(widget.currenyCode, widget.code.PHP, 'PHP');
          },
        ),

        GestureDetector(
          child: GridTile(
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  currecnyTitle('PKR'),
                  currencyValue(widget.code.PKR),
                  currencySymbol('Rs'),
                  currencyFlag('images/pakistan.png'),
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            displayRate(widget.currenyCode, widget.code.PKR, 'PKR');
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  currecnyTitle('PLN'),
                  currencyValue(widget.code.PLN),
                  currencySymbol('zł'),
                  currencyFlag('images/poland.png'),
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            displayRate(widget.currenyCode, widget.code.PLN, 'PLN');
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  currecnyTitle('SAR'),
                  currencyValue(widget.code.SAR),
                  currencySymbol('Gs'),
                  currencyFlag('images/paraguay.png'),
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            displayRate(widget.currenyCode, widget.code.SAR, 'SAR');
          },
        ),

        GestureDetector(
          child: GridTile(
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  currecnyTitle('SGD'),
                  currencyValue(widget.code.SGD),
                  currencySymbol('﷼'),
                  currencyFlag('images/saudiarabia.png'),
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            displayRate(widget.currenyCode, widget.code.SGD, 'SGD');
          },
        ),

        GestureDetector(
          child: GridTile(
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  currecnyTitle('SEK'),
                  currencyValue(widget.code.SEK),
                  currencySymbol('kr'),
                  currencyFlag('images/sweden.png'),
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            displayRate(widget.currenyCode, widget.code.SEK, 'SEK');
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  currecnyTitle('SGD'),
                  currencyValue(widget.code.SGD),
                  currencySymbol('\$'),
                  currencyFlag('images/singapore.png'),
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            displayRate(widget.currenyCode, widget.code.SGD, 'SGD');
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  currecnyTitle('THB'),
                  currencyValue(widget.code.THB),
                  currencySymbol('฿	'),
                  currencyFlag('images/thailand.png'),
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            displayRate(widget.currenyCode, widget.code.THB, 'THB');
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  currecnyTitle('TRY'),
                  currencyValue(widget.code.TRY),
                  currencySymbol('t'),
                  currencyFlag('images/turkey.png'),
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            displayRate(widget.currenyCode, widget.code.TRY, 'TRY');
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  currecnyTitle('TWD'),
                  currencyValue(widget.code.TWD),
                  currencySymbol('分'),
                  currencyFlag('images/taiwan.png'),
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            displayRate(widget.currenyCode, widget.code.TWD, 'TWD');
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  currecnyTitle('UAH'),
                  currencyValue(widget.code.UAH),
                  currencySymbol('₴'),
                  currencyFlag('images/ukraine.png'),
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            displayRate(widget.currenyCode, widget.code.UAH, 'UAH');
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  currecnyTitle('USD'),
                  currencyValue(widget.code.USD),
                  currencySymbol('\$'),
                  currencyFlag('images/usa.png'),
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            displayRate(widget.currenyCode, widget.code.USD, 'USD');
          },
        ),
        GestureDetector(
          child: GridTile(
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  currecnyTitle('UYU'),
                  currencyValue(widget.code.UYU),
                  currencySymbol('\$U'),
                  currencyFlag('images/uruguay.png'),
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            displayRate(widget.currenyCode, widget.code.UYU, 'UYU');
          },
        ),

        GestureDetector(
          child: GridTile(
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  currecnyTitle('ZAR'),
                  currencyValue(widget.code.ZAR),
                  currencySymbol('R'),
                  currencyFlag('images/southafrica.png'),
                ],
              ),
              elevation: 4.0,
            ),
          ),
          onTap: () {
            displayRate(widget.currenyCode, widget.code.ZAR, 'ZAR');
          },
        ),
      ],
    );
  }
}
