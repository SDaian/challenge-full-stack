import { gql } from '@apollo/client';

export const MOVIE_BY_ID_QUERY = gql`
  query MovieById($id: ID!) {
    movie(id: $id) {
      id
      title
      description
      imageUrl
      rating
      director {
        name
      }
    }
  }
`;
