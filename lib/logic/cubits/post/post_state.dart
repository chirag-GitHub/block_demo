import 'package:block_demo/data/models/item.dart';

abstract class PostState {

}


class PostInitiateState extends PostState{}

class PostLoadingState extends PostState{

}

class PostLoadedState extends PostState{
  late final List<Item> items;
  PostLoadedState(this.items);
}

class PostDetailLoaded extends PostState{
  late final Item itemDetail;
  PostDetailLoaded(this.itemDetail);
}

class PostErrorState extends PostState{}
