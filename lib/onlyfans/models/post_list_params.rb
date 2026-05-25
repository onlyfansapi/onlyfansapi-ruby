# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Posts#list
    class PostListParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute counters
      #   Set to true to include an array of counters (see example responses)
      #
      #   @return [Boolean, nil]
      optional :counters, Onlyfans::Internal::Type::Boolean

      # @!attribute limit
      #   Number of posts to return (default = 10)
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute minimum_publish_date
      #   Filter posts by minimum publish date
      #
      #   @return [String, nil]
      optional :minimum_publish_date, String

      # @!attribute offset
      #   Number of posts to skip for pagination
      #
      #   @return [Integer, nil]
      optional :offset, Integer

      # @!attribute order
      #   Order the returned posts (default = publish_date)
      #
      #   @return [Symbol, Onlyfans::Models::PostListParams::Order, nil]
      optional :order, enum: -> { Onlyfans::PostListParams::Order }

      # @!attribute pinned
      #   Set to true to only show pinned posts
      #
      #   @return [Boolean, nil]
      optional :pinned, Onlyfans::Internal::Type::Boolean

      # @!attribute query
      #   Search query to filter posts
      #
      #   @return [String, nil]
      optional :query, String

      # @!attribute sort
      #   Sort the returned posts (default = desc)
      #
      #   @return [Symbol, Onlyfans::Models::PostListParams::Sort, nil]
      optional :sort, enum: -> { Onlyfans::PostListParams::Sort }

      # @!method initialize(account:, counters: nil, limit: nil, minimum_publish_date: nil, offset: nil, order: nil, pinned: nil, query: nil, sort: nil, request_options: {})
      #   @param account [String]
      #
      #   @param counters [Boolean] Set to true to include an array of counters (see example responses)
      #
      #   @param limit [Integer] Number of posts to return (default = 10)
      #
      #   @param minimum_publish_date [String] Filter posts by minimum publish date
      #
      #   @param offset [Integer] Number of posts to skip for pagination
      #
      #   @param order [Symbol, Onlyfans::Models::PostListParams::Order] Order the returned posts (default = publish_date)
      #
      #   @param pinned [Boolean] Set to true to only show pinned posts
      #
      #   @param query [String] Search query to filter posts
      #
      #   @param sort [Symbol, Onlyfans::Models::PostListParams::Sort] Sort the returned posts (default = desc)
      #
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]

      # Order the returned posts (default = publish_date)
      module Order
        extend Onlyfans::Internal::Type::Enum

        PUBLISH_DATE = :publish_date
        FAVORITES_COUNT = :favorites_count
        TIPS_SUMM = :tips_summ

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Sort the returned posts (default = desc)
      module Sort
        extend Onlyfans::Internal::Type::Enum

        DESC = :desc
        ASC = :asc

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
