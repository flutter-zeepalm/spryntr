import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:spryntr/data/assets_path.dart';

class AccountItemModel {
  //File image;
  String accountimagepath;
  String accountname;
  int accountid;
  String accountno;
  AccountItemModel({
    //required this.image,
    required this.accountimagepath,
    required this.accountname,
    required this.accountid,
    required this.accountno,
  });
}

List<AccountItemModel> payoutslist = [fidelity, fidelity];
List<AccountItemModel> mainpayoutslist = [ichigo, ichigo];

List<AccountItemModel> accountitemlist = [
  AccountItemModel(
      //image: File(),
      accountimagepath: CustomAssets.accountdp,
      accountname: 'Ichigo Uzumaki',
      accountid: 0056514,
      accountno: "+234 900 000 0000"),
];

AccountItemModel fidelity = AccountItemModel(
    accountimagepath: CustomAssets.fidelity,
    accountname: 'Green Supermarket',
    accountid: 0055662234,
    accountno: "Fidelity Bank");

AccountItemModel ichigo = AccountItemModel(
    //image: File(),
    accountimagepath: CustomAssets.accountdp,
    accountname: 'Ichigo Uzumaki',
    accountid: 0056514,
    accountno: "+234 900 000 0000");
