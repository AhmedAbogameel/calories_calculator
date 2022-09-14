class HomeController {

  double calculateBMR({
    required bool isMale,
    required double height,
    required int weight,
    required int age,
  }) {
    late double bmr;
    if (!isMale) {
      bmr = 655.1 + (9.563 * weight) + (1.850 * height) - (4.676 * age);
    } else {
      bmr = 66.47 + (13.75 * weight) + (5.003 * height) - (6.755 * age);
    }
    return bmr;
  }

}
