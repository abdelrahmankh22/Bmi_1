import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Messenger extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white ,
      appBar: AppBar(
        titleSpacing: 20.0,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title:const Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: CircleAvatar(
                radius: 20.0,
                backgroundImage:NetworkImage("https://imgs.search.brave.com/9F4-ipb_Q8znMKR5poOPEeZxEtmXHLjYmWsi-JwSsK4/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzL2NmL2Yw/L2ZiL2NmZjBmYmE4/OWRlNGI4ODQ5NWQ1/MGFiMzM4N2Y5M2Y4/LmpwZw") ,
              ),
            ),
            SizedBox(
              width: 15.0,
            ),
            Text("Chats",style:TextStyle(
              color: Colors.black,
            ),),

          ],

        ),
        actions: [
          IconButton(onPressed: (){}, icon:const CircleAvatar(
              radius: 15.0,
              backgroundColor:Colors.blue ,
              child: Icon(
                Icons.camera_alt,size: 16.0,color:Colors.white ,))),
          IconButton(onPressed: (){}, icon:const CircleAvatar(
              radius: 15.0,
              backgroundColor:Colors.blue ,
              child: Icon(
                Icons.edit,size: 16.0,color:Colors.white ,)))

        ],
      ),
      body:
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start ,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(10.0),
                  color: Colors.grey[400],

                ),
                padding: const EdgeInsets.all(5.0),
                child: const Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(width: 15.0,),
                    Text("Search"),
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
              Container(
                height: 120,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => StoryItem()
                    , separatorBuilder:(context, index) =>SizedBox(width: 20.0,)
                    , itemCount: 10),
              ),
              ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap:true ,
                  itemBuilder: (context, index) => ChatItem(),
                  separatorBuilder: (context, index) => SizedBox(height: 20.0)
                  , itemCount: 20)




            ],
          ),
        ),
      ) ,
    );
  }
  Widget ChatItem ()=>  Row(
    children: [
      Stack(
        alignment:AlignmentDirectional.bottomEnd ,
        children: [
          CircleAvatar(
            radius: 30.0,
            backgroundImage:NetworkImage("https://imgs.search.brave.com/9F4-ipb_Q8znMKR5poOPEeZxEtmXHLjYmWsi-JwSsK4/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzL2NmL2Yw/L2ZiL2NmZjBmYmE4/OWRlNGI4ODQ5NWQ1/MGFiMzM4N2Y5M2Y4/LmpwZw") ,
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
                bottom: 3.0, end: 3.0
            ),
            child: CircleAvatar(
              radius: 7,
              backgroundColor: Colors.green,

            ),
          )
        ],
      ),
      SizedBox(width: 20.0,),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Abdelrahman khalid ",style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold
            ) ,
              maxLines: 1,
              overflow:TextOverflow.ellipsis ,),
            SizedBox(
              height: 5.0,
            ),

            Row(
              children: [
                Expanded(child: Text("Hello abdelrhman, How are u, I want to tell u that your exam in  the the the ",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,)),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Container(
                    width: 7.0,
                    height: 7.0,
                    decoration:BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle
                    ) ,
                  ),

                ),
                Text("4:25 Pm"),


              ],
            ),
          ],
        ),
      )


    ],
  );
  Widget StoryItem () =>Container(
    width: 75.0,
    child: const Column(
      children: [
        Stack(
          alignment:AlignmentDirectional.bottomEnd ,
          children: [
            CircleAvatar(
              radius: 30.0,
              backgroundImage:NetworkImage("https://imgs.search.brave.com/9F4-ipb_Q8znMKR5poOPEeZxEtmXHLjYmWsi-JwSsK4/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzL2NmL2Yw/L2ZiL2NmZjBmYmE4/OWRlNGI4ODQ5NWQ1/MGFiMzM4N2Y5M2Y4/LmpwZw") ,
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(
                  bottom: 3.0, end: 3.0
              ),
              child: CircleAvatar(
                radius: 7,
                backgroundColor: Colors.green,

              ),
            )
          ],
        ),
        SizedBox(height: 6.0,),
        Text("Abdelrahman khalid lotfy",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,)


      ],
    ),
  );

}
