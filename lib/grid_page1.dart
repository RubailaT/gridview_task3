 import 'package:flutter/material.dart';

import 'model_grid.dart';

class Gridviewpage extends StatelessWidget {
  const Gridviewpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List Griditems=[
    ModelGrid(

        text1:"Calender",
        text2:"March,Wednesday",
        text3:"3 Events",
        ico: Icons.calendar_month,
      col: Colors.blue,
    ),

      ModelGrid(

          text1:"Groceries",
          text2:"Brocoli,Apple",
          text3:"4 Items",
        ico: Icons.local_grocery_store_sharp,
        col: Colors.orange,
      ),

      ModelGrid(

          text1:"Locations",
          text2:"Mathew going to office",
          text3:"",
     ico: Icons.location_on,
        col: Colors.red,),

      ModelGrid(

          text1:"Activity",
          text2:"Rose favorited your post",
          text3:"",
      ico: Icons.castle_rounded,
        col: Colors.yellow,
      ),

      ModelGrid(

          text1:"To do",
          text2:"Homework,Design",
          text3:"4 Items",
     ico: Icons.checklist,
        col: Colors.green),

      ModelGrid(

          text1:"Settings",
          text2:"",
          text3:"2 Items",
       ico: Icons.settings,
        col:Colors.purple,),
    ];
    return SafeArea(
      child: Scaffold(


        backgroundColor: Color(0xcff2E245B),


      body  : SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(top: 100,),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("My Family",style:
                    TextStyle(color: Colors.white,
                        fontSize: 30,fontWeight: FontWeight.bold),),
                    Icon(Icons.message,color: Colors.white,),

                  ],
                ),
              ),

          Padding(
                padding: const EdgeInsets.only(left:20),
                child: Text("Home",style: TextStyle(color:
                Colors.white60,fontSize: 20,fontWeight: FontWeight.w700),),
              ),
              SizedBox(height: 70,),
              GridView.builder(
                shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: Griditems.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 8,
                      childAspectRatio: 5/6,

                      crossAxisSpacing: 8,
                    ),

                    itemBuilder: (context,index) {

                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          color: Colors.white38,
                        shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: Column(
                          children: [
                 Icon(Griditems[index].ico,
                   color: Griditems[index].col,size: 40,
                 ),
                            SizedBox(height: 10,),
                          Text(Griditems[index].text1,style:
                          TextStyle(fontSize: 20,color: Colors.white),),
                          SizedBox(height: 10,),
                          Text((Griditems[index].text2)),
                            SizedBox(height: 10,),
                          Text(Griditems[index].text3),

                          ],
                          ),
                        ),),
                      );






                    },
                  ),
            ],
          ),
        ),
      ),
            ),
    );





  }
}
