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
          surfaceTintColor: Color(0xFFF0F4F9),
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
          const Icon(Symbols.more_horiz, weight: 600),
          SizedBox(width: 16),
        ],
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 56),
            child: ListView(
              shrinkWrap: true,
              primary: false,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "O2 API | Annual Price Increase",
                          style: TextStyle(fontSize: 22.0),
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.0),
                                color: Color(0xFFFBBC04),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 2.0,
                                ),
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
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                  vertical: 2.0,
                                ),
                                child: Text(
                                  "Inbox",
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Icon(
                      Symbols.star,
                      color: Color(0xFF999999),
                      weight: 600,
                    ),
                  ],
                ),
                SizedBox(height: 20),
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
                                ),
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
                              child: Center(child: Text("•")),
                            ),
                            SizedBox(width: 4),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.7,
                              child: Text(
                                "O2 announced its annual price change starting April 2026, increasing airtime plans by fixed amounts (£2.50 for voice, 75p for data/watch).",
                                style: TextStyle(fontSize: 15),
                                maxLines: 5,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 24,
                              child: Center(child: Text("•")),
                            ),
                            SizedBox(width: 4),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.7,
                              child: Text(
                                "The price change will be shown clearly in pounds and pence, affecting only the airtime plan cost, not device costs.",
                                style: TextStyle(fontSize: 15),
                                maxLines: 5,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 24,
                              child: Center(child: Text("•")),
                            ),
                            SizedBox(width: 4),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.7,
                              child: Text(
                                "Out-of-bundle charges will increase by 5% annually starting April 1st.",
                                style: TextStyle(fontSize: 15),
                                maxLines: 5,
                              ),
                            ),
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
                                style: TextStyle(fontSize: 13),
                              ),
                              TextSpan(
                                text: "Learn more.",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Icon(Symbols.thumb_up, weight: 600),
                    Icon(Symbols.thumb_down, weight: 600),
                  ],
                ),
                SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: Color(0xFF0050FF),
                      foregroundColor: Colors.white,
                      child: Text(
                        'O',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.48,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("O2", style: TextStyle(fontSize: 16)),
                                  SizedBox(width: 8),
                                  Text(
                                    "Oct 23",
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 8),
                            Icon(Symbols.mood, size: 24, weight: 700),
                            SizedBox(width: 20),
                            Icon(Symbols.reply, size: 24, weight: 700),
                            SizedBox(width: 20),
                            Icon(Symbols.more_horiz, size: 24, weight: 700),
                          ],
                        ),
                        Row(
                          children: [
                            Text("to me", style: TextStyle(fontSize: 13)),
                            SizedBox(width: 8),
                            Icon(Symbols.keyboard_arrow_down, size: 16),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Container(
                  width: MediaQuery.of(context).size.width,
                  color: Color(0xFF000066),
                  child: Padding(
                    padding: EdgeInsetsGeometry.all(24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Pricing",
                          style: TextStyle(color: Colors.white, fontSize: 28),
                        ),
                        Text(
                          "Annual price change from April 2026",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  "We’re making our price updates clearer. In line with new Ofcom regulations, we’re changing how we show annual price rises. From now on, any updates to your bill will be shown in pounds and pence, not percentages or inflation measures. This makes it easier to see exactly what’s changing and what it means for you.",
                  maxLines: 7,
                  style: TextStyle(fontSize: 16, color: Color(0xFF000066)),
                ),
                SizedBox(height: 16),
                Text(
                  "Our goal is to make this information as transparent and easy to follow as possible.",
                  maxLines: 7,
                  style: TextStyle(fontSize: 16, color: Color(0xFF000066)),
                ),
                SizedBox(height: 24),
                Text(
                  "What this means for you",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF000066),
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  "From April 2026, the monthly price of your mobile plan will be increasing. We’re letting you know now so you can plan ahead and be prepared.",
                  maxLines: 7,
                  style: TextStyle(fontSize: 16, color: Color(0xFF000066)),
                ),
                SizedBox(height: 16),
                Text(
                  "Each April, your airtime plan will increase by £2.50 for voice plans and 75p for data-only and smartwatch plans.",
                  maxLines: 7,
                  style: TextStyle(fontSize: 16, color: Color(0xFF000066)),
                ),
                SizedBox(height: 16),
                Text(
                  "We understand price rises are never ideal and want to reassure you this will only affect your airtime plan, with the cost of your device remaining frozen.",
                  maxLines: 7,
                  style: TextStyle(fontSize: 16, color: Color(0xFF000066)),
                ),
                SizedBox(height: 24),
                Text(
                  "Check what your new bill amount will be",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF000066),
                  ),
                ),
                SizedBox(height: 16),
                Text.rich(
                  maxLines: 7,
                  TextSpan(
                    children: [
                      TextSpan(
                        text:
                            "To find out how much you currently pay for your monthly mobile plan, ",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF000066),
                        ),
                      ),
                      TextSpan(
                        text: "sign in to My O2",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: Color(0xFF0050FF),
                          fontSize: 16,
                          color: Color(0xFF0050FF),
                        ),
                      ),
                      TextSpan(
                        text:
                            " to check any statement issued between April 2025 and March 2026.",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF000066),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  "Example of how your airtime plan might change",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF000066),
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  "Example of a change in pricing for a data only and smartwatch plan",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF000066),
                  ),
                ),
                SizedBox(height: 24),
                Divider(),
                Text(
                  "Why is there an annual pay rise?",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF000066),
                  ),
                ),
                SizedBox(height: 16),
                Text.rich(
                  maxLines: 7,
                  TextSpan(
                    children: [
                      TextSpan(
                        text:
                            "We understand price rises are never ideal. Each year, we invest an average of £2 million per day in ",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF000066),
                        ),
                      ),
                      TextSpan(
                        text: "our network",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: Color(0xFF0050FF),
                          fontSize: 16,
                          color: Color(0xFF0050FF),
                        ),
                      ),
                      TextSpan(
                        text:
                            "to keep coverage strong, service reliable and technology up to date – so you can enjoy better connections, faster speeds and all the perks you love, from ",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF000066),
                        ),
                      ),
                      TextSpan(
                        text: "roaming",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: Color(0xFF0050FF),
                          fontSize: 16,
                          color: Color(0xFF0050FF),
                        ),
                      ),
                      TextSpan(
                        text: " to ",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF000066),
                        ),
                      ),
                      TextSpan(
                        text: "Priority",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: Color(0xFF0050FF),
                          fontSize: 16,
                          color: Color(0xFF0050FF),
                        ),
                      ),
                      TextSpan(
                        text: ".",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF000066),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24),
                Divider(),
                Text(
                  "API and your O2 contract",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF000066),
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  "Each year, your monthly subscription charge will be subject to an annual increase by a fixed amount, this will be shown from your April bill onwards. Full details of your monthly price, including the fixed amount increases, are set out clearly in your contract forms.",
                  maxLines: 7,
                  style: TextStyle(fontSize: 16, color: Color(0xFF000066)),
                ),
                SizedBox(height: 16),
                Text.rich(
                  maxLines: 7,
                  TextSpan(
                    children: [
                      TextSpan(
                        text:
                            "Out of bundle charges will increase by 5% each year from 1 April. ",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF000066),
                        ),
                      ),
                      TextSpan(
                        text: "Our Extra Charges guide",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: Color(0xFF0050FF),
                          fontSize: 16,
                          color: Color(0xFF0050FF),
                        ),
                      ),
                      TextSpan(
                        text:
                            " sets out current pricing information about out of bundle charges and additional services which aren’t included in your monthly subscription charge.",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF000066),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24),
                Divider(),
                Text(
                  "What if I'm a Volt customer?",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF000066),
                  ),
                ),
                SizedBox(height: 16),
                Text.rich(
                  maxLines: 7,
                  TextSpan(
                    children: [
                      TextSpan(
                        text:
                            "You'll have both mobile and cable services. Sign in to ",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF000066),
                        ),
                      ),
                      TextSpan(
                        text: "My Virgin Media",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: Color(0xFF0050FF),
                          fontSize: 16,
                          color: Color(0xFF0050FF),
                        ),
                      ),
                      TextSpan(
                        text: " from 28 February to find out how the ",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF000066),
                        ),
                      ),
                      TextSpan(
                        text: "cable price rise",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: Color(0xFF0050FF),
                          fontSize: 16,
                          color: Color(0xFF0050FF),
                        ),
                      ),
                      TextSpan(
                        text: " affects you.​",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF000066),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              side: BorderSide(
                                color: Color(0xFFD5D7D6),
                                width: 1.0,
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 10.0,
                              horizontal: 30,
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Symbols.reply,
                                  color: Color(0xFF4E5150),
                                  weight: 600,
                                ),
                                SizedBox(width: 8),
                                Text(
                                  "Reply",
                                  style: TextStyle(
                                    color: Color(0xFF4E5150),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 8),
                        TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              side: BorderSide(
                                color: Color(0xFFD5D7D6),
                                width: 1.0,
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 10.0,
                              horizontal: 30,
                            ),
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
                                ),
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
                        border: Border.all(
                          color: Color(0xFFD5D7D6),
                          width: 1.0,
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        iconSize: 16,
                        icon: Icon(Symbols.mood, weight: 600),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Color(0xFFF0F4F9),
        indicatorColor: Color(0xFFC2E7FF),
        destinations: [
          NavigationDestination(
            selectedIcon: Badge(
              label: Text('3'),
              child: Icon(Symbols.mail, fill: 1),
            ),
            icon: Icon(Symbols.mail_outline),
            label: "",
          ),
          NavigationDestination(icon: Icon(Symbols.chat_bubble), label: ""),
          NavigationDestination(icon: Icon(Symbols.videocam), label: ""),
        ],
      ),
    );
  }
}
