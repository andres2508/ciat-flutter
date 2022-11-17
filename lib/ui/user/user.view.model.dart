import 'package:ciat/model/user/user.repository.dart';
import 'package:ciat/model/user/users.model.dart';
import 'package:ciat/ui/common/base.view.model.dart';

class UserViewModel extends BaseViewModel {
  final UserRepository _repository = UserRepository.repository;

  List<User> _users = [];

  get users => _users;

  Future<void> loadUsers() async {
    this._users = await this._repository.findAll();
    notifyUI();
    notifyListeners();
  }

  User createNewUser() {
    return User(users.length, '', '');
  }

  Future<void> saveUser(User user) async {
    await this._repository.save( user );
    await this.loadUsers();
  }
}