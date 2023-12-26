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
    return SafeArea(
      child: Container(
        color: Color(0xfff6f6f6),
        padding: EdgeInsets.symmetric(horizontal: 35, vertical: 40),
        child: Column(
          children: [
            Container(
              child: Center(
                child: Column(
                  children: [
                    Text(
                      "Services",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(
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
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                                text: "PT.BINAV MAJU SEJAHTERA ",style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                              text: "merupakan perusahaan terkemuka yang menyediakan layanan survei, penentuan posisi, dan eksplorasi bawah laut untuk industri minyak & gas lepas pantai serta konstruksi lepas pantai."
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 30,)
                  ],
                ),
              ),
            ),
            Responsive(
              runAlignment: WrapAlignment.end,
              children: [
                if (MediaQuery.of(context).size.width > 897)
                  Div(
                    divison: Division(
                      colXL: 12,
                      colL: 6,
                      colM: 12,
                      colS: 12,
                      colXS: 12,
                    ),
                    child: Row(
                      // mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ServiceField(title: "Bawah Laut",path: 'assets/icon_wave.svg',subtitle: "Underwater inspection and maintenanceROV observation and intervention capabilities to support drilling and construction activitiesDP1 and DP2 vessel hire"),
                        SizedBox(width: 10,),
                        ServiceField(title: "Survey",path: 'assets/icon_telescope.svg',subtitle:"Rig Positioning using miniaturized packageBathymetric Survey with MBES or SBESOffshore Construction Surveys SupportSite hazard and Geophysical SurveysCable and Pipe Route Surveys with ROV’sOffshore Geotechnical and Soil Investigation SurveysOceanographic Survey & Weather ForecastingDimensional Survey Control" ),
                        SizedBox(width: 10,),
                        ServiceField(title: "Tracking",path:'assets/icon_tracking.svg',subtitle:"Vessel tracking and securityPlatform Intruder DetectionData telemetry" , ),
                      ],
                    ),
                  ),
                if (MediaQuery.of(context).size.width < 897)
                  Div(
                    divison: Division(
                      colXL: 6,
                      colL: 6,
                      colM: 12,
                      colS: 12,
                      colXS: 12,
                    ),
                    child: Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Bawah Laut",style: TextStyle(fontSize: 18,),),
                          SizedBox(height: 30,),
                          SvgPicture.asset("assets/icon_wave.svg",height: 70),
                          SizedBox(height: 20,),
                          Text("Underwater inspection and maintenanceROV observation and intervention capabilities to support drilling and construction activitiesDP1 and DP2 vessel hire",style: TextStyle(fontSize: 15,),),
                          SizedBox(height: 30,),
                          Text("Survey",style: TextStyle(fontSize: 18,),),
                          SizedBox(height: 30,),
                          SvgPicture.asset("assets/icon_telescope.svg",height: 70),
                          SizedBox(height: 20,),
                          Text("Rig Positioning using miniaturized packageBathymetric Survey with MBES or SBESOffshore Construction Surveys SupportSite hazard and Geophysical SurveysCable and Pipe Route Surveys with ROV’sOffshore Geotechnical and Soil Investigation SurveysOceanographic Survey & Weather ForecastingDimensional Survey Control",style: TextStyle(fontSize: 15,),),
                          SizedBox(height: 30,),
                          Text("Tracking",style: TextStyle(fontSize: 18,),),
                          SizedBox(height: 30,),
                          SvgPicture.asset("assets/icon_tracking.svg",height: 70),
                          SizedBox(height: 20,),
                          Text("Vessel tracking and securityPlatform Intruder DetectionData telemetry"),
                          SizedBox(height: 30,),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ServiceField extends StatelessWidget {
  final String title;
  final String subtitle;
  final String path;
  const ServiceField({
    super.key, required this.path, required this.title, required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title,style: TextStyle(fontSize: 18,),),
            SizedBox(height: 30,),
            SvgPicture.asset(path,height: 70),
            SizedBox(height: 20,),
            Text(subtitle,style: TextStyle(fontSize: 15,),),

          ],
        ),
      ),
    );
  }
}
