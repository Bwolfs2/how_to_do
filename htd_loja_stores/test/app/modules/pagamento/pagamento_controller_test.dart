import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:htd_loja_store/app/modules/pagamento/pagamento_controller.dart';
import 'package:htd_loja_store/app/modules/pagamento/pagamento_module.dart';

void main() {
  initModule(PagamentoModule());
  // PagamentoController pagamento;
  //
  setUp(() {
    //     pagamento = PagamentoModule.to.get<PagamentoController>();
  });

  group('PagamentoController Test', () {
    //   test("First Test", () {
    //     expect(pagamento, isInstanceOf<PagamentoController>());
    //   });

    //   test("Set Value", () {
    //     expect(pagamento.value, equals(0));
    //     pagamento.increment();
    //     expect(pagamento.value, equals(1));
    //   });
  });
}
