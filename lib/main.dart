import 'package:elifgoktas/experience/experience_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:elifgoktas/header/header_view.dart';
import 'package:elifgoktas/navigation_bar/navigation_bar_view.dart';
import 'package:elifgoktas/project/project_view.dart';
import 'package:elifgoktas/skills/skills_view.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'drawer/drawer_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Elif Göktaş',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
          headline2: GoogleFonts.montserrat(
            color: Colors.black,
          ),
          headline4: GoogleFonts.montserrat(
            fontSize: 30,
            color: Colors.black,
          ),
        ),
      ),
      home: PortfolioView(),
    );
  }
}

class PortfolioView extends StatelessWidget {
  const PortfolioView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final ScrollController scrollController = ScrollController(
      initialScrollOffset: 1750,
    );
    return Scaffold(
      endDrawer: DrawerView(),
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            NavigationBarView(),
            HeaderView(),
            ProjectView(),
            SkillsView(),
            ExperienceView(),
            Container(height: height, width: width, color: Colors.blue),
          ],
        ),
      ),
    );
  }
}

