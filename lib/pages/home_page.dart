import '../utils/export.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  int selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 6, vsync: this);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.5),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(Icons.menu),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 9),
            child: Icon(Icons.person),
          ),
        ],
      ),
      body: SafeArea(
        child: Scrollbar(
          //isAlwaysShown: true,
          child: ListView(
            shrinkWrap: true,
            // physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.all(20),
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Find the best \nCoffee for you',
                    style: GoogleFonts.lobster(fontSize: 30),
                  ),
                  const SizedBox(height: 17.5),
                  Container(
                    // margin: EdgeInsets.only(bottom: 6.r),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0xff3c4046),
                      borderRadius: BorderRadius.circular(17.5),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Find your coffee...',
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey[600],
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 6),
                  TabBar(
                    indicator: const CircleTabPointer(
                      color: Colors.white70,
                      radius: 5,
                    ),
                    labelColor: const Color(0xffC0C3D6),
                    controller: tabController,
                    isScrollable: true,
                    labelStyle: GoogleFonts.playfairDisplay(
                        fontWeight: FontWeight.bold),
                    physics: const BouncingScrollPhysics(),
                    tabAlignment: TabAlignment.start,
                    tabs: const [
                      Tab(text: 'Cappuccino'),
                      Tab(text: 'Americano'),
                      Tab(text: 'Esppresso'),
                      Tab(text: 'Mocha'),
                      Tab(text: 'Macchiato'),
                      Tab(text: 'Doppio'),
                    ],
                  ),
                  SizedBox(
                    height: 430,
                    child: TabBarView(
                      controller: tabController,
                      children: [
                        CoffeeCard(),
                        const Text("datas"),
                        const Text("Plural"),
                        const Text("Plural"),
                        const Text("Plural"),
                        const Text("Pluralw"),
                      ],
                    ),
                  ),
                  Text(
                    'Special For You',
                    style: GoogleFonts.lobsterTwo(
                      fontSize: 22.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 9),
                  SpecialCoffeeCard()
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CircleTabPointer extends Decoration {
  final Color color;
  final double radius;
  const CircleTabPointer({required this.color, required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return CirclePainter(color: color, radius: radius);
  }
}

class CirclePainter extends BoxPainter {
  final Color color;
  double radius;
  CirclePainter({required this.color, required this.radius});
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint paint = Paint();
    paint.color = color;
    paint.isAntiAlias = true;
    final Offset circleOffset = Offset(
        configuration.size!.width / 2 - radius / 2,
        configuration.size!.height - radius);
    canvas.drawCircle(offset + circleOffset, radius, paint);
  }
}


// class CircleTabIndicator extends Decoration {
//   final BoxPainter _painter;

//   CircleTabIndicator({required Color color, required double radius})
//       : _painter = _CirclePainter(color, radius);

//   @override
//   BoxPainter createBoxPainter([VoidCallback? onChanged]) => _painter;
// }

// class _CirclePainter extends BoxPainter {
//   final Paint _paint;
//   final double radius;

//   _CirclePainter(Color color, this.radius)
//       : _paint = Paint()
//           ..color = color
//           ..isAntiAlias = true;

//   @override
//   void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
//     final Offset circleOffset = offset +
//         Offset(
//           configuration.size!.width / 2 - radius / 2,
//           configuration.size!.height - radius,
//         );
//     canvas.drawCircle(circleOffset, radius, _paint);
//   }
// }


