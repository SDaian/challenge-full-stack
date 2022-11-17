import { gql } from '@apollo/client';

export const ALL_MOVIES_QUERY = gql`
  query AllMovies($order: String!, $text: String) {
    allMovies(order: $order, text: $text) {
      id
      title
      description
      imageUrl
      rating
    }
  }
`;
