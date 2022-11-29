import 'package:alma/src/models/models.dart';
import 'package:alma/src/pages/task.dart';
import 'package:alma/src/utils/colors.dart';
import 'package:alma/src/utils/nav.dart';
import 'package:alma/src/widgets/custom_button.dart';
import 'package:alma/src/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class ClassroomPage extends StatelessWidget {
  final ClassRoom classRoom;

  const ClassroomPage({
    Key? key,
    required this.classRoom,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AlmaColors.grayBackgroundAlma,
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
          fit: StackFit.expand,
          children: [
            SingleChildScrollView(
              child: ClassroomBody(
                classRoom: classRoom,
              ),
            ),
            Positioned(
              bottom: 0,
              child: Column(
                children: [
                  CustomButton(
                    onPressed: () => push(context, TaskPage(type: 'choose')),
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
                  const SizedBox(height: 18),
                  SizedBox(
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
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ClassroomBody extends StatelessWidget {
  final ClassRoom classRoom;

  const ClassroomBody({
    Key? key,
    required this.classRoom,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: classRoom.name!,
          fontFamily: "Montserrat",
          fontSize: 18,
          fontWeight: FontWeight.w900,
          color: Colors.black,
        ),
        const SizedBox(height: 8),
        CustomText(
          text: classRoom.description!,
          fontFamily: "Montserrat",
          fontSize: 18,
          fontWeight: FontWeight.w600,
          textAlign: TextAlign.start,
        ),
        const SizedBox(height: 8),
        Container(
          margin: const EdgeInsets.only(top: 5),
          constraints: const BoxConstraints(
            minWidth: 370,
            minHeight: 280,
          ),
          decoration:
              BoxDecoration(color: AlmaColors.blueAlma, borderRadius: BorderRadius.circular(10), boxShadow: const [
            BoxShadow(
              color: Colors.black54,
              blurRadius: 15.0,
              offset: Offset(0.0, 0.75),
            )
          ]),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: classRoom.cover != null
                ? Image.network(classRoom.cover!, width: 370, fit: BoxFit.fill)
                : Image.asset('assets/images/placeholder-image.png', fit: BoxFit.fill, width: 370),
          ),
        ),
      ],
    );
  }
}
