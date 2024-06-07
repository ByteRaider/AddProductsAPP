import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AuthBackground extends StatelessWidget {
  final Widget child;
  const AuthBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [_BackgroundBox1(), const _HeaderIcon(), this.child],
      ),
    );
  }
}

class _HeaderIcon extends StatelessWidget {
  const _HeaderIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          width: double.infinity,
          margin: const EdgeInsets.only(top: 80),
          child: Icon(
            Icons.person_pin,
            size: 100,
            color: Colors.white.withOpacity(0.2),
          )),
    );
  }
}

class _BackgroundBox1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final randomNumber = Random().nextInt(10).toDouble();
    final heightSize = MediaQuery.of(context).size.height * 0.4;
    return Container(
      width: double.infinity,
      height: heightSize,
      decoration: _backgroundColor1(),
      child: Stack(
        children: [
          Positioned(
              child: _Bubble(),
              top: randomNumber * 10,
              right: randomNumber * 19),
          Positioned(
              child: _Bubble(),
              bottom: randomNumber * 3 - 35,
              left: randomNumber * 30),
          Positioned(
              child: _Bubble(),
              left: randomNumber * 6,
              top: randomNumber * 36 - 100),
          Positioned(
              child: _Bubble(), left: randomNumber * 9, top: randomNumber * 40),
          Positioned(
              child: _Bubble(),
              right: randomNumber * 12,
              bottom: randomNumber * 60),
        ],
      ),
    );
  }

  BoxDecoration _backgroundColor1() => const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromRGBO(63, 63, 156, 1),
            Color.fromRGBO(90, 70, 178, 1),
          ],
        ),
      );
}

class _Bubble extends StatelessWidget {
  const _Bubble({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: const Color.fromRGBO(255, 255, 255, 0.05),
      ),
    );
  }
}
