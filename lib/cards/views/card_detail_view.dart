import 'package:flutter/material.dart';
import 'package:riot_api/riot_api.dart';
import 'package:windows_lor_app/models/runeterra_card.dart';

class CardDetailView extends StatelessWidget {
  const CardDetailView({Key? key, required this.card}) : super(key: key);
  final RuneterraCard? card;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const ScrollPhysics(),
      child: Center(
        child: Column(
          children: [_getImage(1), Text(card?.cardDetails.name ?? ''), Text(card?.cardDetails.flavorText ?? '')],
        ),
      ),
    );
  }

  Widget _getImage(int set) {
    return Image.asset(
      'assets/set_bundles/set_$set/en_us/img/cards/${card?.cardDetails.cardCode}.png',
      errorBuilder: (context, error, stackTrace) => _getImage(set + 1),
    );
  }
}
