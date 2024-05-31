import 'package:graphql_flutter/graphql_flutter.dart';

class GraphqlService {
  late GraphQLClient client;

  GraphqlService() {
    HttpLink httpLink = HttpLink(
      "https://graphql.datocms.com/",
    );
    AuthLink alink = AuthLink(
        getToken: () async => 'Bearer ' + "5bc901b83d013770d0625e9f39ccc9");
    client = GraphQLClient(
      link: alink.concat(httpLink),
      cache: GraphQLCache(
        store: InMemoryStore(),
      ),
    );
  }

  Future<QueryResult> performQuery(String query) async {
    QueryOptions options = QueryOptions(document: gql(query));

    final result = await client.query(options);
    return result;
  }
}
