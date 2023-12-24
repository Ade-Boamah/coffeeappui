import '../utils/export.dart';

class CoffeeCard extends StatelessWidget {
  final List<Product> items = itemList;

  CoffeeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.coffeeDetailsPage);
      },
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Container(
            width: 300,
            margin: const EdgeInsets.all(10),
            // padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
            decoration: BoxDecoration(
              color: Colors.grey.shade400,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      // height: 300,
                      margin: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: const Color(0xff242931),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: Image.asset(
                            item.imagePath,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Cuppocino',
                        style: GoogleFonts.lobsterTwo(color: Colors.black),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        item.ingredient,
                        style: GoogleFonts.lobsterTwo(
                          fontSize: 9,
                          color: Colors.black,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Either you use this process👇🏿

                          Text(
                            '\$${item.price.toStringAsFixed(2)}',
                            style: GoogleFonts.lobsterTwo(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          // Or this process👇🏿

                          // Row(
                          //   children: [
                          //     Text(
                          //       r'$',
                          //       style: GoogleFonts.lobsterTwo(
                          //         fontSize: 20,
                          //         color: Colors.black,
                          //         fontWeight: FontWeight.bold,
                          //       ),
                          //     ),
                          //     Text(
                          //       item.price.toStringAsFixed(2),
                          //       style: GoogleFonts.lobsterTwo(
                          //         fontSize: 20,
                          //         color: Colors.black,
                          //       ),
                          //     ),
                          //   ],
                          // ),
                          Container(
                            padding: const EdgeInsets.all(20),
                            decoration: const BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                bottomRight: Radius.circular(11),
                              ),
                            ),
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 20,
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
        },
      ),
    );
  }
}
