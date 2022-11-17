export interface ResponseAllMovies {
  allMovies: Movie[];
}

export interface ResponseMovieById {
  movie: Movie;
}

export interface Director {
  name: string;
}

export interface Movie {
  id: number;
  title: string;
  description: string;
  imageUrl: string;
  rating: number;
  director: Director;
}
