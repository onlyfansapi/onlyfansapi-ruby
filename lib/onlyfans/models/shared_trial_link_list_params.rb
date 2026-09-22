# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::SharedTrialLinks#list
    class SharedTrialLinkListParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute limit
      #   The number of shared trial links to return. Default `10`. Must be at least 1.
      #   Must not be greater than 100.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute offset
      #   The offset used for pagination. Default `0`. Must be at least 0.
      #
      #   @return [Integer, nil]
      optional :offset, Integer

      # @!attribute pagination
      #
      #   @return [Integer, Onlyfans::Models::SharedTrialLinkListParams::Pagination, nil]
      optional :pagination, enum: -> { Onlyfans::SharedTrialLinkListParams::Pagination }

      # @!attribute synchronous
      #   Wait for the database sync instead of processing it in the background.
      #
      #   @return [Boolean, nil]
      optional :synchronous, Onlyfans::Internal::Type::Boolean

      # @!method initialize(account:, limit: nil, offset: nil, pagination: nil, synchronous: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfans::Models::SharedTrialLinkListParams} for more details.
      #
      #   @param account [String]
      #
      #   @param limit [Integer] The number of shared trial links to return. Default `10`. Must be at least 1. Mu
      #
      #   @param offset [Integer] The offset used for pagination. Default `0`. Must be at least 0.
      #
      #   @param pagination [Integer, Onlyfans::Models::SharedTrialLinkListParams::Pagination]
      #
      #   @param synchronous [Boolean] Wait for the database sync instead of processing it in the background.
      #
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]

      module Pagination
        extend Onlyfans::Internal::Type::Enum

        PAGINATION_0 = 0
        PAGINATION_1 = 1

        # @!method self.values
        #   @return [Array<Integer>]
      end
    end
  end
end
