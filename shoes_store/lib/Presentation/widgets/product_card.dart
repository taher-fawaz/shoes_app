import 'package:flutter/material.dart';
import 'package:shoes_store/Presentation/screens/product_details.dart';
import 'package:shoes_store/utils/constants.dart';

class ProductCard extends StatelessWidget {
  final String? title;
  final double? price;
  final String? imageUrl;
  final double? width;
  final bool? isDetailsPage;
  const ProductCard(
      {Key? key,
      this.title,
      this.price,
      this.imageUrl,
      this.width = 330,
      this.isDetailsPage = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute<void>(
            builder: (BuildContext context) {
              return const ProductDetailsScreen();
            },
          ),
        );
      },
      child: Stack(
        // alignment: Alignment.center,
        children: [
          Container(
            // margin: const EdgeInsets.only(top: 90),
            height: 300,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(19.0),
              gradient: const LinearGradient(
                begin: Alignment(-0.45, -0.42),
                end: Alignment(1.82, 2.56),
                colors: [Color(0xffb06dcc), Color(0xff0101ee)],
                stops: [0.0, 1.0],
              ),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x51b06dcc),
                  offset: Offset(0, 50),
                  blurRadius: 50,
                ),
              ],
            ),
          ),
          Stack(
            // alignment: Alignment.centerLeft,
            children: <Widget>[
              Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'AIR',
                    style: backgroundTextstyle,
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.left,
                  ),

                  // Adobe XD layer: 'YOU MIGHT ALSO LIKE' (text)
                  Text(
                    'ISPA',
                    style: backgroundTextstyleSmaller,
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              Container(
                // margin: const EdgeInsets.only(top: 90),
                height: 320,
                width: 340,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(19.0),
                  gradient: const LinearGradient(
                    begin: Alignment(-0.45, -0.42),
                    end: Alignment(1.82, 2.56),
                    colors: [Color(0x1cb06dcc), Color(0x1c0101ee)],
                    stops: [0.0, 1.0],
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x09b06dcc),
                      offset: Offset(0, 50),
                      blurRadius: 99,
                    ),
                  ],
                ),
              ),
            ],
          ),
          // * this icon favourite

          IconButton(
              // padding: const EdgeInsets.only(bottom: 170, right: 280),
              onPressed: () {
                print("object");
              },
              icon: const Icon(
                Icons.favorite_outline,
                size: 40,
                color: Colors.white,
              )),
          Stack(
            children: [
              // TODO: THIS IS IMAGE
              Stack(
                alignment: Alignment.center,
                children: [
                  Transform.rotate(
                    angle: 5.75,
                    child: Container(
                      height: 360, width: 360,
                      // margin: const EdgeInsets.only(bottom: 340, left: 60),
                      // alignment: Alignment.center,
                      child: Image.asset(
                        imageUrl!,
                        //"assets/images/nike_p.png",
                      ),
                    ),
                  ),
                  Container(
                    width: 300,
                    height: 200,
                    decoration: const BoxDecoration(boxShadow: [
                      BoxShadow(
                        blurRadius: 50,
                        color: Colors.black26,
                      )
                    ]),
                  )
                ],
              ),
              Stack(
                children: <Widget>[
                  Transform.rotate(
                    angle: 0.4538,
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Visibility(
            visible: !isDetailsPage!,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, bottom: 70),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title!,
                    // 'Nike ISPA Air \nMax 720 ',
                    style: secondTextStyle,
                    textHeightBehavior: const TextHeightBehavior(
                        applyHeightToFirstAscent: false),
                    textAlign: TextAlign.left,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 100.0),
                    child: Text(
                      '\$$price',
                      style: secondTextStyle,
                      textHeightBehavior: const TextHeightBehavior(
                          applyHeightToFirstAscent: false),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
