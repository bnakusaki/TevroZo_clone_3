import 'package:flutter/material.dart';
import 'package:tevrozoclone3/screens/filter_widget/section.dart';

class SectionBuilder extends StatelessWidget {
  const SectionBuilder({
    super.key,
    required this.section,
    this.trailing,
  });

  final Section section;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Text(section.title, style: Theme.of(context).textTheme.titleSmall),
            const Spacer(),
            trailing ?? IconButton(onPressed: () {}, icon: const Icon(Icons.chevron_right))
          ],
        ),
        Padding(
          padding: trailing == null ? EdgeInsets.zero : const EdgeInsets.only(top: 10.0),
          child: SizedBox(
            height: 30,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: section.children.length,
              itemBuilder: ((context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Colors.black26),
                        shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(10))),
                    child: Text(
                      section.children[index],
                      style: TextStyle(color: Theme.of(context).colorScheme.scrim),
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
      ],
    );
  }
}
