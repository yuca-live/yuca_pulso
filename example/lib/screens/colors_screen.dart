import 'package:flutter/material.dart';
import 'package:yuca_pulso/yuca_pulso.dart';

class ColorsScreen extends StatelessWidget {
  const ColorsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: YucaAppBar(
        context: context,
        title: 'Colors',
      ),
      backgroundColor: YucaColorStyles.base0,
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                _brandPrimary(),
                _brandSecondary(),
                _brandSupport(),
                _alternativePrimary(),
                _alternativeSecondary(),
                _alternativeSupport(),
                _base(),
                _status(),
                _action(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _containerColor({required Color color, required String title}) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(color: color, border: Border.all(color: YucaColorStyles.base100)),
        ),
        const SizedBox(height: 5),
        Text(
          title,
          style: YucaTypography.create(YucaTextStyles.bodySmallBold),
        ),
      ],
    );
  }

  Widget _brandPrimary() {
    return SizedBox(
      height: 145,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Brand - Primary',
                style: YucaTypography.create(YucaTextStyles.bodyLargeBold),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  _containerColor(color: YucaColorStyles.brandPrimaryDarkest, title: 'Darkest'),
                  const SizedBox(width: 20),
                  _containerColor(color: YucaColorStyles.brandPrimaryDark, title: 'Dark'),
                  const SizedBox(width: 20),
                  _containerColor(color: YucaColorStyles.brandPrimaryMedium, title: 'Medium'),
                  const SizedBox(width: 20),
                  _containerColor(color: YucaColorStyles.brandPrimaryLight, title: 'Light'),
                  const SizedBox(width: 20),
                  _containerColor(color: YucaColorStyles.brandPrimaryLighten, title: 'Lighten'),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ],
      ),
    );
  }

  Widget _brandSecondary() {
    return SizedBox(
      height: 145,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Brand - Secondary',
                style: YucaTypography.create(YucaTextStyles.bodyLargeBold),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  _containerColor(color: YucaColorStyles.brandSecondaryDarkest, title: 'Darkest'),
                  const SizedBox(width: 20),
                  _containerColor(color: YucaColorStyles.brandSecondaryDark, title: 'Dark'),
                  const SizedBox(width: 20),
                  _containerColor(color: YucaColorStyles.brandSecondaryMedium, title: 'Medium'),
                  const SizedBox(width: 20),
                  _containerColor(color: YucaColorStyles.brandSecondaryLight, title: 'Light'),
                  const SizedBox(width: 20),
                  _containerColor(color: YucaColorStyles.brandSecondaryLighten, title: 'Lighten'),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ],
      ),
    );
  }

  Widget _brandSupport() {
    return SizedBox(
      height: 145,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Brand - Support',
                style: YucaTypography.create(YucaTextStyles.bodyLargeBold),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  _containerColor(color: YucaColorStyles.brandSupportDarkest, title: 'Darkest'),
                  const SizedBox(width: 20),
                  _containerColor(color: YucaColorStyles.brandSupportDark, title: 'Dark'),
                  const SizedBox(width: 20),
                  _containerColor(color: YucaColorStyles.brandSupportMedium, title: 'Medium'),
                  const SizedBox(width: 20),
                  _containerColor(color: YucaColorStyles.brandSupportLight, title: 'Light'),
                  const SizedBox(width: 20),
                  _containerColor(color: YucaColorStyles.brandSupportLighten, title: 'Lighten'),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ],
      ),
    );
  }

  Widget _alternativePrimary() {
    return SizedBox(
      height: 145,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Alternative - Primary',
                style: YucaTypography.create(YucaTextStyles.bodyLargeBold),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  _containerColor(color: YucaColorStyles.alternativePrimaryDarkest, title: 'Darkest'),
                  const SizedBox(width: 20),
                  _containerColor(color: YucaColorStyles.alternativePrimaryDark, title: 'Dark'),
                  const SizedBox(width: 20),
                  _containerColor(color: YucaColorStyles.alternativePrimaryMedium, title: 'Medium'),
                  const SizedBox(width: 20),
                  _containerColor(color: YucaColorStyles.alternativePrimaryLight, title: 'Light'),
                  const SizedBox(width: 20),
                  _containerColor(color: YucaColorStyles.alternativePrimaryLighten, title: 'Lighten'),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ],
      ),
    );
  }

  Widget _alternativeSecondary() {
    return SizedBox(
      height: 145,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Alternative - Secondary',
                style: YucaTypography.create(YucaTextStyles.bodyLargeBold),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  _containerColor(color: YucaColorStyles.alternativeSecondaryDarkest, title: 'Darkest'),
                  const SizedBox(width: 20),
                  _containerColor(color: YucaColorStyles.alternativeSecondaryDark, title: 'Dark'),
                  const SizedBox(width: 20),
                  _containerColor(color: YucaColorStyles.alternativeSecondaryMedium, title: 'Medium'),
                  const SizedBox(width: 20),
                  _containerColor(color: YucaColorStyles.alternativeSecondaryLight, title: 'Light'),
                  const SizedBox(width: 20),
                  _containerColor(color: YucaColorStyles.alternativeSecondaryLighten, title: 'Lighten'),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ],
      ),
    );
  }

  Widget _alternativeSupport() {
    return SizedBox(
      height: 145,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Alternative - Support',
                style: YucaTypography.create(YucaTextStyles.bodyLargeBold),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  _containerColor(color: YucaColorStyles.alternativeSupportDarkest, title: 'Darkest'),
                  const SizedBox(width: 20),
                  _containerColor(color: YucaColorStyles.alternativeSupportDark, title: 'Dark'),
                  const SizedBox(width: 20),
                  _containerColor(color: YucaColorStyles.alternativeSupportMedium, title: 'Medium'),
                  const SizedBox(width: 20),
                  _containerColor(color: YucaColorStyles.alternativeSupportLight, title: 'Light'),
                  const SizedBox(width: 20),
                  _containerColor(color: YucaColorStyles.alternativeSupportLighten, title: 'Lighten'),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ],
      ),
    );
  }

  Widget _base() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Base',
          style: YucaTypography.create(YucaTextStyles.bodyLargeBold),
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            _containerColor(color: YucaColorStyles.base0, title: '0'),
            const SizedBox(width: 20),
            _containerColor(color: YucaColorStyles.base10, title: '10'),
            const SizedBox(width: 20),
            _containerColor(color: YucaColorStyles.base20, title: '20'),
            const SizedBox(width: 20),
            _containerColor(color: YucaColorStyles.base40, title: '40'),
            const SizedBox(width: 20),
            _containerColor(color: YucaColorStyles.base60, title: '60'),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            _containerColor(color: YucaColorStyles.base80, title: '80'),
            const SizedBox(width: 20),
            _containerColor(color: YucaColorStyles.base100, title: '100'),
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  Widget _status() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Status',
          style: YucaTypography.create(YucaTextStyles.bodyLargeBold),
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            _containerColor(color: YucaColorStyles.statusSuccess, title: 'Success'),
            const SizedBox(width: 20),
            _containerColor(color: YucaColorStyles.statusInfo, title: 'Info'),
            const SizedBox(width: 20),
            _containerColor(color: YucaColorStyles.statusAlert, title: 'Alert'),
            const SizedBox(width: 20),
            _containerColor(color: YucaColorStyles.statusError, title: 'Error'),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            _containerColor(color: YucaColorStyles.statusSuccessBase, title: 'Success\nBase'),
            const SizedBox(width: 20),
            _containerColor(color: YucaColorStyles.statusInfoBase, title: 'Info\nBase'),
            const SizedBox(width: 20),
            _containerColor(color: YucaColorStyles.statusAlertBase, title: 'Alert\nBase'),
            const SizedBox(width: 20),
            _containerColor(color: YucaColorStyles.statusErrorBase, title: 'Error\nBase'),
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  Widget _action() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Action',
          style: YucaTypography.create(YucaTextStyles.bodyLargeBold),
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            _containerColor(color: YucaColorStyles.actionPrimaryDark, title: 'Dark'),
            const SizedBox(width: 20),
            _containerColor(color: YucaColorStyles.actionPrimaryMedium, title: 'Medium'),
            const SizedBox(width: 20),
            _containerColor(color: YucaColorStyles.actionSecondaryDark, title: 'Dark'),
            const SizedBox(width: 20),
            _containerColor(color: YucaColorStyles.actionSecondaryMedium, title: 'Medium'),
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
