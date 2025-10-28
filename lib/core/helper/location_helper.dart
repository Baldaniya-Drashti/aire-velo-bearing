// ignore_for_file: use_build_context_synchronously, prefer_const_constructors

import 'dart:developer';
import 'package:aire_velo_bearings/core/utils/math_utils.dart';
import 'package:aire_velo_bearings/core/constants/string_constant.dart';
import 'package:aire_velo_bearings/presentation/common/widgets/base_text.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

class LocationHelper {
  String? currentLocation;
  var locationDontAllow = false;
  double? latitude;
  double? longitude;
  Future<(String?, double?, double?)> getCurrentLocation() async {
    LocationPermission askedPermission;
    askedPermission = await Geolocator.requestPermission();
    if (askedPermission == LocationPermission.always ||
        askedPermission == LocationPermission.whileInUse) {
      Position currentPosition = await Geolocator.getCurrentPosition(
        locationSettings: LocationSettings(accuracy: LocationAccuracy.best),
      );

      await getAddressFromLatLng(currentPosition);

      latitude = currentPosition.latitude;
      longitude = currentPosition.longitude;

      return (currentLocation ?? '', latitude, longitude);
    } else if (askedPermission == LocationPermission.denied) {
      askedPermission = await Geolocator.requestPermission();
    } else if (askedPermission == LocationPermission.deniedForever) {
      locationDontAllow = true;
    }
    return (currentLocation ?? '', latitude, longitude);
  }

  Future<void> getAddressFromLatLng(Position position) async {
    await placemarkFromCoordinates(position.latitude, position.longitude)
        .then((placeMark) {
          Placemark place = placeMark[0];
          log('Currenct Location : ${place.toJson()}');
          currentLocation =
              "${place.street!},${place.subLocality!},${place.locality},${place.administrativeArea},${place.country},${place.postalCode} ";
        })
        .catchError((e) {});
  }

  showPermissionAlertDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: BaseText(
            text: StringConstant.permissionDenied,
            fontWeight: FontWeight.w600,
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BaseText(
                text:
                    'Unable to get location. Go to Settings > Permissions, then allow following permissions and try again:',
              ),
              SizedBox(height: getSize(20)),
              Row(
                children: [
                  Icon(Icons.location_disabled),
                  SizedBox(width: getSize(10)),
                  BaseText(
                    text: StringConstant.location,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: BaseText(
                text: StringConstant.cancel,
                fontWeight: FontWeight.w600,
                textColor: Colors.blueAccent,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: BaseText(
                text: StringConstant.openSettings,
                fontWeight: FontWeight.w600,
                textColor: Colors.blueAccent,
              ),
              onPressed: () {
                Geolocator.openLocationSettings();
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
