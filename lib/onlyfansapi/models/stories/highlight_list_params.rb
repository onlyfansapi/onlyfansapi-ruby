# frozen_string_literal: true

module Onlyfansapi
  module Models
    module Stories
      # @see Onlyfansapi::Resources::Stories::Highlights#list
      class HighlightListParams < Onlyfansapi::Internal::Type::BaseModel
        extend Onlyfansapi::Internal::Type::RequestParameters::Converter
        include Onlyfansapi::Internal::Type::RequestParameters

        # @!attribute account
        #
        #   @return [String]
        required :account, String

        # @!attribute limit
        #   Number of highlights to return (default = 5)
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute offset
        #   Number of highlights to skip for pagination
        #
        #   @return [Integer, nil]
        optional :offset, Integer

        # @!method initialize(account:, limit: nil, offset: nil, request_options: {})
        #   @param account [String]
        #
        #   @param limit [Integer] Number of highlights to return (default = 5)
        #
        #   @param offset [Integer] Number of highlights to skip for pagination
        #
        #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
