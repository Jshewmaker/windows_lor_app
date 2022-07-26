import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:riot_api/riot_api.dart';

class CardDetailView extends StatelessWidget {
  const CardDetailView({Key? key, required this.card}) : super(key: key);
  final CardModel? card;
  @override
  Widget build(BuildContext context) {
    return card != null
        ? SingleChildScrollView(
            physics: const ScrollPhysics(),
            child: Center(
              child: Column(
                children: [
                  Image.asset('assets/set_bundles/set_1/en_us/img/cards/${card!.cardCode}.png'),
                  Text(card!.name),
                  card!.associatedCardRefs.isNotEmpty
                      ? ListView.builder(
                          controller: ScrollController(),
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: card!.associatedCardRefs.length,
                          itemBuilder: (context, index) {
                            return TextButton(
                              child: Text(
                                card!.associatedCardRefs[index],
                                style: const TextStyle(color: Colors.black),
                              ),
                              onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CardDetailView(
                                          card: card,
                                        )),
                              ),
                            );
                          })
                      : Text(card.toString())
                ],
              ),
            ),
          )
        : const SizedBox.shrink();
  }
}
