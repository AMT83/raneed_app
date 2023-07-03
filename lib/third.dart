import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'first.dart';
import 'line_chart.dart';
import 'navbar.dart';
import 'second.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key, required this.title});
  final String title;

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
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
              borderRadius: const BorderRadius.only(
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
                                  const Text(
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
                    height: 20,
                  ),
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'مصروفاتك لشهر فبراير',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Tajawal',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text(
                              '35%',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color(0xFFF06937),
                                fontSize: 12,
                                fontFamily: 'Tajawal',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Expanded(child: Container()),
                            const Text(
                              'مطاعم',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color(0xFFF06937),
                                fontSize: 16,
                                fontFamily: 'Tajawal',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Image.asset('assets/restaurant_FILL1.png',
                                width: 28, height: 28, fit: BoxFit.cover),
                          ],
                        ),
                        LinearPercentIndicator(
                          isRTL: true,
                          width: MediaQuery.of(context).size.width * 0.7,
                          animation: true,
                          lineHeight: 5.0,
                          animationDuration: 2500,
                          percent: 0.55,
                          // center: Text("80.0%"),
                          linearStrokeCap: LinearStrokeCap.roundAll,
                          progressColor: Color(0xFFF06937),
                          backgroundColor: Colors.grey.withOpacity(0.5),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text(
                              '20%',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color(0xFFA5236E),
                                fontSize: 12,
                                fontFamily: 'Tajawal',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Expanded(child: Container()),
                            const Text(
                              'ترفيه',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color(0xFFA5236E),
                                fontSize: 16,
                                fontFamily: 'Tajawal',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Image.asset('assets/sports_esports_FILL.png',
                                width: 28, height: 28, fit: BoxFit.cover),
                          ],
                        ),
                        LinearPercentIndicator(
                          isRTL: true,
                          width: MediaQuery.of(context).size.width * 0.7,
                          animation: true,
                          lineHeight: 5.0,
                          animationDuration: 2500,
                          percent: 0.3,
                          // center: Text("80.0%"),
                          linearStrokeCap: LinearStrokeCap.roundAll,
                          progressColor: Color(0xFFA5236E),
                          backgroundColor: Colors.grey.withOpacity(0.5),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text(
                              '40%',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color(0xFF2D969B),
                                fontSize: 12,
                                fontFamily: 'Tajawal',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Expanded(child: Container()),
                            const Text(
                              'تسوق',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color(0xFF2D969B),
                                fontSize: 16,
                                fontFamily: 'Tajawal',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Image.asset('assets/shopping_cart_FILL.png',
                                width: 28, height: 28, fit: BoxFit.cover),
                          ],
                        ),
                        LinearPercentIndicator(
                          isRTL: true,
                          width: MediaQuery.of(context).size.width * 0.7,
                          animation: true,
                          lineHeight: 5.0,
                          animationDuration: 2500,
                          percent: 0.50,
                          // center: Text("80.0%"),
                          linearStrokeCap: LinearStrokeCap.roundAll,
                          progressColor: Color(0xFF2D969B),
                          backgroundColor: Colors.grey.withOpacity(0.5),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text(
                              '15%',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color(0xFFEB1E4B),
                                fontSize: 12,
                                fontFamily: 'Tajawal',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Expanded(child: Container()),
                            const Text(
                              'صحة',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color(0xFFEB1E4B),
                                fontSize: 16,
                                fontFamily: 'Tajawal',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Image.asset('assets/medical_services_FILL.png',
                                width: 28, height: 28, fit: BoxFit.cover),
                          ],
                        ),
                        LinearPercentIndicator(
                          isRTL: true,
                          width: MediaQuery.of(context).size.width * 0.7,
                          animation: true,
                          lineHeight: 5.0,
                          animationDuration: 2500,
                          percent: 0.15,
                          // center: Text("80.0%"),
                          linearStrokeCap: LinearStrokeCap.roundAll,
                          progressColor: Color(0xFFEB1E4B),
                          backgroundColor: Colors.grey.withOpacity(0.5),
                        ),
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
