import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController {
  var obscureText = true.obs;
  void togglePasswordVisibitity() {
    obscureText.value = !obscureText.value;
  }

  var obscureText2 = true.obs;
  void togglePasswordVisibitity2() {
    obscureText2.value = !obscureText2.value;
  }

  RxString flag2 = ''.obs;
  RxString name2 = ''.obs;
  RxString callingCode2 = ''.obs;

  void addFlag(String flag, String name, String callingCode) {
    flag2.value = flag;
    name2.value = name;
    callingCode2.value = callingCode;
    log(flag2.toString());
    log(name2.toString());
    log(callingCode2.toString());
  }

//Validators

  RxBool buttonValue = false.obs;

//Name validation
  var name = ''.obs;
  var isValidName = false.obs;
  final nameRegex = RegExp(r'^.{3,}$');

  final TextEditingController controllerName = TextEditingController();
  void validateName(String value) {
    name.value = value;

    if (value.isEmpty) {
      isValidName.value = false;
      return;
    }

    List<String> words = value.split(' ');
    for (String word in words) {
      if (word.isNotEmpty && !nameRegex.hasMatch(word)) {
        isValidName.value = false;
        return;
      }
    }

    isValidName.value = true;
  }

//Email validation
  var email = ''.obs;
  var isValidEmail = false.obs;
  final emailRegex =
      RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');

  final TextEditingController controllerEmail = TextEditingController();
  void validateEmail(String value) {
    email.value = value;

    if (value.isEmpty) {
      isValidEmail.value = false;
      return;
    }

    List<String> words = value.split(' ');
    for (String word in words) {
      if (word.isNotEmpty && !emailRegex.hasMatch(word)) {
        isValidEmail.value = false;
        return;
      }
    }

    isValidEmail.value = true;
  }

//UserName validation
  var username = ''.obs;
  var isValidUsername = false.obs;
  final usernameRegex = RegExp(r'^.{3,}$');

  final TextEditingController controllerUsername = TextEditingController();
  void validateUsername(String value) {
    username.value = value;

    if (value.isEmpty) {
      isValidUsername.value = false;
      return;
    }

    List<String> words = value.split(' ');
    for (String word in words) {
      if (word.isNotEmpty && !nameRegex.hasMatch(word)) {
        isValidUsername.value = false;
        return;
      }
    }

    isValidUsername.value = true;
  }

//PhoneNumber validation
  var phone = ''.obs;
  var isValidPhone = false.obs;

  final phoneRegex = RegExp(r'^\d{3,}$');

  final TextEditingController controllerPhone = TextEditingController();
  void validatePhone(String value) {
    phone.value = value;

    if (value.isEmpty) {
      isValidPhone.value = false;
      return;
    }

    List<String> words = value.split(' ');
    for (String word in words) {
      if (word.isNotEmpty && !nameRegex.hasMatch(word)) {
        isValidPhone.value = false;
        return;
      }
    }

    isValidPhone.value = true;
  }

//Date of Birth validation
  var isValidDOB = false.obs;
  final TextEditingController controllerDOB = TextEditingController();
  void validateDOB() {
    controllerDOB.text.isNotEmpty
        ? isValidDOB.value = true
        : isValidDOB.value = false;
  }

  // var DOB = ''.obs;
  // var isValidDOB = false.obs;

  // final DOBRegex = RegExp(r'^.{2,}$');

  // final TextEditingController controllerDOB = TextEditingController();
  // void validateDOB(String value) {
  //   DOB.value = value;

  //   if (value.isEmpty) {
  //     isValidDOB.value = false;
  //     return;
  //   }

  //   List<String> words = value.split(' ');
  //   for (String word in words) {
  //     if (word.isNotEmpty && !nameRegex.hasMatch(word)) {
  //       isValidDOB.value = false;
  //       return;
  //     }
  //   }

  //   isValidDOB.value = true;
  // }

  //Valid password
  var password = ''.obs;
  var isValidPass = false.obs;
  final PassRegex = RegExp(r'^[a-zA-Z0-9._%+-]{8,}$');

  final TextEditingController controllerPass = TextEditingController();
  void validatePass(String value) {
    password.value = value;

    if (value.isEmpty) {
      isValidPass.value = false;
      return;
    }

    List<String> words = value.split(' ');
    for (String word in words) {
      if (word.isNotEmpty && !PassRegex.hasMatch(word)) {
        isValidPass.value = false;
        return;
      }
    }

    isValidPass.value = true;
  }

  //Confirm password
  var passConfirm = ''.obs;
  var isValidpassConfirm = false.obs;
  // final passConfirmRegex = RegExp(r'^[a-zA-Z0-9._%+-]{8,}$');

  final TextEditingController controllerpassConfirm = TextEditingController();
  void validatepassConfirm(String value) {
    passConfirm.value = value;

    if (value.isEmpty) {
      isValidpassConfirm.value = false;
      return;
    }

    List<String> words = value.split(' ');
    for (String word in words) {
      if (word.isNotEmpty &&
          controllerpassConfirm.value != controllerPass.value) {
        isValidpassConfirm.value = false;
        return;
      }
    }

    isValidpassConfirm.value = true;
  }

  var showPin = false.obs;
  List<Map<String, dynamic>> countries = [
    {
      "name": "Afghanistan",
      "code": "AF",
      "callingCode": "+93",
      "flag": "\u{1F1E6}\u{1F1EB}"
    },
    {
      "name": "Albania",
      "code": "AL",
      "callingCode": "+355",
      "flag": "\u{1F1E6}\u{1F1F1}"
    },
    {
      "name": "Algeria",
      "code": "DZ",
      "callingCode": "+213",
      "flag": "\u{1F1E6}\u{1F1FF}"
    },
    {
      "name": "Andorra",
      "code": "AD",
      "callingCode": "+376",
      "flag": "\u{1F1E6}\u{1F1E9}"
    },
    {
      "name": "Angola",
      "code": "AO",
      "callingCode": "+244",
      "flag": "\u{1F1E6}\u{1F1F4}"
    },
    {
      "name": "Antigua and Barbuda",
      "code": "AG",
      "callingCode": "+1-268",
      "flag": "\u{1F1E6}\u{1F1EC}"
    },
    {
      "name": "Argentina",
      "code": "AR",
      "callingCode": "+54",
      "flag": "\u{1F1E6}\u{1F1F7}"
    },
    {
      "name": "Armenia",
      "code": "AM",
      "callingCode": "+374",
      "flag": "\u{1F1E6}\u{1F1F2}"
    },
    {
      "name": "Australia",
      "code": "AU",
      "callingCode": "+61",
      "flag": "\u{1F1E6}\u{1F1FA}"
    },
    {
      "name": "Austria",
      "code": "AT",
      "callingCode": "+43",
      "flag": "\u{1F1E6}\u{1F1F9}"
    },
    {
      "name": "Azerbaijan",
      "code": "AZ",
      "callingCode": "+994",
      "flag": "\u{1F1E6}\u{1F1FF}"
    },
    {
      "name": "Bahamas",
      "code": "BS",
      "callingCode": "+1-242",
      "flag": "\u{1F1E7}\u{1F1F8}"
    },
    {
      "name": "Bahrain",
      "code": "BH",
      "callingCode": "+973",
      "flag": "\u{1F1E7}\u{1F1ED}"
    },
    {
      "name": "Bangladesh",
      "code": "BD",
      "callingCode": "+880",
      "flag": "\u{1F1E7}\u{1F1E9}"
    },
    {
      "name": "Barbados",
      "code": "BB",
      "callingCode": "+1-246",
      "flag": "\u{1F1E7}\u{1F1E7}"
    },
    {
      "name": "Belarus",
      "code": "BY",
      "callingCode": "+375",
      "flag": "\u{1F1E7}\u{1F1FE}"
    },
    {
      "name": "Belgium",
      "code": "BE",
      "callingCode": "+32",
      "flag": "\u{1F1E7}\u{1F1EA}"
    },
    {
      "name": "Belize",
      "code": "BZ",
      "callingCode": "+501",
      "flag": "\u{1F1E7}\u{1F1FF}"
    },
    {
      "name": "Benin",
      "code": "BJ",
      "callingCode": "+229",
      "flag": "\u{1F1E7}\u{1F1EF}"
    },
    {
      "name": "Bhutan",
      "code": "BT",
      "callingCode": "+975",
      "flag": "\u{1F1E7}\u{1F1F9}"
    },
    {
      "name": "Bolivia",
      "code": "BO",
      "callingCode": "+591",
      "flag": "\u{1F1E7}\u{1F1F4}"
    },
    {
      "name": "Bosnia and Herzegovina",
      "code": "BA",
      "callingCode": "+387",
      "flag": "\u{1F1E7}\u{1F1E6}"
    },
    {
      "name": "Botswana",
      "code": "BW",
      "callingCode": "+267",
      "flag": "\u{1F1E7}\u{1F1FC}"
    },
    {
      "name": "Brazil",
      "code": "BR",
      "callingCode": "+55",
      "flag": "\u{1F1E7}\u{1F1F7}"
    },
    {
      "name": "Brunei",
      "code": "BN",
      "callingCode": "+673",
      "flag": "\u{1F1E7}\u{1F1F3}"
    },
    {
      "name": "Cambodia",
      "code": "KH",
      "callingCode": "+855",
      "flag": "\u{1F1F0}\u{1F1ED}"
    },
    {
      "name": "Canada",
      "code": "CA",
      "callingCode": "+1",
      "flag": "\u{1F1E8}\u{1F1F7}"
    },
    {
      "name": "Chile",
      "code": "CL",
      "callingCode": "+56",
      "flag": "\u{1F1E8}\u{1F1F1}"
    },
    {
      "name": "China",
      "code": "CN",
      "callingCode": "+86",
      "flag": "\u{1F1E8}\u{1F1F3}"
    },
    {
      "name": "Colombia",
      "code": "CO",
      "callingCode": "+57",
      "flag": "\u{1F1E8}\u{1F1F4}"
    },
    {
      "name": "Congo (DRC)",
      "code": "CD",
      "callingCode": "+243",
      "flag": "\u{1F1E8}\u{1F1E9}"
    },
    {
      "name": "Costa Rica",
      "code": "CR",
      "callingCode": "+506",
      "flag": "\u{1F1E8}\u{1F1F7}"
    },
    {
      "name": "Croatia",
      "code": "HR",
      "callingCode": "+385",
      "flag": "\u{1F1ED}\u{1F1F7}"
    },
    {
      "name": "Cuba",
      "code": "CU",
      "callingCode": "+53",
      "flag": "\u{1F1E8}\u{1F1FA}"
    },
    {
      "name": "Denmark",
      "code": "DK",
      "callingCode": "+45",
      "flag": "\u{1F1E9}\u{1F1F0}"
    },
    {
      "name": "Djibouti",
      "code": "DJ",
      "callingCode": "+253",
      "flag": "\u{1F1E9}\u{1F1EF}"
    },
    {
      "name": "Dominica",
      "code": "DM",
      "callingCode": "+1-767",
      "flag": "\u{1F1E9}\u{1F1F2}"
    },
    {
      "name": "Dominican Republic",
      "code": "DO",
      "callingCode": "+1-809",
      "flag": "\u{1F1E9}\u{1F1F4}"
    },
    {
      "name": "Egypt",
      "code": "EG",
      "callingCode": "+20",
      "flag": "\u{1F1EA}\u{1F1EC}"
    },
    {
      "name": "Eswatini",
      "code": "SZ",
      "callingCode": "+268",
      "flag": "\u{1F1F8}\u{1F1FF}"
    },
    {
      "name": "Estonia",
      "code": "EE",
      "callingCode": "+372",
      "flag": "\u{1F1EA}\u{1F1EA}"
    },
    {
      "name": "Ecuador",
      "code": "EC",
      "callingCode": "+593",
      "flag": "\u{1F1EA}\u{1F1E8}"
    },
    {
      "name": "El Salvador",
      "code": "SV",
      "callingCode": "+503",
      "flag": "\u{1F1F8}\u{1F1FB}"
    },
    {
      "name": "Equatorial Guinea",
      "code": "GQ",
      "callingCode": "+240",
      "flag": "\u{1F1EC}\u{1F1F6}"
    },
    {
      "name": "Ethiopia",
      "code": "ET",
      "callingCode": "+251",
      "flag": "\u{1F1EA}\u{1F1F9}"
    },
    {
      "name": "Fiji",
      "code": "FI",
      "callingCode": "+679",
      "flag": "\u{1F1EB}\u{1F1EF}"
    },
    {
      "name": "Finland",
      "code": "FI",
      "callingCode": "+358",
      "flag": "\u{1F1EB}\u{1F1EE}"
    },
    {
      "name": "France",
      "code": "FR",
      "callingCode": "+33",
      "flag": "\u{1F1F7}\u{1F1F8}"
    },
    {
      "name": "Faroe Islands",
      "code": "FO",
      "callingCode": "+298",
      "flag": "\u{1F1EB}\u{1F1F4}"
    },
    {
      "name": "French Guiana",
      "code": "GF",
      "callingCode": "+594",
      "flag": "\u{1F1EC}\u{1F1F7}"
    },
    {
      "name": "French Polynesia",
      "code": "PF",
      "callingCode": "+689",
      "flag": "\u{1F1F5}\u{1F1F6}"
    },
    {
      "name": "French Southern and Antarctic Lands",
      "code": "TF",
      "callingCode": "+262",
      "flag": "\u{1F1F9}\u{1F1EB}"
    },
    {
      "name": "Georgia",
      "code": "GE",
      "callingCode": "+995",
      "flag": "\u{1F1EC}\u{1F1EA}"
    },
    {
      "name": "Germany",
      "code": "DE",
      "callingCode": "+49",
      "flag": "\u{1F1E9}\u{1F1EA}"
    },
    {
      "name": "Ghana",
      "code": "GH",
      "callingCode": "+233",
      "flag": "\u{1F1EC}\u{1F1ED}"
    },
    {
      "name": "Greece",
      "code": "GR",
      "callingCode": "+30",
      "flag": "\u{1F1EC}\u{1F1F7}"
    },
    {
      "name": "Grenada",
      "code": "GD",
      "callingCode": "+1-473",
      "flag": "\u{1F1EC}\u{1F1E9}"
    },
    {
      "name": "Guatemala",
      "code": "GT",
      "callingCode": "+502",
      "flag": "\u{1F1EC}\u{1F1F9}"
    },
    {
      "name": "Guinea",
      "code": "GN",
      "callingCode": "+224",
      "flag": "\u{1F1EC}\u{1F1F3}"
    },
    {
      "name": "Guinea-Bissau",
      "code": "GW",
      "callingCode": "+245",
      "flag": "\u{1F1EC}\u{1F1FC}"
    },
    {
      "name": "Guyana",
      "code": "GY",
      "callingCode": "+592",
      "flag": "\u{1F1EC}\u{1F1FE}"
    },
    {
      "name": "Hong Kong",
      "code": "HK",
      "callingCode": "+852",
      "flag": "\u{1F1ED}\u{1F1F0}"
    },
    {
      "name": "Hungary",
      "code": "HU",
      "callingCode": "+36",
      "flag": "\u{1F1ED}\u{1F1FA}"
    },
    {
      "name": "Haiti",
      "code": "HT",
      "callingCode": "+509",
      "flag": "\u{1F1F8}\u{1F1F9}"
    },
    {
      "name": "Honduras",
      "code": "HN",
      "callingCode": "+504",
      "flag": "\u{1F1ED}\u{1F1F3}"
    },
    {
      "name": "Honduras",
      "code": "HN",
      "callingCode": "+504",
      "flag": "\u{1F1ED}\u{1F1F3}"
    },
    {
      "name": "Iceland",
      "code": "IS",
      "callingCode": "+354",
      "flag": "\u{1F1EE}\u{1F1F8}"
    },
    {
      "name": "India",
      "code": "IN",
      "callingCode": "+91",
      "flag": "\u{1F1EE}\u{1F1F3}"
    },
    {
      "name": "Indonesia",
      "code": "ID",
      "callingCode": "+62",
      "flag": "\u{1F1EE}\u{1F1E9}"
    },
    {
      "name": "Ireland",
      "code": "IE",
      "callingCode": "+353",
      "flag": "\u{1F1EE}\u{1F1EA}"
    },
    {
      "name": "Israel",
      "code": "IL",
      "callingCode": "+972",
      "flag": "\u{1F1EE}\u{1F1F1}"
    },
    {
      "name": "Italy",
      "code": "IT",
      "callingCode": "+39",
      "flag": "\u{1F1EE}\u{1F1F9}"
    },
    {
      "name": "Ivory Coast",
      "code": "CI",
      "callingCode": "+225",
      "flag": "\u{1F1E8}\u{1F1EE}"
    },
    {
      "name": "Iraq",
      "code": "IQ",
      "callingCode": "+964",
      "flag": "\u{1F1EE}\u{1F1F6}"
    },
    {
      "name": "Iran",
      "code": "IR",
      "callingCode": "+98",
      "flag": "\u{1F1EE}\u{1F1F7}"
    },
    {
      "name": "Imarat Arab",
      "code": "AE",
      "callingCode": "+971",
      "flag": "\u{1F1E6}\u{1F1EA}"
    },
    {
      "name": "Japan",
      "code": "JP",
      "callingCode": "+81",
      "flag": "\u{1F1EF}\u{1F1F5}"
    },
    {
      "name": "Jordan",
      "code": "JO",
      "callingCode": "+962",
      "flag": "\u{1F1EF}\u{1F1F4}"
    },
    {
      "name": "Jamaica",
      "code": "JM",
      "callingCode": "+1-876",
      "flag": "\u{1F1EF}\u{1F1F2}"
    },
    {
      "name": "Kazakhstan",
      "code": "KZ",
      "callingCode": "+7",
      "flag": "\u{1F1F0}\u{1F1FF}"
    },
    {
      "name": "Kenya",
      "code": "KE",
      "callingCode": "+254",
      "flag": "\u{1F1F0}\u{1F1F7}"
    },
    {
      "name": "Kuwait",
      "code": "KW",
      "callingCode": "+965",
      "flag": "\u{1F1F0}\u{1F1FC}"
    },
    {
      "name": "Kyrgyzstan",
      "code": "KG",
      "callingCode": "+996",
      "flag": "\u{1F1F0}\u{1F1EC}"
    },
    {
      "name": "Cambodia",
      "code": "KH",
      "callingCode": "+855",
      "flag": "\u{1F1F0}\u{1F1ED}"
    },
    {
      "name": "Kiribati",
      "code": "KI",
      "callingCode": "+686",
      "flag": "\u{1F1F0}\u{1F1EE}"
    },
    {
      "name": "Laos",
      "code": "LA",
      "callingCode": "+856",
      "flag": "\u{1F1F1}\u{1F1E6}"
    },
    {
      "name": "Latvia",
      "code": "LV",
      "callingCode": "+371",
      "flag": "\u{1F1F1}\u{1F1FB}"
    },
    {
      "name": "Lesotho",
      "code": "LS",
      "callingCode": "+266",
      "flag": "\u{1F1F1}\u{1F1F8}"
    },
    {
      "name": "Lithuania",
      "code": "LT",
      "callingCode": "+370",
      "flag": "\u{1F1F1}\u{1F1F9}"
    },
    {
      "name": "Luxembourg",
      "code": "LU",
      "callingCode": "+352",
      "flag": "\u{1F1F1}\u{1F1FA}"
    },
    {
      "name": "Lebanon",
      "code": "LB",
      "callingCode": "+961",
      "flag": "\u{1F1F1}\u{1F1E8}"
    },
    {
      "name": "Liberia",
      "code": "LR",
      "callingCode": "+231",
      "flag": "\u{1F1F1}\u{1F1F7}"
    },
    {
      "name": "Libya",
      "code": "LY",
      "callingCode": "+218",
      "flag": "\u{1F1F1}\u{1F1FE}"
    },
    {
      "name": "Malawi",
      "code": "MW",
      "callingCode": "+265",
      "flag": "\u{1F1F2}\u{1F1FC}"
    },
    {
      "name": "Malaysia",
      "code": "MY",
      "callingCode": "+60",
      "flag": "\u{1F1F2}\u{1F1FE}"
    },
    {
      "name": "Mali",
      "code": "ML",
      "callingCode": "+223",
      "flag": "\u{1F1F2}\u{1F1F1}"
    },
    {
      "name": "Mexico",
      "code": "MX",
      "callingCode": "+52",
      "flag": "\u{1F1F2}\u{1F1FD}"
    },
    {
      "name": "Moldova",
      "code": "MD",
      "callingCode": "+373",
      "flag": "\u{1F1F2}\u{1F1E9}"
    },
    {
      "name": "Mongolia",
      "code": "MN",
      "callingCode": "+976",
      "flag": "\u{1F1F2}\u{1F1F3}"
    },
    {
      "name": "Myanmar",
      "code": "MM",
      "callingCode": "+95",
      "flag": "\u{1F1F2}\u{1F1F2}"
    },
    {
      "name": "Morocco",
      "code": "MA",
      "callingCode": "+212",
      "flag": "\u{1F1F2}\u{1F1E6}"
    },
    {
      "name": "Mozambique",
      "code": "MZ",
      "callingCode": "+258",
      "flag": "\u{1F1F2}\u{1F1FF}"
    },
    {
      "name": "Malta",
      "code": "MT",
      "callingCode": "+356",
      "flag": "\u{1F1F2}\u{1F1F9}"
    },
    {
      "name": "Namibia",
      "code": "NA",
      "callingCode": "+264",
      "flag": "\u{1F1F3}\u{1F1E6}"
    },
    {
      "name": "Nepal",
      "code": "NP",
      "callingCode": "+977",
      "flag": "\u{1F1F3}\u{1F1F5}"
    },
    {
      "name": "Netherlands",
      "code": "NL",
      "callingCode": "+31",
      "flag": "\u{1F1F3}\u{1F1F1}"
    },
    {
      "name": "New Zealand",
      "code": "NZ",
      "callingCode": "+64",
      "flag": "\u{1F1F3}\u{1F1FF}"
    },
    {
      "name": "Nigeria",
      "code": "NG",
      "callingCode": "+234",
      "flag": "\u{1F1F3}\u{1F1EC}"
    },
    {
      "name": "Norway",
      "code": "NO",
      "callingCode": "+47",
      "flag": "\u{1F1F3}\u{1F1F4}"
    },
    {
      "name": "Nicaragua",
      "code": "NI",
      "callingCode": "+505",
      "flag": "\u{1F1F3}\u{1F1EE}"
    },
    {
      "name": "Niger",
      "code": "NE",
      "callingCode": "+227",
      "flag": "\u{1F1F3}\u{1F1EA}"
    },
    {
      "name": "North Macedonia",
      "code": "MK",
      "callingCode": "+389",
      "flag": "\u{1F1F2}\u{1F1F0}"
    },
    {
      "name": "Nauru",
      "code": "NR",
      "callingCode": "+674",
      "flag": "\u{1F1F3}\u{1F1F7}"
    },
    {
      "name": "Namibia",
      "code": "NA",
      "callingCode": "+264",
      "flag": "\u{1F1F3}\u{1F1E6}"
    },
    {
      "name": "Oman",
      "code": "OM",
      "callingCode": "+968",
      "flag": "\u{1F1F4}\u{1F1F2}" // Oman
    },
    {
      "name": "Pakistan",
      "code": "PK",
      "callingCode": "+92",
      "flag": "\u{1F1F5}\u{1F1F0}"
    },
    {
      "name": "Panama",
      "code": "PA",
      "callingCode": "+507",
      "flag": "\u{1F1F5}\u{1F1E6}"
    },
    {
      "name": "Papua New Guinea",
      "code": "PG",
      "callingCode": "+675",
      "flag": "\u{1F1F5}\u{1F1EC}"
    },
    {
      "name": "Paraguay",
      "code": "PY",
      "callingCode": "+595",
      "flag": "\u{1F1F5}\u{1F1F9}"
    },
    {
      "name": "Peru",
      "code": "PE",
      "callingCode": "+51",
      "flag": "\u{1F1F5}\u{1F1EA}"
    },
    {
      "name": "Philippines",
      "code": "PH",
      "callingCode": "+63",
      "flag": "\u{1F1F5}\u{1F1ED}"
    },
    {
      "name": "Poland",
      "code": "PL",
      "callingCode": "+48",
      "flag": "\u{1F1F5}\u{1F1F1}"
    },
    {
      "name": "Portugal",
      "code": "PT",
      "callingCode": "+351",
      "flag": "\u{1F1F5}\u{1F1F9}"
    },
    {
      "name": "Puerto Rico",
      "code": "PR",
      "callingCode": "+1-787",
      "flag": "\u{1F1F5}\u{1F1F7}"
    },
    {
      "name": "Qatar",
      "code": "QA",
      "callingCode": "+974",
      "flag": "\u{1F1F6}\u{1F1E6}" // Qatar
    },
    {
      "name": "Romania",
      "code": "RO",
      "callingCode": "+40",
      "flag": "\u{1F1F7}\u{1F1F4}"
    },
    {
      "name": "Russia",
      "code": "RU",
      "callingCode": "+7",
      "flag": "\u{1F1F7}\u{1F1FA}"
    },
    {
      "name": "Saint Kitts and Nevis",
      "code": "KN",
      "callingCode": "+1-869",
      "flag": "\u{1F1F0}\u{1F1F3}"
    },
    {
      "name": "Saint Lucia",
      "code": "LC",
      "callingCode": "+1-758",
      "flag": "\u{1F1F1}\u{1F1E8}"
    },
    {
      "name": "Saint Vincent and the Grenadines",
      "code": "VC",
      "callingCode": "+1-784",
      "flag": "\u{1F1FB}\u{1F1E8}"
    },
    {
      "name": "Samoa",
      "code": "WS",
      "callingCode": "+685",
      "flag": "\u{1F1FC}\u{1F1F8}"
    },
    {
      "name": "San Marino",
      "code": "SM",
      "callingCode": "+378",
      "flag": "\u{1F1F8}\u{1F1F2}"
    },
    {
      "name": "Sao Tome and Principe",
      "code": "ST",
      "callingCode": "+239",
      "flag": "\u{1F1F8}\u{1F1F9}"
    },
    {
      "name": "Saudi Arabia",
      "code": "SA",
      "callingCode": "+966",
      "flag": "\u{1F1F8}\u{1F1E6}"
    },
    {
      "name": "Senegal",
      "id": 94,
      "code": "SN",
      "callingCode": "+221",
      "flag": "\u{1F1F8}\u{1F1F3}"
    },
    {
      "name": "Serbia",
      "code": "RS",
      "callingCode": "+381",
      "flag": "\u{1F1F8}\u{1F1F7}"
    },
    {
      "name": "Seychelles",
      "code": "SC",
      "callingCode": "+248",
      "flag": "\u{1F1F8}\u{1F1E8}"
    },
    {
      "name": "Singapore",
      "code": "SG",
      "callingCode": "+65",
      "flag": "\u{1F1F8}\u{1F1EC}"
    },
    {
      "name": "Slovakia",
      "code": "SK",
      "callingCode": "+421",
      "flag": "\u{1F1F8}\u{1F1F0}"
    },
    {
      "name": "Slovenia",
      "code": "SI",
      "callingCode": "+386",
      "flag": "\u{1F1F8}\u{1F1EE}"
    },
    {
      "name": "Solomon Islands",
      "code": "SB",
      "callingCode": "+677",
      "flag": "\u{1F1F8}\u{1F1E7}"
    },
    {
      "name": "Somalia",
      "id": 101,
      "code": "SO",
      "callingCode": "+252",
      "flag": "\u{1F1F8}\u{1F1F4}"
    },
    {
      "name": "South Africa",
      "code": "ZA",
      "callingCode": "+27",
      "flag": "\u{1F1FF}\u{1F1E6}"
    },
    {
      "name": "South Korea",
      "code": "KR",
      "callingCode": "+82",
      "flag": "\u{1F1F0}\u{1F1F7}"
    },
    {
      "name": "Spain",
      "code": "ES",
      "callingCode": "+34",
      "flag": "\u{1F1EA}\u{1F1F8}"
    },
    {
      "name": "Sri Lanka",
      "code": "LK",
      "callingCode": "+94",
      "flag": "\u{1F1F1}\u{1F1F0}"
    },
    {
      "name": "Sudan",
      "id": 102,
      "code": "SD",
      "callingCode": "+249",
      "flag": "\u{1F1F8}\u{1F1E9}"
    },
    {
      "name": "Suriname",
      "code": "SR",
      "callingCode": "+597",
      "flag": "\u{1F1F8}\u{1F1F7}"
    },
    {
      "name": "Sweden",
      "code": "SE",
      "callingCode": "+46",
      "flag": "\u{1F1F8}\u{1F1EC}"
    },
    {
      "name": "Switzerland",
      "code": "CH",
      "callingCode": "+41",
      "flag": "\u{1F1E8}\u{1F1ED}"
    },
    {
      "name": "Taiwan",
      "code": "TW",
      "callingCode": "+886",
      "flag": "\u{1F1F9}\u{1F1FC}"
    },
    {
      "name": "Tajikistan",
      "id": 75,
      "code": "TJ",
      "callingCode": "+992",
      "flag": "\u{1F1F9}\u{1F1EF}"
    },
    {
      "name": "Tanzania",
      "id": 99,
      "code": "TZ",
      "callingCode": "+255",
      "flag": "\u{1F1F9}\u{1F1FF}"
    },
    {
      "name": "Thailand",
      "code": "TH",
      "callingCode": "+66",
      "flag": "\u{1F1F9}\u{1F1F2}"
    },
    {
      "name": "Timor-Leste",
      "id": 84,
      "code": "TL",
      "callingCode": "+670",
      "flag": "\u{1F1F9}\u{1F1F1}"
    },
    {
      "name": "Togo",
      "code": "TG",
      "callingCode": "+228",
      "flag": "\u{1F1F9}\u{1F1EC}"
    },
    {
      "name": "Tokelau",
      "code": "TK",
      "callingCode": "+690",
      "flag": "\u{1F1F9}\u{1F1F0}"
    },
    {
      "name": "Trinidad and Tobago",
      "code": "TT",
      "callingCode": "+1-868",
      "flag": "\u{1F1F9}\u{1F1F9}"
    },
    {
      "name": "Tunisia",
      "code": "TN",
      "callingCode": "+216",
      "flag": "\u{1F1F9}\u{1F1F3}"
    },
    {
      "name": "Turkey",
      "code": "TR",
      "callingCode": "+90",
      "flag": "\u{1F1F9}\u{1F1F7}"
    },
    {
      "name": "Turkmenistan",
      "id": 74,
      "code": "TM",
      "callingCode": "+993",
      "flag": "\u{1F1F9}\u{1F1F2}"
    },
    {
      "name": "Tuvalu",
      "code": "TV",
      "callingCode": "+688",
      "flag": "\u{1F1F9}\u{1F1FB}"
    },
    {
      "name": "Uganda",
      "id": 98,
      "code": "UG",
      "callingCode": "+256",
      "flag": "\u{1F1FA}\u{1F1EC}"
    },
    {
      "name": "Ukraine",
      "id": 63,
      "code": "UA",
      "callingCode": "+380",
      "flag": "\u{1F1FA}\u{1F1E6}"
    },
    {
      "name": "United Arab Emirates",
      "code": "AE",
      "callingCode": "+971",
      "flag": "\u{1F1E6}\u{1F1EA}"
    },
    {
      "name": "United Kingdom",
      "code": "GB",
      "callingCode": "+44",
      "flag": "\u{1F1EC}\u{1F1E7}"
    },
    {
      "name": "United States",
      "code": "US",
      "callingCode": "+1",
      "flag": "\u{1F1FA}\u{1F1F8}"
    },
    {
      "name": "Uruguay",
      "code": "UY",
      "callingCode": "+598",
      "flag": "\u{1F1FA}\u{1F1F8}"
    },
    {
      "name": "Uzbekistan",
      "id": 72,
      "code": "UZ",
      "callingCode": "+998",
      "flag": "\u{1F1FA}\u{1F1FF}"
    },
    {
      "name": "Vanuatu",
      "code": "VU",
      "callingCode": "+678",
      "flag": "\u{1F1FB}\u{1F1F0}"
    },
    {
      "name": "Vatican City",
      "code": "VA",
      "callingCode": "+379",
      "flag": "\u{1F1FB}\u{1F1E8}"
    },
    {
      "name": "Venezuela",
      "code": "VE",
      "callingCode": "+58",
      "flag": "\u{1F1FB}\u{1F1EA}"
    },
    {
      "name": "Vietnam",
      "code": "VN",
      "callingCode": "+84",
      "flag": "\u{1F1FB}\u{1F1F3}"
    },
    {
      "name": "Zambia",
      "id": 86,
      "code": "ZM",
      "callingCode": "+260",
      "flag": "\u{1F1FF}\u{1F1F2}"
    },
    {
      "name": "Zimbabwe",
      "id": 87,
      "code": "ZW",
      "callingCode": "+263",
      "flag": "\u{1F1FF}\u{1F1FC}"
    }
  ];
}
