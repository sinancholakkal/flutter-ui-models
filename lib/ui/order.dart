import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Order #1688068",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.indigo,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  child: Text("May 31, 05:42 PM"),
                ),
                Row(
                  children: [
                    Container(
                      width: 13,
                      height: 13,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.blue,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "Delivered",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                )
              ],
            ),
            const Divider(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "1 ITEM",
                  style: TextStyle(color: Colors.grey),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.receipt,
                      color: Colors.blue,
                      size: 18,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "RECEIPT",
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
                )
              ],
            ),
            Row(
              children: [
                Container(
                  width: 50,
                  height: 70,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: NetworkImage(
                            "https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcR-8l8osFEl7juw9AKLeiBo3qsHKkbRKvsxQYvqwB4cTQsbFbLRcAGETzG3kvsqalvzwP3FEQd2_weKDNvWwDgQc1HOYbgq0_QkLpMxoKxx-lY8XpLTRRCSXEzvYRfkY5-6oPlRXn8&usqp=CAc"),
                      ),
                      border: Border.all(color: Colors.grey)),
                ),
                const SizedBox(
                  width: 15,
                ),
                SizedBox(
                  width: 280,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Explore | Men | Navy Blue"),
                      Text(
                        "1 piece",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        "Size: XL",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 25,
                                height: 25,
                                child: Align(
                                    child: Text(
                                  "1",
                                  style: TextStyle(color: Colors.blue),
                                )),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.blue),
                                    color: Color.fromARGB(46, 158, 158, 158),
                                    borderRadius: BorderRadius.circular(2)),
                              ),
                              const Text(
                                " x \u{20B9}799 ",
                                style: TextStyle(fontSize: 17),
                              ),
                            ],
                          ),
                          Text(
                            "\u{20B9}799",
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Divider(),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("item Total"), Text("\u{20B9}799")],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Delivery"),
                Text(
                  "FREE",
                  style: TextStyle(
                    color: Colors.red,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Grand Total",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
                Text(
                  "\u{20B9}799",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Divider(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "CUSTOMER DETAILS",
                  style: TextStyle(color: Colors.grey),
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.share_outlined,
                          color: Colors.blue,
                        )),
                    const Text(
                      "SHARE",
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    "Deepa",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "+91-7829000484",
                    style: TextStyle(color: Color.fromARGB(187, 36, 36, 36)),
                  ),
                ]),
                Container(
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Container(
                          width: 33,
                          height: 33,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue, width: 2),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Icon(
                            Icons.phone,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: FaIcon(
                            FontAwesomeIcons.whatsapp,
                            size: 38,
                            color: Colors.green,
                          ),)
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Address",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              "D 1101 Chartered Beverly",
              style: TextStyle(color: Color.fromARGB(187, 36, 36, 36)),
            ),
            Text(
              "Hills,Subramanyapura P.O",
              style: TextStyle(color: Color.fromARGB(187, 36, 36, 36)),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 100),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "City",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Bangalore",
                        style: TextStyle(
                          color: Color.fromARGB(187, 36, 36, 36),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pincode",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "560061",
                      style: TextStyle(
                        color: Color.fromARGB(187, 36, 36, 36),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
