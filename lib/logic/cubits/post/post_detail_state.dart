import 'package:block_demo/data/models/item.dart';

abstract class PostDetailState {}

class PostDetailInitiateState extends PostDetailState{}

class PostDetailLoadingState extends PostDetailState{}

class PostDetailLoaded extends PostDetailState{
  late final Item itemDetail;
  PostDetailLoaded(this.itemDetail);
}

class PostDetailErrorState extends PostDetailState{}
