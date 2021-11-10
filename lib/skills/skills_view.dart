import 'package:elifgoktas/components/desktop_view_builder.dart';
import 'package:elifgoktas/components/mobile_desktop_view_builder.dart';
import 'package:elifgoktas/components/mobile_view_builder.dart';
import 'package:flutter/material.dart';
import 'package:elifgoktas/constants.dart';
import 'package:elifgoktas/skills/outline_skills_container.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SkillsView extends StatelessWidget {
  static const title = 'Teknik Bilgiler';
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return MobileDesktopViewBuilder(
      desktopView:SkillsDesktopView(),
      mobileView: SkillsMobileView() ,
      showMobile: width <789,
    );
  }
}

class SkillsDesktopView extends StatelessWidget {
  const SkillsDesktopView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DesktopViewBuilder(
      titleText: SkillsView.title,

      children: [

        SizedBox(height: 20),
        for (var rowIndex = 0; rowIndex < skills.length / 4; rowIndex++) ...[
          Row(
            children: [
              for (var index = 0; index < skills.length / 2; index++)
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: index != 0 ? 8.0 : 0),
                    child: OutlineSkillsContainer(
                      index: index,
                      rowIndex: rowIndex,
                    ),
                  ),
                ),
            ],
          ),
          SizedBox(height: 10)
        ],
        SizedBox(height: 70)
      ],
    );
  }
}

class SkillsMobileView extends StatelessWidget {
  const SkillsMobileView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MobileViewBuilder(
      titleText: 'Teknik Bilgiler',

      children: [
        for (var index = 0; index < skills.length; index++) ...[
          OutlineSkillsContainer(
            index: index,
            isMobile: true,
          ),
          SizedBox(height: 10)
        ]
      ],
    );
  }
}

final skills = [
  'Flutter',
  'Firebase',
  'HTML/CSS',
  'Wordpress',
  'JIRA',
  'Agile',
  'Test Automation',
  'Google Analytics',
];

