import 'package:coffeeappui/utils/export.dart';

class BlurryTile extends StatelessWidget {
  const BlurryTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Positioned(
      top: 360,
      // size.height * 0.46,
      child: BlurryContainer(
        color: Colors.black.withOpacity(0.5),
        // blur: 14,
        padding: const EdgeInsets.all(22.5),
        height: 160,
        width: size.width * 0.98,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(42.8),
          topRight: Radius.circular(42.8),
          bottomLeft: Radius.circular(27),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Cappuccino',
                  style: GoogleFonts.lobsterTwo(
                    fontSize: 22.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5.8),
                Text(
                  'With Oat Milk',
                  style: GoogleFonts.lobsterTwo(
                    color: Colors.grey.withOpacity(0.7),
                  ),
                ),
               const SizedBox(height: 12),
                Row(
                  children: [
                    SvgPicture.asset(
                      'images/star.svg',
                      // ignore: deprecated_member_use
                      color: const Color(0xffd17842),
                      height: 18.5,
                    ),
                    const SizedBox(width: 7),
                    Text(
                      '4.5',
                      style: GoogleFonts.lobsterTwo(
                        fontSize: 22,
                      ),
                    ),
                    const SizedBox(width: 6),
                    Text(
                      '(6.983)',
                      style: GoogleFonts.lobsterTwo(
                        color: Colors.grey.withOpacity(0.7),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 45,
                      width: 49,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xff101419),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 7),
                        child: Column(
                          children: [
                            SvgPicture.asset(
                              'images/coffee-beans.svg',
                              // ignore: deprecated_member_use
                              color: Colors.orange,
                              height: 15,
                            ),
                            const SizedBox(height: 2.5),
                            Text(
                              'Coffee',
                              style: GoogleFonts.lobsterTwo(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Container(
                      height: 45,
                      width: 49,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xff101419),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 7),
                        child: Column(
                          children: [
                            SvgPicture.asset(
                              'images/water-drop.svg',
                              // ignore: deprecated_member_use
                              color: Colors.orange,
                              height: 15,
                            ),
                            const SizedBox(height: 2.5),
                            Text(
                              'Milk',
                              style: GoogleFonts.lobsterTwo(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Container(
                  height: 39,
                  width: 131,
                  decoration: BoxDecoration(
                    color: const Color(0xff101419),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Center(
                    child: Text(
                      'Medium Roasted',
                      style: GoogleFonts.lobsterTwo(
                        // color: const Color(0xff101419),
                        fontSize: 11.5,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
