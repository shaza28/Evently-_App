import 'package:intl/intl.dart';

extension DateExtention on DateTime{

  String get viewMonthName{
    DateFormat formatter=DateFormat("MMMM");// full name
    //Nev       //MMM //three letters
    return formatter.format(this);
  }
  String get viewDayNumber{
     return day.toString();
  }
}