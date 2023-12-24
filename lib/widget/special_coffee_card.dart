import 'package:coffeeappui/utils/export.dart';

// ignore: must_be_immutable
class SpecialCoffeeCard extends StatelessWidget {
  SpecialCoffeeCard({super.key});

  List<String> images = [
    'images/newcoffee.jpg',
    'images/Turkish Coffee.jpg',
    "images/cafe.jpg",
  ];

  List<String> coffeeName = [
    'Caramel Macchiato',
    'Turkish Coffee',
    'Cafe Cubanio Special'
  ];

  List<String> ingredients = [
    'Ice Caramel Sauce, Espresso',
    'Turkish Coffee, Sugar',
    'Ground Coffee, Water',
  ];

  List<String> price = [
    '4.50',
    '7.50',
    '9.00',
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemCount: images.length,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return Container(
          height: 160,
          width: double.infinity,
          margin: const EdgeInsets.only(bottom: 15),
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: const Color(0xff141921),
            borderRadius: BorderRadius.circular(13),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 140,
                margin: const EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      images[index],
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    coffeeName[index],
                    style: GoogleFonts.lobsterTwo(),
                  ),
                  const SizedBox(height: 4.5),
                  Text(
                    ingredients[index],
                    style: GoogleFonts.lobsterTwo(
                      fontSize: 10,
                    ),
                  ),
                  const SizedBox(height: 23),
                  Row(
                    children: [
                      Text(
                        r'$',
                        style: GoogleFonts.lobsterTwo(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        price[index],
                        style: GoogleFonts.lobsterTwo(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(top: 55),
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.red,
                  ),
                  child: const Icon(
                    Icons.add,
                    size: 20,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
