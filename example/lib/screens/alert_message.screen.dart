import 'package:flutter/material.dart';
import 'package:yuca_pulso/yuca_pulso.dart';

class AlertMessageScreen extends StatelessWidget {
  const AlertMessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: YucaAppBar(
        context: context,
        title: 'Alert Messages',
      ),
      backgroundColor: YucaColorStyles.base0,
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              children: [
                const SizedBox(height: 20),
                YucaAlertMessage(
                  description: 'Descrição de  Erro',
                  state: YucaAlertState.error,
                  actionTitle: 'Call to action',
                  hasAction: true,
                  onTap: () {},
                ).build(),
                const SizedBox(height: 20),
                YucaAlertMessage(
                  description: 'Descrição de  Erro',
                  state: YucaAlertState.error,
                  actionTitle: 'Call to action',
                  onTap: () {},
                ).build(),
                const SizedBox(height: 20),
                YucaAlertMessage(
                  description: 'Descrição de Sucesso',
                  state: YucaAlertState.success,
                  actionTitle: 'Call to action',
                  hasAction: true,
                  onTap: () {},
                ).build(),
                const SizedBox(height: 20),
                YucaAlertMessage(
                  description: 'Descrição de Sucesso',
                  state: YucaAlertState.success,
                  actionTitle: 'Call to action',
                  onTap: () {},
                ).build(),
                const SizedBox(height: 20),
                YucaAlertMessage(
                  description: 'Descrição de Warning',
                  state: YucaAlertState.warning,
                  actionTitle: 'Call to action',
                  hasAction: true,
                  onTap: () {},
                ).build(),
                const SizedBox(height: 20),
                YucaAlertMessage(
                  description: 'Descrição de Warning',
                  state: YucaAlertState.warning,
                  actionTitle: 'Call to action',
                  onTap: () {},
                ).build(),
                const SizedBox(height: 20),
                YucaAlertMessage(
                  description: 'Descrição de Info',
                  state: YucaAlertState.info,
                  actionTitle: 'Call to action',
                  hasAction: true,
                  onTap: () {},
                ).build(),
                const SizedBox(height: 20),
                YucaAlertMessage(
                  description: 'Descrição de Info',
                  state: YucaAlertState.info,
                  actionTitle: 'Call to action',
                  onTap: () {},
                ).build(),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
