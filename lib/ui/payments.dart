import 'package:flutter/material.dart';

class Payments extends StatefulWidget {
  const Payments({super.key});

  @override
  State<Payments> createState() => _PaymentsState();
}

class _PaymentsState extends State<Payments>
    with SingleTickerProviderStateMixin {
  int leftOutOf = 14000;
  late TabController tabController = TabController(length: 3, vsync: this);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        iconTheme: IconThemeData(color: Colors.white),
        title: const Align(
          child: Text(
            "Payments",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.info_outline))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
                    //staring items with in container
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Transaction Limit",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "A free limit up to which will you receive\nthe online payments directly in your bank",
                            style: TextStyle(
                                color: Color.fromARGB(255, 133, 104, 104),
                                fontSize: 17),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: double.infinity, // specify the desired width
                            child: SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                thumbShape: SliderComponentShape.noThumb,
                                overlayShape: const RoundSliderOverlayShape(
                                    overlayRadius: 0.0),
                              ),
                              child: Slider(
                                min: 1,
                                max: 50000,
                                value: leftOutOf.toDouble(),
                                onChanged: (value) {
                                  leftOutOf = value.toInt();
                                },
                              ),
                            ),
                          ),
                          const Text(
                            "36,668 left out of 50000",
                            style: TextStyle(color: Colors.grey),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Increase limit",
                              style: TextStyle(color: Colors.white),
                            ),
                            style: ButtonStyle(
                              shape: WidgetStatePropertyAll<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              backgroundColor:
                                  const WidgetStatePropertyAll(Colors.indigo),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Default Method",
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    TextButton.icon(
                      onPressed: () {},
                      label: const Text(
                        "Online Payments",
                        style: TextStyle(color: Colors.grey),
                      ),
                      icon: const Icon(Icons.arrow_forward_ios,
                          color: Colors.grey),
                      iconAlignment: IconAlignment.end,
                    )
                  ],
                ),

                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Payment Profile",
                      style: TextStyle(fontSize: 17),
                    ),
                    TextButton.icon(
                      onPressed: () {},
                      label: const Text(
                        "Bank Account",
                        style: TextStyle(color: Colors.grey),
                      ),
                      icon: const Icon(Icons.arrow_forward_ios,
                          color: Colors.grey),
                      iconAlignment: IconAlignment.end,
                    ),
                  ],
                ),
                const Divider(),
                // Payment Overview
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Payments Overview",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    TextButton.icon(
                      onPressed: () {},
                      label: const Text(
                        "Life Time",
                        style: TextStyle(color: Colors.grey),
                      ),
                      icon: const Icon(
                        Icons.keyboard_arrow_down_outlined,
                        color: Colors.grey,
                      ),
                      iconAlignment: IconAlignment.end,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Amount On Hold
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 224, 166, 77),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //Text('\u{20B9}'),
                                Text(
                                  "AMOUNT ON HOLD",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "\u{20B9}0",
                                  style: TextStyle(
                                      fontSize: 30, color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

                    //Amount Receive
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.green,
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //Text('\u{20B9}'),
                                Text(
                                  "AMOUNT RECIEVE",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "\u{20B9}13,332",
                                  style: TextStyle(
                                      fontSize: 30, color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Transactions",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  child: TabBar(
                    dividerColor: Colors.transparent,
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.black26,
                    controller: tabController,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorPadding: EdgeInsets.all(5),
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.indigo),
                    tabs: const [
                      Tab(
                        text: 'On Hold',
                      ),
                      Tab(
                        text: 'Payaouts (15)',
                      ),
                      Tab(text: 'Resunds')
                    ],
                  ),
                ),
                Container(
                  width: double.maxFinite,
                  height: 300,
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      Text('1'),
                      items(),
                      Text('3'),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget items() {
  return ListView(
    children: [

      //Item 1-------------------------------------

      ListTile(
        leading:const Image(
            image: NetworkImage(
                "https://nobero.com/cdn/shop/products/imperfectly-perfect_2010275b-2baf-4abe-8280-705ed36665b9.jpg?v=1712486632")),
        title: const Text(
          "Order #1688068",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle:const Text(
          "Jul 12, 02:06 PM",
          style: TextStyle(color: Colors.grey),
        ),
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text(
              '\u{20B9}799',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.blue,
                  fontWeight: FontWeight.w600),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 13,
                  height: 13,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green),
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  "Successful",
                  style: TextStyle(color: Colors.green, fontSize: 14),
                )
              ],
            )
          ],
        ),
      ),
      const Padding(
        padding: EdgeInsets.only(left: 15),
        child: Text(
          '\u{20B9}799 deposited to: 58860200000138',
          style: TextStyle(
            fontSize: 13,
            fontStyle: FontStyle.italic,
            color: Colors.grey,
          ),
        ),
      ),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Divider(),
      ),

      //Item 2-----------------------------------------------

      ListTile(
        leading:const Image(
            image: NetworkImage(
                "https://d2z95rmqm3tfb7.cloudfront.net/static/images/landingpage/photomugs/photo_mug_large2.jpg")),
        title: const Text(
          "Order #1455739",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle:const Text(
          "Apr 26, 02:06 PM",
          style: TextStyle(color: Colors.grey),
        ),
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text(
              '\u{20B9}397.4',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.blue,
                  fontWeight: FontWeight.w600),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 13,
                  height: 13,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green),
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  "Successful",
                  style: TextStyle(color: Colors.green, fontSize: 14),
                )
              ],
            )
          ],
        ),
      ),
      const Padding(
        padding: EdgeInsets.only(left: 15),
        child: Text(
          '\u{20B9}397.4 deposited to: 56492037333648',
          style: TextStyle(
            fontSize: 13,
            fontStyle: FontStyle.italic,
            color: Colors.grey,
          ),
        ),
      ),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Divider(),
      ),

      //Item 3-------------------------------------

      ListTile(
        leading:const Image(
            image: NetworkImage(
                "https://m.media-amazon.com/images/I/61cCJG5U9BL._SX300_SY300_QL70_FMwebp_.jpg")),
        title: const Text(
          "Order #1894002",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle:const Text(
          "Apr 11, 10:54 AM",
          style: TextStyle(color: Colors.grey),
        ),
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text(
              '\u{20B9}292',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.blue,
                  fontWeight: FontWeight.w600),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 13,
                  height: 13,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green),
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  "Successful",
                  style: TextStyle(color: Colors.green, fontSize: 14),
                )
              ],
            )
          ],
        ),
      ),
      const Padding(
        padding: EdgeInsets.only(left: 15),
        child: Text(
          '\u{20B9}292 deposited to: 532640002638453',
          style: TextStyle(
            fontSize: 13,
            fontStyle: FontStyle.italic,
            color: Colors.grey,
          ),
        ),
      ),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Divider(),
      ),

      //Item 4 ---------------------------------

      ListTile(
        leading:const Image(
            image: NetworkImage(
                "https://m.media-amazon.com/images/I/31ducEh481L._SX300_SY300_QL70_FMwebp_.jpg")),
        title: const Text(
          "Order #1138947",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle:const Text(
          "Apr 02, 11:29 AM",
          style: TextStyle(color: Colors.grey),
        ),
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text(
              '\u{20B9}39,790',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.blue,
                  fontWeight: FontWeight.w600),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 13,
                  height: 13,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green),
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  "Successful",
                  style: TextStyle(color: Colors.green, fontSize: 14),
                )
              ],
            )
          ],
        ),
      ),
      const Padding(
        padding: EdgeInsets.only(left: 15),
        child: Text(
          '\u{20B9}39,790 deposited to: 54953685900368',
          style: TextStyle(
            fontSize: 13,
            fontStyle: FontStyle.italic,
            color: Colors.grey,
          ),
        ),
      ),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Divider(),
      ),
    ],
  );
}
