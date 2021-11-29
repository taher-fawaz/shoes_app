import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String? title;
  final String? imageUrl;
  // final int? color1;
  // final int? color2;
  final bool isGradient;
  const ButtonWidget({
    Key? key,
    this.title = 'Buy now',
    this.imageUrl = "assets/images/Group_15.png",
    this.isGradient = false,
    // this.color1 = 0xffb06dcc,
    // this.color2 = 0xff0101ee
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            imageUrl!,
            height: 32,
            width: 32,
          ),
          Text(
            title!,
            style: const TextStyle(
              fontFamily: 'Bebas Neue',
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: Color(0xffffffff),
              letterSpacing: 1.2000000000000002,
              height: 1.375,
            ),
            textHeightBehavior:
                const TextHeightBehavior(applyHeightToFirstAscent: false),
            textAlign: TextAlign.left,
          ),
        ],
      ),
      width: 175,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: !isGradient ? Color(0xFFECCAFD) : null,
        gradient: isGradient
            ? LinearGradient(
                begin: Alignment(-0.72, -0.54),
                end: Alignment(2.71, 3.08),
                colors: [Color(0xffb06dcc), Color(0xff0101ee)],
                stops: [0.0, 1.0],
              )
            : null,
        boxShadow: const [
          BoxShadow(
            color: Color(0x51b06dcc),
            offset: Offset(0, 50),
            blurRadius: 99,
          ),
        ],
      ),
    );
  }
}
