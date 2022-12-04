import 'package:alma/src/pages/login_page/login_form.dart';
import 'package:alma/src/utils/colors.dart';
import 'package:alma/src/widgets/top_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  static const route = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AlmaColors.blueAlma,
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: const [
          TopPage(),
          FormLogin(),
        ],
      ),
    );
  }
}
