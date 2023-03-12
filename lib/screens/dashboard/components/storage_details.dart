import 'package:admin_ui/screens/dashboard/components/storage_info_card.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'chart.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: secondaryColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          const  Text("Storage Details",
              style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.w500)),
          const   SizedBox(
            height: defaultPadding,
          ),
          const   Chart(),
          Column(
            children: const [
              StorageInfoCard(
                  title: "Documents Files",
                  svg: "assets/icons/Documents.svg",
                  amountOfFiles: "1329",
                  numOfFiles: "1.3Gb"
              ),
              StorageInfoCard(
                  title: "Media Files",
                  svg: "assets/icons/media.svg",
                  amountOfFiles: "1328",
                  numOfFiles: "1.3Gb"
              ),
              StorageInfoCard(
                  title: "Other Files",
                  svg: "assets/icons/folder.svg",
                  amountOfFiles: "1328",
                  numOfFiles: "1.3Gb"
              ),
              StorageInfoCard(
                  title: "Unknown Files",
                  svg: "assets/icons/unknown.svg",
                  amountOfFiles: "1329",
                  numOfFiles: "1.3Gb"
              )
            ],
          )
        ],
      ),
    );
  }
}
