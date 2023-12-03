import 'package:flutter/material.dart';

class ReccommendedItem extends StatelessWidget {
  const ReccommendedItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.builder(
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return SizedBox(
              child: Stack(
                children: [
                  Image.asset(
                    "assets/images/Rectangle.png",
                    height: 150,
                    width: 168,
                  ),
                  Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Text(
                          '\$10.00',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal),
                        ),
                      )),
                  Positioned(
                    left: 50,
                    right: 0,
                    top: 90,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                          height: 30,
                          width: 30,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                              color: Colors.deepPurple, shape: BoxShape.circle),
                          child: Image.asset(
                            "assets/images/addIcon.png",
                            height: 15,
                            width: 15,
                          )),
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
