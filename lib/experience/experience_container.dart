import 'package:flutter/material.dart';
import 'package:elifgoktas/utils/colour_assets.dart';

class ExperienceContainer extends StatelessWidget {
  const ExperienceContainer({
    Key? key,
    required this.experience,
    required this.index,
  }) : super(key: key);

  final ExperienceInfo experience;
  final int index;

  @override
  Widget build(BuildContext context) {
    final colors = ColourAssets.all;
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(
          width: 3,
          color: colors.elementAt(index % colors.length),
        ),
        borderRadius: BorderRadius.circular(3),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            experience.company,
            style: _textStyle(isBold: true),
          ),
          SizedBox(height: 10),
          Text(
            experience.timeline,
            style: _textStyle(isGrey: true),
          ),
          SizedBox(height: 10),
          for (final item in experience.descriptions)
            Text(
              item,
              style: _textStyle(),
            )
        ],
      ),
    );
  }
}

TextStyle _textStyle({bool? isBold, bool? isGrey}) {
  return TextStyle(
    fontSize: 20,
    height: 1.3,
    fontWeight: isBold ?? false ? FontWeight.bold : FontWeight.normal,
    color: isGrey ?? false ? Colors.grey : Colors.black,
  );
}

class ExperienceInfo {
  final String company;
  final String timeline;
  final List<String> descriptions;
  ExperienceInfo({
    required this.company,
    required this.timeline,
    required this.descriptions,
  });
}

final experiences = [
  ExperienceInfo(
    company: 'Bin Yaprak',
    timeline: 'Mayıs 2021 - Günümüz',
    descriptions: [
      '- Milyon Kadına Mentor Programında Mentorluk',
      '- Kadınlara STEM alanlarında kariyer yolculuğuklarında destek olma',

    ],
  ),
  ExperienceInfo(
    company: 'SisterLab',
    timeline: 'Mayıs 2021 - Günümüz',
    descriptions: [
      '- Genç kadın ve kız çocuklarına STEM alanlarında eğitmenlik',
      '- STEM alanlarında blog yazıları yazma',

    ],
  ),
  ExperienceInfo(
    company: 'İstanbul Türkçe Toastmasters',
    timeline: 'August 2021 - Günümüz',
    descriptions: [
      '- Liderlik ve topluluk önünde konuşma kulübü',
      '- Seçtiğim liderlik yolundaki görevlerin yerine getirilmesi',

    ],
  ),
  ExperienceInfo(
    company: 'Habitat Derneği',
    timeline: 'Eylül 2021 - Günümüz',
    descriptions: [
      '- 7-14 yaş arasındaki çocuklara Scratch- eğitmenliği',
      '- 7-14 yaş arasındaki çocuklara Tinkercad eğitmenliği',

    ],
  ),
];