import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:myapp/custom_icons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFFEFEFE),
        body: Center(
          child: DeviceFrame(
            device: Devices.ios.iPhone13,
            isFrameVisible: true,
            screen: const FramedApp(),
          ),
        ),
      ),
    );
  }
}

class FramedApp extends StatelessWidget {
  const FramedApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
        ),
        scaffoldBackgroundColor: Colors.white,
        fontFamily: "Google Sans",
      ),
      home: const AIOverviewMessagePage(),
    );
  }
}

class AIOverviewMessagePage extends StatelessWidget {
  const AIOverviewMessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios),
        actions: [
          const Icon(CustomIcons.geminiAI),
          SizedBox(width: 28),
          const Icon(Symbols.archive, weight: 600),
          SizedBox(width: 28),
          const Icon(Symbols.delete, weight: 600),
          SizedBox(width: 28),
          const Icon(Symbols.mark_email_unread, weight: 600),
          SizedBox(width: 28),
          const Icon(Symbols.more_horiz, weight:600),
          SizedBox(width: 16)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "O2 API | Annual Price Increase", 
                            style: TextStyle(
                              fontSize: 22.0,
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4.0),
                                  color: Color(0xFFFBBC04),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 2.0),
                                  child: Text(
                                    "External",
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 4),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4.0),
                                  color: Color(0xFFEEEEEE),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 2.0),
                                  child: Text(
                                    "Inbox",
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Icon(
                        Symbols.star, 
                        color: Color(0xFF999999),
                        weight: 600
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Color(0xFFF0F4F9),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(CustomIcons.aiOverview),
                                  SizedBox(width: 4),
                                  Text(
                                    "AI Overview",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold, 
                                    ),
                                  )
                                ],
                              ),
                              Icon(Symbols.keyboard_arrow_up),
                            ],
                          ),
                          SizedBox(height: 8.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 24,
                                child: Center(child: Text("\u2022")),
                              ),
                              SizedBox(width: 4),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.7,
                                child: Text(
                                  "O2 announced its annual price change starting April 2026, increasing airtime plans by fixed amounts (£2.50 for voice, 75p for data/watch).",
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                maxLines: 5,
                                )
                              )
                            ],
                          ),
                          SizedBox(height: 8.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 24,
                                child: Center(child: Text("\u2022")),
                              ),
                              SizedBox(width: 4),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.7,
                                child: Text(
                                  "The price change will be shown clearly in pounds and pence, affecting only the airtime plan cost, not device costs.",
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                maxLines: 5,
                                )
                              )
                            ],
                          ),
                          SizedBox(height: 8.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 24,
                                child: Center(child: Text("\u2022")),
                              ),
                              SizedBox(width: 4),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.7,
                                child: Text(
                                  "Out-of-bundle charges will increase by 5% annually starting April 1st.",
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                maxLines: 5,
                                )
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text.rich(
                            maxLines: 2,
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: "By Gemini; there may be mistakes. ",
                                  style: TextStyle(
                                    fontSize: 13,
                                  ),
                                ),
                                TextSpan(
                                  text: "Learn more.", 
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  )
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Icon(
                        Symbols.thumb_up,
                        weight: 600
                      ),
                      Icon(
                        Symbols.thumb_down,
                        weight: 600
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    TextButton(
                      onPressed: (){},
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          side: BorderSide(
                            color: Color(0xFFD5D7D6),
                            width: 1.0,
                          )
                        ),
                      ), 
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                        child: Row(
                          children: [
                            Icon(
                              Symbols.reply,
                              color: Color(0xFF4E5150), 
                              weight: 600
                            ),
                            SizedBox(width: 8),
                            Text(
                              "Reply",
                              style: TextStyle(
                                color: Color(0xFF4E5150),
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 8,),
                    TextButton(
                      onPressed: (){},
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          side: BorderSide(
                            color: Color(0xFFD5D7D6),
                            width: 1.0,
                          )
                        ),
                      ), 
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                        child: Row(
                          children: [
                            Icon(
                              Symbols.forward,
                              color: Color(0xFF4E5150),
                              weight: 600,
                            ),
                            SizedBox(width: 8),
                            Text(
                              "Forward", 
                              style: TextStyle(
                                color: Color(0xFF4E5150),
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 36,
                  width: 36,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFD5D7D6), width: 1.0),
                    shape: BoxShape.circle
                  ),
                  child: IconButton(
                    onPressed: (){},
                    iconSize: 16,
                    icon: Icon(
                      Symbols.mood,
                      weight: 600,
                    )
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Color(0xFFF0F4F9),
        indicatorColor: Color(0xFFC2E7FF),
        destinations: [
          NavigationDestination(
            selectedIcon: Badge(
              label: Text('3'),
              child: Icon(
                Symbols.mail, 
                fill: 1
              ),
            ),
            icon: Icon(Symbols.mail_outline), 
            label: ""
          ),
          NavigationDestination(
            icon: Icon(Symbols.chat_bubble), 
            label: ""
          ),
          NavigationDestination(
            icon: Icon(Symbols.videocam), 
            label: ""
          ),
        ]
      ),
    );
  }
}
