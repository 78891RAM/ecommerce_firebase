import 'package:flutter/material.dart';

class HomeSliverCarousel extends StatefulWidget {
  const HomeSliverCarousel({super.key});

  @override
  State<HomeSliverCarousel> createState() => _HomeSliverCarouselState();
}

class _HomeSliverCarouselState extends State<HomeSliverCarousel> {
  final PageController _controller = PageController();
  int _currentIndex = 0;

  final List<String> _banners = [
    "https://images.unsplash.com/photo-1764377723685-31e60ed8e550?q=80&w=1287&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1593860572337-8face01d277e?q=80&w=2148&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1643231654439-3a2dd898fbd9?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDl8fHxlbnwwfHx8fHw%3D",
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        // ================= CAROUSEL =================
        PageView.builder(
          controller: _controller,
          itemCount: _banners.length,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          itemBuilder: (context, index) {
            return Image.network(_banners[index], fit: BoxFit.cover);
          },
        ),

        // ================= OVERLAY =================
        Container(color: Colors.black.withOpacity(0.25)),

        // ================= INDICATOR =================
        Positioned(
          bottom: 16,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              _banners.length,
              (index) => _indicator(index == _currentIndex),
            ),
          ),
        ),
      ],
    );
  }

  Widget _indicator(bool active) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: active ? 18 : 6,
      height: 6,
      decoration: BoxDecoration(
        color: active ? Colors.white : Colors.white54,
        borderRadius: BorderRadius.circular(6),
      ),
    );
  }
}
