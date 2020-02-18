import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:hwt_consume_future_api/app/modules/detail/detail_controller.dart';
import 'package:hwt_consume_future_api/app/modules/detail/detail_module.dart';

void main() {
  initModule(DetailModule());
  DetailController detail;

  setUp(() {
    detail = DetailModule.to.get<DetailController>();
  });

  group('DetailController Test', () {
    test("First Test", () {
      expect(detail, isInstanceOf<DetailController>());
    });

    test("Set Value", () {
      expect(detail.value, equals(0));
      detail.increment();
      expect(detail.value, equals(1));
    });
  });
}
