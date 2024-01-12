import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server/gmail.dart';
import 'package:responsive_ui/responsive_ui.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  String emailAddress = "info@binav.co.id";
  String phoneNumber = "+628115442085";
  String housePhoneNumber = "+62811544208";
  final _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController mobileNumberController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController messageController = TextEditingController();
  Future<void> sendMail() async {
    String email = Uri.encodeComponent(emailAddress);
    String subject = Uri.encodeComponent("Hai PT. Binav Maju Sejahtera");
    String body = Uri.encodeComponent(
        "Dear PT. Binav Maju Sejahtera\n\n${messageController.text}\n\n${nameController.text}\n${emailController.text} | ${mobileNumberController.text}");
    Uri mail = Uri.parse("mailto:$email?subject=$subject&body=$body");
    if (await canLaunchUrl(mail)) {
      await launchUrl(mail);
    } else {
      //email app is not opened
    }
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Responsive(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Div(
              divison: Division(
                colXL: 8,
                colL: 8,
                colM: 6,
                colS: 12,
                colXS: 12,
              ),
              child: Form(
                key: _formKey,
                child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Contact Us",
                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
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
                                  validator: (value) {
                                    if (value == null || value.isEmpty || value == "") {
                                      return "This field is required";
                                    }
                                    return null;
                                  },
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text("Mobile Number"),
                                TextFormField(
                                  controller: mobileNumberController,
                                  validator: (value) {
                                    if (value == null || value.isEmpty || value == "") {
                                      return "This field is required";
                                    }
                                    return null;
                                  },
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Email Address"),
                                TextFormField(
                                  controller: emailController,
                                  validator: (value) {
                                    if (value == null || value.isEmpty || value == "") {
                                      return "This field is required";
                                    }
                                    return null;
                                  },
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
                      TextFormField(
                        controller: messageController,
                        minLines: 3,
                        maxLines: 10,
                        validator: (value) {
                          if (value == null || value.isEmpty || value == "") {
                            return "This field is required";
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Color(0xFF283646)),
                              foregroundColor: MaterialStateProperty.all(Colors.white),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.zero)))),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              sendMail();
                            }
                          },
                          child: Text("Send"))
                    ],
                  ),
                ),
              ),
            ),
            if (width >= 575)
              Div(
                divison: Division(
                  colXL: 4,
                  colL: 4,
                  colM: 6,
                  colS: 12,
                  colXS: 12,
                ),
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
                            "assets/icon_home_phone.svg",
                            height: 20,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () async {
                              Uri url = Uri.parse("tel:$housePhoneNumber");
                              if (await canLaunchUrl(url)) {
                                await launchUrl(url);
                              } else {
                                //email app is not opened
                              }
                            },
                            child: Text(
                              "$housePhoneNumber",
                              style: TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
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
                          InkWell(
                            onTap: () async {
                              Uri url = Uri.parse("tel:$phoneNumber");
                              if (await canLaunchUrl(url)) {
                                await launchUrl(url);
                              } else {
                                //email app is not opened
                              }
                            },
                            child: Text(
                              "$phoneNumber",
                              style: TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
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
                            "${emailAddress}",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
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
                          Flexible(
                            child: Text(
                              "Kota Balikpapan, Kalimantan Timur",
                              overflow: TextOverflow.fade,
                              maxLines: 2,
                              softWrap: true,
                              style: TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
