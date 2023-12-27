import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_ui/responsive_ui.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  TextEditingController nameController = TextEditingController();
  TextEditingController mobileNumberController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Row(children: [
              Expanded(
        flex: 3,
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Contact Us",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Name"),
                        TextFormField(
                          controller: nameController,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text("Mobile Number"),
                        TextFormField(
                          controller: mobileNumberController,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Email Address"),
                        TextFormField(
                          controller: emailController,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Text("Write your message here."),
              TextFormField(),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Color(0xFF283646)),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.zero)))

                  ),
                  onPressed: (){

              }, child: Text("Send"))
            ],
          ),
        ),
              ),
              Expanded(
        flex: 1,
        child: Container(
          color: Color(0xFF283646),
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Text(
                "Contact Information",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/icon_location.svg",
                    height: 20,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Sleman, Yogyakarta",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/icon_phone.svg",
                    height: 20,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "085158426044",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/icon_mail.svg",
                    height: 20,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "fadillarizky294@gmail.com",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ],
              )
            ],
          ),
        ),
              )
            ])
        // Column(
        //   children: [
        //     Text("Contact Us"),
        //     Container(
        //       padding: EdgeInsets.all(20),
        //       child: Responsive(
        //           children:[
        //             Div(
        //               divison: Division(
        //                 colXL: 12,
        //                 colL: 12,
        //                 colM: 6,
        //                 colS: 6,
        //                 colXS: 12,
        //               ),
        //               child: Column(
        //                 children: [
        //                   TextFormField(
        //
        //                   ),
        //                   TextFormField(),
        //                   TextFormField(),
        //                   SizedBox(height: 15,),
        //                   ElevatedButton(onPressed: (){}, child: Text("Contact Us"))
        //                 ],
        //               ),
        //             ),
        //             Div(
        //               divison: Division(
        //                 colXL: 12,
        //                 colL: 12,
        //                 colM: 6,
        //                 colS: 6,
        //                 colXS: 12,
        //               ),
        //               child: Column(
        //                 children: [
        //                   Text("Contact",style: TextStyle(fontSize: 18),),
        //                   Text("fadillarizky294@gmail.com",style: TextStyle(fontSize: 15),),
        //                   SizedBox(height: 20,),
        //                   Text("Contact",style: TextStyle(fontSize: 18),),
        //                   Text("Sleman,",style: TextStyle(fontSize: 15),),
        //                   Text("Yogyakarta",style: TextStyle(fontSize: 15),),
        //                 ],
        //               ),
        //             ),
        //           ]),
        //     )
        //
        //   ],
        // ),
        );
  }
}
