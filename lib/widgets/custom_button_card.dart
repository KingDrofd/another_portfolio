import 'package:flutter/material.dart';

import 'package:proffesional_portfolio/variable.dart';

class CustomButtonCard extends StatefulWidget {
  const CustomButtonCard({
    super.key,
    this.imageName = "assets/images/stockimage.jpg",
    this.width = 350,
    this.height = 500,
    required this.cardTitle,
    this.cardAdditionalInfo = "",
    required this.onPressed,
  });
  final double width;
  final double height;
  final String imageName;
  final String cardTitle;
  final String cardAdditionalInfo;
  final VoidCallback onPressed;
  @override
  State<CustomButtonCard> createState() => _CustomButtonCard();
}

class _CustomButtonCard extends State<CustomButtonCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _colorBlendAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 300,
      ), // Animation duration
    );

    _colorBlendAnimation = Tween<double>(
      begin: 0.6, // Change this value to blend with a color
      end: 0.0, // No color blend
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose(); // Dispose of the animation controller when done
    super.dispose();
  }

  Color containerColor = Color.fromARGB(255, 81, 38, 5);
  Color iconColor = defaultIconColor;
  void onEnter(PointerEvent event) {
    setState(() {
      btnIsHovered = true;
      _controller.forward();
      containerColor = btnHoverColor;
      iconColor = iconHoverColor;
    });
  }

  void onExit(PointerEvent event) {
    setState(() {
      btnIsHovered = false;
      _controller.reverse();
      containerColor = Color.fromARGB(255, 81, 38, 5);
      iconColor = defaultIconColor;
    });
  }

  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    void _handleHover(bool isHovering) {
      setState(() {
        isHovered = isHovering;
      });
    }

    return MouseRegion(
      onEnter: (_) {
        onEnter(_);
        _handleHover(true);
        setState(() {
          iconColor = Colors.black;
          _controller.forward();
        });
      },
      onExit: (_) {
        _handleHover(false);
        onExit(_);
        setState(() {
          _controller.reverse();
        });
      },
      child: GestureDetector(
        onTapDown: (details) => setState(() {
          iconColor = Colors.black;
          containerColor = Colors.white;
        }),
        onTapUp: (details) {
          setState(() {
            widget.onPressed();
          });
        },
        onLongPress: () {
          setState(() {
            iconColor = defaultIconColor;
            widget.onPressed();
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [_imageBuilder(), _nameBoxBuilder()],
          ),
        ),
      ),
    );
  }

  bool btnIsHovered = false;
  Container _nameBoxBuilder() {
    return Container(
      width: widget.width,
      height: 80,
      color: containerColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Text(
              widget.cardTitle,
              style: TextStyle(
                fontSize: 20,
                color: iconColor,
                fontFamily: "EUROCAPS",
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12),
            child: Text(
              widget.cardAdditionalInfo,
              style: TextStyle(
                fontSize: 20,
                color: btnIsHovered
                    ? Colors.black
                    : Color.fromARGB(134, 255, 111, 0),
                fontFamily: "EUROCAPS",
              ),
            ),
          )
        ],
      ),
    );
  }

  Container _imageBuilder() {
    return Container(
      width: widget.width,
      height: widget.height,
      child: Stack(
        alignment: Alignment.center,
        children: [
          ClipRRect(
            child: AnimatedBuilder(
              animation: _colorBlendAnimation,
              builder: (context, child) {
                return ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    Color.fromARGB(255, 81, 16, 5).withOpacity(
                      _colorBlendAnimation.value,
                    ),
                    BlendMode.darken,
                  ),
                  child: AnimatedScale(
                    duration: Duration(milliseconds: 250),
                    scale: isHovered ? 1.05 : 1.0,
                    child: Image.asset(
                      widget.imageName, // Replace with your image URL
                      width: widget.width,
                      height: widget.height,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            width: widget.width,
            height: widget.height,
            decoration: BoxDecoration(
              border: Border.all(
                // style: BorderStyle.solid,
                width: 2.2,
                color: containerColor,
              ),
              shape: BoxShape.rectangle,
            ),
          ),
        ],
      ),
    );
  }
}

// class ColorFilteredImage extends StatefulWidget {
//   const ColorFilteredImage({
//     super.key,
//     required this.duration,
//     required this.imageName,
//     required this.width,
//     required this.height,
//   });
//   final int duration;
//   final String imageName;
//   final double width;
//   final double height;
//   @override
//   State<ColorFilteredImage> createState() => _ColorFilteredImageState();
// }

// class _ColorFilteredImageState extends State<ColorFilteredImage>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _colorBlendAnimation;

//   @override
//   void initState() {
//     super.initState();

//     _controller = AnimationController(
//       vsync: this,
//       duration: Duration(
//         milliseconds: widget.duration,
//       ), // Animation duration
//     );

//     _colorBlendAnimation = Tween<double>(
//       begin: 0.5, // No color blend
//       end: 0.0, // Change this value to blend with a color
//     ).animate(_controller);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: MouseRegion(
//         onEnter: (_) {
//           _controller.forward(); // Start the color blend animation on hover
//           print("hOVERED");
//         },
//         onExit: (_) {
//           _controller
//               .reverse(); // Reverse the color blend animation on hover exit
//         },
//         child: ClipRRect(
//           child: AnimatedBuilder(
//             animation: _colorBlendAnimation,
//             builder: (context, child) {
//               return ColorFiltered(
//                 colorFilter: ColorFilter.mode(
//                   Color.fromARGB(255, 81, 38, 5)
//                       .withOpacity(_colorBlendAnimation.value),
//                   BlendMode.darken,
//                 ),
//                 child: Image.asset(
//                   widget.imageName, // Replace with your image URL
//                   width: widget.width,
//                   height: widget.height,
//                 ),
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     _controller.dispose(); // Dispose of the animation controller when done
//     super.dispose();
//   }
// }
