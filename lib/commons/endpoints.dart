class Endpoints {

  static const String HOROSCOPE_API_BASE_PATH = "https://burc-yorumlari.herokuapp.com/get/";


  ///
  daily (String code) {
    return HOROSCOPE_API_BASE_PATH + code;
  }

  weekly (String code) {
    return HOROSCOPE_API_BASE_PATH + code + '/haftalik';
  }

  monthly (String code) {
    return HOROSCOPE_API_BASE_PATH + code + '/aylik';
  }

  yearly (String code) {
    return HOROSCOPE_API_BASE_PATH + code + '/yillik';
  }
}