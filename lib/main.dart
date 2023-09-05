import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_me_food/bloc/cartListBloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<CartListBloc>(
      create: (context) => CartListBloc(),
      child: MaterialApp(
        title: 'Get Me Food App',
        home: Home(),
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        // routes: {
        // Define your navigation routes here if needed
        // '/': (context) => const LandingScreen(),
        // '/SignUpScreen': (context) => SignUpScreen(),
        // '/LoginScreen': (context) => LoginScreen(),
        // '/CartScreen': (context) => CartScreen(),
        // },
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: ListView(
            children: <Widget>[FirstHalf()],
          ),
        ),
      ),
    );
  }
}

class FirstHalf extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(35, 25, 0, 0),
      child: Column(
        children: <Widget>[CustomAppBar()],
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(Icons.menu),
          Container(
            margin: EdgeInsets.only(right: 30),
            child: Text("0"),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 37, 58, 249),
              borderRadius: BorderRadius.circular(50),
            ),
          )
        ],
      ),
    );
  }
}
