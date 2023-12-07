import 'dart:developer';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isSidebarOpen = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return Scaffold(
      
      body: Stack(
        
        children: [
          Container(
            color: Colors.grey.shade200,
            width: size.width,
            height: size.height,
          ),
          //----
            Positioned(
          top: size.height*0.4,
           child: Container(
            width: size.width,
            height: size.height,
            color: Colors.grey.shade200,
           ),
         ),
          //----
          Container(
            width: size.width,
            height: size.height * 0.4,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/background.png"),
                    fit: BoxFit.fill)),
          ),
          //--------
           //--------
          isSidebarOpen == false
              ? Positioned(
                  top: 40,
                  left: 60,
                  child: Container(
                    width: size.width * 0.04,
                    height: size.height * 0.7,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/side_bar.png"),
                            fit: BoxFit.fill)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isSidebarOpen = true;
                              });
                             
                            },
                            child: const Icon(
                              Icons.menu,
                              color: Colors.white70,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              : const SizedBox.shrink(),
          //-----------
          (isSidebarOpen == true)
              ? Positioned(
                  top: 40,
                  left: 60,
                  child: Container(
                    width: size.width * 0.15,
                    height: size.height * 0.7,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/side_bar.png"),
                            fit: BoxFit.fill)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Bookers",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic,
                                      fontSize: 18),
                                ),
                                InkWell(
                                    onTap: () {
                                      setState(() {
                                        isSidebarOpen = false;
                                      });
                                    },
                                    child: const Icon(
                                      Icons.menu,
                                      color: Colors.white70,
                                    ))
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const ListTile(
                            leading: Icon(
                              Icons.home,
                              color: Colors.white,
                              size: 20,
                            ),
                            title: Text(
                              "Home",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          ),
                          const ListTile(
                            leading: Icon(
                              Icons.wallet,
                              color: Colors.white,
                              size: 20,
                            ),
                            title: Text(
                              "Wallet",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          ),
                          const ListTile(
                            leading: Icon(
                              Icons.book_online,
                              color: Colors.white,
                              size: 20,
                            ),
                            title: Text(
                              "Booking",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          ),
                          const ListTile(
                            leading: Icon(
                              Icons.business,
                              color: Colors.white,
                              size: 20,
                            ),
                            title: Text(
                              "Buisness",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          ),
                          const ListTile(
                            leading: Icon(
                              Icons.support,
                              color: Colors.white,
                              size: 20,
                            ),
                            title: Text(
                              "Support",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          ),
                          SizedBox(
                            height: size.height*0.1,
                          ),
                          Image.asset("assets/premium_btn.png")
                        ],
                      ),
                    ),
                  ))
              : const SizedBox.shrink(),
          //------
          Positioned(
            top: size.height*0.25,
            left: size.width * 0.15,
            child: Container(
              width: size.width * 0.8,
              height: size.height*0.3,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15)
              ),
            ),
          ),
         //
       
        ],
      ),
    );
  }
}
