# frozen_string_literal: true

module Onlyfans
  module Models
    module SavedForLater
      # @see Onlyfans::Resources::SavedForLater::Posts#list
      class PostListParams < Onlyfans::Internal::Type::BaseModel
        extend Onlyfans::Internal::Type::RequestParameters::Converter
        include Onlyfans::Internal::Type::RequestParameters

        # @!attribute account
        #
        #   @return [String]
        required :account, String

        # @!attribute limit
        #   Maximum number of posts to return (default = 10)
        #
        #   @return [Integer]
        required :limit, Integer

        # @!attribute offset
        #   Offset for pagination (default = 0)
        #
        #   @return [Integer]
        required :offset, Integer

        # @!method initialize(account:, limit:, offset:, request_options: {})
        #   @param account [String]
        #
        #   @param limit [Integer] Maximum number of posts to return (default = 10)
        #
        #   @param offset [Integer] Offset for pagination (default = 0)
        #
        #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
