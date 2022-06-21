import 'package:flutter/material.dart';
import 'package:untitled2/misc/colors.dart';
class DashboardOne extends StatelessWidget {
  const DashboardOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }
  Widget _buildBody() {
    return Container(
      child: Row(
        children: [

          section1(),
          section2(),

        ],
      )
    );
  }
  Widget section1(){
    return Container(
      width: 249,
      height: 1058,
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(height: 50,),
          upsection1(),
          downsection1(),
        ],
      ),
    );
  }
  Widget upsection1(){
    return Expanded(
        flex: 1,
        child: Container(
          padding: EdgeInsets.all(10),
          color: Colors.white,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: AppColors.itemBackground,
                    borderRadius: BorderRadius.circular(7.0)
                ),
                // color: AppColors.itemBackground,
                child: SizedBox(
                  height: 48,
                  width: 221,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:  [
                      SizedBox(width: 20,),
                      Icon(Icons.home_rounded,size: 30,color: Colors.white,),
                      SizedBox(width: 10,),
                      Expanded(
                          child: Text("Dashboard",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),

                          ))
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 3,),
              items("USERS",Icon(Icons.unsubscribe,color: Colors.grey,)),
              items("BUSINESS UNIT",Icon(Icons.unsubscribe,color: Colors.grey,)),
              items("SUBSCRIPTION",Icon(Icons.unsubscribe,color: Colors.grey,)),
              items("REPORTING",Icon(Icons.unsubscribe,color: Colors.grey,)),

            ],
          ),

        ));
  }
  Widget downsection1(){
    return Expanded(
        flex: 1,
        child: Container(
          padding: EdgeInsets.all(10),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 3,),
              items("Notification",const Icon(Icons.notifications,color: Colors.grey,)),
              items("Message",const Icon(Icons.message_rounded,color: Colors.grey,)),
            ],
          ),

        ));
  }
  Widget section2(){
    return Expanded(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              headerSection2(),
              Divider(),
              Container(

              ),
            ],
          ),
        ));
  }

  Widget headerSection2(){
    return Container(
      height: 124,
      child: Row(
        children: [
          SizedBox(width: 30,),
          Text('Dashboard',style: TextStyle(
            fontSize: 16,
            color: Colors.black,

          ),),
          SizedBox(width: 94,),
          Container(
            color: Colors.white,
            width: 542,
            height: 54,
            child: TextField(
              decoration: InputDecoration(
                labelText: "Search",
                labelStyle: TextStyle(color: Colors.black),
                hintText: "Search",
                hintStyle: TextStyle(color: Colors.grey),
                prefixIcon: Icon(Icons.search,color: Colors.grey,),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none
                ),
                )

              ),
            ),
          SizedBox(width: 34.3,),
          Icon(Icons.notifications),
          SizedBox(width: 136,),
          Text("tr.Sai Lin Oo",style: TextStyle(
            fontSize: 20,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w400,
            color: AppColors.titleColor,
          ),),
          SizedBox(width: 8.5,),
          Image.asset("images/download.jpeg"),
        ],
      ),
    );
  }
  Widget items(String text,Icon icon){
    return  Container(
      color: Colors.white,
      child: SizedBox(
        height: 48,
        width: 221,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(width: 20,),
            icon,
            const SizedBox(width: 15,),
            Expanded(child:  Text(
              text,
              style: const TextStyle(
                 fontSize: 16,
                color: Colors.grey,
              ),

            )),
          ],
        ),
      ),
    );
  }
}
