import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoes_store/Presentation/widgets/cart_icon.dart';
import 'package:shoes_store/Presentation/widgets/drawer_icon.dart';
import 'package:shoes_store/Presentation/widgets/product_card.dart';
import 'package:adobe_xd/adobe_xd.dart';
import 'package:shoes_store/Presentation/widgets/search_widget.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:shoes_store/model/product.dart';
import 'package:shoes_store/utils/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: <TargetPlatform, PageTransitionsBuilder>{
            TargetPlatform.android: ZoomPageTransitionsBuilder(),
          },
        ),
        scrollbarTheme: ScrollbarThemeData()
            .copyWith(
              thumbColor: MaterialStateProperty.all(Color(0xff0101EE)),
            )
            .copyWith(),
        appBarTheme: AppBarTheme(backgroundColor: Colors.white, elevation: 0),
        backgroundColor: Colors.white,
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final List<Product> products = Products().products;
    final List<Product> smallProducts = SmallProducts().products;

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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SearchWidget(),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(30),
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (BuildContext context, int i) {
                return ProductCard(
                  imageUrl: products[i].imageUrl,
                  title: products[i].title,
                  price: products[i].price,
                );
              },
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Adobe XD layer: 'YOU MIGHT ALSO LIKE' (text)
                const Padding(
                  padding: EdgeInsets.all(14.0),
                  child: Text(
                    'On Trend',
                    style: mainTextStyle,
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.left,
                  ),
                ),
                Expanded(
                  child: Scrollbar(
                    thickness: 2.5,
                    scrollbarOrientation: ScrollbarOrientation.top,
                    showTrackOnHover: true,
                    isAlwaysShown: true,
                    radius: const Radius.circular(30),
                    hoverThickness: 100,
                    // interactive: true,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: smallProducts.length,
                      itemBuilder: (BuildContext context, int i) {
                        return Container(
                          child: Column(
                            children: [
                              Container(
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image:
                                        AssetImage(smallProducts[i].imageUrl!),
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                              ),
                              // Image.asset("assets/images/nike_red.png"),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  // Adobe XD layer: 'YOU MIGHT ALSO LIKE' (text)
                                  Text(
                                    smallProducts[i].price!.toString(),
                                    style: mainTextStyle,
                                    textHeightBehavior: TextHeightBehavior(
                                        applyHeightToFirstAscent: false),
                                    textAlign: TextAlign.left,
                                  ),
                                  GradientIcon(
                                    Icons.favorite_outline,
                                    30.0,
                                    const LinearGradient(
                                      colors: <Color>[
                                        Color(0xFF000000),
                                        Color(0xff0101ee)
                                      ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          margin: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 30),
                          // padding: EdgeInsets.symmetric(horizontal: 100),
                          height: 100,
                          width: 150,
                          decoration: BoxDecoration(
                            // image: DecorationImage(
                            //     image: AssetImage("assets/images/nike_red.png")),
                            borderRadius: BorderRadius.circular(17.0),
                            color: const Color(0xfff6eef9),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0x52b06dcc),
                                offset: Offset(0, 50),
                                blurRadius: 99,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class GradientIcon extends StatelessWidget {
  GradientIcon(
    this.icon,
    this.size,
    this.gradient,
  );

  final IconData icon;
  final double size;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      child: SizedBox(
        width: size * 1.2,
        height: size * 1.2,
        child: Icon(
          icon,
          size: size,
          color: Colors.white,
        ),
      ),
      shaderCallback: (Rect bounds) {
        final Rect rect = Rect.fromLTRB(0, 0, size, size);
        return gradient.createShader(rect);
      },
    );
  }
}
