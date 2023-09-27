

import 'package:flutter/material.dart';

void main() {
  runApp(const UI());
}

class UI extends StatelessWidget {
  const UI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyUI(),
    );
  }
}

class MyUI extends StatefulWidget {
  const MyUI({Key? key}) : super(key: key);

  @override
  State<MyUI> createState() => _MyUIState();
}

class _MyUIState extends State<MyUI> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double height = size.height -25;
    double width = size.width;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 166, 198, 202),
                Color.fromARGB(255, 5, 95, 107)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.01, 9]),
        ),
        child: Column(
          children: [
            AppBar(height, width),
           
            textdata(height, width),
           
            container(height, width),
            
            rowText(height, width),
            
            FirstRow(height, width),
            
            secondRow(height, width),
            SizedBox(
              height: height * 0.03,
            ),
            BottomBar(height, width),
          ],
        ),
      ),
    );
  }

  Widget AppBar(double height, double width) {
    return SizedBox(
      height: height * 0.11,
      width: width,
      // ignore: prefer_const_literals_to_create_immutables
      child: const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Padding(
          padding: EdgeInsets.only(left: 30, top: 40),
          child: Icon(Icons.menu),
        ),
        Padding(
            padding: EdgeInsets.only(right: 30, top: 40),
            child: CircleAvatar(
              foregroundImage: AssetImage('asset/images/fb.jpg'),
              radius: 20,
            ))
      ]),
    );
  }

  Widget textdata(double height, double width) {
    return SizedBox(
      height: height * 0.1,
      width: width,
      child: const Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(height: 5,),
        Padding(
          padding: EdgeInsets.only(left: 30),
          child: Text(
            'Hi Navila!',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 30, top: 5),
          child: Text(
            '6 Tasks are pending',
            style: TextStyle(color: Color.fromARGB(255, 219, 216, 216)),
          ),
        )
      ]),
    );
  }

  Widget container(double height, double width) {
    return SizedBox(
      height: height * 0.2,
      width: width,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 30,
          right: 30,
        ),
        child: Container(
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 166, 198, 202),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: const Column(
            //  crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15, top: 15),
                  child: SizedBox(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Mobile App Design',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5,),
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: SizedBox(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Mike and Anila',
                        style:
                            TextStyle(color: Color.fromARGB(255, 238, 233, 233)),
                      ),
                    ),
                  ),
                ),
               
                //  Padding(
                //    padding: const EdgeInsets.only(right: 10, bottom: 10),
                //    child: Text('Now', style: TextStyle(color: Color.fromARGB(255, 231, 226, 226), fontSize: 15),),
                //  ),
              
                        
        ],
            )
            ),
      ),
    
    );
  }

  Widget rowText(double height, double width) {
    return SizedBox(
      height: height * 0.1,
      width: width,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 30),
            child: Text(
              'Monthly Review',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 30),
            child: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 53, 56, 56),
              radius: 18,
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget FirstRow(double height, double width) {
    return SizedBox(
      height: height* 0.2,
      width: width,
      child: Row(
        
      //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.6,
              width: width * 0.4,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text('22', style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                Text('Done', style: TextStyle(color: Colors.white),)
              ],),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 166, 198, 202),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30, left: 10),
            child: Container(
              height: height * 0.14,
              width: width * 0.4,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text('7', style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                Text('In Progress', style: TextStyle(color: Colors.white),)
              ],),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 166, 198, 202),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ],
      ),
    );
    
  }
  Widget secondRow (double height, double width){
    return SizedBox(
      height: height * 0.2,
      width: width,
      child: Row(
        
       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Container(
              height: height * 0.14,
              width: width * 0.4,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text('10', style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                Text('Ongoing', style: TextStyle(color: Colors.white),)
              ],),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 166, 198, 202),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30, left: 10),
            child: Container(
              height: MediaQuery.of(context).size.height*0.6,
              width: width * 0.4,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text('12', style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                Text('Waiting for Review', style: TextStyle(color: Colors.white),)
              ],),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 166, 198, 202),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ],
      ),
    );
    
    
  }
  Widget BottomBar(double height, double width){
    return SizedBox(
      height: height*0.1,
      width: width,
      child: const Padding(
        padding: EdgeInsets.only(left: 40,right:40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Icon(Icons.home, color:Color.fromARGB(255, 166, 198, 202) ),
          Icon(Icons.note_add),
          Icon(Icons.person, color:Color.fromARGB(255, 166, 198, 202)),
          Icon(Icons.notification_add, color:Color.fromARGB(255, 166, 198, 202)),

        ],),
      ),
    );

  }
}
