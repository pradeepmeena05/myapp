import 'package:flutter/material.dart';
import 'package:packages/presentation/resources/appcolor.dart';

class Uihelper {
  /// Custom Text Widget
  static Text customText({
    required String text,
    required double fontSize,
    String? fontFamily,
    FontWeight? fontWeight,
    Color? color,
    required BuildContext context,
    required TextAlign textAlign
  }) {
    return Text(
      text,
       textAlign:textAlign ,
      style: TextStyle(
          
        fontSize: fontSize,
        fontFamily: fontFamily,
        fontWeight: fontWeight ?? FontWeight.normal,
        color:
            color ??
            (Theme.of(context).brightness == Brightness.dark
                ? Appcolor.lightcontent
                : Appcolor.darkcontent),
      ),
    );
  }


  static Image customImage({required String imgurl,required double width,required double height}) {
    return Image.asset("assets/images/$imgurl",height: height,width: width,);
  }
 static Widget customCardImage({
  required String imgurl,
  double? height,
  double? width,
  BoxFit fit = BoxFit.cover,
}) {
  return Image.asset(
    "assets/images/$imgurl",
    fit: fit,
    height: height,
    width: width,
    errorBuilder: (context, error, stackTrace) {
      return const Icon(Icons.broken_image);
    },
  );
}


  static Icon customIcon({required IconData icondata}) {
    return Icon(icondata);
  }
 static Widget customTextColor({
  required String text,
  String? fontFamily,
  required double fontSize,
  FontWeight? fontWeight,
   required TextAlign textAlign,
  Gradient? gradient,
  required BuildContext context,
}) {
  return ShaderMask(
    shaderCallback: (bounds) {
      return (gradient ?? Appcolor.gra).createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      );
    },
    blendMode: BlendMode.srcIn,
    child: Text(
      textAlign: textAlign,
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontFamily: fontFamily,
      
        fontWeight: fontWeight ?? FontWeight.normal,
        color: Colors.white, 
      ),
    ),
  );
}

  
}
