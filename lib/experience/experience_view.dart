import 'package:flutter/material.dart';

import 'package:elifgoktas/components/desktop_view_builder.dart';
import 'package:elifgoktas/components/mobile_desktop_view_builder.dart';
import 'package:elifgoktas/components/mobile_view_builder.dart';
import 'package:elifgoktas/experience/experience_container.dart';

class ExperienceView extends StatelessWidget {
  static const title = 'Gönüllü Çalışmalar';
  @override
  Widget build(BuildContext context) {
    return MobileDesktopViewBuilder(
      desktopView: ExperienceDesktopView(),
      mobileView: ExperienceMobileView(),
    );
  }
}

class ExperienceDesktopView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DesktopViewBuilder(
      titleText: ExperienceView.title,
      children: [
        SizedBox(height: 20),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (var rowIndex = 0;
            rowIndex < experiences.length / 2;
            rowIndex++)
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    for (var index = 0; index < experiences.length / 2; index++)
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ExperienceContainer(
                          experience: experiences.elementAt(
                            rowIndex * 2 + index,
                          ),
                          index: rowIndex * 2 + index,
                        ),
                      ),
                  ],
                ),
              ),
          ],
        ),
      ],
    );
  }
}

class ExperienceMobileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MobileViewBuilder(
      titleText: ExperienceView.title,
      children: [
        Column(
          children: [
            for (final experience in experiences)
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: ExperienceContainer(
                  experience: experience,
                  index: experiences.indexOf(experience),
                ),
              )
          ],
        )
      ],
    );
  }
}