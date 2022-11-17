import 'package:ecommerce_test/global/theme/theme.dart';
import 'package:flutter/material.dart';

class BagsCardWidget extends StatelessWidget {
  const BagsCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
      child: SizedBox(
        height: 110,
        child: Row(
          children: [
            const Checkbox(value: true, onChanged: null),
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: const SizedBox(
                width: 100,
                child: Image(
                  image: NetworkImage(
                      "https://c.clc2l.com/t/M/i/Microsoft-Photos-for-Windows-10-YWytcV.png"),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 8, bottom: 5),
                  child: Text(
                    "\$ 198.00",
                    style: theme.textTheme.headline4,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                  ),
                  child: Text(
                    "BOSS & NBA HOODED",
                    style: theme.textTheme.headline4,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                  ),
                  child: Text(
                    "men's clothing",
                    style: theme.textTheme.headline4,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 30,
                        child: Ink(
                          decoration: const ShapeDecoration(
                            color: Colors.black,
                            shape: CircleBorder(),
                          ),
                          child: IconButton(
                            icon: const Icon(
                              Icons.add,
                              size: 13,
                              color: whiteColor,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Text(
                          "0",
                          style: theme.textTheme.headline4,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                        child: Ink(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 0.5),
                            color: whiteColor,
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            icon: const Icon(
                              Icons.remove,
                              size: 13,
                              color: Colors.black,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          "Size: ",
                          style: theme.textTheme.headline4
                              ?.copyWith(color: inputGrey),
                        ),
                      ),
                      Text(
                        "L",
                        style: theme.textTheme.headline4,
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
