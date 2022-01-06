import 'dart:io';

class AdHelper {
  //apple main
  static String get bannerAdUnitId {
    if (Platform.isAndroid) {
      return "ca-app-pub-3940256099942544/6300978111"; //"ca-app-pub-5946802346170399/9530282800";
    } else if (Platform.isIOS) {
      return "ca-app-pub-5946802346170399/2936111061";
    } else {
      throw UnsupportedError("Unsupported platform");
    }
  }

  static String get interstitialAdUnitId {
    if (Platform.isAndroid) {
      return "ca-app-pub-3940256099942544/1033173712"; // 'ca-app-pub-5946802346170399/5971710541';
    } else if (Platform.isIOS) {
      return 'ca-app-pub-5946802346170399/9309947721';
    } else {
      throw UnsupportedError('Unsupported platform');
    }
  }

  static String get rewardedAdUnitId {
    if (Platform.isAndroid) {
      return "ca-app-pub-3940256099942544/5224354917"; // 'ca-app-pub-5946802346170399/9222041484';
    } else if (Platform.isIOS) {
      return '<ca-app-pub-5946802346170399/5282520490>';
    } else {
      throw UnsupportedError('Unsupported platform');
    }
  }

  static String get betarewardAdUnit {
    if (Platform.isAndroid) {
      return "ca-app-pub-3940256099942544/5354046379"; // 'ca-app-pub-5946802346170399/7911478176';
    } else if (Platform.isIOS) {
      return '<ca-app-pub-5946802346170399/5282520490>';
    } else {
      throw UnsupportedError('Unsupported platform');
    }
  }

  static String get openAppAdUnit {
    if (Platform.isAndroid) {
      return "ca-app-pub-3940256099942544/3419835294"; //'ca-app-pub-5946802346170399/5007657823';
    } else if (Platform.isIOS) {
      return '<ca-app-pub-5946802346170399/5282520490>';
    } else {
      throw UnsupportedError('Unsupported platform');
    }
  }
}
