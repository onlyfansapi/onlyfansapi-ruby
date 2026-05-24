# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::SmartLinks#list_spenders
    class SmartLinkListSpendersParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      # @!attribute smart_link_id
      #
      #   @return [String]
      required :smart_link_id, String

      # @!attribute limit
      #   The number of spenders to return per page. Default `50`
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute min_spend
      #   Minimal spend of a fan. Default `1`
      #
      #   @return [Float, nil]
      optional :min_spend, Float

      # @!attribute offset
      #   The offset used for pagination. Default `0`
      #
      #   @return [Integer, nil]
      optional :offset, Integer

      # @!method initialize(smart_link_id:, limit: nil, min_spend: nil, offset: nil, request_options: {})
      #   @param smart_link_id [String]
      #
      #   @param limit [Integer] The number of spenders to return per page. Default `50`
      #
      #   @param min_spend [Float] Minimal spend of a fan. Default `1`
      #
      #   @param offset [Integer] The offset used for pagination. Default `0`
      #
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
