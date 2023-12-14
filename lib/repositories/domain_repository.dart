import '../domain/domain.dart';
import '../main.dart';

final domainRepository = DomainRepository();

class DomainRepository {
  Stream<Domain?> domain() {
    return isar.domains.watchObject(
      0,
      fireImmediately: true,
    );
  }

  Future<void> write(Domain domain) {
    return isar.writeTxn(
      () => isar.domains.put(domain),
    );
  }

  Future<Domain?> read() {
    return isar.txn(
      () => isar.domains.get(0),
    );
  }
}
