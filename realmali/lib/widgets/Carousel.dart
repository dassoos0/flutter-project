import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  List<String> slist = [
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.KGqYEViuwfUFpUQ93VTGRwHaFq%26pid%3DApi&f=1',
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.AaXLaOsYGdpQ-rN_nNJrgwHaE6%26pid%3DApi&f=1',
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.7uF0MYCRwG0Rme6_ODxf-QHaGi%26pid%3DApi&f=1',
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.pQ_0bqAfhvM2nh_S59vUZgHaGX%26pid%3DApi&f=1'
  ];
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
          height: MediaQuery.of(context).size.height * .23,
          enlargeCenterPage: true,
          autoPlay: true,
          // aspectRatio: 16 / 9,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(microseconds: 400),
          viewportFraction: 0.8),
      items: slist.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.network(i));
          },
        );
      }).toList(),
    );
  }
}
