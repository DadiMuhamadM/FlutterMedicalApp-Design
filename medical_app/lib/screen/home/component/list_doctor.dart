import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_app/screen/home/model/model_doctor.dart';
import 'package:medical_app/theme/thema.dart';

class ListDoctor extends StatefulWidget {
  const ListDoctor({super.key, required this.info});

  final ModelDoctor info;
  @override
  State<ListDoctor> createState() => _ListDoctorState();
}

class _ListDoctorState extends State<ListDoctor> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: colorGreen,
                borderRadius: const BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              child: Image.asset(widget.info.imageUrlDoctors),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.info.textUrlDoctors,
                  style: GoogleFonts.inter(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "General Pulmonologist",
                  style: GoogleFonts.inter(
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.amber[100],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                      child: Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: SvgPicture.asset(
                            "assets/svg/star.svg",
                          )),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text("4.8"),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.green[100],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                      child: Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: SvgPicture.asset(
                            "assets/svg/time.svg",
                          )),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text("01:00 - 08:00 PM"),
                  ],
                )
              ],
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        //button
        SizedBox(
          height: 55,
          width: double.infinity,
          child: TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: colorPurple,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              // padding: const EdgeInsets.symmetric(
              //   vertical: 23,
              //   horizontal: 65,
              // ),
            ),
            child: Text(
              "Messages",
              style: GoogleFonts.inter(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}
