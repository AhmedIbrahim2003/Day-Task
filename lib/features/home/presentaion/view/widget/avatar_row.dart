import 'package:flutter/cupertino.dart';

class AvatarsRow extends StatelessWidget {
  const AvatarsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const SizedBox(width: 80),
        Container(
          width: 20,
          height: 20,
          decoration: const ShapeDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://i.pinimg.com/474x/c9/b2/56/c9b25648b56a4fc34eca507e47c20c72.jpg'),
              fit: BoxFit.fitHeight,
            ),
            shape: OvalBorder(
              side: BorderSide(width: 0.50, color: Color(0xFFFED36A)),
            ),
          ),
        ),
        Positioned(
          left: 15,
          child: Container(
            width: 20,
            height: 20,
            decoration: const ShapeDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://www.popsci.com/uploads/2020/01/07/WMD5M52LJFBEBIHNEEABHVB6LA.jpg?auto=webp&width=1440&height=864'),
                fit: BoxFit.fitHeight,
              ),
              shape: OvalBorder(
                side: BorderSide(width: 0.50, color: Color(0xFFFED36A)),
              ),
            ),
          ),
        ),
        Positioned(
          left: 30,
          child: Container(
            width: 20,
            height: 20,
            decoration: const ShapeDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://www.popsci.com/uploads/2020/01/07/WKXWVIJ3ONEHPDIQOJQL7UOGV4-1024x614.jpg'),
                fit: BoxFit.fitHeight,
              ),
              shape: OvalBorder(
                side: BorderSide(width: 0.50, color: Color(0xFFFED36A)),
              ),
            ),
          ),
        ),
        Positioned(
          left: 45,
          child: Container(
            width: 20,
            height: 20,
            decoration: const ShapeDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKH21UNqpQxNWeACqeHP0cLuVwGfFJX9MX9OFBCWyZAzoSyB5UQ9rbXqDbjZIn1yBRM-U&usqp=CAU'),
                fit: BoxFit.fitHeight,
              ),
              shape: OvalBorder(
                side: BorderSide(width: 0.50, color: Color(0xFFFED36A)),
              ),
            ),
          ),
        ),
        Positioned(
          left: 60,
          child: Container(
            width: 20,
            height: 20,
            decoration: const ShapeDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://cdn131.picsart.com/37bc711d-7dfe-4877-9e07-113c11b12b7d/391174166021201.jpg'),
                fit: BoxFit.fitHeight,
              ),
              shape: OvalBorder(
                side: BorderSide(width: 0.50, color: Color(0xFFFED36A)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}