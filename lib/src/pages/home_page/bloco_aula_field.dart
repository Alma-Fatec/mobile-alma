import 'package:alma/src/blocs/classblock_bloc/classblock_bloc.dart';
import 'package:alma/src/blocs/navigation_bloc/navigation_bloc.dart' as nav;
import 'package:alma/src/models/class_block/class_block.dart';
import 'package:alma/src/utils/colors.dart';
import 'package:alma/src/widgets/block_navigation_listener.dart';
import 'package:alma/src/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocoAulaField extends StatefulWidget {
  const BlocoAulaField({Key? key}) : super(key: key);

  @override
  State<BlocoAulaField> createState() => _BlocoAulaFieldState();
}

class _BlocoAulaFieldState extends State<BlocoAulaField> {
  late ClassBlockBloc _classBlockBloc;

  @override
  void initState() {
    super.initState();

    _classBlockBloc = context.read<ClassBlockBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClassBlockBloc, ClassblockState>(
      bloc: _classBlockBloc,
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
            BlockNavigationListener(
              child: InkWell(
                onTap: () {
                  final classBlockId = state.currentBlock?.id ?? '';
                  if (classBlockId != '') {
                    context.read<nav.NavigationBloc>().add(nav.Initialise(blockId: classBlockId));
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
                  child: state.isLoading!
                      ? _showClassblock()
                      : state.isError!
                          ? const SizedBox(width: 24, height: 24, child: CircularProgressIndicator())
                          : _showClassblock(state.currentBlock),
                ),
              ),
            ),
            _progressTitle(),
            _showProgress(),
          ],
        );
      },
    );
  }

  Column _showClassblock([ClassBlock? classBlock]) {
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
