import 'package:ciat/ui/main.screen.dart';
import 'package:ciat/ui/platform/ciat.module.dart';
import 'package:ciat/ui/platform/router.model.dart';
import 'package:ciat/ui/user/user.form.screen.dart';

class MainModule extends CIATViewModule {
  @override
  List<CIATRoute> routes() {
    return [
      CIATRoute('home', (s) => (_) => MainScreen()),
      CIATRoute('form', (s) => (_) => UserFormScreen() )
    ];
  }

}