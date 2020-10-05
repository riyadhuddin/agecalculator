import 'package:agecalculator/src/models/age.dart';

class AgeTest {
  int currentDate;
  int currentMonth;
  int currentYear;

  // birth dd// mm// yyyy
  int birthDate;
  int birthMonth;
  int birthYear;
  Age age = new Age();

  List<String> testAge() {
    return age.findAge(currentDate = 05, currentMonth = 10,
        currentYear = 2020, birthDate = 12, birthMonth = 10, birthYear = 1995);
  }

}
