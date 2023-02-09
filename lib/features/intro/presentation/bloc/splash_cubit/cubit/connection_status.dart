import 'package:flutter/material.dart';

@immutable
abstract class ConnectionStatus {}

class ConnectionInit extends ConnectionStatus {}

class ConnectionON extends ConnectionStatus {}

class ConnectionOFF extends ConnectionStatus {}
