import 'package:flutter/material.dart';
import 'package:hospital_app_ui/model/hospital.dart';

class HospitalInfo extends StatefulWidget {
  const HospitalInfo({Key? key}) : super(key: key);

  @override
  State<HospitalInfo> createState() => _HospitalInfoState();
}

class _HospitalInfoState extends State<HospitalInfo> {
  final hospital_list = Hospital.hospitalInfo();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          itemCount: hospital_list.length,
          itemBuilder: (context, index) {
            var hospital = hospital_list[index];
            return Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      hospital.img,
                      height: double.infinity,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 50,
                  left: 10,
                  child: Column(
                    children: [
                      Text(hospital.name),
                      Text(hospital.address),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 20,
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.orange,
                    ),
                    child: Icon(Icons.arrow_forward),
                  ),
                )
              ],
            );
          }),
    );
  }
}
