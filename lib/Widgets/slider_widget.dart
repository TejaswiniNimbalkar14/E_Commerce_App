import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({Key? key}) : super(key: key);

  @override
  _SliderWidgetState createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      child: ListView(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 210,
              autoPlay: true,
              enlargeCenterPage: true,
              autoPlayInterval: const Duration(seconds: 2),
              aspectRatio: 16/9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              viewportFraction: 0.8
            ),
            items: [
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [Colors.blue.shade900, Colors.blue.shade700]
                      )
                    ),
                  ),
                  Positioned(
                    top: 50,
                    left: 0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 5.0),
                          child: Text('GREAT SAVINGS!',
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 0.0),
                          child: Text('GET 79% OFF',
                            style: TextStyle(color: Colors.yellow.shade500, fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 0.0),
                          child: Text('On Seamcryl(1) - NL 2347DA/180',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 0.0),
                          child: Text('Inclusive of GST',
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.white),
                            ),
                            onPressed: null,
                            child: const Text('SHOP NOW', style: TextStyle(color: Colors.black, fontSize: 15),),
                          ),
                        )
                      ],
                    ),
                  ),
                  const Positioned(
                    right: 0,
                    top: 10,
                    child: Image(
                      image: AssetImage('assets/images/seam-cryl-1.png'),
                      height: 90,
                      width: 180,
                    ),
                  )
                ],
              ),
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [Colors.lightGreen.shade900, Colors.lightGreen.shade700]
                        )
                    ),
                  ),
                  Positioned(
                    top: 50,
                    left: 0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 5.0),
                          child: Text('GREAT SAVINGS!',
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 0.0),
                          child: Text('GET 65% OFF',
                            style: TextStyle(color: Colors.yellow.shade500, fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 0.0),
                          child: Text('On Suture Products',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 0.0),
                          child: Text('Inclusive of GST',
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.white),
                            ),
                            onPressed: null,
                            child: const Text('SHOP NOW', style: TextStyle(color: Colors.black, fontSize: 15),),
                          ),
                        )
                      ],
                    ),
                  ),
                  const Positioned(
                    right: 0,
                    top: 10,
                    child: Image(
                      image: AssetImage('assets/images/seam-lon-1.png'),
                      height: 90,
                      width: 180,
                    ),
                  )
                ],
              ),
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [Colors.blue.shade900, Colors.blue.shade700]
                        )
                    ),
                  ),
                  Positioned(
                    top: 50,
                    left: 0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                          child: Text('GREAT SAVINGS!',
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 0.0),
                          child: Text('GET 60% OFF',
                            style: TextStyle(color: Colors.yellow.shade500, fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 0.0),
                          child: Text('On Selected Products',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 0.0),
                          child: Text('Inclusive of GST',
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.white),
                            ),
                            onPressed: null,
                            child: const Text('SHOP NOW', style: TextStyle(color: Colors.black, fontSize: 15),),
                          ),
                        )
                      ],
                    ),
                  ),
                  const Positioned(
                    right: 0,
                    top: 20,
                    child: Image(
                      image: AssetImage('assets/images/seam-gut-1.png'),
                      height: 90,
                      width: 180,
                    ),
                  )
                ],
              )
            ],
          )
        ],
      )
    );
  }
}
