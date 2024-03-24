part of '../../../../../core/import/app_import.dart';

class HomeView extends StatelessWidget {
  static const String nameRoute = "HomeView";
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomHomeBottomNavBar(),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 60),
          //     height: double.infinity,
          width: double.infinity,
          child: Card(
              //  color: Colors.amber,
              elevation: 2,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35)),
              child: Column(
                children: [
                  Container(
                    height: 290,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        gradient: LinearGradient(
                          colors: [
                            Colors.blue.shade600,
                            Colors.blue.shade300,
                            Colors.white,
                            Colors.blue.shade300,
                            Colors.blue.shade600
                          ],
                          //     stops: [0.3, 0.8, 0.3],
                        ),
                        borderRadius: BorderRadius.circular(35)),
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 17),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Welcome Back!",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.yellow.shade500),
                                ),
                                Text(
                                  "Guest",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.blueGrey.shade100),
                                )
                              ],
                            ),
                            Icon(Icons.notifications,
                                color: Colors.blueGrey.shade100),
                          ],
                        ),
                      ),
                      Container(
                        width: 375,
                        height: 144,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            // color: Colors.brown,
                            borderRadius: BorderRadius.circular(30)),
                        child: Image.asset(
                          "assets/img/2h5mffon.png",
                          height: 380,
                          width: 600,
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        width: 340,
                        height: 40,
                        margin: const EdgeInsets.symmetric(vertical: 15),
                        child: TextFormField(
                            decoration: const InputDecoration(
                          hintText: "what are you looking for...",
                          hintStyle: TextStyle(fontSize: 13),
                          prefixIcon: Icon(
                            Icons.search,
                          ),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                        )),
                      )
                    ]),
                  ),
                  const Prodects(),
                  const PopularProdacts(),
                  const TopRatedProducts()
                ],
              )),
        ),
      ),
    );
  }
}
