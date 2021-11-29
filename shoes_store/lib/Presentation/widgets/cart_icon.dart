import 'package:adobe_xd/adobe_xd.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartIcon extends StatelessWidget {
  const CartIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      // padding: const EdgeInsets.all(10),
      height: 50,
      width: 50,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 26.6, start: 0.0),
            Pin(start: 3.0, end: 0.0),
            child: Stack(
              children: <Widget>[
                SizedBox(
                  width: 27.0,
                  height: 14.0,
                  child: SvgPicture.string(
                    '<svg viewBox="293.0 64.0 26.6 13.9" ><path transform="translate(293.0, 64.0)" d="M 6.947368144989014 4.631578922271729 L 26.63157844543457 4.631578922271729 L 24.31578826904297 13.89473628997803 L 10.42105197906494 13.89473628997803 L 5.789473533630371 0 L 0 0" fill="none" stroke="#000000" stroke-width="3" stroke-miterlimit="10" stroke-linecap="butt" /></svg>',
                    allowDrawingOutsideViewBox: true,
                  ),
                ),
                Transform.translate(
                  offset: Offset(10.4, 17.4),
                  child:
                      // Adobe XD layer: 'Oval' (shape)
                      Container(
                    width: 4.6,
                    height: 4.6,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      color: const Color(0xff0101ee),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(19.7, 17.4),
                  child:
                      // Adobe XD layer: 'Oval' (shape)
                      Container(
                    width: 4.6,
                    height: 4.6,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      color: const Color(0xff0101ee),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 12.0, end: 15.0),
            Pin(size: 12.0, start: 0.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xff0101ee),
                border: Border.all(width: 3.0, color: const Color(0xffffffff)),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x51b06dcc),
                    offset: Offset(0, 2),
                    blurRadius: 10,
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
