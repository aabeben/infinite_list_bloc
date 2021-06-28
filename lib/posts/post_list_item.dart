import 'package:flutter/material.dart';
import 'package:infinite_list_bloc/models/post.dart';

class PostListItem extends StatelessWidget {
  final Post post;
  const PostListItem({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Material(
      child: ListTile(
        title: Text(post.title),
        leading: Text(
          '${post.id}',
          style: textTheme.caption,
        ),
        isThreeLine: true,
        subtitle: Text(post.body),
        dense: true,
      ),
    );
  }
}
