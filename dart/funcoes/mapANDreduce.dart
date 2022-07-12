main() {
  var students = [
    {"name": "Vyctao", "grade": 9.1 },
    {"name": "Tutu", "grade": 6.9 },
    {"name": "Joujou", "grade": 7.1 },
    {"name": "Teteu", "grade": 9.9 },
  ];

  var sumOfGrades = students
  .map((element) => element["grade"] as double)
  .reduce((acc, element) => acc + element);

  print(sumOfGrades);
}