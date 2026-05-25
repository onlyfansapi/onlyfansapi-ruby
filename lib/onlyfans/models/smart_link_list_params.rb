# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::SmartLinks#list
    class SmartLinkListParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      # @!attribute account_ids
      #   Comma-separated account prefixed IDs to include.
      #
      #   @return [String, nil]
      optional :account_ids, String, nil?: true

      # @!attribute limit
      #   The number of Smart Links to return. Default `50`. Must be at least 1. Must not
      #   be greater than 1000.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute meta_pixel_ids
      #   Comma-separated Meta Pixel IDs to include.
      #
      #   @return [String, nil]
      optional :meta_pixel_ids, String, nil?: true

      # @!attribute name
      #   Filter Smart Links by name. Must not be greater than 255 characters.
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!attribute offset
      #   The offset used for pagination. Default `0`. Must be at least 0.
      #
      #   @return [Integer, nil]
      optional :offset, Integer

      # @!method initialize(account_ids: nil, limit: nil, meta_pixel_ids: nil, name: nil, offset: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfans::Models::SmartLinkListParams} for more details.
      #
      #   @param account_ids [String, nil] Comma-separated account prefixed IDs to include.
      #
      #   @param limit [Integer] The number of Smart Links to return. Default `50`. Must be at least 1. Must not
      #
      #   @param meta_pixel_ids [String, nil] Comma-separated Meta Pixel IDs to include.
      #
      #   @param name [String, nil] Filter Smart Links by name. Must not be greater than 255 characters.
      #
      #   @param offset [Integer] The offset used for pagination. Default `0`. Must be at least 0.
      #
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
