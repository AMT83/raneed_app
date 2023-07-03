import 'package:flutter/material.dart';
import 'package:raneed_app/second.dart';
import 'package:raneed_app/third.dart';

import 'line_chart.dart';
import 'navbar.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key, required this.title});
  final String title;

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    Color desiredColor = const Color.fromRGBO(37, 181, 218, 1);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: desiredColor,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Text(
              'ياهلا وسهلا\n ! بريما ',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'Tajawal',
                fontWeight: FontWeight.w700,
                //     height: 20,
              ),
            ),
          ),
        ],
        leading: Stack(
          children: [
            IconButton(
              icon: const Icon(
                Icons.notifications_none_sharp,
                color: Colors.white,
                size: 40,
              ),
              onPressed: () {},
            ),
            Positioned(
              top: 25,
              right: 12,
              child: Container(
                padding: const EdgeInsets.all(2),
                decoration: const BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
                constraints: const BoxConstraints(
                  minWidth: 16,
                  minHeight: 16,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 102,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/nav_background.png",
            ),
            fit: BoxFit.cover, // Adjust the image fit as needed
          ),
        ),
        child: CustomBottomNavigationBar(
          icons: const [
            Icons.settings_applications,
            Icons.table_chart_outlined,
            Icons.home_outlined,
          ],
          labels: const [
            '',
            '',
            '',
          ],
          onTabSelected: (index) {
            if (index == 0) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const FirstPage(title: '')));
            } else if (index == 1) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SecondPage(title: '')));
            } else if (index == 2) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ThirdPage(title: '')));
            }
          },
        ),
      ),
      body: Center(
        child: Stack(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60),
                bottomRight: Radius.circular(60),
              ),
              child: Container(
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.only(
                  //   bottomLeft: Radius.circular(25.0),
                  //   bottomRight: Radius.circular(45.0),
                  // ),
                  color: desiredColor,
                ),
                height: 270,
                width: double.infinity,
              ),
            ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    "assets/images/image 2.png",
                    scale: 0.9,
                  ),

                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.85,
                      height: 175,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x1C000000),
                            blurRadius: 4,
                            offset: Offset(0, 0),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Positioned(
                                        top: 30,
                                        right: 42,
                                        child: Container(
                                          width: 9,
                                          height: 9,
                                          decoration: const ShapeDecoration(
                                            color: Color(0xFF80ED99),
                                            shape: OvalBorder(),
                                          ),
                                        ),
                                      ),
                                      const Text(
                                        'ادخاراتك',
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontFamily: 'Tajawal',
                                          fontWeight: FontWeight.w500,
                                          height: 3,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Text(
                                    '٢٠٠ ريال',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color(0xFF80ED99),
                                      fontSize: 20,
                                      fontFamily: 'Tajawal',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Stack(
                                    textDirection: TextDirection.rtl,
                                    children: [
                                      Positioned(
                                        top: 30,
                                        right: 58,
                                        child: Container(
                                          width: 9,
                                          height: 9,
                                          decoration: const ShapeDecoration(
                                            color: Color(0xFFFC7474),
                                            shape: OvalBorder(),
                                          ),
                                        ),
                                      ),
                                      const Text(
                                        'مصروفاتك',
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontFamily: 'Tajawal',
                                          fontWeight: FontWeight.w500,
                                          height: 3,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    '٨٠٠٠ ريال',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color(0xFFFC7474),
                                      fontSize: 20,
                                      fontFamily: 'Tajawal',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          const Divider(
                            thickness: 0.3,
                            indent: 10,
                            endIndent: 20,
                          ),
                          Container(
                            child: Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(
                                    right: 0,
                                    left: 11,
                                  ),
                                  width: 318,
                                  height: 50,
                                  child: const Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text:
                                              'صرفت قيمة ٤٥٠٠ ريال على المنتجات الغذائية خلال هذا الشهر.\n     ',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontFamily: 'Tajawal',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'اخبرني المزيد',
                                          style: TextStyle(
                                            color: Color(0xFF737373),
                                            fontSize: 12,
                                            fontFamily: 'Tajawal',
                                            fontWeight: FontWeight.w700,
                                            height: 0,
                                          ),
                                        ),
                                      ],
                                    ),
                                    textAlign: TextAlign.right,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  // Container(
                  //   width: 369,
                  //   height: 296,
                  //   decoration: ShapeDecoration(
                  //     color: Color(0xFFF8FAF9),
                  //     shape: RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.circular(27),
                  //     ),
                  //     shadows: [
                  //       BoxShadow(
                  //         color: Color(0x99DFDFDF),
                  //         blurRadius: 23,
                  //         offset: Offset(0, 0),
                  //         spreadRadius: 4,
                  //       )
                  //     ],
                  //   ),
                  // ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 275,
                    padding: const EdgeInsets.only(
                      top: 28,
                      left: 28,
                      right: 40,
                      bottom: 28,
                    ),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x0A000000),
                          blurRadius: 30,
                          offset: Offset(0, 0),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: double.infinity,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 30,
                                            height: 30,
                                            child:
                                                Image.asset('assets/right.png'),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text(
                                      'مصروفاتك',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: Colors.black
                                            .withOpacity(0.8500000238418579),
                                        fontSize: 10,
                                        fontFamily: 'Tajawal',
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.50,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 10),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 30,
                                        height: 30,
                                        // decoration: const ShapeDecoration(
                                        //   color: Colors.white,
                                        //   shape: OvalBorder(
                                        //     side: BorderSide(
                                        //       width: 0.75,
                                        //       strokeAlign: BorderSide
                                        //           .strokeAlignCenter,
                                        //       color: Color(0xFF38A3A5),
                                        //     ),
                                        //   ),
                                        // ),
                                        child: Image.asset('assets/left.png'),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'مدخراتك',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Colors.black
                                          .withOpacity(0.8500000238418579),
                                      fontSize: 12,
                                      fontFamily: 'Tajawal',
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 0.50,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const LineChartWidget(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
