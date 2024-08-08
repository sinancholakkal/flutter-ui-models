import 'package:flutter/material.dart';
import 'package:ui_w6/ui/additional_information.dart';
import 'package:ui_w6/ui/catalogue.dart';
import 'package:ui_w6/ui/dukaan_premium.dart';
import 'package:ui_w6/ui/manage_store.dart';
import 'package:ui_w6/ui/order.dart';
import 'package:ui_w6/ui/payments.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.indigo
      ),
      home:const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                return const AdditionalInformation();
              }));
            }, child:const Text("Additional Information")),
            const SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                return const ManageStore();
              }));
            }, child:const Text("Manage Store")),
            const SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                return const Payments();
              }));
            }, child:const Text("Payments")),
            const SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                return const DukaanPremium();
              }));
            }, child:const Text("Dukaan Premium")),
            const SizedBox(height: 10,),
            
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                return const Order();
              }));
            }, child:const Text("Order")),
            const SizedBox(height: 10,),

            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                return const Catalogue();
              }));
            }, child:const Text("Catalogue")),
            const SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}