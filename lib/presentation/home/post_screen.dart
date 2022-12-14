import 'package:block_demo/data/models/item.dart';
import 'package:block_demo/logic/cubits/post/post_cubit.dart';
import 'package:block_demo/logic/cubits/post/post_state.dart';
import 'package:block_demo/utilities/routes/route_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class PostListScreen extends StatelessWidget {
  const PostListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Post List View')),
      body: BlocBuilder<PostCubit, PostState>(
        builder: (context, state) {
          if (state is PostLoadedState) {
            return ItemView(items: state.items);
          }
          if (state is PostLoadingState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return const Center(
            child: Text('Oops something went wrong!'),
          );
        },
      ),
    );
  }
}

class ItemView extends StatelessWidget {
  const ItemView({super.key, required this.items});

  final List<Item> items;

  @override
  Widget build(BuildContext context) {
    return items.isEmpty
        ? const Center(child: Text('no content'))
        : ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, postDetailRoute,arguments: items[index]);
                },
                child: ItemTile(
                  item: items[index],
                  onDeletePressed: (id) {
                   // context.read<HomeCubit>().deleteItem(id);
                  },
                ),
              );
            },
            itemCount: items.length,
          );
  }
}

class ItemTile extends StatelessWidget {
  const ItemTile({
    super.key,
    required this.item,
    required this.onDeletePressed,
  });

  final Item item;
  final ValueSetter<String> onDeletePressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListTile(
        leading: Text('#${item.id}'),
        title: Text(item.title),
        subtitle: Text(item.body),
        // onTap: () => Navigator.of(context).push(MaterialPageRoute(
        //   builder: (context) => TodoDetailPage(item: item),
        // )),
        trailing: item.isDeleting
            ? const CircularProgressIndicator()
            : IconButton(
                icon: const Icon(Icons.delete, color: Colors.red),
                onPressed: () => onDeletePressed(item.id.toString()),
              ),
      ),
    );
  }
}

// 1 to 2 hour video english
// read motivational story english.
// thinks in english.
