import 'dart:async';
import 'package:flutter/material.dart';

class RichTextMarquee extends StatefulWidget {
  final List<InlineSpan> inlineSpans;
  final double velocity;
  final EdgeInsets padding;

  RichTextMarquee({
    required this.inlineSpans,
    this.velocity = 50.0,
    this.padding = EdgeInsets.zero,
  });

  @override
  _RichTextMarqueeState createState() => _RichTextMarqueeState();
}

class _RichTextMarqueeState extends State<RichTextMarquee> {
  late ScrollController _scrollController;
  late Timer _timer;
  double _scrollPosition = 0.0;
  double _containerWidth = 0.0;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      _startScrolling();
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _timer.cancel();
    super.dispose();
  }

  void _startScrolling() {
    _timer = Timer.periodic(Duration(milliseconds: 16), (_) {
      if (_scrollController.hasClients) {
        setState(() {
          _scrollPosition += 1;
          if (_scrollPosition >= _containerWidth) {
            _scrollPosition = 0.0;
          }
          _scrollController.jumpTo(_scrollPosition);
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final textSpan = TextSpan(children: widget.inlineSpans);
        final textPainter = TextPainter(
          text: textSpan,
          textDirection: TextDirection.ltr,
          maxLines: 1,
        )..layout();
        _containerWidth = textPainter.width;

        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          controller: _scrollController,
          physics: const NeverScrollableScrollPhysics(),
          child: Padding(
            padding: widget.padding,
            child: Container(
              width: _containerWidth,
              child: GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {
                  // Handle tap if needed
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  transform: Matrix4.translationValues(-_scrollPosition, 0, 0),
                  child: RichText(
                    text: textSpan,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
