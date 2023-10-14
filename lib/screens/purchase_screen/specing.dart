import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:tevrozoclone3/core/data.dart';
import 'package:tevrozoclone3/screens/filter_widget/section.dart';
import 'package:tevrozoclone3/screens/filter_widget/section_builder.dart';

class Specing extends StatelessWidget {
  const Specing({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final color = Theme.of(context).colorScheme;
    final textStyle = Theme.of(context).textTheme;

    return SafeArea(
      minimum: const EdgeInsets.all(10),
      child: SizedBox(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: List.generate(
                4,
                (index) => Padding(
                  padding: EdgeInsets.only(right: index == 3 ? 0.0 : 5.0),
                  child: Container(
                    width: (MediaQuery.of(context).size.width - 40) / 4,
                    height: 5,
                    decoration: BoxDecoration(
                      color: index == 0 ? color.primary : Colors.white54,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 377,
              clipBehavior: Clip.hardEdge,
              margin: const EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: color.primary,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: color.inverseSurface,
                    height: 50,
                    child: Center(
                      child: Text(
                        l10n.promoMsg2,
                        style: textStyle.titleMedium!.copyWith(color: color.primary),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          l10n.purchaseItemName,
                          style: textStyle.titleLarge,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 20),
                          child: Text(
                            l10n.purchaseItemType,
                            style: textStyle.bodyLarge,
                          ),
                        ),
                        Row(
                          children: [
                            for (Color color in colors)
                              Padding(
                                padding: const EdgeInsets.only(right: 5.0),
                                child: CircleAvatar(
                                  radius: 15,
                                  backgroundColor: color,
                                ),
                              ),
                            const Spacer(),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.black12),
                              ),
                              child: Text.rich(TextSpan(children: [
                                TextSpan(
                                    text: ' -  ',
                                    style: textStyle.titleLarge!.copyWith(color: Colors.black26)),
                                TextSpan(text: '1', style: textStyle.titleLarge),
                                TextSpan(
                                    text: '  + ',
                                    style: textStyle.titleLarge!.copyWith(color: Colors.black26)),
                              ])),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, bottom: 15),
                          child: SectionBuilder(
                            section: Section(title: l10n.selectSize, children: sizes),
                            trailing: Text(
                              l10n.sizeGuide,
                              style: const TextStyle(
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            Text(
                              '\$12.40',
                              style: textStyle.titleLarge,
                            ),
                            const Spacer(),
                            FilledButton(
                              onPressed: () {},
                              style: FilledButton.styleFrom(
                                backgroundColor: color.tertiary,
                                fixedSize: const Size(200, 50),
                                shape: ContinuousRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                              child: Text(
                                l10n.buyOne,
                                style: TextStyle(color: color.secondary),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
