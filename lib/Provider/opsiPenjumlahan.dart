import 'package:belajar_berhitung/custom/opsimodel.dart';
import 'package:flutter/cupertino.dart';

class OpsipenjumlahanEasy with ChangeNotifier {
  List<OpsiJwbn> _opsi = [
    OpsiJwbn(
      a: '224',
      b: '242',
      c: '422',
    ),
    OpsiJwbn(
      a: '396',
      b: '369',
      c: '399',
    ),
    OpsiJwbn(
      a: '429',
      b: '439',
      c: '419',
    ),
    OpsiJwbn(
      a: '571',
      b: '671',
      c: '771',
    ),
    OpsiJwbn(
      a: '884',
      b: '874',
      c: '864',
    ),
    OpsiJwbn(
      a: '297',
      b: '729',
      c: '927',
    ),
    OpsiJwbn(
      a: '818',
      b: '881',
      c: '518',
    ),
    OpsiJwbn(
      a: '568',
      b: '685',
      c: '856',
    ),
    OpsiJwbn(
      a: '510',
      b: '601',
      c: '610',
    ),
    OpsiJwbn(
      a: '486',
      b: '468',
      c: '422',
    ),
  ];
  List<OpsiJwbn> get opsiJbnPenjumlahanEasy {
    return [..._opsi];
  }
}

class OpsipenjumlahanHard with ChangeNotifier {
  List<OpsiJwbn> _opsi = [
    OpsiJwbn(
      a: '245',
      b: '254',
      c: '244',
    ),
    OpsiJwbn(
      a: '307',
      b: '207',
      c: '317',
    ),
    OpsiJwbn(
      a: '117',
      b: '195',
      c: '350',
    ),
    OpsiJwbn(
      a: '299',
      b: '419',
      c: '519',
    ),
    OpsiJwbn(
      a: '277',
      b: '160',
      c: '64',
    ),
    OpsiJwbn(
      a: '220',
      b: '561',
      c: '516',
    ),
    OpsiJwbn(
      a: '694',
      b: '704',
      c: '604',
    ),
    OpsiJwbn(
      a: '925',
      b: '915',
      c: '591',
    ),
    OpsiJwbn(
      a: '379',
      b: '397',
      c: '754',
    ),
    OpsiJwbn(
      a: '241',
      b: '133',
      c: '374',
    ),
  ];
  List<OpsiJwbn> get opsiJbnPenjumlahanHard {
    return [..._opsi];
  }
}
