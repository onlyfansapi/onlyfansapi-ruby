# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Giphy#list_trending
    class GiphyListTrendingParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute limit
      #   Number of GIFs to return (default = 10, max = 50)
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute offset
      #   Number of GIFs to skip for pagination (default = 0)
      #
      #   @return [Integer, nil]
      optional :offset, Integer

      # @!method initialize(account:, limit: nil, offset: nil, request_options: {})
      #   @param account [String]
      #
      #   @param limit [Integer] Number of GIFs to return (default = 10, max = 50)
      #
      #   @param offset [Integer] Number of GIFs to skip for pagination (default = 0)
      #
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
