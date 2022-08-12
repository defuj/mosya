import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mosya/components/text_field.dart';
import 'package:mosya/models/banners.dart';
import 'package:mosya/models/brands.dart';
import 'package:mosya/utils/customcolor.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

final _refreshIndicatorKey = GlobalKey<RefreshIndicatorState>();

class _HomeScreenState extends State<HomeScreen> {
  void onSearch() {}

  final List<Banners> banners = [
    Banners(
        id: 1,
        image:
            'https://www.promohondacars.com/wp-content/uploads/2017/10/slider2-promohondacars.png'),
    Banners(
        id: 1,
        image: 'https://www.oto.co.id/files/filemanager/Promo-Jan-22-9.png'),
    Banners(
        id: 1,
        image:
            'https://hondamobiltangerang.com/wp-content/uploads/2017/12/Promo-Mobil-Honda.jpg'),
  ];

  final List<Brands> brands = [
    Brands(id: 1, image: '', name: 'Toyota'),
    Brands(id: 2, image: '', name: 'Honda'),
    Brands(id: 3, image: '', name: 'Isuzu'),
    Brands(id: 4, image: '', name: 'Daihatsu'),
    Brands(id: 5, image: '', name: 'Hyundai'),
    Brands(id: 6, image: '', name: 'Mitsubishi'),
  ];

  @override
  Widget build(BuildContext context) {
    final brandSelected = brands[0].name;

    return RefreshIndicator(
      key: _refreshIndicatorKey,
      onRefresh: () async {
        await Future.delayed(const Duration(seconds: 1));
        return;
      },
      child: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 26),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // search section
            Container(
              padding: const EdgeInsets.only(
                top: 16,
                bottom: 20,
                left: 16,
                right: 16,
              ),
              child: formDefault(
                context: context,
                textStyle: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontWeight: FontWeight.w600),
                textInputAction: TextInputAction.search,
                onChange: (value) => onSearch(),
                hintText: 'Cari mobil di sini ...',
                backgroundColor: Colors.white,
                borderRadius: 30,
                sufixIcon: SvgPicture.asset(
                  'assets/icons/svg/fi-br-search.svg',
                  width: 20,
                  color: CustomColor.black500,
                ),
              ),
            ),
            // Image Carousel Section
            CarouselSlider(
              options: CarouselOptions(
                height: 150.0,
                enlargeCenterPage: false,
                aspectRatio: 16 / 9,
                autoPlay: true,
                initialPage: 1,
              ),
              items: banners.map((banner) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                          image: NetworkImage(banner.image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('Brands',
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(fontWeight: FontWeight.bold, fontSize: 20)),
            ),
            SizedBox(
              height: 110.0,
              child: ListView.builder(
                  physics: const ClampingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      width: 80,
                      decoration: BoxDecoration(
                        color: brandSelected == brands[index].name
                            ? CustomColor.orange100
                            : Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: SvgPicture.asset(
                              'assets/icons/svg/icon_bmw.svg',
                              width: 50,
                              color: brandSelected == brands[index].name
                                  ? Colors.white
                                  : CustomColor.black700,
                            ),
                          ),
                          Text(
                            brands[index].name,
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .copyWith(
                                    color: brandSelected == brands[index].name
                                        ? Colors.white
                                        : CustomColor.black700,
                                    fontWeight:
                                        brandSelected == brands[index].name
                                            ? FontWeight.bold
                                            : FontWeight.w500),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
