import 'package:flutter/material.dart';

class PaginationWidget extends StatefulWidget {
  const PaginationWidget({
    super.key,
    required this.builder,
    required this.itemCount,
    required this.onLoadMore,
    required this.isLoading,
  });

  final Widget Function(BuildContext, int) builder;
  final int itemCount;
  final VoidCallback onLoadMore;
  final bool isLoading;

  @override
  State<PaginationWidget> createState() => PaginationWidgetState();
}

class PaginationWidgetState extends State<PaginationWidget> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }
  @override
  void didUpdateWidget(covariant PaginationWidget oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.isLoading && !widget.isLoading) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted) {
          return;
        }

        final maxScroll = _scrollController.position.maxScrollExtent;
        final currentScroll = _scrollController.position.pixels;

        if (maxScroll - currentScroll <= 300) {
          _scrollController.jumpTo(currentScroll - 1);
          _scrollController.jumpTo(currentScroll);
        }
      });
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;

    if (maxScroll - currentScroll <= 300 && !widget.isLoading) {
      print("LOOOOOO");
      widget.onLoadMore.call();
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      key: _listKey,
      controller: _scrollController,
      itemCount: widget.itemCount + 1,
      itemBuilder: (context, index) {
        if (index > widget.itemCount) {
          return const SizedBox.shrink();
        }

        if (index == widget.itemCount) {
          if (widget.isLoading) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return const SizedBox.shrink();
          }
        }
        return widget.builder(context, index);
      },
    );
  }
}
