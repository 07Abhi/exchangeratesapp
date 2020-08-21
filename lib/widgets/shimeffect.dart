import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimEffect extends StatelessWidget {
  const ShimEffect({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        child: Column(
          children: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]
              .map((_) => Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      height: 30.0,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                    ),
                  ))
              .toList(),
        ),
        baseColor: Colors.grey[300],
        highlightColor: Colors.white);
  }
}
