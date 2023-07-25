import 'package:flutter/material.dart';

class Pet extends StatelessWidget {
  const Pet(
      {super.key, this.petLove, this.animalName, this.animalType, this.image});

  final animalType;
  final animalName;
  final petLove;
  final image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: const Color(0x7FDFE0DF),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              width: 15,
            ),
            Container(
              child: Image.asset(
                '$image',
                fit: BoxFit.fill,
                width: 90,
                height: 90,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$animalName',
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontFamily: 'BalsamiqSans-Bold',
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text(
                  '$animalType',
                  style: const TextStyle(
                    color: Color(0xFFACACAC),
                    fontSize: 17,
                    fontFamily: 'Balsamiq_Sans',
                  ),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.heart_broken_outlined,
                      color: Colors.orange,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text('Pet Love:$petLove')
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
