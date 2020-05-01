import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gojekreplicate/app_color.dart';
import 'package:gojekreplicate/appbar.dart';
import 'package:gojekreplicate/food.dart';
import 'package:gojekreplicate/gojek_services.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePage();
  }
}

class HomePage extends State<Home> {
  List<GojekServices> listGojekServices = [];
  List<Food> listFood = [];

  @override
  void initState() {
    super.initState();
    fetchServices();
    fetchFood();
  }

  @override
  build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: AppColor.grey,
      body: Container(
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: [
            Container(
              padding: EdgeInsets.only(left: 16, right: 16),
              color: Colors.white,
              child: Column(
                children: [gopayMenu(), serviceMenu(), gofoodFeatured()],
              ),
            )
          ],
        ),
      ),
    );
  }

  gofoodFeatured() {
    return Container(
        padding: EdgeInsets.fromLTRB(16, 16, 0, 16),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Text(
            "GoFood",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Padding(padding: EdgeInsets.only(top: 8)),
          Text(
            "Featured food",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
              height: 172,
              child: ListView.builder(
                itemCount: listFood.length,
                padding: EdgeInsets.only(top: 12),
                physics: ClampingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return itemFeaturedFood(listFood[index]);
                },
              ))
        ]));
  }

  itemServiceMenu(GojekServices gojekServices) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: AppColor.grey200, width: 1),
              borderRadius: BorderRadius.circular(100),
              color: gojekServices.color,
            ),
            padding: EdgeInsets.all(6),
            child: Icon(
              gojekServices.image,
              color: Colors.white,
              size: 26,
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 6)),
          Text(
            gojekServices.title,
            style: TextStyle(fontSize: 14),
          )
        ],
      ),
    );
  }

  serviceMenu() {
    return SizedBox(
      width: double.infinity,
      height: 220,
      child: Container(
        margin: EdgeInsets.only(top: 8, bottom: 8),
        child: GridView.builder(
            physics: ClampingScrollPhysics(),
            itemCount: 8,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
            itemBuilder: (context, position) {
              return itemServiceMenu(listGojekServices[position]);
            }),
      ),
    );
  }

  gopayMenu() {
    return Container(
      height: 120,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xff3164bd), Color(0xff295cb5)]),
          borderRadius: BorderRadius.all(Radius.circular(3))),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xff3164bd), Color(0xff295cb5)]),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(3), topRight: Radius.circular(3))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.account_balance_wallet,
                      color: Colors.white,
                      size: 16,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      "gopay",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Text(
                  "Rp. 120.000",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 32, right: 32, top: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/icons/icon_transfer.png",
                      width: 32,
                      height: 32,
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Text(
                      "Transfer",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/icons/icon_scan.png",
                      width: 32,
                      height: 32,
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Text(
                      "Scan",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/icons/icon_saldo.png",
                      width: 32,
                      height: 32,
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Text(
                      "Isi Saldo",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/icons/icon_menu.png",
                      width: 32,
                      height: 32,
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Text(
                      "Lainnya",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  void fetchServices() {
    listGojekServices.add(GojekServices(
        color: AppColor.menuRide,
        image: Icons.directions_bike,
        title: "GoRide"));
    listGojekServices.add(GojekServices(
        color: AppColor.menuCar, image: Icons.local_car_wash, title: "GoCar"));
    listGojekServices.add(GojekServices(
        color: AppColor.menuFood, image: Icons.restaurant, title: "GoFood"));
    listGojekServices.add(GojekServices(
        color: AppColor.menuSend, image: Icons.next_week, title: "GoSend"));
    listGojekServices.add(GojekServices(
        color: AppColor.menuDeals, image: Icons.local_offer, title: "GoDeals"));
    listGojekServices.add(GojekServices(
        color: AppColor.menuPulsa,
        image: Icons.phonelink_ring,
        title: "GoPulsa"));
    listGojekServices.add(GojekServices(
        color: AppColor.menuShop,
        image: Icons.shopping_basket,
        title: "GoShop"));
    listGojekServices.add(GojekServices(
        color: AppColor.menuOther, image: Icons.apps, title: "Lainnya"));
    listGojekServices.add(GojekServices(
        color: AppColor.menuMart, image: Icons.shopping_cart, title: "GoMart"));
    listGojekServices.add(GojekServices(
        color: AppColor.menuTix, image: Icons.local_play, title: "GO-TIX"));
  }

  void fetchFood() {
    listFood
        .add(Food(title: "Steak Andakar", image: "assets/images/food_1.jpg"));
    listFood
        .add(Food(title: "Mie Ayam Tumini", image: "assets/images/food_2.jpg"));
    listFood
        .add(Food(title: "Tengkleng Hohah", image: "assets/images/food_3.jpg"));
    listFood
        .add(Food(title: "Warung Steak", image: "assets/images/food_4.jpg"));
    listFood.add(
        Food(title: "Kindai Warung Banjar", image: "assets/images/food_5.jpg"));
  }

  itemFeaturedFood(Food listFood) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            child: Image.asset(
              listFood.image,
              width: 132,
              height: 132,
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 8)),
          Text(listFood.title)
        ],
      ),
    );
  }
}
