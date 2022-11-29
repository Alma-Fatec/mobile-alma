import 'package:alma/src/blocs/application_bloc/application_bloc.dart';
import 'package:alma/src/blocs/classblock_bloc/classblock_bloc.dart';
import 'package:alma/src/pages/classroom_page/clasroom_page.dart';
import 'package:alma/src/services/classblock_service.dart';
import 'package:alma/src/utils/colors.dart';
import 'package:alma/src/utils/nav.dart';
import 'package:alma/src/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class BlocoAulaField extends StatelessWidget {
  BlocoAulaField({Key? key}) : super(key: key);

  late ClassBlockBloc _bloc;

  @override
  Widget build(BuildContext context) {
    _bloc = ClassBlockBloc(classblockService: Provider.of<ClassblockService>(context, listen: false));

    return BlocConsumer<ClassBlockBloc, ClassblockState>(
        bloc: _bloc..add(LoadClassblockByUserId(userId: context.read<ApplicationBloc>().state.currentUser?.id)),
        listener: (context, state) {
          if (state is ClassRoomLoaded) {
            push(context, ClassroomPage(classRoom: state.classRoom));
          }
        },
        builder: (context, state) {
          return Column(
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
                onTap: () {
                  if (state is Loaded && state.classBlock.id != null) {
                    _bloc.add(LoadClassroomByBlockId(state.classBlock.id!));
                  }
                },
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
                  child: state is Loaded
                      ? _showClassblock(state)
                      : state is Error
                          ? _showClassblock()
                          : const SizedBox(width: 24, height: 24, child: CircularProgressIndicator()),
                ),
              ),
              _progressTitle(),
              _showProgress(),
            ],
          );
        });
  }

  Column _showClassblock([Loaded? loaded]) {
    final classBlock = loaded?.classBlock;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
          ),
          child: classBlock?.cover != null
              ? Image.network(classBlock!.cover!, width: 370, fit: BoxFit.fill)
              : Image.asset('assets/images/placeholder-image.png', fit: BoxFit.fill, width: 370),
        ),
        Container(
          margin: const EdgeInsets.only(top: 8, left: 8, bottom: 8),
          child: CustomText(
            text: classBlock?.title ?? 'Não encontrado',
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
