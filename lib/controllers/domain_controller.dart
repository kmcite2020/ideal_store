import 'package:states_rebuilder/states_rebuilder.dart';

import '../domain/domain.dart';
import '../repositories/domain_repository.dart';

final DomainController domainController = DomainController();

class DomainController {
  /// a bit slow but makes it reactive from the database side - good for development
  final modelStreamRM = RM.injectStream(domainRepository.domain);
  Domain get domainStream => modelStreamRM.state ?? Domain();
  Domain get domain => modelStreamRM.state ?? Domain();
  final modelFutureRM = RM.injectFuture(domainRepository.read);

  void setDomain(Domain state) {
    // modelFutureRM.state = state;
    // modelFutureRM.notify();
    domainRepository.write(state);
  }
}
