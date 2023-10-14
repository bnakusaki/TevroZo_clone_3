import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:tevrozoclone3/core/data.dart';
import 'package:tevrozoclone3/screens/filter_widget/section.dart';
import 'package:tevrozoclone3/screens/filter_widget/section_builder.dart';

class FilterWidget extends StatelessWidget {
  const FilterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Container(
      height: MediaQuery.of(context).size.height * 0.6,
      width: double.infinity,
      clipBehavior: Clip.hardEdge,
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.fromLTRB(30.0, 10, 30.0, 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).colorScheme.primary,
      ),
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primary,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.cancel),
              ),
            ),
            Text(
              l10n.filter,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              l10n.filterdescription,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.black45),
            ),
            const Divider(height: 50),
            Row(
              children: [
                Text(l10n.filterdescription, style: Theme.of(context).textTheme.titleSmall),
                const Spacer(),
                IconButton(onPressed: () {}, icon: const Icon(Icons.chevron_right))
              ],
            ),
            Row(
                children: List.generate(
              9,
              (index) => Padding(
                padding: const EdgeInsets.all(5.0),
                child: CircleAvatar(
                  radius: 13,
                  backgroundColor: index == 0 ? colors[0] : colorsAlternating[index % 2],
                ),
              ),
            )),
            for (Section section in filterSections) SectionBuilder(section: section),
            const Spacer(),
            Center(
              child: Text(
                l10n.showAdvancedFilter,
                style: const TextStyle(decoration: TextDecoration.underline),
              ),
            ),
            const Spacer(),
            FilledButton(
              onPressed: () {},
              style: FilledButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.tertiary,
                fixedSize: const Size(double.maxFinite, 50),
                shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(20)),
              ),
              child: Text(
                l10n.buyOne,
                style: TextStyle(color: Theme.of(context).colorScheme.secondary),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
