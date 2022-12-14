import 'package:block_demo/data/models/item.dart';

abstract class HomeState {}

class HomeInitiateState extends HomeState{}

class HomeLoadingState extends HomeState{}

class HomeLoadedState extends HomeState{
  late final List<Item> items;
  HomeLoadedState(this.items);
}

class HomeErrorState extends HomeState{}
