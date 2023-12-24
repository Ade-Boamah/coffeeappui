import 'package:coffeeappui/utils/export.dart';

class CoffeeDetailsPage extends StatelessWidget {
  const CoffeeDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 500,
                      // size.height * 0.63,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(26),
                        image: const DecorationImage(
                          image: AssetImage('images/cappucino.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const BlurryTile(),
                  ],
                ),
                const SizedBox(height: 9.8),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Discription",
                        style: GoogleFonts.lobster(),
                      ),
                      const SizedBox(height: 3.5),
                      const Text(
                        "A cuppocino is a coffee-base drink made primarily from expresso and milk",
                        // style: TextStyle(),
                      ),
                      const SizedBox(height: 14),
                      Text(
                        'Size',
                        style: GoogleFonts.lobster(),
                      ),
                      const SizedBox(height: 11.5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 39,
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xff101419),
                              border: Border.all(
                                color: const Color(0xffd17842),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'S',
                                style: GoogleFonts.lobsterTwo(),
                              ),
                            ),
                          ),
                          Container(
                            height: 39,
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xff101419),
                            ),
                            child: Center(
                              child: Text(
                                'M',
                                style: GoogleFonts.lobsterTwo(),
                              ),
                            ),
                          ),
                          Container(
                            height: 39,
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xff101419),
                            ),
                            child: Center(
                              child: Text(
                                'L',
                                style: GoogleFonts.lobsterTwo(),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Price",
                                style: GoogleFonts.lobsterTwo(),
                              ),
                              const SizedBox(height: 2.5),

                              // Either you use this process👇🏿

                              Text(
                                "\$ ${4.209.toStringAsFixed(2)}",
                                style: GoogleFonts.lobsterTwo(fontSize: 18),
                              ),

                              // Or this process👇🏿

                              // Row(
                              //   children: [
                              //     Text(
                              //       r'$',
                              //       style: GoogleFonts.lobsterTwo(fontSize: 15),
                              //     ),
                              //     const SizedBox(width: 5),
                              //     Text(
                              //       '4.209',
                              //       style: GoogleFonts.lobsterTwo(),
                              //     ),
                              //   ],
                              // ),
                            ],
                          ),
                          SizedBox(
                            height: 52.5,
                            width: 175,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xffd17842),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(22.5),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                'Buy Now',
                                style: GoogleFonts.lobsterTwo(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
