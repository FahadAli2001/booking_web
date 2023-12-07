import 'dart:developer';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isSidebarOpen = false;
  ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Scrollbar(
          controller: controller ,
          thumbVisibility: true,
          interactive: true,
          trackVisibility: true,
          radius:const Radius.circular(30),
          thickness: 100,
          scrollbarOrientation: ScrollbarOrientation.right,
          child: Stack(
            children: [
              Container(
                color: Colors.grey.shade200,
                width: size.width,
                height: size.height,
              ),
              //---- bottom box
              Positioned(
                top: size.height * 0.4,
                child: Container(
                  width: size.width,
                  height: size.height,
                  color: Colors.grey.shade200,
                  child: Padding(
                    padding:   EdgeInsets.only(top: size.height*0.2,right: size.width*0.1,left: size.width*0.1),
                    child:const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Special Offer",
                            style: TextStyle(color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),),
                            Text("View All",
                            style: TextStyle(color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),),
                          ],
                        )
                      ],
                    ),
                  ),
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
                child: Stack(
                  children: [
                    SizedBox(
                      height: size.height,
                      width: size.width,
                    ),
                    Positioned(
                      top: size.height * 0.12,
                      left: isSidebarOpen == true
                          ? size.width * 0.2
                          : size.width * 0.1,
                      height: 90,
                      child: Image.asset("assets/f_active.png"),
                    ),
                    // Container(
                    //   width: 100,
                    //   height: 100,
                    //   color: Colors.white.withOpacity(0.5),
                    // )
                    Positioned(
                      top: 30,
                      right: size.width*0.21,
                      child: Image.asset("assets/Partner.png",width: 150,height:30,fit: BoxFit.fill,)),
                       Positioned(
                      top: 30,
                      right: size.width*0.1,
                      child: Image.asset("assets/Profile.png",width: 150,height:30,fit: BoxFit.fill,))
                  ],
                ),
              ),
              //--------
              //-------- closed side bar
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
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              const Icon(
                                Icons.home,
                                color: Colors.white,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Icon(
                                Icons.wallet,
                                color: Colors.white,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Icon(
                                Icons.book_online,
                                color: Colors.white,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Icon(
                                Icons.support,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: size.height * 0.25,
                              ),
                              Image.asset("assets/pre_btn_half.png")
                            ],
                          ),
                        ),
                      ),
                    )
                  : const SizedBox.shrink(),
              //----------- side bar 
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
                                height: size.height * 0.1,
                              ),
                              Image.asset("assets/premium_btn.png")
                            ],
                          ),
                        ),
                      ))
                  : const SizedBox.shrink(),
              //------ middle box
              Positioned(
                top: size.height * 0.25,
                left: isSidebarOpen == true ? size.width * 0.2 : size.width * 0.1,
                child: Container(
                  width:
                      isSidebarOpen == true ? size.width * 0.7 : size.width * 0.85,
                  height: size.height * 0.3,
                  decoration: BoxDecoration(
                      color: Colors.white, borderRadius: BorderRadius.circular(15)),
                ),
              ),
              //
            ],
          ),
        ),
      ),
    );
  }
}
