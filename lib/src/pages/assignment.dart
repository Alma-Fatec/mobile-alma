import 'package:alma/src/blocs/application_bloc/application_bloc.dart';
import 'package:alma/src/blocs/assignment_bloc/assignment_bloc.dart';
import 'package:alma/src/blocs/navigation_bloc/navigation_bloc.dart';
import 'package:alma/src/models/assignment/assignment.dart';
import 'package:alma/src/pages/assignment_page/body_assignment_page.dart';
import 'package:alma/src/utils/colors.dart';
import 'package:alma/src/utils/snackbar.dart';
import 'package:alma/src/widgets/custom_button.dart';
import 'package:alma/src/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AssignmentPage extends StatefulWidget {
  const AssignmentPage({Key? key, required this.assignment}) : super(key: key);

  static const String route = '/assignment';
  
  final Assignment assignment;

  @override
  State<AssignmentPage> createState() => _AssignmentPageState();
}

class _AssignmentPageState extends State<AssignmentPage> {
  bool isCorrectAwnser = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back, size: 32),
        ),
        title: const CustomText(
          text: 'Voltar',
          fontFamily: "Montserrat",
          fontSize: 18,
          fontWeight: FontWeight.w900,
          color: Colors.white,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.refresh, size: 32),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 45, bottom: 8),
        height: MediaQuery.of(context).size.height * 0.85,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: BodyAssignmentPage(
                assignment: widget.assignment,
                onAnswerUpdated: (answer) => isCorrectAwnser = answer ?? false,
              ),
            ),
            Positioned(
              bottom: 0,
              child: Column(
                children: [
                  _buildBottomButton(context),
                  const SizedBox(height: 18),
                  _buildProgressBar(context),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildBottomButton(BuildContext context) {
    return BlocListener<AssignmentBloc, AssignmentState>(
      listenWhen: (previous, current) => previous != current,
      listener: (context, state) {
        if (state is Checked) {
          final blockId = context.read<ApplicationBloc>().state.currentBlock?.id;
          context.read<NavigationBloc>().add(LoadResults(blockId: blockId ?? ''));
        }
      },
      child: CustomButton(
        onPressed: () {
          if (isCorrectAwnser) {
            context.read<AssignmentBloc>().add(CheckAsDone(assignmentId: widget.assignment.id!));
            return;
          }

          showSnackbar(context, 'Resposta errada');
        },
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: const [
              Center(child: Text("AVANÇAR")),
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
      ),
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
          value: 0.3,
          semanticsValue: "30",
        ),
      ),
    );
  }
}
