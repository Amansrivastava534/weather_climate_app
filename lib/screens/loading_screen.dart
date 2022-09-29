import 'package:flutter/material.dart';
import 'package:we_mate/screens/location_screen.dart';
import 'package:we_mate/services/location.dart';
import 'package:we_mate/services/networking.dart';
import 'package:we_mate/services/weather.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

const apiKey='9eb3d164ac51bb685f260c5b75afd1c5';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState(){
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
   var weatherData= await WeatherModel().getLocationWeather();

    Navigator.push(context, MaterialPageRoute(builder: (context)
    {
      return LocationScreen(
        locationWeather: weatherData,
      );
    }));
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 100.0,
        ),
      ),

    );
  }
}
