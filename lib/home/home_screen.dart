import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {



  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff3f3f0),
      drawer: Drawer(

      ),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.person, size: 30, color: Colors.black,), //icon
          onPressed: (){

          },
        ),
        elevation: 0.0,
        backgroundColor: Color(0xffe8e7e2),
        shadowColor: Colors.white,
        title: Center(child: Text('Home' , style: TextStyle(color: Colors.black),)),
        actions: [
          CircleAvatar(
            radius: 15,
            backgroundColor: Color(0xffb2afa4),
            child: Icon(Icons.search , color: Colors.black,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 15,
              backgroundColor: Color(0xffb2afa4),
              child: Icon(Icons.shop , color: Colors.black,),
            ),
          ),
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            children: [
              Container(
                height: 160,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/img/zz.jpg") ,
                  fit: BoxFit.cover
                  ),
                  borderRadius: BorderRadius.circular(20),

                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30 , horizontal: 2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(" 30% discount " , style: TextStyle(color: Colors.white ,fontSize: 34),),
                      Text(" on all burgers product " , style: TextStyle(color: Colors.white ,fontSize: 24),),
                  //Expanded(child: Container()),
                    ],

                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text('Herbs Seasning' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold , color: Colors.black),) ,
                  Text('View all' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold , color: Colors.grey[600]),) ,
                ],),


              ),

              SingleChildScrollView(scrollDirection: Axis.horizontal,
                  child: Row(children: [

                    SingleProduct(),
                    SingleProduct(),
                    SingleProduct(),
                  ],),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Fresh Fruits' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold , color: Colors.black),) ,
                    Text('View all' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold , color: Colors.grey[600]),) ,
                  ],),


              ),

              SingleChildScrollView(scrollDirection: Axis.horizontal,
                child: Row(children: [

                  SingleProduct(),
                  SingleProduct(),
                  SingleProduct(),
                ],),
              ),

            ],
          ),
          ),
        ],
      ),
    );
  }
  Widget SingleProduct() {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Row(children: [
        Container(
          height: 260,
          width: 173,
          decoration: BoxDecoration(
              color: Color(0xffdbdbdb),
              borderRadius: BorderRadius.circular(20)
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 130,
                  width : 180,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset("assets/img/ve.jpg" ,fit: BoxFit.cover,),
                  ),
                ),
                SizedBox(height: 15,),
                Text(' Beef Burger' , style: TextStyle(color: Colors.black , fontSize: 20),),
                SizedBox(height: 5,),
                Text(' with double cheese', style: TextStyle(color: Colors.grey[700] , fontSize: 16),),
                SizedBox(height: 20,),

                Row(children: [
                  Expanded(
                    child: Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left : 6),
                        child: Row(
                          children: [
                            Text('\$ ', style: TextStyle(fontWeight: FontWeight.bold , color: Color(0xffCF933E) , fontSize: 20 ),),
                            Text('20' , style: TextStyle(fontSize: 15 , fontWeight: FontWeight.bold , color: Colors.black),),
                            SizedBox(width: 10,),
                            Icon(Icons.arrow_drop_down , size: 15, ) ,
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left : 6),
                        child: Row(
                          children: [
                            Icon(Icons.remove , size: 20, ) ,
                            SizedBox(width: 8,),
                            Text('1' , style: TextStyle(fontSize: 15 , fontWeight: FontWeight.bold , color: Colors.black),),
                            SizedBox(width: 8,),
                            Icon(Icons.add , size: 20, ) ,
                          ],
                        ),
                      ),
                    ),
                  ),
                ],),
              ],),
          ),
        ),
        SizedBox(width: 20,),
        Container(
          height: 260,
          width: 173,
          decoration: BoxDecoration(
              color: Color(0xffdbdbdb),
              borderRadius: BorderRadius.circular(20)
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 130,
                  width: 180,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset("assets/img/te.jpg" ,fit: BoxFit.cover,),
                  ),
                ),
                SizedBox(height: 15,),
                Text(' Beef Burger' , style: TextStyle(color: Colors.black , fontSize: 20),),
                SizedBox(height: 5,),
                Text(' with double cheese', style: TextStyle(color: Colors.grey[700] , fontSize: 16),),
                SizedBox(height: 15,),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 30,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left : 6),
                          child: Row( mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('\$ ', style: TextStyle(fontWeight: FontWeight.bold , color: Color(0xffCF933E) , fontSize: 20 ),),
                              //SizedBox(width: 2,),
                              Text('20' , style: TextStyle(fontSize: 14 , fontWeight: FontWeight.bold , color: Colors.black),),
                              SizedBox(width: 15,),
                              Icon(Icons.arrow_drop_down , size: 15, ) ,
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 2,),
                    Expanded(
                      child: Container(
                        height: 30,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left : 6),
                          child: Row(
                            children: [
                              Icon(Icons.remove , size: 20, ) ,
                              SizedBox(width: 8,),
                              Text('1' , style: TextStyle(fontSize: 15 , fontWeight: FontWeight.bold , color: Colors.black),),
                              SizedBox(width: 8,),
                              Icon(Icons.add , size: 20, ) ,
                            ],
                          ),
                        ),
                      ),
                    ),

                  ],
                ),

              ],),
          ),
        ),
      ],),
    );
  }
}
