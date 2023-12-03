import 'package:firsttest/App_colorst.dart';
import 'package:firsttest/widget/recommend_widget_text.dart';
import 'package:firsttest/style_input.dart';
import 'package:firsttest/widget/recommended_item_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.30,
                child: Stack(
                  children: [
                    Image.asset(
                      "assets/images/backgroundimg.png",
                      fit: BoxFit.cover,
                      height: size.height * 0.25,
                    ),
                    Positioned(
                      left: 20,
                      top: 40,
                      right: 20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(50)),
                            child: const Icon(Icons.arrow_back_ios_new,
                                color: Colors.white),
                          ),
                          Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                color: AppColors.darkGrey,
                                borderRadius: BorderRadius.circular(50)),
                            child: Image.asset(
                              "assets/images/Bookmark.png",
                              width: 13.33,
                              height: 16.66,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 150,
                      left: 20,
                      bottom: 0,
                      child: Stack(
                        children: [
                          Image.asset(
                            "assets/images/Profile.png",
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 23,
                              vertical: 22,
                            ),
                            child: Image.asset("assets/images/imagepizza.png"),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: SizedBox(
                  width: size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          Text(
                            "Pizza hut",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "4.5",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  Text(
                                    "(100)",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 8,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      const Text(
                        '46 Larkrow, London',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        height: 23,
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/images/Icon.png"),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                "Delivery Fee 2\$",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Row(
                            children: [
                              Image.asset("assets/images/timericon.png"),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                "Delivery Fee 2\$",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 4, right: 4, bottom: 4, left: 20),
                        child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: AppColors.darkGrey,
                                borderRadius: BorderRadius.circular(50)),
                            child: Padding(
                              padding: const EdgeInsets.all(2),
                              child: TextFormField(
                                  decoration: applyInputDecoration(
                                      text: "Search your location ",
                                      iconData: Icons.search)),
                            )),
                      ),
                    ],
                  ),
                ),
              ),
              const FoodItem(
                category: 'Recommended Items',
                text: 'View All',
              ),
              const ReccommendedItem(),
              const FoodItem(
                category: 'Menu Of Pizza Hut',
              ),
              SizedBox(
                height: 300,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.3,
                    mainAxisSpacing: 0,
                  ),
                  itemBuilder: (conetxt, index) {
                    return SizedBox(
                      child: Stack(
                        children: [
                          Image.asset(
                            "assets/images/Rectangle.png",
                            height: 150,
                            width: 200,
                          ),
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
                                      color: Colors.deepPurple,
                                      shape: BoxShape.circle),
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
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
