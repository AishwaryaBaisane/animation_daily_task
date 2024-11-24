import 'package:animation_daily_task/view/ecommars/secondpage.dart';
import 'package:flutter/material.dart';

int selectedIndex = 0;

class EcommerceApp extends StatefulWidget {
  const EcommerceApp({super.key});

  @override
  State<EcommerceApp> createState() => _EcommerceAppState();
}

class _EcommerceAppState extends State<EcommerceApp> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xfff3f3f3),
        appBar: AppBar(
          shadowColor: Colors.black54,
          backgroundColor: Color(0xfff3f3f3),
          leading: Icon(Icons.menu),
          title: Text(
            'Favorites',
            style: TextStyle(color: Colors.indigo, fontWeight: FontWeight.w600),
          ),
          actions: [
            Icon(Icons.shopping_cart_outlined),
            Icon(Icons.people_alt_outlined),
            SizedBox(
              width: width * 0.05,
            ),
          ],
        ),
        body: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SingleChildScrollView(
              child: Column(
                children: List.generate(
                  5,
                  (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => SecondPage(
                              index: selectedIndex,
                            ),
                          ),
                        );
                      },
                      child: Container(
                        height: height * 0.37,
                        width: width * 0.45,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          // image: DecorationImage(
                          //   image: AssetImage(
                          //     data[index]['image'],
                          //   ),
                          // ),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                blurRadius: 5,
                                spreadRadius: 1)
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedIndex = index;
                                  });
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>  SecondPage(index: index,),
                                    ),
                                  );
                                },
                                child: Hero(
                                  tag: index,
                                  child: Image.asset(data[index]['image'])
                                ),
                              ),
                              // Hero(tag: 'con',child: Image.asset(data[index]['image'])),
                              Text(
                                data[index]['name'].toString(),
                                style: TextStyle(
                                    color: Colors.indigo,
                                    fontWeight: FontWeight.w700),
                              ),
                              Row(
                                children: [
                                  Text(
                                    '\$' + '${data[index]['price'].toString()}',
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  // Hero(
                                  //   tag: 'grey',
                                  //   child: GestureDetector(
                                  //     onTap: (){
                                  //       Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecondPage(index: index,),));
                                  //     },
                                  //     child: CircleAvatar(
                                  //       radius: 10,
                                  //       backgroundColor: Colors.grey.shade300,
                                  //     ),
                                  //   ),
                                  // ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: List.generate(
                  5,
                  (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: height * 0.49,
                      width: width * 0.45,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage(
                            data2[index]['image'],
                          ),
                        ),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black26,
                              blurRadius: 5,
                              spreadRadius: 1)
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data2[index]['name'].toString(),
                              style: TextStyle(
                                  color: Colors.indigo,
                                  fontWeight: FontWeight.w700),
                            ),
                            Row(
                              children: [
                                Text(
                                  data2[index]['price'].toString(),
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.w700),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

List data = [
  {
    "id": 1,
    "name": "Wireless Bluetooth Headphones",
    "price": 29.99,
    "description":
        "High-quality wireless headphones with noise cancellation. Up to 20 hours battery life. Compatible with all devices.",
    "image": "assets/e1.jpg",
    "category": "Electronics"
  },
  {
    "id": 2,
    "name": "Smart Fitness Tracker",
    "price": 49.99,
    "description":
        "Track your fitness with a waterproof design. Features heart rate monitor, step counter, and sleep tracker.",
    "image": "assets/e2.jpg",
    "category": "Wearables"
  },
  {
    "id": 3,
    "name": "Portable USB Desk Fan",
    "price": 19.99,
    "description":
        "Compact and lightweight desk fan with adjustable speed. USB powered, ideal for home or office use.",
    "image": "assets/e3.jpg",
    "category": "Home Appliances"
  },
  {
    "id": 4,
    "name": "Laptop Cooling Pad",
    "price": 24.99,
    "description":
        "Ergonomic cooling pad with 5 fans for efficient cooling. Suitable for laptops up to 17 inches.",
    "image": "assets/e4.jpg",
    "category": "Accessories"
  },
  {
    "id": 5,
    "name": "Wireless Gaming Mouse",
    "price": 34.99,
    "description":
        "Ergonomic design with 6 customizable buttons. Adjustable DPI settings for precision gaming.",
    "image": "assets/e5.jpg",
    "category": "Gaming"
  },
];

List data2 = [
  {
    "id": 6,
    "name": "4K Action Camera",
    "price": 59.99,
    "description":
        "Capture adventures in 4K UHD. Includes waterproof case, wide-angle lens, and remote control.",
    "image": "assets/e6.jpg",
    "category": "Cameras"
  },
  {
    "id": 7,
    "name": "Smart LED Bulb",
    "price": 12.99,
    "description":
        "Color-changing LED bulb with app control. Works with Alexa and Google Assistant.",
    "image": "assets/e7.jpg",
    "category": "Smart Home"
  },
  {
    "id": 8,
    "name": "Stainless Steel Water Bottle",
    "price": 15.99,
    "description":
        "Double-wall vacuum insulated bottle. Keeps drinks cold for 24 hours or hot for 12 hours.",
    "image": "assets/e8.jpg",
    "category": "Outdoor"
  },
  {
    "id": 9,
    "name": "Adjustable Phone Stand",
    "price": 10.99,
    "description":
        "Durable aluminum stand for smartphones and tablets. Adjustable angles for comfortable viewing.",
    "image": "assets/e9.jpg",
    "category": "Accessories"
  },
  {
    "id": 10,
    "name": "Portable Power Bank",
    "price": 39.99,
    "description":
        "10,000mAh power bank with fast charging. Compact design with dual USB ports.",
    "image": "assets/e10.jpg",
    "category": "Electronics"
  }
];
