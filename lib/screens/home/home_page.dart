import 'package:ecommerce_test/global/theme/theme.dart';
import 'package:ecommerce_test/providers/data_provider.dart';
import 'package:ecommerce_test/screens/detail/detail_page.dart';
import 'package:ecommerce_test/screens/home/home_page.dart';
import 'package:ecommerce_test/screens/home/widgets/bottom_navigation_bar_widget.dart';
import 'package:ecommerce_test/screens/home/widgets/card_product_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Homepage extends ConsumerWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final _data = ref.watch(userDataProvider);
    final theme = Theme.of(context);
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      bottomNavigationBar: const BottomNavigationBarWidget(),
      backgroundColor: const Color.fromARGB(255, 245, 243, 243),
      body: _data.when(
        data: (_data) {
          return SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: const Center(
                              child: Icon(
                                Icons.menu,
                                color: Colors.black,
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 204, 203, 203)),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            width: 45,
                            height: 45,
                          ),
                          ToggleSwitch(
                            minWidth: 60.0,
                            minHeight: 40.0,
                            radiusStyle: true,
                            initialLabelIndex: 0,
                            labels: const ['MAN', 'WOMAN'],
                            fontSize: 11,
                            dividerMargin: 3,
                            cornerRadius: 10.0,
                            activeFgColor: Colors.white,
                            inactiveBgColor:
                                const Color.fromARGB(255, 255, 254, 254),
                            inactiveFgColor: Colors.grey,
                            totalSwitches: 2,
                            activeBgColors: const [
                              [Colors.black],
                              [Colors.black],
                            ],
                            onToggle: (index) {
                              print('switched to: $index');
                            },
                          ),
                          Container(
                            child: const Center(
                              child: Icon(
                                Icons.search,
                                color: Colors.black,
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 204, 203, 203)),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            width: 45,
                            height: 45,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: SizedBox(
                          width: width,
                          child: Stack(
                            children: [
                              const Image(
                                image: NetworkImage(
                                    "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/grocery-sale-retail-or-e-commerce-banner-ad-design-template-67720435bb809be27f46dfb1dd44c6fa_screen.jpg?ts=1606113265"),
                              ),
                              Positioned(
                                bottom: 10,
                                left: 10,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary:
                                        const Color.fromARGB(255, 255, 102, 0),
                                  ),
                                  onPressed: () {},
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 0, horizontal: 10),
                                    child: Text(
                                      'SHOP NOW',
                                      style: theme.textTheme.headline5
                                          ?.copyWith(color: whiteColor),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10, bottom: 5, left: 10),
                      child: SizedBox(
                        height: 40,
                        child: ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              child: Center(
                                child: Text(
                                  'New',
                                  style: theme.textTheme.headline5
                                      ?.copyWith(color: whiteColor),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(10)),
                              width: 80,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              child: Center(
                                child: Text(
                                  'CLOTHING',
                                  style: theme.textTheme.headline5
                                      ?.copyWith(color: Colors.black),
                                ),
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                color: const Color.fromARGB(255, 248, 247, 247),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              width: 100,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              child: Center(
                                child: Text(
                                  'NEW IN',
                                  style: theme.textTheme.headline5
                                      ?.copyWith(color: Colors.black),
                                ),
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                color: const Color.fromARGB(255, 248, 247, 247),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              width: 100,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              child: Center(
                                child: Text(
                                  'BOSS & NEW',
                                  style: theme.textTheme.headline5
                                      ?.copyWith(color: Colors.black),
                                ),
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                color: const Color.fromARGB(255, 248, 247, 247),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              width: 100,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: StaggeredGrid.count(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 2,
                        children: [
                          ..._data.map(
                            (e) => Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              child: Container(
                                decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                    begin: Alignment.bottomRight,
                                    end: Alignment.topLeft,
                                    colors: [
                                      Color.fromARGB(255, 255, 255, 255),
                                      Color.fromARGB(255, 255, 255, 255),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                height: 200,
                                width: 150,
                                child: InkWell(
                                  onTap: () => Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => DetailPage(
                                        e: e,
                                      ),
                                    ),
                                  ),
                                  child: CardProductWidget(
                                    imageUrl: e.image ??
                                        "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jp",
                                    title: e.title ?? "",
                                    price: e.price.toString(),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        error: (err, s) => Center(child: Text(err.toString())),
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
