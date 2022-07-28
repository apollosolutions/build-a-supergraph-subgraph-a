import { gql } from 'apollo-server';
const { readFileSync } = require('fs');

export const typeDefs = gql(
  readFileSync('./schema.graphql', { encoding: 'utf-8' })
);
