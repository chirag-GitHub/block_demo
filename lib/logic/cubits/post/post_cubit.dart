import 'package:block_demo/data/models/item.dart';
import 'package:block_demo/data/repositories/postRepository.dart';
import 'package:block_demo/logic/cubits/home/home_state.dart';
import 'package:block_demo/logic/cubits/post/post_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostCubit extends Cubit<PostState> {
  PostCubit() : super(PostInitiateState()){
    fetchList();
  }

  RepositoryImpl repository = RepositoryImpl();
  List<Item>? items;
  Item? itemDetail;
  String? errorMessage;

  fetchList() async {
    try {
     items = await repository.fetchPost();
      emit(PostLoadedState(items!));
    } on Exception {
      emit(PostErrorState());
    }
  }

  fetchDetailList(int index) async {
    try {
      itemDetail = await repository.fetchPostDetail(index);
      emit(PostDetailLoaded(itemDetail!));
    } on Exception {
      emit(PostErrorState());
    }
  }

/*
  Future<void> deleteItem(String id) async {
    final deleteInProgress = items.map((item) {
      return item.id.toString() == id ? item.copyWith(isDeleting: true) : item;
    }).toList();

    emit(ComplexListState.success(deleteInProgress));

    unawaited(
      repository.deleteItem(id).then((_) {
        final deleteSuccess = List.of(state.items)
          ..removeWhere((element) => element.id.toString() == id);
        emit(ComplexListState.success(deleteSuccess));
      }),
    );
  }*/
}
