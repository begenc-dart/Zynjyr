
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Sales extends StatefulWidget {
  const Sales({Key? key}) : super(key: key);

  @override
  State<Sales> createState() => _SalesState();
}

class _SalesState extends State<Sales> {
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildListDelegate([
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
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
          Container(
            margin: const EdgeInsets.only(top: 15),
            height: 200,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return  Container(
                    margin: const EdgeInsets.only(left: 5, right: 5),
                    width: 160,
                    height: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color.fromRGBO(255, 255, 255, 1),
                    ),
                    child: Stack(
                      children: [
                        Column(
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
                        Positioned(bottom: 0,right: 0,child: ClipRRect(borderRadius: BorderRadius.only(bottomRight: Radius.circular(3)),child: SvgPicture.asset("asset/icon/Vector.svg")))
                      ],
                    ),
                  );
                }),
          ),
        ]));
  }
}
