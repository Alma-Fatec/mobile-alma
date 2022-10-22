import 'package:alma/blocs/classblock.dart';
import 'package:alma/models/class_block/class_block.dart';
import 'package:alma/pages/classroom_page/clasroom_page.dart';
import 'package:alma/services/classblock_service.dart';
import 'package:alma/utils/colors.dart';
import 'package:alma/utils/nav.dart';
import 'package:alma/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class BlocoAulaField extends StatelessWidget {
  BlocoAulaField({Key? key}) : super(key: key);
  late ClassBlock classBlock;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (oontext) => ClassBlockBloc(classblockService: Provider.of<ClassblockService>(context, listen: false)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomText(
            text: "Bloco de aula:",
            fontFamily: "Montserrat",
            fontSize: 16,
            fontWeight: FontWeight.w900,
            color: AlmaColors.secondaryTextColorAlma,
          ),
          InkWell(
            onTap: () => push(context, ClassroomPage(classRoom: classBlock.classroom![0])),
            child: Container(
              margin: const EdgeInsets.only(top: 5),
              constraints: const BoxConstraints(
                minWidth: 370,
                minHeight: 280,
              ),
              decoration: BoxDecoration(
                color: AlmaColors.blueAlma,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black54,
                    blurRadius: 15.0,
                    offset: Offset(0.0, 0.75),
                  )
                ],
              ),
              child: BlocBuilder<ClassBlockBloc, ClassblockState>(
                builder: (BuildContext context, ClassblockState state) {
                  if (state is Loaded) {
                    _showClassblock(state);
                  }

                  return const CircularProgressIndicator();
                },
              ),
            ),
          ),
          _progressTitle(),
          _showProgress(),
        ],
      ),
    );
  }

  Column _showClassblock(Loaded loaded) {
    classBlock = loaded.classBlock;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
          ),
          child: Image.network(
            classBlock.file!,
            width: 370,
            fit: BoxFit.fill,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 8, left: 8, bottom: 8),
          child: CustomText(
            text: classBlock.title!,
            fontFamily: "Montserrat",
            fontSize: 20,
            fontWeight: FontWeight.w900,
            color: AlmaColors.whiteAlma,
          ),
        ),
      ],
    );
  }

  Container _progressTitle() {
    return Container(
      margin: const EdgeInsets.only(top: 8, bottom: 4),
      child: const CustomText(
        text: "Progresso",
        fontFamily: "Montserrat",
        fontSize: 14,
        fontWeight: FontWeight.w900,
        color: AlmaColors.secondaryTextColorAlma,
      ),
    );
  }

  Row _showProgress() {
    return Row(
      children: [
        SizedBox(
          width: 128,
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
        ),
        const SizedBox(width: 4),
        const CustomText(
          text: "30%",
          fontFamily: "Montserrat",
          fontSize: 18,
          fontWeight: FontWeight.w900,
          color: AlmaColors.secondaryTextColorAlma,
        )
      ],
    );
  }
}
