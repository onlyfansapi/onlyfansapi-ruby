# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::SmartLinks#list
    class SmartLinkListParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      # @!attribute account_ids
      #   Comma-separated account prefixed IDs to include.
      #
      #   @return [String, nil]
      optional :account_ids, String

      # @!attribute limit
      #   The number of Smart Links to return. Default `50`
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute meta_pixel_ids
      #   Comma-separated Meta Pixel IDs to include.
      #
      #   @return [String, nil]
      optional :meta_pixel_ids, String

      # @!attribute name
      #   Filter Smart Links by name.
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute offset
      #   The offset used for pagination. Default `0`
      #
      #   @return [Integer, nil]
      optional :offset, Integer

      # @!method initialize(account_ids: nil, limit: nil, meta_pixel_ids: nil, name: nil, offset: nil, request_options: {})
      #   @param account_ids [String] Comma-separated account prefixed IDs to include.
      #
      #   @param limit [Integer] The number of Smart Links to return. Default `50`
      #
      #   @param meta_pixel_ids [String] Comma-separated Meta Pixel IDs to include.
      #
      #   @param name [String] Filter Smart Links by name.
      #
      #   @param offset [Integer] The offset used for pagination. Default `0`
      #
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
