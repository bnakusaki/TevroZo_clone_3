import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:tevrozoclone3/screens/items_screen/items_screen.dart';

class IntroductoryMessage extends StatelessWidget {
  const IntroductoryMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Container(
      height: MediaQuery.of(context).size.height * 0.267,
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(15, 0, 15, 25),
      padding: const EdgeInsets.fromLTRB(30, 25, 30, 30),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.tertiary,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Text(
            l10n.introMessage,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const Spacer(flex: 1),
          Text(
            l10n.introSubMessage,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const Spacer(flex: 3),
          FilledButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const ItemsScreen(),
              ));
            },
            style: FilledButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.scrim,
              shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(30)),
              fixedSize: const Size(double.maxFinite, 50),
            ),
            child: Text(
              l10n.getStartedButtonLable,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
            ),
          )
        ],
      ),
    );
  }
}
