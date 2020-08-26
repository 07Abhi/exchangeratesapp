import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimEffect extends StatelessWidget {
  bool darkmode;
  ShimEffect(this.darkmode);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      child: Column(
        children: [
          0,
          1,
          2,
        ]
            .map(
              (_) => Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        height: 230.0,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: Container(
                        height: 230.0,
                        width: 150.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            )
            .toList(),
      ),
      baseColor: darkmode ? Colors.grey[600] : Colors.grey[300],
      highlightColor: darkmode ? Colors.white60 : Colors.white,
    );
  }
}
