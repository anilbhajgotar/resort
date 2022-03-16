import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:resorts/pages/bottom_bar.dart';
import 'package:resorts/pages/profile_image.dart';

class AccountPage extends StatefulWidget {
  AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  final primaryColor = const Color(0xff4338CA);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Positioned(
                  child: Container(
                    decoration: BoxDecoration(color: primaryColor),
                    height: 250,
                    // height: MediaQuery.of(context).size.height - 550,
                    child: Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 80),
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: SizedBox(
                                height: 75,
                                width: 75,
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                  child: Image.network(
                                      "https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=988&q=80",
                                      fit: BoxFit.cover),
                                ),
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              "ANIL BHAJGOTAR",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              "9876543210 | Email not verified",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            Positioned(
              top: 230,
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    // height: MediaQuery.of(context).size.height,

                    child: FinanceListTile(
                        onTap: () => {},
                        leadingIcon: Icon(Ionicons.md_settings),
                        text: "Setting",
                        trailingIcon: Icon(Feather.chevron_right)),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    // height: MediaQuery.of(context).size.height,

                    child: FinanceListTile(
                        onTap: () => {},
                        leadingIcon: Icon(Feather.message_square),
                        text: "Feedback",
                        trailingIcon: Icon(Feather.chevron_right)),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    // height: MediaQuery.of(context).size.height,

                    child: FinanceListTile(
                        onTap: () => {},
                        leadingIcon: Icon(Icons.article),
                        text: "Support",
                        trailingIcon: Icon(Feather.chevron_right)),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    // height: MediaQuery.of(context).size.height,

                    child: FinanceListTile(
                        onTap: () => {},
                        leadingIcon: Icon(SimpleLineIcons.share_alt),
                        text: "Setting",
                        trailingIcon: Icon(Feather.chevron_right)),
                  ),
                ],
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Align(
            //     alignment: Alignment.bottomRight,
            //     child: FloatingActionButton(
            //       backgroundColor: primaryColor,
            //       onPressed: () => {},
            //     ),
            //   ),
            // ),

            // Flexible(
            //   fit: FlexFit.tight,
            //   flex: 1,
            //   child: Container(
            //     decoration: BoxDecoration(
            //         color: Colors.amberAccent,
            //         borderRadius: BorderRadius.circular(20)),
            //     // height: MediaQuery.of(context).size.height,

            //     child: FinanceListTile(
            //         onTap: () => {},
            //         leadingIcon: Icon(Ionicons.ios_add),
            //         text: "Setting",
            //         trailingIcon: Icon(Ionicons.md_arrow_back)),
            //   ),
            // ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBarFb5(),
    );
  }
}
