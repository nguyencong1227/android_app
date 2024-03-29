import 'package:flutter/material.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({
    Key? key,
    required this.image,
    required this.subTitle,
    required this.title,
    this.imageColor,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.heightBetween,
    this.imageHeight = 0.2,
    this.textAlign
  }) : super(key: key);

  final String image, title, subTitle;
  final Color? imageColor;
  final double imageHeight;
  final double? heightBetween;
  final CrossAxisAlignment crossAxisAlignment;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Image(
          image: AssetImage(image),
          color: imageColor,
          height: size.height * imageHeight,
        ),
        SizedBox(height: heightBetween,),
        Text(
          title,
          style: Theme.of(context).textTheme.headline4,
        ),
        Text(
          subTitle,
          textAlign: textAlign,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    );
  }
}
