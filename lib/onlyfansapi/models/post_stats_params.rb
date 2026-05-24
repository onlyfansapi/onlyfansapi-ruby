# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Posts#stats
    class PostStatsParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute post_id
      #
      #   @return [Integer]
      required :post_id, Integer

      # @!attribute with_historical_data
      #   Set to `true` to include historical data for a post.
      #
      #   @return [Boolean, nil]
      optional :with_historical_data, Onlyfansapi::Internal::Type::Boolean

      # @!method initialize(account:, post_id:, with_historical_data: nil, request_options: {})
      #   @param account [String]
      #
      #   @param post_id [Integer]
      #
      #   @param with_historical_data [Boolean] Set to `true` to include historical data for a post.
      #
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
