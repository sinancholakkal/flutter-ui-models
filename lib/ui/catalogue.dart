import 'package:flutter/material.dart';

class Catalogue extends StatefulWidget {
  const Catalogue({super.key});

  @override
  State<Catalogue> createState() => _CatalogueState();
}

class _CatalogueState extends State<Catalogue> {
  bool switchVal = true;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            labelStyle: TextStyle(fontSize: 18),
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(
                text: "Product",
              ),
              Tab(
                text: "Categories",
              )
            ],
          ),

          //Appbar Title
          title: const Text(
            "Catalogue",
            style: TextStyle(color: Colors.white),
          ),
          automaticallyImplyLeading: false,
          centerTitle: true,
          backgroundColor: Colors.indigo,
          actions: [
            //appBar search icon
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ))
          ],
        ),
        body: TabBarView(
          children: [
            ListView(
              // first tab page
              children: [
                prodects(
                    pName: "Couch Potato |Women...",
                    pPrice: "499",
                    img:
                        "https://nobero.com/cdn/shop/files/the-place.jpg?v=1709125918"),
                prodects(
                    pName: "Couch Potato | Men | Bl...",
                    pPrice: "799",
                    img:
                        "https://pitshirts.in/cdn/shop/files/IMG-20240304_174954.jpg?v=1709554919&width=1100"),
                prodects(
                    pName: "Mug | Explore",
                    pPrice: "299",
                    img:
                        "https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcST1KxDfAWtgdsBWjRrypmslGn3EhuR39Doa290oSpG92o_dxqZQUpRRaYvdI09MWYlBcEMTJUsPaDrqIx76rEmCl2T9OAEWkp-RdVUXKFBIpYaK9xhdLp_Y9NN0h2IFDffwRr-its&usqp=CAc"),
                prodects(
                    pName: "Bluetooth headset",
                    pPrice: "699",
                    img:
                        "https://rukminim2.flixcart.com/image/612/612/xif0q/headphone/m/a/t/bluetooth-headset-b451-gpq-store-original-imahy657gunexwhe.jpeg?q=70"),
              ],
            ),
            const Text('2'), //second tab page
          ],
        ),
      ),
    );
  }

  Widget prodects(
      {required String pName, required String pPrice, required String img}) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Card(//Card starting
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Container( // Image box
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.grey)),
                    width: 90,
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 0),
                      child: Image.network(
                        img,// Prodect image
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                pName,
                                style:const TextStyle(fontSize: 18),
                              ),
                              const Icon(Icons.more_vert_outlined)
                            ],
                          ),

                          //contity
                          const Text(
                            textAlign: TextAlign.left,
                            "1 piece",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),

                          //Price
                          Text("\u{20B9}$pPrice"),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "In stock",
                                style: TextStyle(color: Colors.red),
                              ),
                              //Switch button staring
                              Transform.scale(
                                scale: 0.8,
                                child: Switch(
                                    value: switchVal,
                                    onChanged: (value) {
                                      setState(() {
                                        switchVal = value;
                                      });
                                    }),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const Divider(),

              //prodect Share9
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.share_outlined),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Share Prodect")
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
