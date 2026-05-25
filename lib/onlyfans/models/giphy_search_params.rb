# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Giphy#search
    class GiphySearchParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute q
      #   The search query.
      #
      #   @return [String]
      required :q, String

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

      # @!method initialize(account:, q:, limit: nil, offset: nil, request_options: {})
      #   @param account [String]
      #
      #   @param q [String] The search query.
      #
      #   @param limit [Integer] Number of GIFs to return (default = 10, max = 50)
      #
      #   @param offset [Integer] Number of GIFs to skip for pagination (default = 0)
      #
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
