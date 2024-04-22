import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_ui/responsive_ui.dart';
import 'package:flutter_html/flutter_html.dart';

class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> with SingleTickerProviderStateMixin {
  TabController? controller;
  Map<int, List<Map<String, String>>> listService = {
    0: [
      {
        "nama": "Pre-Engineering Survey",
        "small-desc":
            "Before any installation on the seabed, it is necessary to conduct pre-engineering survey on the proposed installation location or route. Typically, the information is acquired using a combanation of techiques",
        "desc": '''
        <p>Before any installations on the seabed, it is necessary to conduct pre-engineering survey on the proposed installation location or route. Typically, the information is acquired using a combination of techniques:</p>
        <ul>
          <li>Seabed bathymetry and topography:<br>Echo sounding or swath echo sounding (particularly in areas of uneven seabed, outcrops, corals, pockmarks, sand waves, etc)<br></li>
          <li>Seabed features and obstructions:<br>Traditionally by side scan sonar, modern mosaicking systems will provide an acoustic "photograph" of the seabed in which prominent features and morphology can be more easily understood and interpreted.<br></li>
          <li>Detection of ferromagnetic objects and anomalies:<br>The Magnetometer system will be deployed to identify metallic objects, such as pipeline, cable and metallic debris.<br></li>
        </ul>
        <br>
        <p>The Sub-Bottom Profiler will be deployed to identify strata below the seabed more over shallow gas can be extract from SBP Data.
        <br>For this type of survey operation, we use the most recent technologies, equipment and methods to provide our customers with high quality data acquisitions and interpretations. All result for pre-engineering survey is presented in the following reports:</p>
        <ul>
          <li>Final text report "Pre-Engineering Survey Final Report</li>
          <li>Alignment sheets.</li>
        </ul>
        ''',
      },
      {
        "nama": "Pre-Installation Survey",
        "small-desc":
            "The design of subsea routes or any subsea constructions normally takes a long period of time to be completed. When a pre-engineering survey for designing a route is done, since noumerous events and changes might have taken place on the seabed in the long run, it is necessary to perform another survey within a brief period of time which is called pre-installation survey. Running a pre-installation survey ensures us whether there are any new sunken objects and debris or not. Therefore, this operation is a decisive factor in subsea constructions.All Results for pre-installation survey are presented in the following reports:",
        "desc":'''
        <p>The design of subsea routes or any subsea constructions normally takes a long period of time to be completed. When a pre-engineering survey for designing a route is done, since noumerous events and changes might have taken place on the seabed in the long run, it is necessary to perform another survey within a brief period of time which is called pre-installation survey.
        Running a pre-installation survey ensures us whether there are any new sunken objects and debris or not. Therefore, this operation is a decisive factor in subsea constructions.
        All Results for pre-installation survey are presented in the following reports:</p>
        <ul>
          <li>Final text report \"Pre-installation survey final report\"</li>
          <li>Alignment sheets</li>
        </ul>
        ''',
      },
      {
        "nama": "Post-lay Survey",
        "small-desc":
            "After the installation of pipeline, post-lay survey operation plays a vital route in determining the free span locations. Spans should be corrected by placing grout bags beneath the pipeline and filling them using ordinary Portland liquid cement or grout.",
        "desc":'''
        <p>After the installation of pipeline, post-lay survey operation plays a vital route in determining the free span locations. Spans should be corrected by placing grout
        bags beneath the pipeline and filling them using ordinary Portland liquid cement or grout.<br>
        The below figures demonstrate some detected free spans using two technologies, side scan sonar and multibeam echosounder, while these two types of data are integrated:</p>
        ''',
        // <br>
        // <img src='https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSTZxXL1Ns0ToeiEKKUJETZ_hVwJqhpsYPnOn2DOiKT9nE2Rs2e' style='width:100%;height:100%;'>
      },
      {
        "nama": "Geophysical Site Survey",
        "small-desc":
            "Geophysical data provides vital information on the geology of the sub-bottom strata, required for any engineering, construction, drilling, and production and mining activity. Detailed geophysical surveys and assessments of the seabed and sub-seabed plays a decisive factor in reducing the risks and make them cost-effective design of marine structures and subsea installations. Geophysical site survey is often conducted when a jack-up rig wants to approach to the platform and this operation ensures the client about seabed obstructions and geology of the seabed.",
        "desc":'''
        <p>Geophysical data provides vital information on the geology of the sub-bottom strata, required for any engineering, construction, drilling, and production and mining activity. Detailed geophysical surveys and assessments of the seabed and sub-seabed plays a decisive factor in reducing the risks and make them cost-effective design of marine structures and subsea installations. Geophysical site survey is often conducted when a jack-up rig wants to approach to the platform and this operation ensures the client about seabed obstructions and geology of the seabed.</p>
        <br>
        <p>What are we trying to find out through a geophysical site survey?</p>
        <ul>
          <li>Water depth, seabed relief, seabed gradients</li>
          <li>Obstructions, debris, wrecks, existing installations</li>
          <li>Seabed sediment types</li>
          <li>Shallow water geology, foundation conditions, trenching conditions</li>
          <li>Geo-hazards such as shallow gas</li>
        </ul>
        <br>
        <p>The results of site survey operation include:</p>
        <ul>
          <li>Bathymetry charts in the site location</li>
          <li>Seabed feature charts (which shows the location of obstruction on the seabed)</li>
        </ul>
        <br>
        <p>The results of geophysical site survey are shown in the following reports and charts:</p>
        <ul>
          <li>Final text reports \"Geophysical site survey report\"</li>
          <li>Charts</li>
          <li>Bathymetric charts that all of depths reduced to LAT</li>
          <li>Seabed feature</li>
        </ul>
        ''',
      },
    ],
    1:[
      {
        "nama":"Barge And Tug Positioning",
        "small-desc":"A precise positioning is a fundamental parameter for any survey and engineering tasks during sea operations. Such operations rely on a global infrastructure and expertise to deliver high accuracy positioning, at any locations and any time. We are capable of providing the required equipment with your related projects on the scheduled time.",
        "desc":'''
        <p>A precise positioning is a fundamental parameter for any survey and engineering tasks during sea operations. Such operations rely on a global infrastructure and expertise to deliver high accuracy positioning, at any locations and any time. We are capable of providing the required equipment with your related projects on the scheduled time.<br>
During barge support near the platforms, we are able to prepare a safe and accurate barge and tug management system for anchor handling operation. The system is mobilized on anchor handling vessels so that the exact vessel's position, speed and heading can be monitored from the main barge during the activity. Instructions for anchor deployment and recovery are followed through this system as well.</p>
        ''',
      }
    ]
  };

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      color: const Color(0xFFF0F8FF),
      padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 40),
      child: SafeArea(
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
                    const SizedBox(
                      height: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TabBar(
                          controller: controller,
                          isScrollable: true,
                          labelColor: Colors.blueAccent,
                          unselectedLabelColor: const Color(0xFF5E5E5E),
                          labelStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                          unselectedLabelStyle:
                              const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                          dividerColor: Colors.transparent,
                          indicatorPadding: const EdgeInsets.only(right: 10),
                          indicatorColor: Colors.blueAccent,
                          tabs: const [
                            Tab(text: 'Geophysical Survey Services'),
                            Tab(text: 'Offshore Positioning Support'),
                          ],
                          onTap: (index) {
                            controller!.animateTo(index);
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Column(
                children: listService.entries.map((entry) {
                  if (entry.key != controller!.index) {
                    return const SizedBox();
                  }
                  return Responsive(
                    // runAlignment: WrapAlignment.end,
                    alignment: WrapAlignment.center,
                    children: entry.value
                        .map((e) => Div(
                              divison: const Division(
                                colXL: 3,
                                colL: 4,
                                colM: 6,
                                colS: 6,
                                colXS: 12,
                              ),
                              child: ServiceField(
                                title: e['nama']!,
                                smallDesc: e['small-desc']!,
                                desc: e['desc']!,
                                // subtitle:
                                //     "Pemetaan bawah laut yang menggabungkan teknologi canggih dengan keahlian khusus. Dari survei dasar laut hingga pemetaan yang detail, tim kami berdedikasi untuk menjelajahi dan memetakan kompleksitas lingkungan bawah laut. Dengan peralatan mutakhir, kami mengumpulkan data akurat tentang topografi, struktur geologis, serta keanekaragaman hayati di bawah laut.",
                              ),
                            ))
                        .toList(),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ServiceField extends StatelessWidget {
  final String title;
  final String smallDesc;
  final String desc;

  const ServiceField({
    super.key,
    required this.title,
    this.smallDesc = "",
    this.desc = "",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            blurRadius: 1,
            spreadRadius: 1,
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            smallDesc,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 15,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
              foregroundColor: MaterialStateProperty.all(Colors.white),
              fixedSize: MaterialStateProperty.all(Size(125, 25)),
            ),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text("View More"),
            ),
            onPressed: () async {
              showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(
                      elevation: 1,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 1.4,
                        constraints: BoxConstraints(
                          maxHeight: MediaQuery.of(context).size.height / 1.6,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.0),
                            boxShadow: [
                              BoxShadow(
                                  offset: const Offset(12, 26),
                                  blurRadius: 50,
                                  spreadRadius: 0,
                                  color: Colors.grey.withOpacity(.1)),
                            ]),
                        child: SingleChildScrollView(
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  alignment: Alignment.topRight,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Container(
                                      width: 25,
                                      height: 25,
                                      color: Colors.grey,
                                      alignment: Alignment.center,
                                      child: Text(
                                        "X",
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  title,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Html(
                                  data: desc,
                                  style: {
                                    "body": Style(fontSize: FontSize(14.0)),
                                  },
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  });
            },
          ),
          // SvgPicture.asset(path, height: 70),
          // if (subtitle == "")
          //   const SizedBox(
          //     height: 20,
          //   ),
          // if (subtitle == "")
          //   Text(
          //     subtitle,
          //     textAlign: TextAlign.center,
          //     style: const TextStyle(
          //       fontSize: 15,
          //     ),
          //   ),
        ],
      ),
    );
  }
}
