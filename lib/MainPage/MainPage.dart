import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zynjyr/MainPage/Sales.dart';

import 'TopProduct.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(245, 245, 245, 1),
        body: CustomScrollView(slivers: [
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              child: TextField(
                controller: textController,
                cursorColor: Colors.black,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  suffixIcon: const Icon(
                    Icons.search,
                    size: 20,
                  ),
                  hintText: "Search products",
                  hintStyle: const TextStyle(
                      fontSize: 14,
                      color: Color.fromRGBO(174, 174, 174, 1),
                      fontWeight: FontWeight.w400),
                  contentPadding: const EdgeInsets.only(left: 25, right: 25),
                  filled: true,
                  fillColor: Colors.white,
                  // disabledBorder: OutlineInputBorder(
                  //     borderSide: BorderSide(color: Colors.red,width: 1),
                  //     borderRadius: BorderRadius.circular(50)
                  // ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color.fromRGBO(223, 223, 223, 1), width: 1),
                      borderRadius: BorderRadius.circular(50)),
                  border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.red, width: 1),
                      borderRadius: BorderRadius.circular(50)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, bottom: 50),
              child: Row(
                children: [
                  Flexible(
                    flex: 2,
                    child: Stack(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                "asset/img/1.jpg",
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 90,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              gradient: const LinearGradient(
                                stops: [
                                  -0.018,
                                  0.93,
                                ],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color(0xFFcf1e35),
                                  Color.fromRGBO(249, 134, 98, 0.87),
                                ],
                              )),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                bottom: 10, top: 10, left: 45),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 10),
                                      child:
                                          SvgPicture.asset("asset/icon/1.svg"),
                                    ),
                                    const Text(
                                      "All",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                          color:
                                              Color.fromRGBO(255, 242, 238, 1)),
                                    ),
                                    const Text(
                                      "Categories",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                          color:
                                              Color.fromRGBO(255, 242, 238, 1)),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 90,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color.fromRGBO(217, 217, 217, 1),
                                width: 1),
                            borderRadius: BorderRadius.circular(12),
                            color: const Color.fromRGBO(255, 255, 255, 1)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset("asset/icon/Union.svg"),
                            const Padding(
                              padding: EdgeInsets.only(top: 15),
                              child: Text(
                                "Sales",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
                                    color: Color.fromRGBO(233, 131, 101, 1)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ])),
          const TopProduct(),
         const SliverPadding(padding: EdgeInsets.only(top: 40,bottom: 40),sliver:Sales() ,),
          SliverList(delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15,bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: const Color.fromRGBO(249, 134, 98, 0.15)),
                        child:
                        Center(child: SvgPicture.asset("asset/icon/Prosent.svg")),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "Sales",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18),
                        ),
                      )
                    ],
                  ),
                  const Icon(Icons.arrow_forward)
                ],
              ),
            ),
          ])),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
                  (context, index) {
                return  Container(
                  margin: const EdgeInsets.only(left: 5, right: 5),
                  width: 160,
                  height: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color.fromRGBO(255, 255, 255, 1),
                  ),
                  child: Column(
                    children: [
                      ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8)),
                          child: Image.asset("asset/img/2.png")),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            const Expanded(
                                child: Text(
                                  "Lorem ipsum dolor sit amet, co",
                                  maxLines: 1,
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500),
                                )),
                            SvgPicture.asset("asset/icon/3.svg"),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Row(
                          children: [
                            const Text(
                              "200",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Color.fromRGBO(249, 134, 98, 1)),
                            ),
                            Container(
                                margin: const EdgeInsets.only(left: 3),
                                decoration: BoxDecoration(color: const Color.fromRGBO(255, 247, 244, 1),
                                    borderRadius: BorderRadius.circular(3)
                                ),
                                width: 30,
                                height: 17,
                                child: const Center(
                                  child: Text(
                                    "TMT",
                                    style: TextStyle(
                                        color: Color.fromRGBO(249, 134, 98, 1),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600

                                    ),
                                  ),
                                ))
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
              childCount: 10,
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 15,
              crossAxisSpacing: 15,
              childAspectRatio: 0.9,
            ),
          ),
        ]));
  }
}
