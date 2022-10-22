import 'package:alma/src/blocs/application.dart';
import 'package:alma/src/models/models.dart';
import 'package:alma/src/utils/colors.dart';
import 'package:alma/src/utils/snackbar.dart';
import 'package:alma/src/widgets/custom_button.dart';
import 'package:alma/src/widgets/custom_text.dart';
import 'package:alma/src/widgets/custom_text_form_field.dart';
import 'package:cpf_cnpj_validator/cpf_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

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
  final TextEditingController? checkPasswordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final MaskTextInputFormatter phoneInputFormatter = MaskTextInputFormatter(
    mask: '(##) #####-####'
  );
  bool status = false;

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
            validator: (value) => _checkValueIsNotEmpty(value, "Digite seu nome completo"),
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
              MaskTextInputFormatter(mask: '###.###.###-##'),
            ],
          ),
          const SizedBox(height: 18),
          CustomTextFormField(
            label: "Telefone",
            hint: "(XX) 00000-0000",
            textEditingController: phoneController,
            validator: (value) => _checkValueIsNotEmpty(value, "Digite seu telefone"),
            keyboardType: TextInputType.phone,
            inputFormatters: [phoneInputFormatter],
          ),
          const SizedBox(height: 18),
          CustomTextFormField(
            label: "Email",
            hint: "joao@email.com.br",
            textEditingController: emailController,
            validator: (value) => _checkValueIsNotEmpty(value, "Digite seu email"),
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 18),
          CustomTextFormField(
            label: "Senha",
            hint: "********",
            textEditingController: passwordController,
            validator: (value) => _checkValueIsNotEmpty(value, "Digite sua senha"),
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
            validator: (value) => _checkValueIsNotEmpty(value, "Digite sua senha"),
            keyboardType: TextInputType.text,
            suffixIcon: const Icon(
              Icons.lock,
              color: AlmaColors.blueAlma,
              size: 24,
            ),
            obscureText: true,
          ),
          const SizedBox(height: 18),
          BlocListener<ApplicationBloc, ApplicationState>(
            listener: (context, state) {
              if (state is Success) {
                Navigator.of(context).pop();
                showSnackbar(context, "Cadastro realizado com sucesso");
              }

              if (state is Error) {
                showSnackbar(context, state.message);
                buttonStatus(false);
              }
            },
            child: CustomButton(
              onPressed: () => _sigup(context),
              child: const CustomText(text: "Cadastrar"),
              showProgress: status,
              color: AlmaColors.darkBlueAlma,
            ),
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
      buttonStatus(false);
      return;
    }

    if (passwordController!.text != checkPasswordController!.text) {
      showSnackbar(context, "As senhas devem ser iguais");
      return;
    }

    User user = _fillUserModel();
    BlocProvider.of<ApplicationBloc>(context).add(Signup(user: user));
    buttonStatus(true);
  }

  User _fillUserModel() {
    return User(
      id: "",
      name: nameController!.text,
      socialName: socialnameController!.text,
      email: emailController!.text,
      password: passwordController!.text,
      phone: phoneInputFormatter.getUnmaskedText(),
      cpf: cpfController!.text,
    );
  }

  void buttonStatus(bool status) {
    setState(() {
      this.status = status;
    });
  }
}
