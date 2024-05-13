import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import '../../Auth/cart_screen.dart';
class CartAdd extends StatelessWidget {
  final String mainText;
  final String subtext;
  final String image;
  final String price;
  CartAdd({required this.mainText,required this.subtext,required this.image,required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        image: DecorationImage(
                            image: AssetImage(image),
                            filterQuality: FilterQuality.high,
                            fit: BoxFit.cover)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(mainText,style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                        ),
                          textAlign: TextAlign.left,),
                        Text(subtext,style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: Colors.black
                        ),
                          textAlign: TextAlign.left,),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            Text(price,style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.deepOrange
                            ),
                            ),
                            SizedBox(width: 38,),
                            Container(
                              height: 35,
                              alignment: Alignment.bottomRight,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  color: Colors.grey
                              ),
                              child: Row(
                                children: [
                                  Center(
                                    child: TextButton(onPressed: (){}, child: Text('-',style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        color: Colors.white
                                    ),),),
                                  ),
                                  Text('1',style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      color: Colors.white
                                  )),
                                  Center(
                                    child: TextButton(onPressed: (){}, child: Text('+',style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        color: Colors.white
                                    ))),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.deepOrange),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                          child: CartScreen(),
                          type: PageTransitionType.fade),
                    );
                  },
                  child: Icon(
                    FontAwesomeIcons.cartShopping,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
