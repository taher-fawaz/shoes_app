import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:adobe_xd/adobe_xd.dart';

class DrawerIcon extends StatelessWidget {
  const DrawerIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Scaffold.of(context).openDrawer();
      },
      child: Container(
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.only(left: 10),
        // color: Colors.amber,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Pinned.fromPins(
              Pin(size: 9.9, start: 0.0),
              Pin(size: 2.9, end: 10.0),
              child:
                  // Adobe XD layer: 'Path' (shape)
                  SvgPicture.string(
                '<svg viewBox="24.0 91.1 9.9 2.9" ><path transform="translate(24.0, 91.1)" d="M 0 2.903189420700073 L 9.857283592224121 2.903189420700073 L 9.857283592224121 0 L 0 0 L 0 2.903189420700073 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>',
                allowDrawingOutsideViewBox: true,
                fit: BoxFit.fill,
              ),
            ),
            Pinned.fromPins(
              Pin(
                size: 16.4,
                start: 0.0,
              ),
              Pin(size: 2.9, middle: 0.5),
              child:
                  // Adobe XD layer: 'Path' (shape)
                  SvgPicture.string(
                '<svg viewBox="24.0 83.5 16.4 2.9" ><path transform="translate(24.0, 83.55)" d="M 0 2.903189420700073 L 16.42880630493164 2.903189420700073 L 16.42880630493164 0 L 0 0 L 0 2.903189420700073 Z" fill="#0000ff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>',
                allowDrawingOutsideViewBox: true,
                fit: BoxFit.fill,
              ),
            ),
            Pinned.fromPins(
              Pin(start: 0.0, end: 10.0),
              Pin(size: 2.9, start: 10.0),
              child:
                  // Adobe XD layer: 'Path' (shape)
                  SvgPicture.string(
                '<svg viewBox="24.0 76.0 23.0 2.9" ><path transform="translate(24.0, 76.0)" d="M 0 0 L 0 2.903189420700073 L 23.00032806396484 2.903189420700073 L 23.00032806396484 0 L 0 0 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>',
                allowDrawingOutsideViewBox: true,
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
