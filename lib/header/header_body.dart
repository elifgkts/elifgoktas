import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class HeaderBody extends StatelessWidget {
  final bool? isMobile;
  const HeaderBody({
    Key? key,
     this.isMobile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AutoSizeText(
          'Elif Göktaş',
          style: Theme.of(context).textTheme.headline2,
          maxLines: 1,
        ),
        AutoSizeText(
          'Bilgisayar Mühendisi',
          style: Theme.of(context).textTheme.headline2,
          maxLines: 1,
        ),
        SizedBox(height: isMobile ?? false ? 20 : 37),
        AutoSizeText(
          '8 yıl web tasarım işleri yaptıktan sonra, test alanına yöneldim. 2018 yılından beri test alanında çalışıyorum. Ayrıca Flutter\'da kendimi geliştirmeye çalışıyorum',
          style: TextStyle(fontSize: 24),
          maxLines: 3,
        ),
        SizedBox(height: isMobile ?? false ? 20 : 40),
        TextButton(
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(7),
              ),
            ),
            backgroundColor: Colors.redAccent,
          ),
          onPressed: () {},
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: isMobile ?? false ? 10 : 17,
              horizontal: isMobile ?? false ? 8 : 15,
            ),
            child: Text(
              'İletişim',
              style: TextStyle(
                fontSize: isMobile ?? false ? 20 : 24,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}