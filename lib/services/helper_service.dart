
import 'package:flutter/cupertino.dart';

class HelpersService {

  static pushAndRemoveAll(BuildContext context, String route) {
    Navigator.of(context).pushNamedAndRemoveUntil(route, (Route<dynamic> r) => false);
  }

  static push(BuildContext context, String route){
    Navigator.of(context).pushNamed(route);
  }

  static backTo(BuildContext context, String route){
    Navigator.popUntil(context, ModalRoute.withName(route));
  }

}

