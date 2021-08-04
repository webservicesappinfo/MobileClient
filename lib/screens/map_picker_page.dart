import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_place_picker/google_maps_place_picker.dart';
//import 'package:place_picker/place_picker.dart';

class MapPickerPage extends StatefulWidget {
  MapPickerPage({Key? key}) : super(key: key);

  static final kInitialPosition = LatLng(-33.8567844, 151.213108);

  @override
  _MapPickerPageState createState() => _MapPickerPageState();
}

class _MapPickerPageState extends State<MapPickerPage> {
  /*@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Picker Example')),
      body: Center(
        child: ElevatedButton(
          child: Text("Pick Delivery location"),
          onPressed: () {
            showPlacePicker();
          },
        ),
      ),
    );
  }

  void showPlacePicker() async {
    LocationResult result = await Navigator.of(context).push(MaterialPageRoute(
        builder: (context) =>
            PlacePicker("AIzaSyC7Ahq-jx9Codm4xi_5q0BJAUiVUYBEvjU")));
    print(result);
  }*/

  PickResult? selectedPlace;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Google Map Place Picer Demo"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                child: Text("Load Google Map"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PlacePicker(
                        apiKey: 'AIzaSyBWDYa13kTf47oaSuLW-fLgJFaU1YdS8Bs',
                        onPlacePicked: (result) {
                          print(result.adrAddress);
                          Navigator.of(context).pop();
                        },
                        initialPosition: MapPickerPage.kInitialPosition,
                        useCurrentLocation: true,
                      ),
                    ),
                  );
                },
              ),
              Text("data"),
              selectedPlace == null
                  ? Container()
                  : Text(selectedPlace?.geometry?.location.lng.toString() ??
                      "Empty"),
            ],
          ),
        ));
  }
}
