import 'package:flutter/material.dart';
import 'package:grpc_test/services/auth.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_place_picker/google_maps_place_picker.dart';
import 'package:grpc_test/services/user_service.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ProfilePage')),
      body: Container(
        child: Column(
          children: <Widget>[
            Text(AuthService().user?.name ?? "NoName"),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                var currentUserLocation =
                    UserService.instance.getUserLocation(AuthService().user);
                currentUserLocation.then((value) => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PlacePicker(
                            apiKey: 'AIzaSyBWDYa13kTf47oaSuLW-fLgJFaU1YdS8Bs',
                            onPlacePicked: (result) {
                              print(result.adrAddress);
                              var user = AuthService().user;
                              var location = result.geometry?.location;
                              if (location != null && user != null) {
                                user.location =
                                    LatLng(location.lat, location.lng);
                                UserService.instance.setUserLocation(user);
                              }
                              Navigator.of(context).pop();
                            },
                            initialPosition:
                                value ?? LatLng(-33.8567844, 151.213108),
                            useCurrentLocation: false,
                          ),
                        ),
                      )
                    });

                /*Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MapPickerPage(),
                  ),
                );*/
              },
              child: Text("Set Location"),
            )
          ],
        ),
      ),
    );
  }
}
