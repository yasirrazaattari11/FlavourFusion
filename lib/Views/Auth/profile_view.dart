import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Widgets/Profile/card_detail_row.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool more = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    child: GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                        child:
                            Icon(Icons.arrow_back_ios, color: Colors.black))),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            'MY PROFILE',
            style: GoogleFonts.nunito(
                color: Colors.black,
                fontWeight: FontWeight.w900,
                letterSpacing: 2,
                fontSize: 25),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(''),
                  fit: BoxFit.cover),
            ),
            child: CircularProfileAvatar(
              '',
              backgroundColor: Colors.cyan,
              borderWidth: 1,
              borderColor: Colors.deepPurpleAccent,
              elevation: 20,
              radius: 80,
              cacheImage: true,
              errorWidget: (context, url, error) {
                return Icon(
                  Icons.face,
                  size: 50,
                );
              },
              onTap: () {},
              animateFromOldImageOnUrlChange: true,
              placeHolder: (context, url) {
                return Container(
                  child: Center(child: CircularProgressIndicator()),
                );
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'John Doe',
            style:
                GoogleFonts.nunito(fontWeight: FontWeight.w600, fontSize: 18),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '@johndoe97',
            style:
                GoogleFonts.nunito(fontWeight: FontWeight.w600, fontSize: 15),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            style: ButtonStyle(
              side: MaterialStateProperty.all<BorderSide>(
                  BorderSide(color: Colors.deepOrange)),
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0)),
              ),
            ),
            onPressed: () {},
            child: Text(
              "Edit Profile Details",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Colors.deepOrange),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                CardDetailRow(
                    type: 'Email',
                    icon: Icon(Icons.alternate_email),
                    val: 'johndoe1919@gmail.com',
                    clr: Colors.grey.shade200),
                CardDetailRow(
                    type: 'Country',
                    icon: Icon(Icons.outlined_flag),
                    val: 'England',
                    clr: Colors.transparent),
                CardDetailRow(
                    type: 'Phone Number',
                    icon: Icon(Icons.phone),
                    val: '+1 234 247 2337',
                    clr: Colors.grey.shade200),
                more
                    ? CardDetailRow(
                        type: 'Gender',
                        icon: Icon(FontAwesomeIcons.venusMars),
                        val: 'Male',
                        clr: Colors.transparent)
                    : Container(),
                more
                    ? CardDetailRow(
                        type: 'Partner',
                        icon: Icon(Icons.person_2_outlined),
                        val: 'None',
                        clr: Colors.grey.shade200)
                    : Container(),
                more
                    ? CardDetailRow(
                        type: 'UID',
                        icon: Icon(Icons.fingerprint),
                        val: 'WP2988dx3487dSDF324SSDFSDF',
                        clr: Colors.transparent)
                    : Container(),
                more
                    ? CardDetailRow(
                        type: 'Account Created',
                        icon: Icon(FontAwesomeIcons.clock),
                        val: '25-8-23',
                        clr: Colors.grey.shade200)
                    : Container(),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            style: ButtonStyle(
              side: MaterialStateProperty.all<BorderSide>(
                  BorderSide(color: Colors.grey.shade200)),
              backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.grey.shade200),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0)),
              ),
            ),
            onPressed: () {
              setState(() {
                more = !more;
              });
            },
            child: Text(
              more ? "- Show Less" : "+ Show More",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Colors.black),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xffff9966), Color(0xffff5e62)]),
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Subscribed to',
                      style:
                          GoogleFonts.nunito(color: Colors.white, fontSize: 16),
                    ),
                    Text(
                      'Premium',
                      style: GoogleFonts.nunito(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 20),
                    )
                  ],
                ),
              ),
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Subscribed on',
                      style:
                          GoogleFonts.nunito(color: Colors.white, fontSize: 16),
                    ),
                    Text(
                      'N/A',
                      style: GoogleFonts.nunito(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 20),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
