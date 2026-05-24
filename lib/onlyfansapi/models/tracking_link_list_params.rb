# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::TrackingLinks#list
    class TrackingLinkListParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute end_date
      #   The end date for Tracking Links. Keep empty to get all.
      #
      #   @return [String, nil]
      optional :end_date, String, nil?: true

      # @!attribute limit
      #   The number of tracking links to return. Default `3`
      #
      #   @return [Integer, nil]
      optional :limit, Integer, nil?: true

      # @!attribute offset
      #   The offset used for pagination. Default `0`
      #
      #   @return [Integer, nil]
      optional :offset, Integer, nil?: true

      # @!attribute sort
      #   Sort the results. Default `desc`
      #
      #   @return [Symbol, Onlyfansapi::Models::TrackingLinkListParams::Sort, nil]
      optional :sort, enum: -> { Onlyfansapi::TrackingLinkListParams::Sort }, nil?: true

      # @!attribute sortby
      #   Sort by subscriber count (claims), or creation date
      #
      #   @return [Symbol, Onlyfansapi::Models::TrackingLinkListParams::Sortby, nil]
      optional :sortby, enum: -> { Onlyfansapi::TrackingLinkListParams::Sortby }, nil?: true

      # @!attribute start_date
      #   The start date for Tracking Links. Keep empty to get all.
      #
      #   @return [String, nil]
      optional :start_date, String, nil?: true

      # @!attribute synchronous
      #   Wait for the revenue data to finish processing, instead of processing in the
      #   background. **Will result in longer response times, use with caution**. Default
      #   `false`
      #
      #   @return [Boolean, nil]
      optional :synchronous, Onlyfansapi::Internal::Type::Boolean, nil?: true

      # @!attribute with_deleted
      #   Whether or not to include deleted tracking links in the response. Default
      #   `false`
      #
      #   @return [Boolean, nil]
      optional :with_deleted, Onlyfansapi::Internal::Type::Boolean, nil?: true

      # @!method initialize(account:, end_date: nil, limit: nil, offset: nil, sort: nil, sortby: nil, start_date: nil, synchronous: nil, with_deleted: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfansapi::Models::TrackingLinkListParams} for more details.
      #
      #   @param account [String]
      #
      #   @param end_date [String, nil] The end date for Tracking Links. Keep empty to get all.
      #
      #   @param limit [Integer, nil] The number of tracking links to return. Default `3`
      #
      #   @param offset [Integer, nil] The offset used for pagination. Default `0`
      #
      #   @param sort [Symbol, Onlyfansapi::Models::TrackingLinkListParams::Sort, nil] Sort the results. Default `desc`
      #
      #   @param sortby [Symbol, Onlyfansapi::Models::TrackingLinkListParams::Sortby, nil] Sort by subscriber count (claims), or creation date
      #
      #   @param start_date [String, nil] The start date for Tracking Links. Keep empty to get all.
      #
      #   @param synchronous [Boolean, nil] Wait for the revenue data to finish processing, instead of processing in the bac
      #
      #   @param with_deleted [Boolean, nil] Whether or not to include deleted tracking links in the response. Default `false
      #
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]

      # Sort the results. Default `desc`
      module Sort
        extend Onlyfansapi::Internal::Type::Enum

        DESC = :desc
        ASC = :asc

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Sort by subscriber count (claims), or creation date
      module Sortby
        extend Onlyfansapi::Internal::Type::Enum

        CLAIMS = :claims
        CREATED_DATE = :created_date

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
