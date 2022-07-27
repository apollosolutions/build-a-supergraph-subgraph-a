import { buildSubgraphSchema } from '@apollo/subgraph';
import { ApolloServer } from 'apollo-server';
import { typeDefs } from './typedefs';
import { resolvers } from './resolvers';

const server = new ApolloServer({
  schema: buildSubgraphSchema({ typeDefs, resolvers }),
  csrfPrevention: true,
  cache: 'bounded',
});

server.listen(4000).then(({ url }) => {
  console.log(`🚀  Server ready at ${url}`);
});
