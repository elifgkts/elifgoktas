import 'package:elifgoktas/components/desktop_view_builder.dart';
import 'package:elifgoktas/components/mobile_desktop_view_builder.dart';
import 'package:elifgoktas/components/mobile_view_builder.dart';
import 'package:flutter/material.dart';
import 'package:elifgoktas/project/project_item_body.dart';

class ProjectItem {
  final String? image;
  final String? title;
  final String? description;
  final List<String>? technologies;
  ProjectItem({
    this.image,
    this.title,
    this.description,
    this.technologies,
  });
}

final kProjectItems = [
  ProjectItem(
    image: 'images/project_1.png',
    title: 'Video Oynatıcı',
    description:
    '4. Ödev',
    technologies: [
      'Flutter',
      'Dart',
    ],
  ),
  ProjectItem(
    image: 'images/project_2.png',
    title: 'Günün Sözü',
    description:
    '3. Ödev',
    technologies: [
      'Flutter',
      'Dart',
    ],
  ),
  ProjectItem(
    image: 'images/project_3.png',
    title: 'Sayfa Geçişleri',
    description:
    '2. Ödev',
    technologies: [
      'Flutter',
      'Dart',
    ],
  ),
];

class ProjectView extends StatelessWidget {
  static const title = 'Projeler';
  @override
  Widget build(BuildContext context) {

    return MobileDesktopViewBuilder(mobileView: ProjectMobileView(),
        desktopView: ProjectDesktopView());
  }
}



class ProjectDesktopView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DesktopViewBuilder(
      titleText:ProjectView.title,
      children: [
        SizedBox(height: 20),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (final item in kProjectItems)
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ProjectItemBody(item: item),
                ),
              )
          ],
        ),
        SizedBox(height: 70),
      ],
    );
  }
}

class ProjectMobileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MobileViewBuilder(
      titleText: ProjectView.title,
      children: [
        for (final item in kProjectItems) ProjectItemBody(item: item)
      ],
    );
  }
}