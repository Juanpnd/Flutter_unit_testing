import 'package:flutter_test/flutter_test.dart';
import 'package:game_market_app/models/game.dart';
import 'package:game_market_app/viewmodels/game_view_model.dart';

void main() {
  group('GameViewModel Test', () {
    test('Menambahkan game ke list', () {
      final viewModel = GameViewModel();
      final game = Game(id: '1', title: 'GTA V');
      viewModel.addGame(game);
      expect(viewModel.games.length, 1);
      expect(viewModel.games.first.title, 'GTA V');
    });

    test('Menandai game sebagai dibeli', () {
      final viewModel = GameViewModel();
      final game = Game(id: '1', title: 'GTA V');
      viewModel.addGame(game);
      viewModel.markAsBought('1');
      expect(viewModel.games.first.isBought, isTrue);
    });

    test('Menghapus game dari list', () {
      final viewModel = GameViewModel();
      final game = Game(id: '1', title: 'GTA V');
      viewModel.addGame(game);
      viewModel.removeGame('1');
      expect(viewModel.games.isEmpty, true);
    });

    test('Mencari game berdasarkan ID', () {
      final viewModel = GameViewModel();
      final game = Game(id: '1', title: 'GTA V');
      viewModel.addGame(game);
      final foundGame = viewModel.findGameById('1');
      expect(foundGame?.title, 'GTA V');
    });
  });
}
