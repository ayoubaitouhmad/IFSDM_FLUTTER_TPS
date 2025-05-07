import 'package:flutter/material.dart';
import '../models/user.dart';
import '../services/SharedPrefsService.dart';
import '../services/UserService.dart';
import 'login_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final UserService _userService = UserService();
  bool _isAuthenticated = false;
  User? _currentUser;

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  void _loadUserData() async {
    final loggedIn = await SharedPrefsService.isLoggedIn();
    if (loggedIn) {
      final email = await SharedPrefsService.getUserEmail(); // <-- doit être async !
      final user = _userService.findByEmail(email!);
      setState(() {
        _isAuthenticated = true;
        _currentUser = user;
      });
    }
  }

  void _handleLogin(User user) async {
    await SharedPrefsService.saveUser(name: user.name, email: user.email);
    setState(() {
      _isAuthenticated = true;
      _currentUser = user;
    });
  }

  void _handleLogout() async {
    await SharedPrefsService.clearUser();
    setState(() {
      _isAuthenticated = false;
      _currentUser = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _isAuthenticated ? 'Bienvenue ${_currentUser!.name}' : 'Accueil',
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            SizedBox(
              height: 190.0,
              child: DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child:
                    _isAuthenticated
                        ? UserInfos(user: _currentUser!)
                        : Text(
                          'Menu',
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),
              ),
            ),
            _isAuthenticated
                ? ListTile(
                  leading: Icon(Icons.logout),
                  title: Text('Logout'),
                  onTap: _handleLogout,
                )
                : ListTile(
                  leading: Icon(Icons.login),
                  title: Text('Login'),
                  onTap: () async {
                    final user = await Navigator.push<User>(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(onLogin: _handleLogin),
                      ),
                    );
                  },
                ),
          ],
        ),
      ),
      body: Center(
        child:
            _isAuthenticated
                ? Text('Vous êtes connecté.')
                : Text('Veuillez vous connecter.'),
      ),
    );
  }
}

class UserInfos extends StatelessWidget {
  User? _user;

  UserInfos({super.key, required User user}) : _user = user;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage("./assets/images/${}.jpg"),
        ),
        SizedBox(height: 12),
        Text(_user!.name, style: TextStyle(color: Colors.white, fontSize: 18)),
        Text(
          _user!.email,
          style: TextStyle(color: Colors.white70, fontSize: 14),
        ),
      ],
    );
  }
}
