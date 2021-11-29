import 'package:adobe_xd/adobe_xd.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoes_store/Presentation/widgets/button_widget.dart';
import 'package:shoes_store/Presentation/widgets/cart_icon.dart';
import 'package:shoes_store/Presentation/widgets/drawer_icon.dart';
import 'package:shoes_store/Presentation/widgets/product_card.dart';
import 'package:shoes_store/utils/constants.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        leading: const DrawerIcon(),
        centerTitle: true,
        title: // Adobe XD layer: 'logo' (shape)
            SvgPicture.string(
          '<svg viewBox="186.0 77.0 43.0 15.2" ><path transform="translate(186.0, 77.0)" d="M 4.743221759796143 15.17030334472656 C 3.461999416351318 15.11989784240723 2.413766145706177 14.77271366119385 1.59413480758667 14.12788009643555 C 1.437711596488953 14.00469303131104 1.064972400665283 13.63534832000732 0.939921498298645 13.47957134246826 C 0.6075495481491089 13.06568717956543 0.3815805017948151 12.66288471221924 0.2308613359928131 12.21597671508789 C -0.2329237014055252 10.84027481079102 0.005769836716353893 9.035048484802246 0.9135950207710266 7.053837776184082 C 1.690884709358215 5.357675075531006 2.890275716781616 3.675417423248291 4.982792854309082 1.345502138137817 C 5.291032314300537 1.002663016319275 6.208949565887451 0 6.21487283706665 0 C 6.217066764831543 0 6.167046546936035 0.08581839501857758 6.104082584381104 0.190321296453476 C 5.560001373291016 1.09282660484314 5.094461441040039 2.155888319015503 4.84084939956665 3.07620906829834 C 4.433446884155273 4.552937507629395 4.482589721679688 5.820225238800049 4.984767913818359 6.802900314331055 C 5.331180095672607 7.479887962341309 5.92506217956543 8.066277503967285 6.592877388000488 8.390432357788086 C 7.761992931365967 8.95770263671875 9.473653793334961 9.004631042480469 11.56397724151611 8.527741432189941 C 11.70789527893066 8.494717597961426 18.83930397033691 6.61996603012085 27.41164779663086 4.361530303955078 C 35.98398971557617 2.102876663208008 42.99890518188477 0.25636887550354 43.00000381469727 0.2578897178173065 C 43.00241470336914 0.2598450779914856 23.08401107788086 8.700464248657227 12.74406242370605 13.07937526702881 C 11.10655403137207 13.77265739440918 10.66865730285645 13.94777011871338 9.898826599121094 14.2154369354248 C 7.930921077728271 14.89981079101562 6.168143272399902 15.22635650634766 4.743221759796143 15.17030334472656 Z" fill="#0000ee" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>',
          allowDrawingOutsideViewBox: true,
          fit: BoxFit.fill,
        ),
        actions: const [CartIcon()],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ProductCard(
            imageUrl: "assets/images/nike_p.png",
            title: 'Nike ISPA Air \nMax 720 ',
            price: 185,
            width: double.infinity,
            isDetailsPage: true,
          ),
          // Adobe XD layer: 'YOU MIGHT ALSO LIKE' (text)
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
            child: Text(
              'Nike ISPA Air Max 720 ',
              style: textStyle,
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          // Adobe XD layer: 'YOU MIGHT ALSO LIKE' (text)
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
            child: Text(
              '\$184',
              style: priceTextStyle,
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          // Adobe XD layer: 'The Nike Joyride Run' (text)
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
            child: Scrollbar(
              child: SingleChildScrollView(
                child: Text(
                  'Utilising the latest innovations and Nike\'s ISPA project which touts a philosophy of improvise, scavenge, protect and adapt Nike ISPA Air Max 720 delivers smooth cushioning. It features an extra-large air unit, providing support along with innovative details inspired by modern life in the city.Utilising the latest innovations and Nike\'s ISPA project—which touts a philosophy of improvise, scavenge, protect and adapt—the Nike ISPA Air Max 720 delivers smooth cushioning. It features an extra-large air unit, providing support along with innovative details inspired by modern life in the city.',
                  style: TextStyle(
                    fontFamily: 'BigNoodleTitling',
                    fontSize: 14,
                    color: Color(0x80000000),
                    letterSpacing: 1.4000000000000001,
                    height: 1.8571428571428572,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textHeightBehavior:
                      TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
          ),
          // Adobe XD layer: 'YOU MIGHT ALSO LIKE' (text)
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
            child: Text(
              'COLORS',
              style: TextStyle(
                fontFamily: 'BigNoodleTitling',
                fontSize: 28,
                color: Color(0xff000000),
                letterSpacing: 2.24,
                height: 0.9285714285714286,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
            child: ColorsPickerRow(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                ButtonWidget(
                    // color1: 0xfff3E0FD,
                    // color2: 0xfff3E0FD,
                    ),
                ButtonWidget(
                  imageUrl: "assets/images/Group_12.png",
                  title: "Add To cart",
                  isGradient: true,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ColorsPickerRow extends StatelessWidget {
  const ColorsPickerRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        ColorPickerCircleItem(),
        ColorPickerCircleItem(
          color: 0xff2379f4,
        ),
        ColorPickerCircleItem(
          color: 0xfffb6e53,
        ),
        ColorPickerCircleItem(
          color: 0xffe6f8e6,
        ),
        ColorPickerCircleItem(
          color: 0xff0101EE,
        ),
      ],
    );
  }
}

class ColorPickerCircleItem extends StatelessWidget {
  final int? color;
  const ColorPickerCircleItem({Key? key, this.color = 0xff000000})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(60.0),
        color: Color(color!),
        boxShadow: const [
          BoxShadow(
            color: Color(0x51b06dcc),
            offset: Offset(0, 20),
            blurRadius: 30,
          ),
        ],
      ),
    );
  }
}
