import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_ui/responsive_ui.dart';

class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF0F8FF),
      padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 40),
      child: Column(
        children: [
          Container(
            child: Center(
              child: Column(
                children: [
                  const Text(
                    "Services",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(
                    width: 150,
                    child: Divider(
                      thickness: 2,
                      indent: 20,
                      endIndent: 20,
                      color: Colors.black,
                      height: 20,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: RichText(
                      text: const TextSpan(
                        children: <TextSpan>[
                          TextSpan(text: "PT.BINAV MAJU SEJAHTERA ", style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(
                              text:
                                  "merupakan perusahaan terkemuka yang menyediakan layanan survei, penentuan posisi, dan eksplorasi bawah laut untuk industri minyak & gas lepas pantai serta konstruksi lepas pantai."),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
          ),
          const Responsive(
            // runAlignment: WrapAlignment.end,
            children: [
              Div(
                divison: Division(
                  colXL: 3,
                  colL: 4,
                  colM: 6,
                  colS: 6,
                  colXS: 12,
                ),
                child: ServiceField(
                  title: "Bawah Laut",
                  path: 'assets/icon_wave.svg',
                  subtitle:
                      "Underwater inspection and maintenanceROV observation and intervention capabilities to support drilling and construction activitiesDP1 and DP2 vessel hire",
                ),
              ),
              Div(
                divison: Division(
                  colXL: 3,
                  colL: 4,
                  colM: 6,
                  colS: 6,
                  colXS: 12,
                ),
                child: ServiceField(
                  title: "Survey",
                  path: 'assets/icon_telescope.svg',
                  subtitle:
                      "Rig Positioning using miniaturized packageBathymetric Survey with MBES or SBESOffshore Construction Surveys SupportSite hazard and Geophysical SurveysCable and Pipe Route Surveys with ROV’sOffshore Geotechnical and Soil Investigation SurveysOceanographic Survey & Weather ForecastingDimensional Survey Control",
                ),
              ),
              Div(
                divison: Division(
                  colXL: 3,
                  colL: 4,
                  colM: 6,
                  colS: 6,
                  colXS: 12,
                ),
                child: ServiceField(
                  title: "Tracking",
                  path: 'assets/icon_tracking.svg',
                  subtitle: "Vessel tracking and securityPlatform Intruder DetectionData telemetry",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ServiceField extends StatelessWidget {
  final String title;
  final String subtitle;
  final String path;
  const ServiceField({
    super.key,
    required this.path,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SvgPicture.asset(path, height: 70),
          const SizedBox(
            height: 20,
          ),
          Text(
            subtitle,
            style: const TextStyle(
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
