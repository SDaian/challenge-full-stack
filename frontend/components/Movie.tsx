import Image from 'next/image';
import Link from 'next/link';
import { FC } from 'react';

import { Movie } from '@/models/Movie';
import Rating from '@/components/Rating';

type MovieProps = {
  movie: Movie;
};

const MovieItem: FC<MovieProps> = ({
  movie: { id, title, imageUrl, rating },
}: MovieProps) => {
  return (
    <div className="flex max-w-[180px] border rounded-lg border-[#e3e3e3] flex-col shadow shadow-slate-200">
      <div className="">
        <Image
          className="rounded-t-lg"
          src={imageUrl}
          alt="movie image"
          height={280}
          width={180}
        />
      </div>
      <div className="pt-1 pb-3 px-2 flex flex-col">
        <span className="text-yellow-400 self-end text-sm mb-1">
          <Rating rating={rating} />
        </span>
        <Link href={`/movie/${id}`}>
          <span className="text-sm font-bold cursor-pointer hover:text-[#01b4e4]">
            {title}
          </span>
        </Link>
      </div>
    </div>
  );
};

export default MovieItem;
