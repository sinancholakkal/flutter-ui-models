import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:badges/badges.dart';

class ManageStore extends StatelessWidget {
  const ManageStore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 238, 231, 231),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.indigo,
        title: const Align(
            child: Text(
          "Manage Store",
          style: TextStyle(color: Colors.white),
        )),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 5 / 4,
          //mainAxisSpacing: 10
        ),
        children: [
          //Marketing design
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 204, 130, 20),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: FaIcon(
                            FontAwesomeIcons.volumeHigh,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const Text(
                        "Marketing Designs",
                        style: TextStyle(fontSize: 20),
                      ),
                    ]),
              ),
            ),
          ),

          //Online payment
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.currency_rupee,
                              color: Colors.white,
                            )),
                      ),
                      const Text(
                        "Online Payments",
                        style: TextStyle(fontSize: 20),
                      ),
                    ]),
              ),
            ),
          ),

          //Discount Coupons
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.discount_outlined,
                              color: Colors.white,
                            )),
                      ),
                      const Text(
                        "Discount Coupons",
                        style: TextStyle(fontSize: 20),
                      ),
                    ]),
              ),
            ),
          ),

          //My Customer
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 131, 131, 131),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.supervisor_account_outlined,
                              color: Colors.white,
                            )),
                      ),
                      const Text(
                        "My\nCustomer",
                        style: TextStyle(fontSize: 20),
                      ),
                    ]),
              ),
            ),
          ),

          //Store QR Code
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(175, 91, 116, 92),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.qr_code_scanner_sharp,
                              color: Colors.white,
                            )),
                      ),
                      const Text(
                        "Store QR\nCode",
                        style: TextStyle(fontSize: 20),
                      ),
                    ]),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(174, 7, 71, 160),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.payments_outlined,
                              color: Colors.white,
                            )),
                      ),
                      const Text(
                        "Extra\nCharges",
                        style: TextStyle(fontSize: 20),
                      ),
                    ]),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Color.fromARGB(175, 91, 116, 92),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.notes,
                                  color: Colors.white,
                                )),
                          ),
                          Container(
                            color: Color.fromARGB(255, 191, 136, 54),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 1),
                              child: Text(
                                'New',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                      const Text(
                        "Store QR\nCode",
                        style: TextStyle(fontSize: 20),
                      ),
                    ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
