import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class StorageInfoCard extends StatelessWidget {
  const StorageInfoCard({Key? key, required this.title, required this.svg, required this.amountOfFiles, required this.numOfFiles}) : super(key: key);

  final String title, svg, amountOfFiles, numOfFiles;

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.all(defaultPadding),
      margin: const  EdgeInsets.only(top: defaultPadding),
      decoration: BoxDecoration(
        border: Border.all(
            width: 2,
            color: primaryColor.withOpacity(0.15)
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(defaultPadding),
        ),
      ),
      child: Row(
        children: [
          SizedBox(
            height: 20,
            width: 20,
            child: SvgPicture.asset(svg),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    "$amountOfFiles Files",
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(
                        color: Colors.white
                    ),
                  )
                ],
              ),

            ),
          ),
          Text(numOfFiles)
        ],
      ),

    );
  }
}
