// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, override_on_non_overriding_member, no_logic_in_create_state, library_private_types_in_public_api, sort_child_properties_last

import 'package:flutter/material.dart';

class CarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color(0xff030511),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(children: [
            SizedBox(
              height: 10,
            ),
            Header(),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                CardViewItem('Lock', 'assets/lock.png', Color(0xffFF7890)),
                Spacer(),
                CardViewItem('Unlock', 'assets/unlock.png', Color(0xff3B95FF)),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                CardViewItem('Trunk', 'assets/trunk.png', Color(0xffD56EF9)),
                Spacer(),
                CardViewItem(
                    'Engine Start', 'assets/line.png', Color(0xff4FC88E)),
              ],
            ),
            Spacer(),
            Image.asset(
              'assets/kiasorento.png',
              width: 250,
            ),
            Image.asset(
              'assets/kialogo.png',
              width: 100,
            ),
            SizedBox(height: 10),
            Text(
              'KIA Sorento 2022',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Poppins',
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            )
          ]),
        ),
      ),
    );
  }
}

class CardViewItem extends StatelessWidget {
  CardViewItem(this.title, this.assetsUrl, this.backgroundItem);
  String title;
  String assetsUrl;
  Color backgroundItem;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        borderRadius: BorderRadius.circular(25),
        splashColor: Color(0xff3B95FF).withOpacity(0.3),
        onTap: () {},
        child: Container(
          width: 155,
          height: 127,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Color(0xff3B95FF).withOpacity(0.1),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: backgroundItem.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(48),
                ),
                child: Center(child: Image.asset(assetsUrl)),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
      ),
      borderRadius: BorderRadius.circular(25),
      color: Colors.transparent,
    );
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 25, // Image radius
          backgroundImage: NetworkImage(
              'https://i.picsum.photos/id/559/200/200.jpg?hmac=YMqBxDHO4-upCRoX_Ho2FNQg40ANP2MndFXD8sPsSAc',
              scale: 1.0),
        ),
        SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Good Morning',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Andrew Ainsley',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w700,
                fontFamily: 'Poppins',
              ),
            )
          ],
        ),
        Spacer(),
        Image.asset('assets/notification.png'),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
