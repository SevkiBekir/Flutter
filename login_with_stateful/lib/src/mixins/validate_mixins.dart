/**
 * @author SevkiBekir
 * @email bekirsevki@gmail.com
 * @create date 2018-10-14 15:54:04
 * @modify date 2018-10-14 15:54:04
 * @desc reuse of validation with the help of mixins
*/

class ValidateMixin {
  String emailValidation(String value) {
    if (!value.contains("@")) return "Please enter a valid email address!";

    return null;
  }

  String passwordValidation(String value) {
    if (value.length<4) return "Please enter at least 4 characters as passwords!";

    return null;
  }
}
