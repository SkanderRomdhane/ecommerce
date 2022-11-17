import 'package:ecommerce_test/global/theme/theme.dart';
import 'package:ecommerce_test/screens/bags/widgets/bags_bottom_navigation_bar_widget.dart';
import 'package:ecommerce_test/screens/bags/widgets/bags_card_widget.dart';
import 'package:flutter/material.dart';

class BagsPage extends StatefulWidget {
  const BagsPage({Key? key}) : super(key: key);

  @override
  State<BagsPage> createState() => _BagsPageState();
}

class _BagsPageState extends State<BagsPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    final theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BagsBottomNavigationBarWidget(),
        backgroundColor: whiteColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                    ),
                  ),
                  Text(
                    "BAGS",
                    style: theme.textTheme.headline4,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.transparent,
                    ),
                  ),
                ],
              ),
              ListView(
                shrinkWrap: true,
                children: const [
                  BagsCardWidget(),
                  BagsCardWidget(),
                  BagsCardWidget(),
                  BagsCardWidget(),
                  BagsCardWidget(),
                  BagsCardWidget(),
                  BagsCardWidget(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
