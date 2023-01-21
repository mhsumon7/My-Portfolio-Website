
import 'package:flutter/material.dart';


final BgImageDecoration = BoxDecoration(
  color: Color(0xffDCF3FE),
  image: DecorationImage(
    image: AssetImage('lib/assets/bg.png'),
    fit: BoxFit.cover,
  ),
);

final tabDecoration = BoxDecoration(
    border: Border(
      bottom: BorderSide(
        color: Colors.black,
        width: 1,
      ),
    )
);
