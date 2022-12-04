import 'package:alma/src/pages/home_page.dart';
import 'package:alma/src/utils/colors.dart';
import 'package:alma/src/widgets/custom_button.dart';
import 'package:alma/src/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class FinishedPage extends StatelessWidget {
  const FinishedPage({Key? key}) : super(key: key);

  static const route = '/finished';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomText(
          text: 'Bloco concluído!',
          fontFamily: "Montserrat",
          fontSize: 18,
          fontWeight: FontWeight.w900,
          color: Colors.white,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 61, bottom: 8),
        height: MediaQuery.of(context).size.height * 0.85,
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: MediaQuery.of(context).size.width),
                const CustomText(
                  text: 'Praticando o alfabeto',
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Montserrat',
                  fontSize: 24,
                ),
                const SizedBox(height: 32),
                const CustomText(
                  text: 'Parabéns por concluir mais uma etapa!',
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Montserrat',
                  fontSize: 18,
                ),
                const SizedBox(height: 20),
                LottieBuilder.asset(
                  'assets/lottie/check-class.json',
                  width: 300,
                  height: 300,
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              child: Column(
                children: [
                  _buildBottomNextButton(context),
                  const SizedBox(height: 18),
                  _buildBottomHomeButton(context),
                  const SizedBox(height: 18),
                  _buildProgressBar(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomNextButton(BuildContext context) {
    return CustomButton(
      onPressed: () {},
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: const [
            Center(child: Text("PRÓXIMO")),
            Positioned(
              top: 0,
              bottom: 0,
              right: 24,
              child: Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
      showProgress: false,
    );
  }

  Widget _buildBottomHomeButton(BuildContext context) {
    return CustomButton(
      onPressed: () => Navigator.pushNamedAndRemoveUntil(context, HomePage.route, (_) => false),
      color: AlmaColors.darkBlueAlma,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: const [
            Center(child: Text("VOLTAR AO INÍCIO")),
            Positioned(
              top: 0,
              bottom: 0,
              left: 24,
              child: Icon(
                Icons.arrow_back_ios_rounded,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
      showProgress: false,
    );
  }

  SizedBox _buildProgressBar(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(90),
        child: const LinearProgressIndicator(
          backgroundColor: Colors.white,
          color: AlmaColors.lightGreenAlma,
          minHeight: 12,
          value: 1.0,
          semanticsValue: "100",
        ),
      ),
    );
  }
}
