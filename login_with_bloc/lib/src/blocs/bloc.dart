/**
 * @author SevkiBekir
 * @email bekirsevki@gmail.com
 * @create date 2018-10-22 12:20:07
 * @modify date 2018-10-22 12:20:07
 * @desc bloc class to communicate screens
*/
import 'dart:async';
import '../validators/validator.dart';
import 'package:rxdart/rxdart.dart';

class Bloc extends Object with Validate {
  // using dart lib
  // final _emailStreamController = StreamController<String>.broadcast();
  // final _passwordStreamController = StreamController<String>.broadcast();

  // using rxdart lib
  final _emailStreamController = BehaviorSubject<String>();
  final _passwordStreamController = BehaviorSubject<String>();

  // Add to stream
  Stream<String> get email =>
      _emailStreamController.stream.transform(emailValidate);
  Stream<String> get password =>
      _passwordStreamController.stream.transform(passwordValidate);

  Stream<bool> get loginIsValid => Observable.combineLatest2(email, password, (email, password) => true);

  // Change data
  Function(String) get changeEmail => _emailStreamController.sink.add;
  Function(String) get changePassword => _passwordStreamController.sink.add;

  dispose() {
    _emailStreamController.close();
    _passwordStreamController.close();
  }

  login(){
    final String email = _emailStreamController.value;
    final String password = _passwordStreamController.value;

    print("Email:$email");
    print("Password:$password");
  }
}

// //Manage all bloc via a global in a final varible
// final bloc = new Bloc();
