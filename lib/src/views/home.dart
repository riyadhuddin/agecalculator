import 'package:agecalculator/src/components/custom_container.dart';
import 'package:agecalculator/src/models/age_test.dart';
import 'package:agecalculator/src/utils/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        children: [
          SizedBox(height: 20.0),
          buildInputBox(context),
          SizedBox(height: 20.0),
          buildAgeBox(context),
          SizedBox(height: 20.0),
          CustomContainer(
            height: 50.0,
            child: Center(
              child: Text("Update Settings",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                color: Theme.of(context).accentColor,
              ),),
            ),
          ),
        ],
      ),
    );
  }
}

buildAppBar(BuildContext context) {
  return AppBar(
    leading: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomContainer(
          height: 40.0,
          width: 40.0,
          child: Icon(
            Icons.arrow_back_ios,
            size: 14.0,
          ),
        ),
      ],
    ),
    centerTitle: true,
    elevation: 0.0,
    title: Text(
      "${Constants.appName}",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.w900),
    ),
  );
}
buildAgeBox(BuildContext context) {
  AgeTest ageTest = new AgeTest();
  return Container(
    height: 300.0,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomContainer(
          height: 280.0,
          width: MediaQuery.of(context).size.width,
          isCircle: true,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Icon(
                  Feather.loader,
                  size: 250.0,
                  color: Theme.of(context).accentColor,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomContainer(
                    height: 200.0,
                    width: MediaQuery.of(context).size.width,
                    isCircle: true,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Feather.calendar,color: Theme.of(context).accentColor,
                        size: 40.0,),
                        SizedBox(height: 20.0,),
                        Text("Y/M/D"+
                       ageTest.testAge().toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
buildInputBox(context){
  return Container(
    height: 100.0,
    child: Column(
      children: [
        Text("Lets find my age",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22.0,
            color: Theme.of(context).accentColor,
          ),
        ),
      ],
    ),
  );
}