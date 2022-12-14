
import 'package:block_demo/logic/cubits/post/post_detail_cubit.dart';
import 'package:block_demo/logic/cubits/post/post_detail_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/cubits/home/home_state.dart';

class PostDetailScreen extends StatelessWidget {
  var item;
  PostDetailScreen(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('List View')),
      body: BlocBuilder<PostDetailCubit,PostDetailState>(builder: (context, state) {
        if(state is PostDetailLoaded){

          return  ListTile(
            leading: Text('#${state.itemDetail.id}'),
            title: Text(state.itemDetail.title),
            subtitle: Text(state.itemDetail.body),
          );
        }else{
          return Center(child: CircularProgressIndicator(),);
        }

      },
      ),
    );
  }
}



// 1 to 2 hour video english
// read motivational story english.
// thinks in english.
