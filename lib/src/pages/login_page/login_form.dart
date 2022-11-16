import 'package:alma/src/blocs/application.dart';
import 'package:alma/src/pages/home_page/home_page.dart';
import 'package:alma/src/pages/signup.dart';
import 'package:alma/src/utils/colors.dart';
import 'package:alma/src/utils/nav.dart';
import 'package:alma/src/utils/snackbar.dart';
import 'package:alma/src/widgets/custom_button.dart';
import 'package:alma/src/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FormLogin extends StatefulWidget {
  const FormLogin({Key? key}) : super(key: key);
  @override
  State<FormLogin> createState() => _FormApplicationState();
}

class _FormApplicationState extends State<FormLogin> {
  final _formKey = GlobalKey<FormState>();
  final _ctrlEmail = TextEditingController();
  final _ctrlPassword = TextEditingController();
  bool status = false;

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
                        suffixIcon: Icon(Icons.lock, color: AlmaColors.blueAlma),
                      ),
                      keyboardType: TextInputType.text,
                      obscureText: true,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            BlocListener<ApplicationBloc, ApplicationState>(
              listener: (context, state) {
                if (state is Success) {
                  pushReplace(context, const HomePage(), replace: true);
                }

                if (state is Error) {
                  buttonStatus(false);
                  showSnackbar(context, state.message);
                }
              },
              child: CustomButton(
                onPressed: () {
                  _login(context);
                },
                showProgress: status,
                child: const CustomText(text: 'Login'),
                color: AlmaColors.darkBlueAlma,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () => push(context, const SignupPage()),
                  child: const CustomText(
                    text: 'Não tem uma conta?',
                    color: AlmaColors.whiteAlma,
                    fontSize: 14,
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      pushReplace(context, const HomePage(), replace: true);
                    },
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

    BlocProvider.of<ApplicationBloc>(context).add(Login(email, password));
    buttonStatus(true);
  }

  void buttonStatus(bool status) {
    setState(() {
      this.status = status;
    });
  }
}
