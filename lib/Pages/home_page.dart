import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:suture_house_demo/Pages/register_page.dart';

class HomePage extends StatefulWidget {
  final String text;
  final ValueChanged<String> onChanged;
  final String hintText;
  const HomePage({
    Key? key,
    required this.text,
    required this.onChanged,
    required this.hintText
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Search bar properties
  final controller = TextEditingController();
  final styleActive = const TextStyle(color: Colors.orangeAccent);
  final styleHint = const TextStyle(color: Colors.black);
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        _buildSearch(),  //Search bar

        _buildSlider(),  //Slider

        //Product Categories
        const Padding(
          padding: EdgeInsets.fromLTRB(10.0, 5.0, 5.0, 5.0),
          child: Text(
            'Product Categories',
            style: TextStyle(color: Colors.indigo, fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),

        //Categories row 1
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: _gridItem(
                  'Absorbable Sutures',
                  'assets/images/seam-gut-1.png',
                  Colors.blue.shade600,
                  Colors.lightBlue.shade100,
                ),
              ),
              const SizedBox(width: 10.0,),
              Expanded(
                child: _gridItem(
                  'Non-Absorbable',
                  'assets/images/seam-silk-1.png',
                  Colors.green.shade700,
                  Colors.lightGreen.shade200,
                ),
              )
            ],
          ),
        ),

        //Categories row 2
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: _gridItem(
                  'Hernia Mesh',
                  'assets/images/seam-lene-mesh-1.png',
                  Colors.green.shade700,
                  Colors.lightGreen.shade200,
                ),
              ),
              const SizedBox(width: 10.0,),
              Expanded(
                child: _gridItem(
                  'Bone Wax',
                  'assets/images/seam-wax-1.png',
                  Colors.blue.shade600,
                  Colors.lightBlue.shade100,
                ),
              ),
            ],
          ),
        ),

        //Categories row 3
        Padding(
          padding: const EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 5.0),
          child: Stack(
            children: [
              Container(
                height: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.red.shade800, Colors.red.shade300]
                    )
                ),
              ),
              const Positioned(
                left: 3,
                top: 10,
                child: Image(
                  image: AssetImage('assets/images/stapler2.jpg'),
                  height: 70,
                  width: 125,
                ),
              ),
              Positioned(
                top: 10,
                right: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 5.0),
                      child: Text('Welcome To Suture House',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 5.0),
                      child: Text('Disposable Skin Stapler',
                        style: TextStyle(color: Colors.yellow.shade500, fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                      child: Text('Sales up to 69% Off',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.white),
                        ),
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => const RegisterPage())
                          // );
                        },
                        child: const Text('Shop Now', style: TextStyle(color: Colors.black, fontSize: 15),),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 20.0,),

        //Services column
        Column(
          children: [
            _servicesItem(Icons.delivery_dining, 'Free Delivery'),
            _servicesItem(Icons.payment, 'Online Payments'),
            _servicesItem(Icons.timelapse, 'Faster Delivery'),
            _servicesItem(Icons.recommend, 'Genuine Products'),
          ],
        ),

        const Divider(
          color: Colors.grey,
          thickness: 1.5,
        ),

        const SizedBox(height: 20.0,),

        //Products
        const Center(
          child: Text(
            'Products',
            style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),

      ],
    );
  }

  _buildSearch() {
    final style = widget.text.isEmpty ? styleHint : styleActive;
    return Container(
      height: 42,
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        border: Border.all(color: Colors.black26),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            icon: Icon(Icons.search, color: style.color),
            suffixIcon: widget.text.isNotEmpty ? GestureDetector(
              child: Icon(Icons.close, color: style.color),
              onTap: () {
                controller.clear();
                widget.onChanged('');
                FocusScope.of(context).requestFocus(FocusNode());
              },
            ) : null,
            hintText: widget.hintText,
            hintStyle: style,
            border: InputBorder.none
        ),
        style: styleHint,
        onChanged: widget.onChanged,
      ),
    );
  }

  _buildSlider() {
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
                //Slide 1
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [Colors.blue.shade800, Colors.lightBlue.shade400]
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
                //Slide 2
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [Colors.green.shade800, Colors.lightGreen.shade400]
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
                //Slide 3
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [Colors.teal.shade800, Colors.teal.shade200]
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

  _gridItem(name, image, color1, color2) {
    return Container(
      //height: 70,
      //padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [color1, color2]
          )
      ),
      child:Column(
        children: <Widget>[
          const SizedBox(height: 5.0,),
          Padding(
            padding: const EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
            child: Text(
              name,
              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
              padding: const EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  //maximumSize: MaterialStateProperty.all(Size.fromHeight(20)),
                ),
                onPressed: null,
                child: const Text('Shop Now', style: TextStyle(color: Colors.black,)),
              )
          ),
          Image(
            image: AssetImage(image),
            //fit: BoxFit.cover,
            height: 70,
            width: 140,
          ),
        ],
      ),
    );
  }

  _servicesItem(icon, name){
    return Container(
      child: Column(
        children: <Widget>[
          const Divider(
            color: Colors.grey,
            thickness: 1.5,
          ),
          const SizedBox(height: 10.0,),
          IconButton(
            icon: Icon(icon),
            onPressed: null,
            iconSize: 50.0,
            color: Colors.orange,
            disabledColor: Colors.orange,
          ),
          Text(
            name,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20.0,),
        ],
      ),
    );
  }
}

