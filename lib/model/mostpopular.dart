import 'package:flutter/material.dart';
import 'package:hospital_app_ui/model/hospital.dart';

class Mostpopular extends StatefulWidget {
  const Mostpopular({Key? key}) : super(key: key);

  @override
  State<Mostpopular> createState() => _MostpopularState();
}

class _MostpopularState extends State<Mostpopular> {
  final hospital_list = Hospital.mostPopular();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recently View'),
      ),
      body: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            var hospital = hospital_list[index];
            return Stack(
              children: [
                ClipRRect(
                  child: Image.asset(
                    hospital.img,
                    height: 160,
                    width: 120,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 10,
                  bottom: 30,
                  child: Column(
                    children: [
                      Text(hospital.name),
                      Text(hospital.address),
                    ],
                  ),
                )
              ],
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 12,
            );
          },
          itemCount: hospital_list.length),
    );
  }
}
