import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:riot_api/riot_api.dart';
import 'package:windows_lor_app/cards/views/card_detail_view.dart';
import 'package:windows_lor_app/game/bloc/game_bloc.dart';
import 'package:windows_lor_app/models/runeterra_card.dart';
import 'package:windows_lor_app/repository/game_repository.dart';

class GameStatusView extends StatefulWidget {
  const GameStatusView({Key? key}) : super(key: key);

  @override
  State<GameStatusView> createState() => _GameStatusViewState();
}

class _GameStatusViewState extends State<GameStatusView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => GameBloc(GameRepository()),
      child: const _StatusView(),
    );
  }
}

class _StatusView extends StatelessWidget {
  const _StatusView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<GameBloc>().add(const GameRequested());
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Bloc with Streams')),
      body: Center(
        child: BlocBuilder<GameBloc, GameState>(builder: (context, state) {
          if (state is GameLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state is GameLoadSuccess) {
            return Text('Status ${state.status}');
          }
          if (state is DeckLoadSuccess) {
            return SizedBox(
              width: 300,
              child: Card(
                color: Colors.grey[900],
                child: ListView.builder(
                  controller: ScrollController(),
                  itemCount: state.deck.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                        state.deck[index].cardDetails.name,
                        style: const TextStyle(color: Colors.white),
                      ),
                      trailing: Text('${state.deck[index].amount}'),
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => _CardDetailPage(
                                  card: state.deck[index],
                                )),
                      ),
                    );
                  },
                ),
              ),
            );
          }
          return const Text('');
        }),
      ),
    );
  }
}

class _CardDetailPage extends StatelessWidget {
  const _CardDetailPage({Key? key, required this.card}) : super(key: key);
  final RuneterraCard card;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail View'),
      ),
      body: CardDetailView(card: card),
    );
  }
}
