import 'package:belajar_berhitung/custom/opsimodel.dart';
import 'package:flutter/cupertino.dart';

class OpsiEvaluasi with ChangeNotifier {
  List<OpsiJwbn> _opsi = [
    OpsiJwbn(
      a: '475',
      b: '405',
      c: '425',
      kuncih: '405',
    ),
    OpsiJwbn(
      a: '530',
      b: '520',
      c: '510',
      kuncih: '530',
    ),
    OpsiJwbn(
      a: '867',
      b: '877',
      c: '887',
      kuncih: '887',
    ),
    OpsiJwbn(
      a: '202',
      b: '212',
      c: '222',
      kuncih: '212',
    ),
    OpsiJwbn(
      a: '496',
      b: '396',
      c: '296',
      kuncih: '396',
    ),
    OpsiJwbn(
      a: '299',
      b: '309',
      c: '499',
      kuncih: '299',
    ),
    OpsiJwbn(
      a: '309',
      b: '409',
      c: '509',
      kuncih: '409',
    ),
    OpsiJwbn(
      a: '99',
      b: '169',
      c: '199',
      kuncih: '199',
    ),
    OpsiJwbn(
      a: '190',
      b: '138',
      c: '108',
      kuncih: '138',
    ),
    OpsiJwbn(
      a: '340',
      b: '290',
      c: '250',
      kuncih: '250',
    ),
    OpsiJwbn(
      a: '170',
      b: '136',
      c: '86',
      kuncih: '170',
    ),
    OpsiJwbn(
      a: '110',
      b: '205',
      c: '200',
      kuncih: '200',
    ),
    OpsiJwbn(
      a: '260',
      b: '240',
      c: '220',
      kuncih: '260',
    ),
    OpsiJwbn(
      a: '182',
      b: '460',
      c: '260',
      kuncih: '460',
    ),
    OpsiJwbn(
      a: '105',
      b: '144',
      c: '244',
      kuncih: '105',
    ),
    OpsiJwbn(
      a: '635',
      b: '289',
      c: '189',
      kuncih: '189',
    ),
    OpsiJwbn(
      a: '109',
      b: '164',
      c: '54',
      kuncih: '164',
    ),
    OpsiJwbn(
      a: '358',
      b: '386',
      c: '414',
      kuncih: '414',
    ),
    OpsiJwbn(
      a: '212',
      b: '185',
      c: '165',
      kuncih: '185',
    ),
    OpsiJwbn(
      a: '158',
      b: '181',
      c: '191',
      kuncih: '158',
    ),
  ];
  List<OpsiJwbn> get opsiJbnEvaluasi {
    return [..._opsi];
  }
}
