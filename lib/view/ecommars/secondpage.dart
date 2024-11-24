import 'package:animation_daily_task/view/ecommars/ecommars.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final int index;

  const SecondPage({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Container(
          height: height * 0.6,
          width: width * 0.8,
          decoration: BoxDecoration(
            color: Colors.white,
            // image: DecorationImage(
            //   image: AssetImage(
            //     data[index]['image'],
            //   ),
            // ),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(color: Colors.black26, blurRadius: 5, spreadRadius: 1)
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: height * 0.05,),
                Hero(
                    tag: index,
                    child: Image.asset(data[index]['image'],width: double.infinity,)
                ),
                // Hero(tag: 'con',child: Image.asset(data[index]['image'])),
                Text(
                  data[index]['name'].toString(),
                  style: TextStyle(
                      color: Colors.indigo, fontWeight: FontWeight.w700),
                ),
                Row(
                  children: [
                    Text(
                      '\$' + '${data[index]['price'].toString()}',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.w700),
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
                ),
                SizedBox(height: height * 0.03,),
                Text(
                  '${data[index]['description']}',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
        ),
      ),

      // Padding(
      //   padding: const EdgeInsets.symmetric(horizontal: 10),
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       Center(
      //         child: Hero(
      //           tag: 'con',
      //           child: Image.asset(
      //             data[index]['image'],
      //             height: 350,
      //             fit: BoxFit.cover,
      //           ),
      //         ),
      //       ),
      //       const SizedBox(
      //         height: 25,
      //       ),
      //       Text(
      //         data[index]['name'],
      //         style: const TextStyle(
      //           fontWeight: FontWeight.bold,
      //           fontSize: 20,
      //         ),
      //       ),
      //       Text(
      //         'Price: \$ ${data[index]['price']}',
      //         style: const TextStyle(
      //           fontWeight: FontWeight.bold,
      //           fontSize: 20,
      //         ),
      //       ),
      //       Text('description: ${data[index]['description']}'),
      //       Hero(
      //         tag: 'grey',
      //         child: GestureDetector(
      //           onTap: () {
      //             Navigator.of(context).push(MaterialPageRoute(
      //               builder: (context) => SecondPage(
      //                 index: index,
      //               ),
      //             ));
      //           },
      //           child: CircleAvatar(
      //             radius: 10,
      //             backgroundColor: Colors.grey.shade300,
      //           ),
      //         ),
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}
