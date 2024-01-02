part of 'dependency_injector.dart';

final List<SingleChildWidget> _providers = [
  // GraphQL
  Provider<GraphQLClient>(
    create: (context) => GraphQLClient(
      link: link,
      cache: GraphQLCache(store: HiveStore()),
    ),
  ),
  Provider<Talker>(
    create: (context) => Talker(),
  ),
];

final HttpLink httpLink = HttpLink(
  'https://graphql.anilist.co',
);

final AuthLink authLink = AuthLink(
  getToken: () async => null,
  // OR
  // getToken: () => 'Bearer <YOUR_PERSONAL_ACCESS_TOKEN>',
);

final Link link = authLink.concat(httpLink);
