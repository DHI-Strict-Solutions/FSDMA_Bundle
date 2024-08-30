import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:driver_flutter/config/locator/locator.config.dart';
import 'package:driver_flutter/core/blocs/auth_bloc.dart';
import 'package:driver_flutter/core/graphql/app_socket_link.dart';
import 'package:get_it/get_it.dart';
import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';

import '../env.dart';

final locator = GetIt.instance;

@InjectableInit()
void configureDependencies() => locator.init(environment: prod.name);

@module
abstract class ServiceModule {
  @lazySingleton
  Connectivity get connectivity => Connectivity();

  @factoryMethod
  GraphQLClient create() {
    final url = Env.gqlEndpoint;
    final authLink = AuthLink(
      getToken: () {
        final token = locator<AuthBloc>().state.jwtToken;
        return token == null ? null : 'Bearer $token';
      },
    );
    final httpLink = HttpLink(url);
    final httpLinkWithAuth = authLink.concat(httpLink);
    final subscriptionUrl = url.replaceAll('http', 'ws');
    final websocketLink = AppSocketLink(subscriptionUrl);
    final link = Link.from(
      [
        DedupeLink(),
      ],
    ).split(
      (request) => request.isSubscription,
      websocketLink,
      httpLinkWithAuth,
    );
    return GraphQLClient(
      link: link,
      defaultPolicies: DefaultPolicies(
        query: Policies(
          fetch: FetchPolicy.noCache,
        ),
        mutate: Policies(
          fetch: FetchPolicy.noCache,
        ),
      ),
      cache: GraphQLCache(
        store: InMemoryStore(),
      ),
    );
  }
}
