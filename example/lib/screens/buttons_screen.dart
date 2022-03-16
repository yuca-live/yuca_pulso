import 'package:flutter/material.dart';
import 'package:yuca_pulso/yuca_pulso.dart';

class ButtonsScreen extends StatefulWidget {
  const ButtonsScreen({Key? key}) : super(key: key);

  @override
  State<ButtonsScreen> createState() => _ButtonsScreenState();
}

class _ButtonsScreenState extends State<ButtonsScreen> {
  final RoundedLoadingButtonController loginButtonController = RoundedLoadingButtonController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: YucaAppBar(
        context: context,
        title: 'Buttons',
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        const SizedBox(height: 20),
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                            color: YucaColorStyles.base0,
                          ),
                          child: Text(
                            'Primary',
                            style: YucaTypography.create(YucaTextStyles.bodyMediumBold),
                          ),
                        ),
                        const SizedBox(height: 20),
                        _buildContainer(
                          title: 'Default',
                          button: YucaButton(
                            text: 'Label',
                            action: () {},
                            isPrimary: false,
                          ),
                        ),
                        _buildContainer(
                          title: 'Icon Right',
                          button: YucaButton(
                            text: 'Label',
                            icon: const Icon(YucaIcons.default_icon),
                            action: () {},
                          ),
                        ),
                        _buildContainer(
                          title: 'Icon Left',
                          button: YucaButton(
                            text: 'Label',
                            icon: const Icon(YucaIcons.default_icon),
                            iconSide: StyledButtonIconSide.left,
                            action: () {},
                          ),
                        ),
                        _buildContainer(
                          title: 'Icon',
                          button: YucaButton(
                            icon: const Icon(YucaIcons.default_icon),
                            action: () {},
                          ),
                        ),
                        _buildContainer(
                          title: 'Disabled',
                          button: const YucaButton(
                            text: 'Disabled',
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const SizedBox(height: 20),
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                            color: YucaColorStyles.base0,
                          ),
                          child: Text(
                            'Secondary',
                            style: YucaTypography.create(YucaTextStyles.bodyMediumBold),
                          ),
                        ),
                        const SizedBox(height: 20),
                        _buildContainer(
                          title: 'Default',
                          button: YucaButton(
                            text: 'Label',
                            action: () {},
                            isPrimary: false,
                          ),
                        ),
                        _buildContainer(
                          title: 'Icon Right',
                          button: YucaButton(
                            text: 'Label',
                            icon: const Icon(YucaIcons.default_icon),
                            action: () {},
                            isPrimary: false,
                          ),
                        ),
                        _buildContainer(
                          title: 'Icon left',
                          button: YucaButton(
                            text: 'Label',
                            icon: const Icon(YucaIcons.default_icon),
                            iconSide: StyledButtonIconSide.left,
                            action: () {},
                            isPrimary: false,
                          ),
                        ),
                        _buildContainer(
                          title: 'Icon',
                          button: YucaButton(
                            icon: const Icon(YucaIcons.default_icon),
                            action: () {},
                            isPrimary: false,
                          ),
                        ),
                        _buildContainer(
                          title: 'Disabled',
                          button: const YucaButton(
                            text: 'Disabled',
                            isPrimary: false,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        const SizedBox(height: 20),
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                            color: YucaColorStyles.base0,
                          ),
                          child: Text(
                            'Link',
                            style: YucaTypography.create(YucaTextStyles.bodyMediumBold),
                          ),
                        ),
                        const SizedBox(height: 20),
                        _buildContainer(
                          title: 'Default',
                          button: YucaButton(
                            text: 'Label',
                            action: () {},
                            isPrimary: false,
                            isButtonLink: true,
                          ),
                        ),
                        _buildContainer(
                          title: 'Disabled',
                          button: const YucaButton(
                            text: 'Label',
                            isPrimary: false,
                            isButtonLink: true,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const SizedBox(height: 20),
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                            color: YucaColorStyles.base0,
                          ),
                          child: Text(
                            'Animated',
                            style: YucaTypography.create(YucaTextStyles.bodyMediumBold),
                          ),
                        ),
                        const SizedBox(height: 20),
                        _buildContainer(
                          title: 'Default',
                          button: YucaAnimatedButton(
                            controller: loginButtonController,
                            onPressed: () async {
                              await Future.delayed(const Duration(seconds: 3), () {
                                loginButtonController.stop();
                              });
                            },
                            buttonText: 'Label',
                          ),
                        ),
                        const SizedBox(height: 20),
                        _buildContainer(
                          title: 'Secondary',
                          button: YucaAnimatedButton(
                            controller: loginButtonController,
                            onPressed: () async {
                              await Future.delayed(const Duration(seconds: 3), () {
                                loginButtonController.stop();
                              });
                            },
                            buttonText: 'Label',
                            isPrimary: false,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContainer({required String title, required Widget button}) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
            color: YucaColorStyles.base40,
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          child: Text(
            title,
            style: YucaTypography.create(YucaTextStyles.bodySmallBold),
          ),
        ),
        button,
        const SizedBox(height: 20),
      ],
    );
  }
}
