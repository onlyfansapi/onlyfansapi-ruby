# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Promotions#list
    class PromotionListParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute limit
      #   The number of promotions to return. Default `10`
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute offset
      #   The offset used for pagination. Default `0`
      #
      #   @return [Integer, nil]
      optional :offset, Integer

      # @!method initialize(account:, limit: nil, offset: nil, request_options: {})
      #   @param account [String]
      #
      #   @param limit [Integer] The number of promotions to return. Default `10`
      #
      #   @param offset [Integer] The offset used for pagination. Default `0`
      #
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
