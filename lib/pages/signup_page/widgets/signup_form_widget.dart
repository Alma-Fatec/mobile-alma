import 'package:alma/blocs/signup_bloc.dart';
import 'package:alma/models/user/User.dart';
import 'package:alma/utils/colors.dart';
import 'package:alma/utils/snackbar.dart';
import 'package:alma/widgets/custom_button.dart';
import 'package:alma/widgets/custom_text.dart';
import 'package:alma/widgets/custom_text_form_field.dart';
import 'package:cpf_cnpj_validator/cpf_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({Key? key}) : super(key: key);

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final TextEditingController? nameController = TextEditingController();
  final TextEditingController? socialnameController = TextEditingController();
  final TextEditingController? cpfController = TextEditingController();
  final TextEditingController? phoneController = TextEditingController();
  final TextEditingController? emailController = TextEditingController();
  final TextEditingController? passwordController = TextEditingController();
  final TextEditingController? checkPasswordController =
      TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final SignupBloc _bloc = SignupBloc();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          const SizedBox(height: 32),
          CustomTextFormField(
            label: "Nome",
            hint: "João",
            textEditingController: nameController,
            validator: (value) =>
                _checkValueIsNotEmpty(value, "Digite seu nome completo"),
          ),
          const SizedBox(height: 18),
          CustomTextFormField(
            label: "Nome social",
            hint: "João",
            textEditingController: socialnameController,
          ),
          const SizedBox(height: 18),
          CustomTextFormField(
            label: "CPF",
            hint: "XXX.XXX.XXX-XX",
            textEditingController: cpfController,
            validator: _checkCpf,
            keyboardType: TextInputType.number,
            maxLength: 14,
            inputFormatters: [
              MaskedInputFormatter("000.000.000-00"),
            ],
          ),
          const SizedBox(height: 18),
          CustomTextFormField(
            label: "Telefone",
            hint: "+55 (XX) 00000-0000",
            textEditingController: phoneController,
            validator: (value) =>
                _checkValueIsNotEmpty(value, "Digite seu telefone"),
            keyboardType: TextInputType.phone,
            inputFormatters: [PhoneInputFormatter()],
          ),
          const SizedBox(height: 18),
          CustomTextFormField(
            label: "Email",
            hint: "joao@email.com.br",
            textEditingController: emailController,
            validator: (value) =>
                _checkValueIsNotEmpty(value, "Digite seu email"),
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 18),
          CustomTextFormField(
            label: "Senha",
            hint: "********",
            textEditingController: passwordController,
            validator: (value) =>
                _checkValueIsNotEmpty(value, "Digite sua senha"),
            keyboardType: TextInputType.text,
            suffixIcon: const Icon(
              Icons.lock,
              color: AlmaColors.blueAlma,
              size: 24,
            ),
            obscureText: true,
          ),
          const SizedBox(height: 18),
          CustomTextFormField(
            label: "Confirme sua senha",
            hint: "********",
            textEditingController: checkPasswordController,
            validator: (value) =>
                _checkValueIsNotEmpty(value, "Digite sua senha"),
            keyboardType: TextInputType.text,
            suffixIcon: const Icon(
              Icons.lock,
              color: AlmaColors.blueAlma,
              size: 24,
            ),
            obscureText: true,
          ),
          const SizedBox(height: 18),
          StreamBuilder<bool>(
            stream: _bloc.streamController.stream,
            initialData: false,
            builder: (context, snapshot) {
              return CustomButton(
                onPressed: () => _sigup(context),
                child: const CustomText(text: "Cadastrar"),
                showProgress: snapshot.data!,
                color: AlmaColors.darkBlueAlma,
              );
            },
          ),
          const SizedBox(height: 18),
        ],
      ),
    );
  }

  String? _checkValueIsNotEmpty(value, String msg) {
    if (value == null || value.isEmpty) {
      return msg;
    }
    return null;
  }

  String? _checkCpf(String? value) {
    if (value == null || value.isEmpty) {
      return "Digite seu CPF";
    }

    if (!CPFValidator.isValid(value)) {
      return "Digite um CPF válido";
    }

    return null;
  }

  _sigup(BuildContext context) async {
    bool formOk = _formKey.currentState!.validate();

    if (!formOk) {
      return;
    }

    if (passwordController!.text != checkPasswordController!.text) {
      showSnackbar(context, "As senhas devem ser iguais");
      return;
    }

    try {
      User user = _fillUserModel();
      await _bloc.signup(user);
      Navigator.of(context).pop();
      showSnackbar(context, "Cadastro realizado com sucesso");
    } on Exception catch (e) {
      showSnackbar(context, e.toString().replaceAll("Exception: ", ""));
    }
  }

  User _fillUserModel() {
    return User(
      id: "",
      name: nameController!.text,
      socialName: socialnameController!.text,
      email: emailController!.text,
      password: passwordController!.text,
      phone: phoneController!.text,
      cpf: cpfController!.text,
      isActive: true,
      createdAt: DateTime.now().toIso8601String(),
      updatedAt: DateTime.now().toIso8601String(),
    );
  }
}
