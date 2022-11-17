module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # Get all directors
    field :all_directors, [Types::DirectorType], null: false
    def all_directors
      Director.all
    end

    # Get all movies
    field :all_movies, [Types::MovieType], null: false do
      argument :order, String, required: true
      argument :text, String, required: false
    end
    def all_movies(order:, text:)
      if order && text
        Movie.where("title LIKE ?", "%#{text.downcase.capitalize}%").order(rating: order)
      else
        Movie.all.order(rating: order)
      end
    end

    # Get a specific movie
    field :movie, Types::MovieType, null: false do
      argument :id, ID, required: true
    end
    def movie(id:)
      Movie.find(id)
    end

    # Get movies by search
    field :movie_filter, [Types::MovieType], null: false do
      argument :text, String, required: true
    end
    def movie_filter(text:)
      Movie.where("title LIKE ?", "%#{text.downcase.capitalize}%")
    end
  end
end
