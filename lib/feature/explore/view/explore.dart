import 'package:flutter/material.dart';
import 'package:groceries_app/feature/explore/view/explore_tem.dart';
import 'package:groceries_app/feature/explore/widget/search_field.dart';

class ExploreScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: SafeArea(
        top: true,
        right: false,
        left: false,
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.only(
            //top: 57
            right: 30,
            left: 30,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Find Products",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight(700),
                  height: 20 / 18,
                  letterSpacing: 0,
                  fontFamily: "Gilroy",
                ),
              ),
              SizedBox(height: 30),
              SearchField(),
              SizedBox(height: 20),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                    childAspectRatio: 0.8,
                    //mainAxisExtent: ,
                  ),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ExploreTem(),
                          ),
                        );
                      },
                      child: Container(
                        width: 174.5,
                        height: 189.1,
                        decoration: BoxDecoration(
                          color: Color(0xff53B175).withAlpha(10),
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(
                            width: 1,
                            color: Color(0xff53B175).withAlpha(70),
                          ),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              blurRadius: 12,
                              offset: Offset(0, 6),
                              blurStyle: BlurStyle.normal,
                              spreadRadius: 0,
                              color: Color(0xffffffff).withAlpha(0),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/Image/pngfuel 6.png",
                              width: 111.37,
                              height: 74.9,
                              fit: BoxFit.cover,
                              alignment: AlignmentGeometry.topCenter,
                            ),
                            SizedBox(height: 27.5),
                            Text(
                              "Frash Fruits\n& Vegetable",
                              style: TextStyle(
                                color: Color(0xff181725),
                                fontSize: 16,
                                fontWeight: FontWeight(400),
                                height: 22 / 16,
                                letterSpacing: 0.1,
                              ),
                              textAlign: TextAlign.center,
                              maxLines: 2,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
