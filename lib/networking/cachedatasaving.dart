import 'dart:io';
import 'dart:convert' as json;
import 'package:exchangeapp/model/currencymodel.dart';
import 'package:path_provider/path_provider.dart' as path;
import 'networking.dart';

class CacheFile {
  Future<CurrencyModel> getCacheData() async {
    String filename = 'userdata.json';
    var filePath = await path.getTemporaryDirectory();
    File cachefile = new File(filePath.path + '/' + filename);
    if (cachefile.existsSync()) {
      var jsonData = cachefile.readAsStringSync();
      var data = json.jsonDecode(jsonData);
      var convertData = data['conversion_rates'];
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
    } else {
      var data = await NetworksAPI().saveInCache();
      cachefile.writeAsStringSync(data, flush: true, mode: FileMode.write);
      var jsondata = json.jsonDecode(data);
      var convertData = jsondata['conversion_rates'];
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
