import Image from 'next/image';
import { useRouter } from 'next/router';
import { useQuery } from '@apollo/client';

import Rating from '@/components/Rating';
import { MOVIE_BY_ID_QUERY } from '@/utils/queries/movie-by-id';
import { ResponseMovieById } from '@/models/Movie';

const MovieDetails = () => {
  const router = useRouter();
  const { id } = router.query;

  const { data, loading, error } = useQuery<ResponseMovieById>(
    MOVIE_BY_ID_QUERY,
    {
      variables: { id },
    }
  );

  if (loading) {
    return <></>;
  }

  if (error || !data) {
    console.error(error);
    return <h2>Sorry, there been an error...</h2>;
  }

  const {
    movie: { imageUrl, title, description, rating, director },
  } = data;
  return (
    <section className="my-8 max-w-6xl mx-auto">
      <div className="p-8 flex">
        <Image
          className="w-[230px] h-[350px]"
          src={imageUrl}
          alt={'Movie Picture'}
          width={300}
          height={400}
        />
        <div className="px-10 flex flex-col flex-wrap items-center justify-center">
          <div className="flex w-full items-center justify-between">
            <span className="text-4xl font-bold">{title}</span>
            <div className="text-yellow-400">
              <Rating rating={rating} />
            </div>
          </div>
          <div className="mt-4">
            <span className="text-slate-800 text-xl mb-4">Overview</span>
            <p className="text-base">{description}</p>
            <div className="flex flex-col mt-8">
              <span className="text-slate-800 text-sm">Director</span>
              <span className="text-xl font-medium">{director.name}</span>
            </div>
          </div>
        </div>
      </div>
    </section>
  );
};

export default MovieDetails;
