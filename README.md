# build-a-supergraph-subgraph-a

## Set up steps

To get the subgraph running locally please do the following steps:

1. `npm install`
2. `npm run build`

At this point you should be able to run `npm run start` to run the server locally.

### local development

When doing changes locally `npm run watch` will watch both the server and the TypeScript files.

### Docker build/run

Please follow the fowling steps to build and run this though docker:

1. `docker build . -t subgraph-a` - build command
2. `docker run -p 4000:4000 --name subgraph-a -t subgraph-a` - run command
