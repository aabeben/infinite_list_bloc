part of 'post_bloc.dart';

enum PostStatus { initial, success, failure }

class PostState extends Equatable {
  final PostStatus status;
  final List<Post> posts;
  final bool hasReachedMax;
  const PostState({
    this.status = PostStatus.initial,
    this.posts = const <Post>[],
    this.hasReachedMax = false,
  });
  PostState copyWith({
    PostStatus? status,
    List<Post>? posts,
    bool? hasReachedMax,
  }) =>
      PostState(
        status: status ?? this.status,
        posts: posts ?? this.posts,
        hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      );

  @override
  String toString() =>
      ''' PostState {status:$status, hasReachedMax:$hasReachedMax, posts: ${posts.length} ''';
  @override
  List<Object> get props => [status, hasReachedMax, posts];
}

class PostInitial extends PostState {}