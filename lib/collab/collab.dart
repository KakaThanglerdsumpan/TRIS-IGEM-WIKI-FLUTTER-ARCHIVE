import 'package:flutter/material.dart';
import 'package:igem/modules/bottombar.dart';
import 'package:igem/modules/appbars.dart';
import 'package:igem/modules/project.dart';
import 'package:igem/modules/sidemenu.dart';
import 'package:igem/modules/titlescreen.dart';

class Collab extends StatelessWidget {
  const Collab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: const SideMenu(),
      body: ListView(
        children: const [
          TitleScreen(
            ovalMultiplier: 50,
            pageTitle: 'COLLABORATIONS',
          ),
          Project(
            projectName: 'PROJECT ONE',
            imageSource: 'https://static.igem.wiki/teams/4314/wiki/tmp.png',
            description:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Facilisis gravida neque convallis a. Nunc mi ipsum faucibus vitae aliquet nec ullamcorper. Faucibus nisl tincidunt eget nullam non nisi est sit. Mattis vulputate enim nulla aliquet. Feugiat pretium nibh ipsum consequat nisl vel pretium. Augue mauris augue neque gravida in. Mi proin sed libero enim sed faucibus turpis. Tellus pellentesque eu tincidunt tortor aliquam nulla facilisi. Sed felis eget velit aliquet sagittis id. Adipiscing elit ut aliquam purus sit amet luctus venenatis. Tincidunt dui ut ornare lectus sit amet. Elit duis tristique sollicitudin nibh sit amet commodo nulla facilisi. Mi eget mauris pharetra et ultrices neque ornare.',
          ),
          Project(
            projectName: 'PROJECT TWO',
            imageSource: 'https://static.igem.wiki/teams/4314/wiki/tmp.png',
            description:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Facilisis gravida neque convallis a. Nunc mi ipsum faucibus vitae aliquet nec ullamcorper. Faucibus nisl tincidunt eget nullam non nisi est sit. Mattis vulputate enim nulla aliquet. Feugiat pretium nibh ipsum consequat nisl vel pretium. Augue mauris augue neque gravida in. Mi proin sed libero enim sed faucibus turpis. Tellus pellentesque eu tincidunt tortor aliquam nulla facilisi. Sed felis eget velit aliquet sagittis id. Adipiscing elit ut aliquam purus sit amet luctus venenatis. Tincidunt dui ut ornare lectus sit amet. Elit duis tristique sollicitudin nibh sit amet commodo nulla facilisi. Mi eget mauris pharetra et ultrices neque ornare.',
          ),
          Project(
            projectName: 'PROJECT THREE',
            imageSource: 'https://static.igem.wiki/teams/4314/wiki/tmp.png',
            description:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Facilisis gravida neque convallis a. Nunc mi ipsum faucibus vitae aliquet nec ullamcorper. Faucibus nisl tincidunt eget nullam non nisi est sit. Mattis vulputate enim nulla aliquet. Feugiat pretium nibh ipsum consequat nisl vel pretium. Augue mauris augue neque gravida in. Mi proin sed libero enim sed faucibus turpis. Tellus pellentesque eu tincidunt tortor aliquam nulla facilisi. Sed felis eget velit aliquet sagittis id. Adipiscing elit ut aliquam purus sit amet luctus venenatis. Tincidunt dui ut ornare lectus sit amet. Elit duis tristique sollicitudin nibh sit amet commodo nulla facilisi. Mi eget mauris pharetra et ultrices neque ornare.',
          ),
          BottomBar(),
        ],
      ),
    );
  }
}
