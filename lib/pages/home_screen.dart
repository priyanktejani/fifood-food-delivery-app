import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6FF),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        titleSpacing: 26,
        title: RichText(
          text: TextSpan(
            text: 'Good moring, ',
            style: GoogleFonts.roboto(
              color: Colors.black,
              fontWeight: FontWeight.w300,
              fontSize: 16,
            ),
            children: [
              TextSpan(
                text: 'Priyank Tejani',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/icons/menu_icons.png',
                width: 24,
                height: 19,
              ),
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50.0),
          child: Padding(
            padding: const EdgeInsets.only(left: 14, right: 26),
            child: TextField(
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.search,
              style: const TextStyle(fontSize: 16),
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 26,
                ),
                suffixIcon: Image.asset('assets/icons/search_icons.png',),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide.none),
                hintStyle: GoogleFonts.roboto(
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.italic,
                ),
                hintText: "What  you wanna order today ?..",
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SizedBox(
            //   height: 220,
            //   child: ListView.builder(
            //     scrollDirection: Axis.horizontal,
            //     itemCount: 2,
            //     itemBuilder: (BuildContext context, int index) {
            //       return Padding(
            //         padding: const EdgeInsets.only(left: 14),
            //         child: Container(
            //           width: 380,
            //           decoration: BoxDecoration(
            //             // color: const Color(0xffEA574F),
            //             borderRadius: BorderRadius.circular(20),
            //             gradient: const LinearGradient(
            //               colors: [
            //                 Color(0xff181829),
            //                 Color(0xff14142B),
            //               ],
            //             ),
            //           ),
            //         ),
            //       );
            //     },
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.only(top: 60, left: 26),
              child: Text(
                'Categories',
                style: GoogleFonts.roboto(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff5200FF),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: SizedBox(
                height: 124,
                child: ListView(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: 81,
                      decoration: BoxDecoration(
                        color: const Color(0xff5200FF),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          'All',
                          style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    const VerticalDivider(
                      color: Colors.transparent,
                    ),
                    SizedBox(
                      width: 130,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Positioned(
                            bottom: 0,
                            child: Container(
                              height: 83,
                              width: 130,
                              decoration: BoxDecoration(
                                color: const Color(0xffEA574F),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 10,
                            top: 0,
                            child: Image.asset(
                              'assets/images/Donut.png',
                              height: 94,
                            ),
                          ),
                          Positioned(
                            bottom: 12,
                            child: Text(
                              'Donut',
                              style: GoogleFonts.roboto(
                                fontSize: 30,
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const VerticalDivider(
                      color: Colors.transparent,
                    ),
                    SizedBox(
                      width: 130,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Positioned(
                            bottom: 0,
                            child: Container(
                              height: 83,
                              width: 130,
                              decoration: BoxDecoration(
                                color: const Color(0xff3AA856),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 16,
                            top: 0,
                            child: Image.asset(
                              'assets/images/Burger_Final.png',
                              height: 90,
                            ),
                          ),
                          Positioned(
                            bottom: 12,
                            child: Text(
                              'Burger',
                              style: GoogleFonts.roboto(
                                fontSize: 30,
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 52,
                left: 32,
                bottom: 0,
              ),
              child: Text(
                'Popular',
                style: GoogleFonts.roboto(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(
                  horizontal: 26,
                ),
                children: [
                  SizedBox(
                    height: 186,
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            padding: const EdgeInsets.only(
                              top: 24,
                              right: 120,
                              left: 18,
                              bottom: 18,
                            ),
                            height: 154,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: const Color(0xffEA574F),
                              ),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade300,
                                  blurRadius: 8,
                                  offset: const Offset(0, 10),
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Fries',
                                      style: GoogleFonts.roboto(
                                        shadows: [
                                          const Shadow(
                                            color: Colors.black,
                                            offset: Offset(0, -7),
                                          )
                                        ],
                                        fontSize: 30,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.transparent,
                                        decoration: TextDecoration.underline,
                                        decorationColor: Colors.blue,
                                        decorationThickness: 2,
                                      ),
                                    ),
                                    const VerticalDivider(
                                      width: 2,
                                    ),
                                    Column(
                                      children: [
                                        const SizedBox(
                                          height: 6,
                                        ),
                                        RatingBar.builder(
                                          initialRating: 4.5,
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 5,
                                          itemSize: 22,
                                          itemBuilder: (context, _) =>
                                              const Icon(
                                            Icons.star,
                                            color: Colors.black,
                                          ),
                                          onRatingUpdate: (rating) {},
                                        ),
                                        Text(
                                          'Top of the day',
                                          style: GoogleFonts.roboto(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300,
                                            fontStyle: FontStyle.italic,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const Divider(
                                  height: 12,
                                  color: Colors.transparent,
                                ),
                                Text(
                                  'The term hot dog can also refer to the sausage itself. The sausage used is a wiener or a frankfurter.',
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.roboto(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Image.asset(
                            'assets/images/Fries.png',
                            height: 156,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 186,
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            padding: const EdgeInsets.only(
                              top: 24,
                              right: 120,
                              left: 18,
                              bottom: 18,
                            ),
                            height: 154,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: const Color(0xffEA574F),
                              ),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade300,
                                  blurRadius: 8,
                                  offset: const Offset(0, 10),
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Sando',
                                      style: GoogleFonts.roboto(
                                        shadows: [
                                          const Shadow(
                                            color: Colors.black,
                                            offset: Offset(0, -7),
                                          )
                                        ],
                                        fontSize: 30,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.transparent,
                                        decoration: TextDecoration.underline,
                                        decorationColor: Colors.blue,
                                        decorationThickness: 2,
                                      ),
                                    ),
                                    const VerticalDivider(
                                      width: 2,
                                    ),
                                    Column(
                                      children: [
                                        const SizedBox(
                                          height: 6,
                                        ),
                                        RatingBar.builder(
                                          initialRating: 4.5,
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 5,
                                          itemSize: 22,
                                          itemBuilder: (context, _) =>
                                              const Icon(
                                            Icons.star,
                                            color: Colors.black,
                                          ),
                                          onRatingUpdate: (rating) {},
                                        ),
                                        Text(
                                          'Top of the day',
                                          style: GoogleFonts.roboto(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300,
                                            fontStyle: FontStyle.italic,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const Divider(
                                  height: 12,
                                  color: Colors.transparent,
                                ),
                                Text(
                                  'The term hot dog can also refer to the sausage itself. The sausage used is a wiener or a frankfurter.',
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.roboto(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Image.asset(
                            'assets/images/Sandwich.png',
                            height: 156,
                          ),
                        )
                      ],
                    ),
                  ),
                   SizedBox(
                    height: 186,
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            padding: const EdgeInsets.only(
                              top: 24,
                              right: 120,
                              left: 18,
                              bottom: 18,
                            ),
                            height: 154,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: const Color(0xffEA574F),
                              ),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade300,
                                  blurRadius: 8,
                                  offset: const Offset(0, 10),
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Hotdog',
                                      style: GoogleFonts.roboto(
                                        shadows: [
                                          const Shadow(
                                            color: Colors.black,
                                            offset: Offset(0, -7),
                                          )
                                        ],
                                        fontSize: 30,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.transparent,
                                        decoration: TextDecoration.underline,
                                        decorationColor: Colors.blue,
                                        decorationThickness: 2,
                                      ),
                                    ),
                                    const VerticalDivider(
                                      width: 2,
                                    ),
                                    Column(
                                      children: [
                                        const SizedBox(
                                          height: 6,
                                        ),
                                        RatingBar.builder(
                                          initialRating: 4.5,
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 5,
                                          itemSize: 22,
                                          itemBuilder: (context, _) =>
                                              const Icon(
                                            Icons.star,
                                            color: Colors.black,
                                          ),
                                          onRatingUpdate: (rating) {},
                                        ),
                                        Text(
                                          'Top of the Week',
                                          style: GoogleFonts.roboto(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300,
                                            fontStyle: FontStyle.italic,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const Divider(
                                  height: 12,
                                  color: Colors.transparent,
                                ),
                                Text(
                                  'The term hot dog can also refer to the sausage itself. The sausage used is a wiener or a frankfurter.',
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.roboto(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Image.asset(
                            'assets/images/Hot Dog.png',
                            height: 156,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
