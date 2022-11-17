import 'package:ecommerce_test/global/theme/theme.dart';
import 'package:ecommerce_test/model/product_model.dart';
import 'package:ecommerce_test/screens/bags/bags_page.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key, required this.e}) : super(key: key);
  final ProductModel e;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    final theme = Theme.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: whiteColor,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment.bottomRight,
                          end: Alignment.topLeft,
                          colors: [
                            Color.fromARGB(255, 214, 214, 214),
                            Color.fromARGB(255, 255, 255, 255),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(5)),
                    height: height / 2,
                    width: width,
                    child: Image(
                      image: NetworkImage(e.image ??
                          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jp"),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                    ),
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Text(
                  "\$ " + e.price.toString(),
                  style: theme.textTheme.headline1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  e.title ?? "",
                  style:
                      theme.textTheme.headline1?.copyWith(color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  top: 10,
                  bottom: 10,
                ),
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
                            style: theme.textTheme.headline3
                                ?.copyWith(color: whiteColor),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 228, 138, 4),
                            borderRadius: BorderRadius.circular(10)),
                        width: 80,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Center(
                          child: Text(
                            'BOSS X FREDDIE MERCURY',
                            style: theme.textTheme.headline3
                                ?.copyWith(color: whiteColor),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10)),
                        width: 200,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Center(
                          child: Text(
                            'REGULAR FIT',
                            style: theme.textTheme.headline3
                                ?.copyWith(color: whiteColor),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 206, 204, 204),
                            borderRadius: BorderRadius.circular(10)),
                        width: 160,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  "DETAIL",
                  style:
                      theme.textTheme.headline4?.copyWith(color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  e.description ?? "",
                  style:
                      theme.textTheme.headline5?.copyWith(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                padding:
                    const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
              ),
              onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => BagsPage()),
                  ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.shopping_bag_outlined,
                    color: whiteColor,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "ADD TO SHOPPING BAG",
                    style:
                        theme.textTheme.headline4?.copyWith(color: whiteColor),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
