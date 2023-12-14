// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, must_be_immutable, unused_import, avoid_print, prefer_typing_uninitialized_variables, avoid_unnecessary_containers

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ideal_store/shared/extensions.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../shared/router.dart';

class OrdersView extends ReactiveStatelessWidget {
  static const path = '/orders';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Orders'),
        actions: [
          IconButton(
            tooltip: 'Back to Dashboard',
            onPressed: () => RM.navigate.back(),
            icon: Icon(
              Icons.dashboard,
            ),
          ).pad(),
          IconButton(
            tooltip: 'place orders for customer',
            onPressed: () {},
            icon: Icon(Icons.account_box_sharp),
          ).pad(),
        ],
      ),
      body: SafeArea(
        child: ListView(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          children: [],
        ),
      ),
    );
  }
}
