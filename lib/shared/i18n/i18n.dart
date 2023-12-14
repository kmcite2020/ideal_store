import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

final i18n = RM.injectI18N(
  {
    const Locale('en', 'US'): () => EnUS(),
    const Locale('ur', 'PK'): () => UrPK(),
  },
);

class EnUS {}

class UrPK implements EnUS {}
