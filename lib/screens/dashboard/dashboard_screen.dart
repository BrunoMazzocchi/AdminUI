import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../responsive.dart';
import 'components/header.dart';
import 'components/my_files.dart';
import 'components/recent_files.dart';
import 'components/storage_details.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            const Header(),
            const SizedBox(
              height: defaultPadding,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                Expanded(
                  flex: 5,
                  child: Column(
                    children:   [
                      const MyFiles(),
                      const  SizedBox(
                        height: defaultPadding,
                      ),
                      const  RecentFiles(),
                      if(Responsive.isMobile(context))
                        const   SizedBox(
                          height: defaultPadding,
                        ),
                      //  If it is less than 850, we show it at the bottom
                      if(Responsive.isMobile(context))
                       const  StorageDetails(),

                    ],
                  ),

                ),
                if(!Responsive.isMobile(context))
                  const SizedBox(
                  width: defaultPadding,
                ),
                //  If it is less than 850, we don't show it
                if(!Responsive.isMobile(context))
                const Expanded(
                  flex: 2,
                  child: StorageDetails(),
                )
              ],
            )
          ],
        ),
      ),
    );
  }



}

