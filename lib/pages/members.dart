import 'package:flutter/material.dart';
import '../modules/member_card.dart';
import '../modules/navigation/appbars.dart';
import '../modules/bottombar.dart';
import '../modules/navigation/sidemenu.dart';
import '../modules/titlescreen.dart';

class Members extends StatelessWidget {
  const Members({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double unitWidthValue = MediaQuery.of(context).size.width * 0.01;
    double headerMultiplier = 4;
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: const SideMenu(),
      body: ListView(
        children: [
          const TitleScreen(
            ovalMultiplier: 35,
            pageTitle: 'MEMBERS',
          ),
          SizedBox(height: MediaQuery.of(context).size.width < 1350 ? 40 : 80),
          MediaQuery.of(context).size.width < 1000
              ? Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal:
                          MediaQuery.of(context).size.width < 500 ? 15 : 50),
                  child: Column(
                    children: [
                      SelectableText(
                        'INTRODUCING THE TEAM',
                        style: TextStyle(
                          fontSize: (unitWidthValue * headerMultiplier),
                          color: const Color(0xff6987c9),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Image.network(
                        'https://static.igem.wiki/teams/4314/wiki/tmp.png',
                      ),
                      const SizedBox(
                        child: SelectableText(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Facilisis gravida neque convallis a. Nunc mi ipsum faucibus vitae aliquet nec ullamcorper. Faucibus nisl tincidunt eget nullam non nisi est sit. Mattis vulputate enim nulla aliquet. Feugiat pretium nibh ipsum consequat nisl vel pretium. Augue mauris augue neque gravida in. Mi proin sed libero enim sed faucibus turpis. Tellus pellentesque eu tincidunt tortor aliquam nulla facilisi. Sed felis eget velit aliquet sagittis id. Adipiscing elit ut aliquam purus sit amet luctus venenatis. Tincidunt dui ut ornare lectus sit amet. Elit duis tristique sollicitudin nibh sit amet commodo nulla facilisi. Mi eget mauris pharetra et ultrices neque ornare.',
                          style:
                              TextStyle(fontFamily: 'Helvetica', fontSize: 12),
                        ),
                      ),
                      const SizedBox(height: 20)
                    ],
                  ),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.network(
                      width: MediaQuery.of(context).size.width / 2 - 10,
                      'https://static.igem.wiki/teams/4314/wiki/tmp.png',
                    ),
                    Column(
                      children: [
                        SelectableText(
                          'INTRODUCING THE TEAM',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width < 1350
                                ? unitWidthValue * 2.5
                                : 36,
                            color: const Color(0xff6987c9),
                          ),
                        ),
                        Stack(
                          alignment: AlignmentDirectional.centerEnd,
                          children: [
                            Image.network(
                              width: MediaQuery.of(context).size.width / 2,
                              'https://static.igem.wiki/teams/4314/wiki/blob.png',
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 3 / 8,
                              child: const SelectableText(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Facilisis gravida neque convallis a. Nunc mi ipsum faucibus vitae aliquet nec ullamcorper. Faucibus nisl tincidunt eget nullam non nisi est sit. Mattis vulputate enim nulla aliquet. ',
                                style: TextStyle(
                                    fontFamily: 'Helvetica',
                                    color: Colors.white,
                                    fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  ],
                ),
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width <= 1200
                    ? MediaQuery.of(context).size.width <= 500
                        ? 39 / 64 * MediaQuery.of(context).size.width
                        : 400
                    : 7 / 16 * MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal:
                        MediaQuery.of(context).size.width < 500 ? 15 : 30),
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xff6987c9)),
                    color: Colors.transparent,
                    borderRadius: BorderRadius.horizontal(
                        right: Radius.circular(
                            MediaQuery.of(context).size.width <= 1200
                                ? MediaQuery.of(context).size.width <= 500
                                    ? 25.5
                                    : 30
                                : 35))),
                child: SelectableText(
                  'TEAM MEMBERS',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width <= 1200
                          ? MediaQuery.of(context).size.width <= 500
                              ? 16
                              : 22
                          : 30,
                      color: const Color(0xff6987c9)),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width <= 1200
                    ? MediaQuery.of(context).size.width <= 500
                        ? 49
                        : 58
                    : 66,
                height: MediaQuery.of(context).size.width <= 1200
                    ? MediaQuery.of(context).size.width <= 500
                        ? 49
                        : 58
                    : 66,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(
                      color: const Color(0xff6987c9),
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(60))),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width < 500 ? 15 : 50),
            child: MediaQuery.of(context).size.width < 1000
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Member(
                        name: 'name',
                        team: 'team',
                        position: 'position',
                        intro:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Facilisis gravida neque convallis a. Nunc mi ipsum faucibus vitae aliquet nec ullamcorper. Faucibus nisl tincidunt eget nullam non nisi est sit. Mattis vulputate enim nulla aliquet. Feugiat pretium nibh ipsum consequat nisl vel pretium. Augue mauris augue neque gravida in. Mi proin sed libero enim sed faucibus turpis. Tellus pellentesque eu tincidunt tortor aliquam nulla facilisi. Sed felis eget velit aliquet sagittis id. Adipiscing elit ut aliquam purus sit amet luctus venenatis. Tincidunt dui ut ornare lectus sit amet. Elit duis tristique sollicitudin nibh sit amet commodo nulla facilisi. Mi eget mauris pharetra et ultrices neque ornare.',
                        image:
                            'https://static.igem.wiki/teams/4314/wiki/messageimage-1665151653993.jpg',
                        alignment: 'left',
                      ),
                      SizedBox(height: 20),
                      Member(
                        name: 'name',
                        team: 'team',
                        position: 'position',
                        intro:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Facilisis gravida neque convallis a. Nunc mi ipsum faucibus vitae aliquet nec ullamcorper. Faucibus nisl tincidunt eget nullam non nisi est sit. Mattis vulputate enim nulla aliquet. Feugiat pretium nibh ipsum consequat nisl vel pretium. Augue mauris augue neque gravida in. Mi proin sed libero enim sed faucibus turpis. Tellus pellentesque eu tincidunt tortor aliquam nulla facilisi. Sed felis eget velit aliquet sagittis id. Adipiscing elit ut aliquam purus sit amet luctus venenatis. Tincidunt dui ut ornare lectus sit amet. Elit duis tristique sollicitudin nibh sit amet commodo nulla facilisi. Mi eget mauris pharetra et ultrices neque ornare.',
                        image:
                            'https://static.igem.wiki/teams/4314/wiki/tmp.png',
                        alignment: 'right',
                      ),
                      SizedBox(height: 20),
                      Member(
                        name: 'name',
                        team: 'team',
                        position: 'position',
                        intro:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Facilisis gravida neque convallis a. Nunc mi ipsum faucibus vitae aliquet nec ullamcorper. Faucibus nisl tincidunt eget nullam non nisi est sit. Mattis vulputate enim nulla aliquet. Feugiat pretium nibh ipsum consequat nisl vel pretium. Augue mauris augue neque gravida in. Mi proin sed libero enim sed faucibus turpis. Tellus pellentesque eu tincidunt tortor aliquam nulla facilisi. Sed felis eget velit aliquet sagittis id. Adipiscing elit ut aliquam purus sit amet luctus venenatis. Tincidunt dui ut ornare lectus sit amet. Elit duis tristique sollicitudin nibh sit amet commodo nulla facilisi. Mi eget mauris pharetra et ultrices neque ornare.',
                        image:
                            'https://static.igem.wiki/teams/4314/wiki/tmp.png',
                        alignment: 'left',
                      ),
                      SizedBox(height: 20),
                      Member(
                        name: 'name',
                        team: 'team',
                        position: 'position',
                        intro:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Facilisis gravida neque convallis a. Nunc mi ipsum faucibus vitae aliquet nec ullamcorper. Faucibus nisl tincidunt eget nullam non nisi est sit. Mattis vulputate enim nulla aliquet. Feugiat pretium nibh ipsum consequat nisl vel pretium. Augue mauris augue neque gravida in. Mi proin sed libero enim sed faucibus turpis. Tellus pellentesque eu tincidunt tortor aliquam nulla facilisi. Sed felis eget velit aliquet sagittis id. Adipiscing elit ut aliquam purus sit amet luctus venenatis. Tincidunt dui ut ornare lectus sit amet. Elit duis tristique sollicitudin nibh sit amet commodo nulla facilisi. Mi eget mauris pharetra et ultrices neque ornare.',
                        image:
                            'https://static.igem.wiki/teams/4314/wiki/tmp.png',
                        alignment: 'right',
                      ),
                      SizedBox(height: 20),
                      Member(
                        name: 'name',
                        team: 'team',
                        position: 'position',
                        intro:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Facilisis gravida neque convallis a. Nunc mi ipsum faucibus vitae aliquet nec ullamcorper. Faucibus nisl tincidunt eget nullam non nisi est sit. Mattis vulputate enim nulla aliquet. Feugiat pretium nibh ipsum consequat nisl vel pretium. Augue mauris augue neque gravida in. Mi proin sed libero enim sed faucibus turpis. Tellus pellentesque eu tincidunt tortor aliquam nulla facilisi. Sed felis eget velit aliquet sagittis id. Adipiscing elit ut aliquam purus sit amet luctus venenatis. Tincidunt dui ut ornare lectus sit amet. Elit duis tristique sollicitudin nibh sit amet commodo nulla facilisi. Mi eget mauris pharetra et ultrices neque ornare.',
                        image:
                            'https://static.igem.wiki/teams/4314/wiki/tmp.png',
                        alignment: 'left',
                      ),
                      SizedBox(height: 20),
                      Member(
                        name: 'name',
                        team: 'team',
                        position: 'position',
                        intro:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Facilisis gravida neque convallis a. Nunc mi ipsum faucibus vitae aliquet nec ullamcorper. Faucibus nisl tincidunt eget nullam non nisi est sit. Mattis vulputate enim nulla aliquet. Feugiat pretium nibh ipsum consequat nisl vel pretium. Augue mauris augue neque gravida in. Mi proin sed libero enim sed faucibus turpis. Tellus pellentesque eu tincidunt tortor aliquam nulla facilisi. Sed felis eget velit aliquet sagittis id. Adipiscing elit ut aliquam purus sit amet luctus venenatis. Tincidunt dui ut ornare lectus sit amet. Elit duis tristique sollicitudin nibh sit amet commodo nulla facilisi. Mi eget mauris pharetra et ultrices neque ornare.',
                        image:
                            'https://static.igem.wiki/teams/4314/wiki/tmp.png',
                        alignment: 'right',
                      )
                    ],
                  )
                : Column(
                    children: [
                      Row(
                        children: const [
                          MemberLarge(
                            name: 'name',
                            team: 'team',
                            position: 'position',
                            intro:
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Facilisis gravida neque convallis a. Nunc mi ipsum faucibus vitae aliquet nec ullamcorper. Faucibus nisl tincidunt eget nullam non nisi est sit. Mattis vulputate enim nulla aliquet. Feugiat pretium nibh ipsum consequat nisl vel pretium. Augue mauris augue neque gravida in. Mi proin sed libero enim sed faucibus turpis. Tellus pellentesque eu tincidunt tortor aliquam nulla facilisi. Sed felis eget velit aliquet sagittis id. Adipiscing elit ut aliquam purus sit amet luctus venenatis. Tincidunt dui ut ornare lectus sit amet. Elit duis tristique sollicitudin nibh sit amet commodo nulla facilisi. Mi eget mauris pharetra et ultrices neque ornare.',
                            image:
                                'https://static.igem.wiki/teams/4314/wiki/messageimage-1665151653993.jpg',
                            alignment: 'left',
                          ),
                          MemberLarge(
                            name: 'name',
                            team: 'team',
                            position: 'position',
                            intro:
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Facilisis gravida neque convallis a. Nunc mi ipsum faucibus vitae aliquet nec ullamcorper. Faucibus nisl tincidunt eget nullam non nisi est sit. Mattis vulputate enim nulla aliquet. Feugiat pretium nibh ipsum consequat nisl vel pretium. Augue mauris augue neque gravida in. Mi proin sed libero enim sed faucibus turpis. Tellus pellentesque eu tincidunt tortor aliquam nulla facilisi. Sed felis eget velit aliquet sagittis id. Adipiscing elit ut aliquam purus sit amet luctus venenatis. Tincidunt dui ut ornare lectus sit amet. Elit duis tristique sollicitudin nibh sit amet commodo nulla facilisi. Mi eget mauris pharetra et ultrices neque ornare.',
                            image:
                                'https://static.igem.wiki/teams/4314/wiki/tmp.png',
                            alignment: 'right',
                          )
                        ],
                      ),
                      Row(
                        children: const [
                          MemberLarge(
                            name: 'name',
                            team: 'team',
                            position: 'position',
                            intro:
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Facilisis gravida neque convallis a. Nunc mi ipsum faucibus vitae aliquet nec ullamcorper. Faucibus nisl tincidunt eget nullam non nisi est sit. Mattis vulputate enim nulla aliquet. Feugiat pretium nibh ipsum consequat nisl vel pretium. Augue mauris augue neque gravida in. Mi proin sed libero enim sed faucibus turpis. Tellus pellentesque eu tincidunt tortor aliquam nulla facilisi. Sed felis eget velit aliquet sagittis id. Adipiscing elit ut aliquam purus sit amet luctus venenatis. Tincidunt dui ut ornare lectus sit amet. Elit duis tristique sollicitudin nibh sit amet commodo nulla facilisi. Mi eget mauris pharetra et ultrices neque ornare.',
                            image:
                                'https://static.igem.wiki/teams/4314/wiki/tmp.png',
                            alignment: 'left',
                          ),
                          MemberLarge(
                            name: 'name',
                            team: 'team',
                            position: 'position',
                            intro:
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Facilisis gravida neque convallis a. Nunc mi ipsum faucibus vitae aliquet nec ullamcorper. Faucibus nisl tincidunt eget nullam non nisi est sit. Mattis vulputate enim nulla aliquet. Feugiat pretium nibh ipsum consequat nisl vel pretium. Augue mauris augue neque gravida in. Mi proin sed libero enim sed faucibus turpis. Tellus pellentesque eu tincidunt tortor aliquam nulla facilisi. Sed felis eget velit aliquet sagittis id. Adipiscing elit ut aliquam purus sit amet luctus venenatis. Tincidunt dui ut ornare lectus sit amet. Elit duis tristique sollicitudin nibh sit amet commodo nulla facilisi. Mi eget mauris pharetra et ultrices neque ornare.',
                            image:
                                'https://static.igem.wiki/teams/4314/wiki/tmp.png',
                            alignment: 'right',
                          )
                        ],
                      ),
                      Row(
                        children: const [
                          MemberLarge(
                            name: 'name',
                            team: 'team',
                            position: 'position',
                            intro:
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Facilisis gravida neque convallis a. Nunc mi ipsum faucibus vitae aliquet nec ullamcorper. Faucibus nisl tincidunt eget nullam non nisi est sit. Mattis vulputate enim nulla aliquet. Feugiat pretium nibh ipsum consequat nisl vel pretium. Augue mauris augue neque gravida in. Mi proin sed libero enim sed faucibus turpis. Tellus pellentesque eu tincidunt tortor aliquam nulla facilisi. Sed felis eget velit aliquet sagittis id. Adipiscing elit ut aliquam purus sit amet luctus venenatis. Tincidunt dui ut ornare lectus sit amet. Elit duis tristique sollicitudin nibh sit amet commodo nulla facilisi. Mi eget mauris pharetra et ultrices neque ornare.',
                            image:
                                'https://static.igem.wiki/teams/4314/wiki/tmp.png',
                            alignment: 'left',
                          ),
                          MemberLarge(
                            name: 'name',
                            team: 'team',
                            position: 'position',
                            intro:
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Facilisis gravida neque convallis a. Nunc mi ipsum faucibus vitae aliquet nec ullamcorper. Faucibus nisl tincidunt eget nullam non nisi est sit. Mattis vulputate enim nulla aliquet. Feugiat pretium nibh ipsum consequat nisl vel pretium. Augue mauris augue neque gravida in. Mi proin sed libero enim sed faucibus turpis. Tellus pellentesque eu tincidunt tortor aliquam nulla facilisi. Sed felis eget velit aliquet sagittis id. Adipiscing elit ut aliquam purus sit amet luctus venenatis. Tincidunt dui ut ornare lectus sit amet. Elit duis tristique sollicitudin nibh sit amet commodo nulla facilisi. Mi eget mauris pharetra et ultrices neque ornare.',
                            image:
                                'https://static.igem.wiki/teams/4314/wiki/tmp.png',
                            alignment: 'right',
                          )
                        ],
                      ),
                    ],
                  ),
          ),
          const SizedBox(height: 80),
          const BottomBar(),
        ],
      ),
    );
  }
}
