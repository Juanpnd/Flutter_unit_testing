import '../models/game.dart';

class GameViewModel {
  List<Game> games = [];

  void addGame(Game game) {
    games.add(game);
  }

  void markAsBought(String id) {
    final game = games.firstWhere((g) => g.id == id);
    game.isBought = true;
  }

  void removeGame(String id) {
    games.removeWhere((g) => g.id == id);
  }

  Game? findGameById(String id) {
    return games.firstWhere((g) => g.id == id, orElse: () => Game(id: '', title: 'Not Found'));
  }
}
