import 'package:flutter/material.dart';

import '../../constants.dart';
import 'components/header.dart';
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
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "My Files",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          ElevatedButton.icon(
                              style: TextButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: defaultPadding * 1.5,
                                    vertical: defaultPadding,
                                  )),
                              onPressed: () {},
                              icon: const Icon(Icons.add),
                              label: const Text("Add New"))
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: defaultPadding,
                ),
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
