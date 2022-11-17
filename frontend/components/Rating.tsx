type RatingProps = {
  rating: number;
};

const Rating = ({ rating }: RatingProps) => {
  return (
    <span>
      {String('★').repeat(rating).padEnd(5, '☆')}
      <span className="text-slate-400 text-xs ml-1">({rating})</span>
    </span>
  );
};

export default Rating;
