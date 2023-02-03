import 'package:get/route_manager.dart';

class Languages extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'AppTitle': 'Learning App',
          'Username': 'Username',
          'Password': 'Password',
          'LOGIN': 'LOG IN',
          'Sign Up':'Sign Up',
          'NewAccount':'Dont have account? Create it',
          'Confirm Password':'Confirm Password',
        },
        'hi_IN': {
          'AppTitle': 'लर्निंग ऐप',
          'Username': 'उपयोगकर्ता नाम',
          'Password': 'पासवर्ड',
          'LOGIN': 'लॉग इन करें',
          'Sign Up': 'साइन अप करें',
          'New Account':'खाता नहीं है? इसे बनाओ',
          'Confirm Password':'पासवर्ड की पुष्टि कीजिये',
        },
      };
}
