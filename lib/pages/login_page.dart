import 'package:alma/blocs/login_bloc.dart';
import 'package:alma/pages/home_page/home_page.dart';
import 'package:alma/utils/colors.dart';
import 'package:alma/utils/nav.dart';
import 'package:alma/widgets/custom_button.dart';
import 'package:alma/widgets/custom_text.dart';
import 'package:alma/widgets/top_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AlmaColors.blueAlma,
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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

class FormLogin extends StatefulWidget {
  const FormLogin({Key? key}) : super(key: key);
  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  final _formKey = GlobalKey<FormState>();
  final _ctrlEmail = TextEditingController();
  final _ctrlPassword = TextEditingController();
  final _bloc = LoginBloc();

  @override
  void dispose() {
    super.dispose();
    _bloc.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(52.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomText(
                  text: 'Email',
                  color: AlmaColors.whiteAlma,
                ),
                const SizedBox(height: 10),
                Container(
                  color: AlmaColors.whiteAlma,
                  child: Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: TextFormField(
                      controller: _ctrlEmail,
                      validator: (s) => _validateEmail(s!),
                      decoration: const InputDecoration(
                        hintText: 'exemplo@email.com',
                        border: InputBorder.none,
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomText(
                  text: 'Senha',
                  color: AlmaColors.whiteAlma,
                ),
                const SizedBox(height: 10),
                Container(
                  color: AlmaColors.whiteAlma,
                  child: Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: TextFormField(
                      controller: _ctrlPassword,
                      validator: (s) => _validatePassword(s!),
                      decoration: const InputDecoration(
                        hintText: '************',
                        border: InputBorder.none,
                        suffixIcon:
                            Icon(Icons.lock, color: AlmaColors.blueAlma),
                      ),
                      keyboardType: TextInputType.text,
                      obscureText: true,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            StreamBuilder<bool>(
              stream: _bloc.streamController.stream,
              initialData: false,
              builder: (context, snapshot) {
                return CustomButton(
                  onPressed: () {
                    _login(context);
                  },
                  showProgress: snapshot.data!,
                  child: const CustomText(text: 'Login'),
                  color: AlmaColors.darkBlueAlma,
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const CustomText(
                    text: 'Não tem uma conta?',
                    color: AlmaColors.whiteAlma,
                    fontSize: 14,
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    child: const CustomText(
                      text: 'Esqueceu sua senha?',
                      color: AlmaColors.whiteAlma,
                      fontSize: 14,
                      textAlign: TextAlign.end,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  _validateEmail(String text) {
    if (text.isEmpty) {
      return "Digite o email";
    }
    return null;
  }

  _validatePassword(String text) {
    if (text.isEmpty) {
      return "Digite a senha";
    }
    return null;
  }

  _login(BuildContext context) async {
    bool formOk = _formKey.currentState!.validate();

    if (!formOk) {
      return;
    }

    String email = _ctrlEmail.text;
    String password = _ctrlPassword.text;

    String token = await _bloc.login(email, password);

    if (token.isNotEmpty) {
      pushReplace(context, const HomePage(), replace: true);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Email ou senha inválidos!'),
        ),
      );
    }
  }
}
