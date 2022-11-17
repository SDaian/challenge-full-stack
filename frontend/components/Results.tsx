import { useQuery } from '@apollo/client';
import { FC, useState } from 'react';

import { ALL_MOVIES_QUERY } from '@/utils/queries/all-movies';
import { ResponseAllMovies } from '@/models/Movie';
import MovieItem from '@/components/Movie';

const Results: FC = () => {
  const [filters, setFilters] = useState({
    order: 'DESC',
    text: '',
  });
  const { data, loading, error, refetch } = useQuery<ResponseAllMovies>(
    ALL_MOVIES_QUERY,
    {
      variables: { order: 'DESC', text: '' },
    }
  );
  if (loading) {
    return <></>;
  }

  if (error) {
    console.error(error);
    return <h2>Sorry, there been an error...</h2>;
  }
  return (
    <div className="grid grid-cols-[260px_1fr] max-w-6xl mx-auto p-8">
      <div className="flex flex-col">
        <div className="flex flex-col min-w-[260px] mt-8 border rounded-lg border-[#e3e3e3] shadow shadow-slate-200 p-4">
          <input
            className="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
            onChange={(e) => setFilters({ ...filters, text: e.target.value })}
            placeholder="Search movies"
            type="string"
          />
        </div>
        <div className="flex flex-col min-w-[260px] h-[178px] mt-4 border rounded-lg border-[#e3e3e3] shadow shadow-slate-200">
          <div className="border-b border-[#e3e3e3] p-4">
            <p className="font-bold text-base">Sort</p>
          </div>
          <div className="p-4">
            <span className="text-xs text-slate-500">Sort Results By</span>
            <select
              className="select"
              defaultValue={'desc'}
              onChange={(e) =>
                setFilters({ ...filters, order: e.target.value })
              }
            >
              <option value="desc">Popularity Descending</option>
              <option value="asc">Popularity Ascending</option>
            </select>
          </div>
        </div>
        <div className="mt-4 flex flex-col">
          <button
            className="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline"
            type="button"
            onClick={() => refetch(filters)}
          >
            Search
          </button>
        </div>
      </div>
      <div className="grid gap-4 grid-row-[200px] grid-cols-[repeat(auto-fit,minmax(180px,1fr))] pl-8 mt-8">
        {data?.allMovies.length ? (
          data?.allMovies?.map((item) => (
            <MovieItem key={item.id} movie={item} />
          ))
        ) : (
          <span>No results found.</span>
        )}
      </div>
    </div>
  );
};

export default Results;
