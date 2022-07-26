import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:riot_api/riot_api.dart';
import 'package:windows_lor_app/cards/bloc/card_bloc.dart';
import 'package:windows_lor_app/cards/views/card_detail_view.dart';
import 'package:windows_lor_app/repository/set_repository.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  CardModel? i = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  width: 500,
                  child: Card(
                    child: ListView.builder(
                      controller: ScrollController(),
                      itemCount: state.card.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                            title: Text(state.card[index].name),
                            onTap: () => setState(() {
                                  i = state.card[index];
                                })
                            //  Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => CardDetailView(
                            //             card: state.card[index],
                            //           )),
                            // ),
                            );
                      },
                    ),
                  ),
                ),
                i == null ? const SizedBox.shrink() : SizedBox(width: 500, child: Card(child: CardDetailView(card: i)))
              ],
            );
          }
          return const Text('Something went wrong!');
        }),
      ),
    );
  }
}
