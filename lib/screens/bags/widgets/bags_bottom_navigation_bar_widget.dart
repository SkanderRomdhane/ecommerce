import 'package:ecommerce_test/global/theme/theme.dart';
import 'package:flutter/material.dart';

class BagsBottomNavigationBarWidget extends StatelessWidget {
  const BagsBottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    final theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      height: 180,
      width: width,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 243, 242, 242),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: ListTile(
                        leading: const Icon(
                          Icons.payment_rounded,
                        ),
                        title: Text(
                          "USE YOUR PROMO CODE",
                          style: theme.textTheme.headline4,
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_sharp,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Divider(
              color: greyDark.withOpacity(0.8),
              thickness: 0.8,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 15),
            child: Row(
              children: [
                Expanded(
                  child: ListTile(
                    title: Text(
                      "TOTAL PAYMENT :",
                      style: theme.textTheme.headline4,
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(
                        "\$ 198.00",
                        style: theme.textTheme.headline4,
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: null,
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.black),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    child: Text(
                      "CHECKOUT",
                      style: theme.textTheme.headline4
                          ?.copyWith(color: whiteColor),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
