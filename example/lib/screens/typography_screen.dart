import 'package:flutter/material.dart';
import 'package:yuca_pulso/yuca_pulso.dart';

class TypographyScreen extends StatelessWidget {
  const TypographyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: YucaAppBar(
        context: context,
        title: 'Typography',
      ),
      backgroundColor: YucaColorStyles.base0,
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _typograhy(title: 'H0', textStyles: YucaTextStyles.headingZero),
                _typograhy(title: 'H1', textStyles: YucaTextStyles.headingOne),
                _typograhy(title: 'H2', textStyles: YucaTextStyles.headingTwo),
                _typograhy(title: 'H3', textStyles: YucaTextStyles.headingThree),
                _typograhy(title: 'H4', textStyles: YucaTextStyles.headingFour),
                _typograhy(title: 'H5', textStyles: YucaTextStyles.headingFive),
                _typograhy(title: 'body large bold', textStyles: YucaTextStyles.bodyLargeBold),
                _typograhy(title: 'body large regular', textStyles: YucaTextStyles.bodyLargeRegular),
                _typograhy(title: 'body medium bold', textStyles: YucaTextStyles.bodyMediumBold),
                _typograhy(title: 'body medium regular', textStyles: YucaTextStyles.bodyMediumRegular),
                _typograhy(title: 'body small bold', textStyles: YucaTextStyles.bodySmallBold),
                _typograhy(title: 'body small regular', textStyles: YucaTextStyles.bodySmallRegular),
                _typograhy(title: 'placeholder small', textStyles: YucaTextStyles.placeholdSmall),
                _typograhy(title: 'Cta Bold', textStyles: YucaTextStyles.callToActionBold),
                _typograhy(title: 'Cta semi', textStyles: YucaTextStyles.callToActionSemi),
                _typograhy(title: 'Caption bold', textStyles: YucaTextStyles.captionBold),
                _typograhy(title: 'Caption', textStyles: YucaTextStyles.caption),
                _typograhy(title: 'CAPTION UPPERCASE', textStyles: YucaTextStyles.caption),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _typograhy({required String title, required YucaTextStyles textStyles}) {
    return Column(
      children: [
        Text(
          title,
          style: YucaTypography.create(
            textStyles,
            color: YucaColorStyles.base100,
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
