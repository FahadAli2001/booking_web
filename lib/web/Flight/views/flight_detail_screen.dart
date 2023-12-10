import 'package:flutter/material.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';

class FlightDetailScreen extends StatefulWidget {
  const FlightDetailScreen({super.key});

  @override
  State<FlightDetailScreen> createState() => _FlightDetailScreenState();
}

class _FlightDetailScreenState extends State<FlightDetailScreen> {
  late ScrollController scrollController;

  @override
  void initState() {
    // initialize scroll controllers
    scrollController = ScrollController();

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Container(
        color: Colors.grey.shade200,
        width: size.width,
        height: size.height,
        child: WebSmoothScroll(
          controller: scrollController,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    //--------side menu stack
                    Container(
                   //    color: Colors.amberAccent,
                      width: size.width * 0.08,
                      height: size.height  *1.5,
                    ),
                    //--top---------
                    Container(
                      width: size.width,
                      height: size.height * 0.15,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/background.png"),
                              fit: BoxFit.fill)),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: size.width * 0.12, right: 30, top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              "assets/fa.png",
                              height: 70,
                            ),
                            SizedBox(
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/Partner.png",
                                    width: 150,
                                    height: 40,
                                    fit: BoxFit.fill,
                                  ),
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  Image.asset(
                                    "assets/Profile.png",
                                    width: 150,
                                    height: 40,
                                    fit: BoxFit.fill,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    //------------side bar
                    Positioned(
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
                                onTap: () {},
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
                    ),
                    // ---------- main screen
                    Positioned(
                      top: size.height * 0.15,
                      left: size.width * 0.08,
                      child: Container(
                        width: size.width * 0.9,
                         height: size.height *1.5 ,
                      //  color: Colors.blueAccent,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: size.width,
                              height: size.height * 0.18,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("f_searchbox.png"),
                                      fit: BoxFit.fill)),
                            ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                 Container(
                                  width: size.width*0.5,
                                  height: size.height   ,
                                //  color: Colors.pink,
                                  child: WebSmoothScroll(
                                    controller: scrollController,
                                    child: SingleChildScrollView(
                                      child: Column(
                                         
                                        children: [
                                           Image.asset("f_nav.png",fit: BoxFit.fill,),
                                           for(var i=0;i<6;i++)...[
                                            Image.asset("f_card.png",fit: BoxFit.fill,
                                             
                                            height: size.height*0.3,),
                                           ]
                                        ],
                                      ),
                                    ),
                                  ),
                                 ),
                                 //
                                //  Image.asset("Filter.png",
                                //  height: size.height,
                                //  width: size.width*0.35,
                                //  fit:BoxFit.fill,)
                                Container(
                                  width: size.width*0.4,
                                  height: size.height,
                               //   
                                  decoration:const BoxDecoration(
                                //    color: Colors.grey,
                                    image: DecorationImage(image: AssetImage("Filter.png"),
                                    fit: BoxFit.fill)
                                  ),
                                )
                                ],
                              )
                          ],
                        ),
                      ),
                    ),
                  
               
                  ],
                ),
                //
             const   SizedBox(height:20)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
