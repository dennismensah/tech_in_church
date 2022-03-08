import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum NotLoadedReason { noNetwork, other }
typedef OnTryAgain = void Function();

class NotLoaded extends StatelessWidget {
  final NotLoadedReason notLoadedReason;
  final OnTryAgain onTryAgain;
  const NotLoaded({
    Key? key,
    required this.notLoadedReason,
    required this.onTryAgain,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FaIcon(
            notLoadedReason == NotLoadedReason.noNetwork
                ? FontAwesomeIcons.cloud
                : FontAwesomeIcons.frown,
            size: 100,
            color: Colors.grey.shade300,
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              notLoadedReason == NotLoadedReason.noNetwork
                  ? 'Please check your internet connection'
                  : 'Sorry. We ran into an issue !',
              style: Theme.of(context).textTheme.headline6,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            width: 0.4.sw,
            child: ElevatedButton(
              onPressed: () {
                onTryAgain();

              },
              child: Text(
                'Try again',
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    ?.copyWith(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
