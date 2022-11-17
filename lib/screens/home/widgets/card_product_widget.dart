import 'package:ecommerce_test/global/theme/theme.dart';
import 'package:flutter/material.dart';

class CardProductWidget extends StatelessWidget {
  final String imageUrl;
  final String price;
  final String title;

  const CardProductWidget({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: 150,
            child: Image(
              image: NetworkImage(imageUrl),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                child: Center(
                  child: Text(
                    'New',
                    style:
                        theme.textTheme.headline4?.copyWith(color: whiteColor),
                  ),
                ),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 102, 0),
                    borderRadius: BorderRadius.circular(10)),
                width: 50,
                height: 25,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: ListTile(
                title: Text(
                  "\$ " + price,
                  maxLines: 2,
                  style: theme.textTheme.headline4?.copyWith(color: inputGrey),
                ),
                subtitle: Text(
                  title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.headline5?.copyWith(color: inputGrey),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
