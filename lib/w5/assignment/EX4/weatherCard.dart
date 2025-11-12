import 'package:flutter/material.dart';

enum Weather {
  cloudy(
    "assets/ex4/cloudy.png",
    LinearGradient(
      colors: [
        Color.fromRGBO(214, 129, 215, 1),
        Color.fromARGB(255, 170, 61, 200),
      ],
    ),
  ),
  sunny(
    "assets/ex4/sunny.png",
    LinearGradient(
      colors: [
        Color.fromARGB(255, 226, 127, 124),
        Color.fromARGB(255, 217, 49, 19),
      ],
    ),
  ),
  sunnyCloudy(
    "assets/ex4/sunnyCloudy.png",
    LinearGradient(
      colors: [
        Color.fromARGB(255, 122, 195, 173),
        Color.fromARGB(255, 22, 157, 144),
      ],
    ),
  ),
  veryCloudy(
    "assets/ex4/veryCloudy.png",
    LinearGradient(
      colors: [
        Color.fromARGB(255, 226, 172, 126),
        Color.fromARGB(255, 193, 113, 52),
      ],
    ),
  );

  final String image;
  final LinearGradient gradient;

  const Weather(this.image, this.gradient);
}

class Weathercard extends StatelessWidget {
  final Weather weather;
  final String city;
  final String minTem;
  final String maxTem;
  final String crruentTem;

  const Weathercard({
    super.key,
    required this.city,
    required this.weather,
    required this.minTem,
    required this.maxTem,
    required this.crruentTem,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: PhysicalModel(
        clipBehavior: Clip.hardEdge,
        borderRadius: BorderRadius.circular(25),
        color: Colors.black,
        elevation: 15,
        child: Container(
          decoration: BoxDecoration(
            gradient:weather.gradient,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(
            children: [
              Positioned(
                right: -60,
                top: -20,
                child: CircleAvatar(
                  radius: 125,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: weather.gradient,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  top: 20,
                  right: 20,
                  bottom: 50,
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30,
                      child: Image.asset(
                        weather.image,
                        height: 42,
                        width: 42,
                      ),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      spacing: 3,
                      children: [
                        Text(
                          city,
                          style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 4,),
                        Text(
                          "Min $minTem ˚C",
                          style: TextStyle(color: Colors.white, fontSize: 12,),
                        ),
                        Text(
                          "Max $maxTem ˚C",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ],
                    ),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Text(
                        "$crruentTem ˚C",
                        textAlign: TextAlign.end,
                        style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
