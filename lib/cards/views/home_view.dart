import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:riot_api/riot_api.dart';
import 'package:windows_lor_app/cards/bloc/card_bloc.dart';
import 'package:windows_lor_app/cards/views/card_detail_view.dart';
import 'package:windows_lor_app/game/views/game_status_view.dart';
import 'package:windows_lor_app/models/runeterra_card.dart';
import 'package:windows_lor_app/repository/card_repository.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool showCardWidget = false;
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              title: const Text('Show Live Deck'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const GameStatusView()),
                );
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(title: const Text('My App')),
      body: BlocProvider(
        create: (_) => CardBloc(context.read<CardRepository>())..add(CardRequested()),
        child: BlocBuilder<CardBloc, CardState>(builder: (context, state) {
          if (state is CardLoading) {
            return const CircularProgressIndicator();
          }
          if (state is CardLoadSuccess) {
            return Row(
              children: [
                SizedBox(
                  width: 300,
                  child: Card(
                    color: Colors.grey[900],
                    child: ListView.builder(
                      controller: ScrollController(),
                      itemCount: state.card.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                            title: Text(
                              state.card[index].cardDetails.name,
                              style: const TextStyle(color: Colors.white),
                            ),
                            onTap: () => setState(() {
                                  showCardWidget = true;
                                  i = index;
                                }));
                      },
                    ),
                  ),
                ),
                showCardWidget
                    ? SizedBox(
                        width: 500,
                        child: Card(
                          color: Colors.grey[900],
                          child: CardDetailView(card: state.card[i]),
                        ),
                      )
                    : const SizedBox.shrink(),
              ],
            );
          }
          return const Text('Something went wrong!');
        }),
      ),
    );
  }
}
