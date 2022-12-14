import 'package:block_demo/data/models/item.dart';
import 'package:block_demo/data/repositories/postRepository.dart';
import 'package:block_demo/logic/cubits/post/post_detail_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostDetailCubit extends Cubit<PostDetailState> {
  PostDetailCubit() : super(PostDetailInitiateState());

  RepositoryImpl repository = RepositoryImpl();
  Item? itemDetail;
  String? errorMessage;

  fetchDetailList(int index) async {
    try {
      itemDetail = await repository.fetchPostDetail(index);
      emit(PostDetailLoaded(itemDetail!));
    } on Exception {
      emit(PostDetailErrorState());
    }
  }

}
