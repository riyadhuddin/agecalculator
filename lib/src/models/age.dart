class Age {
  List<String> findAge(int currentDate, int currentMonth, int currentYear,
      int birthDate, int birthMonth, int birthYear)  {
    List<int> month = [31, 28, 31, 30, 31, 30,
      31, 31, 30, 31, 30, 31];
    if (birthDate > currentDate)
    {
      currentMonth = currentMonth - 1;

      currentDate = currentDate
          + month[birthMonth - 1];
    }
    if (birthMonth > currentMonth)
    {
      currentYear = currentYear - 1;
      currentMonth = currentMonth + 12;
    }
    // calculate date, month, year
    String calculatedDate = (currentDate
        - birthDate).toString();

    String calculatedMonth = (currentMonth
        - birthMonth).toString();

    String calculatedYear = (currentYear
        - birthYear).toString();

    return [calculatedYear,calculatedMonth,calculatedDate,];
  }
/*final int currentDate;
  final int currentMonth;
  final int currentYear;
  final int birthDate;
  final int birthMonth;
  final int birthYear;
  final List<int> month = [31, 28, 31, 30, 31, 30,
    31, 31, 30, 31, 30, 31];

  Age(
      {this.currentDate,
      this.currentMonth,
      this.currentYear,
      this.birthDate,
      this.birthMonth,
      this.birthYear});*/

}
