/**
 * @author SevkiBekir
 * @email bekirsevki@gmail.com
 * @create date 2018-10-22 12:31:56
 * @modify date 2018-10-22 12:31:56
 * @desc validate email or password
*/

import "dart:async";

class Validate {
  final emailValidate = StreamTransformer<String, String>.fromHandlers(
    handleData: (email, sink) {
      if (email.contains("@")) {
        sink.add(email);
      } else {
        sink.addError("Enter a valid email address!");
      }
    },
  );

  final passwordValidate = StreamTransformer<String, String>.fromHandlers(
    handleData: (password, sink) {
      if (password.length >= 4) {
        sink.add(password);
      } else {
        sink.addError("Password must be at least 4 characters!");
      }
    },
  );
}
