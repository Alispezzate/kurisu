part of 'dependency_injector.dart';

final List<SingleChildWidget> _providers = [
  Provider<HttpLink>(
    create: (context) => HttpLink(
      'https://graphql.anilist.co',
    ),
  ),
  Provider<AuthLink>(
    create: (context) => AuthLink(
      getToken: () async {
        const storage = FlutterSecureStorage();
        return 'Bearer ${await storage.read(key: accessTokenKey) ?? ''}'; //TODO: find a better way to do this
      },
    ),
  ),
  Provider<Link>(
    create: (context) => context.read<AuthLink>().concat(context.read<HttpLink>()),
  ),
  Provider<GraphQLClient>(
    create: (context) => GraphQLClient(
      link: context.read<Link>(),
      cache: GraphQLCache(store: HiveStore()),
    ),
  ),
  Provider<Talker>(
    create: (context) => Talker(),
  ),
];
