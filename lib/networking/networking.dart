import 'package:http/http.dart' as http;
import 'dart:convert' as json;
import '../model/currencymodel.dart';

class NetworksAPI {
  // ignore: missing_return
  Future<CurrencyModel> getAPIData(String code) async {
    http.Response response = await http.get(
        'https://v6.exchangerate-api.com/v6/e7e5cddb52028d5f1244da3c/latest/$code');
    if (response.statusCode == 200) {
      var jsonData = json.jsonDecode(response.body);
      if (jsonData['result'] == 'success') {
        var convertData = jsonData['conversion_rates'];
        var currObj = new CurrencyModel(
          USD: convertData['USD'].toString(),
          AED: convertData['AED'].toString(),
          ARS: convertData['ARS'].toString(),
          AUD: convertData['AUD'].toString(),
          BGN: convertData['BGN'].toString(),
          BRL: convertData['BRL'].toString(),
          BSD: convertData['BSD'].toString(),
          CHF: convertData['CHF'].toString(),
          CLP: convertData['CLP'].toString(),
          CNY: convertData['CNY'].toString(),
          COP: convertData['COP'].toString(),
          CZK: convertData['CZK'].toString(),
          DKK: convertData['DKK'].toString(),
          DOP: convertData['DOP'].toString(),
          EGP: convertData['EGP'].toString(),
          EUR: convertData['EUR'].toString(),
          FJD: convertData['FJD'].toString(),
          GBP: convertData['GBP'].toString(),
          GTQ: convertData['GTQ'].toString(),
          HKD: convertData['HKD'].toString(),
          HRK: convertData['HRK'].toString(),
          HUF: convertData['HUF'].toString(),
          IDR: convertData['IDR'].toString(),
          ILS: convertData['ILS'].toString(),
          INR: convertData['INR'].toString(),
          ISK: convertData['ISK'].toString(),
          JPY: convertData['JPY'].toString(),
          KRW: convertData['KRW'].toString(),
          KZT: convertData['KZT'].toString(),
          MVR: convertData['MVR'].toString(),
          MYR: convertData['MYR'].toString(),
          NOK: convertData['NOK'].toString(),
          NZD: convertData['NZD'].toString(),
          PAB: convertData['PAB'].toString(),
          PEN: convertData['PEN'].toString(),
          PHP: convertData['PHP'].toString(),
          PKR: convertData['PKR'].toString(),
          PLN: convertData['PLN'].toString(),
          PYG: convertData['PYG'].toString(),
          RON: convertData['RON'].toString(),
          RUB: convertData['RUB'].toString(),
          SAR: convertData['SAR'].toString(),
          SEK: convertData['SEK'].toString(),
          SGD: convertData['SGD'].toString(),
          THB: convertData['THB'].toString(),
          TRY: convertData['TRY'].toString(),
          TWD: convertData['TWD'].toString(),
          UAH: convertData['UAH'].toString(),
          UYU: convertData['UYU'].toString(),
          ZAR: convertData['ZAR'].toString(),
        );
        return currObj;
      } 
    }
  }

  Future saveInCache() async {
    http.Response response = await http.get(
        'https://v6.exchangerate-api.com/v6/e7e5cddb52028d5f1244da3c/latest/INR');
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return null;
    }
  }
}
