import 'package:designing/headphone.dart';
import 'package:flutter/material.dart';

class CardProvider extends ChangeNotifier {
  final List<CustomCard> _selectedCards = [];

  List<CustomCard> get selectedCards => _selectedCards;

  void addSelectedCard(CustomCard card) {
    _selectedCards.add(card);
    notifyListeners();
  }

  void removeSelectedCard(CustomCard card) {
    _selectedCards.remove(card);
    notifyListeners();
  }
}
