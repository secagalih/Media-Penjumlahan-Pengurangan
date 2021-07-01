import 'package:belajar_berhitung/custom/opsimodel.dart';
import 'package:flutter/cupertino.dart';

class OpsiPenguranganEasy with ChangeNotifier {
  List<OpsiJwbn> _opsi = [
    OpsiJwbn(
      a: '313',
      b: '311',
      c: '333',
    ),
    OpsiJwbn(
      a: '204',
      b: '280',
      c: '284',
    ),
    OpsiJwbn(
      a: '709',
      b: '141',
      c: '609',
    ),
    OpsiJwbn(
      a: '254',
      b: '818',
      c: '452',
    ),
    OpsiJwbn(
      a: '504',
      b: '405',
      c: '450',
    ),
    OpsiJwbn(
      a: '697',
      b: '679',
      c: '669',
    ),
    OpsiJwbn(
      a: '236',
      b: '263',
      c: '326',
    ),
    OpsiJwbn(
      a: '526',
      b: '256',
      c: '625',
    ),
    OpsiJwbn(
      a: '753',
      b: '537',
      c: '111',
    ),
    OpsiJwbn(
      a: '398',
      b: '389',
      c: '318',
    ),
  ];
  List<OpsiJwbn> get opsiJbnPenguranganEasy {
    return [..._opsi];
  }
}

class OpsiPenguranganHard with ChangeNotifier {
  List<OpsiJwbn> _opsi = [
    OpsiJwbn(
      a: '233',
      b: '191',
      c: '343',
    ),
    OpsiJwbn(
      a: '91',
      b: '131',
      c: '141',
    ),
    OpsiJwbn(
      a: '132',
      b: '123',
      c: '10',
    ),
    OpsiJwbn(
      a: '201',
      b: '311',
      c: '131',
    ),
    OpsiJwbn(
      a: '121',
      b: '89',
      c: '79',
    ),
    OpsiJwbn(
      a: '231',
      b: '189',
      c: '221',
    ),
    OpsiJwbn(
      a: '296',
      b: '346',
      c: '364',
    ),
    OpsiJwbn(
      a: '139',
      b: '101',
      c: '110',
    ),
    OpsiJwbn(
      a: '155',
      b: '109',
      c: '190',
    ),
    OpsiJwbn(
      a: '94',
      b: '196',
      c: '169',
    ),
  ];
  List<OpsiJwbn> get opsiJbnPenguranganHard {
    return [..._opsi];
  }
}
