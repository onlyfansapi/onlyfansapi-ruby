# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::TrackingLinks#list
    class TrackingLinkListParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute end_date
      #   The end date for tracking links. Keep empty to get all. Must not be greater than
      #   255 characters.
      #
      #   @return [String, nil]
      optional :end_date, String, nil?: true

      # @!attribute limit
      #   The number of tracking links to return. Default `10`. Must be at least 1. Must
      #   not be greater than 100.
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
      #   @return [Integer, Onlyfans::Models::TrackingLinkListParams::Pagination, nil]
      optional :pagination, enum: -> { Onlyfans::TrackingLinkListParams::Pagination }

      # @!attribute sort
      #   Sort direction. Default `desc`.
      #
      #   @return [Symbol, Onlyfans::Models::TrackingLinkListParams::Sort, nil]
      optional :sort, enum: -> { Onlyfans::TrackingLinkListParams::Sort }

      # @!attribute sortby
      #   Sort by subscriber count (`claims`) or creation date (`created_date`).
      #
      #   @return [Symbol, Onlyfans::Models::TrackingLinkListParams::Sortby, nil]
      optional :sortby, enum: -> { Onlyfans::TrackingLinkListParams::Sortby }

      # @!attribute start_date
      #   The start date for tracking links. Keep empty to get all. Must not be greater
      #   than 255 characters.
      #
      #   @return [String, nil]
      optional :start_date, String, nil?: true

      # @!attribute synchronous
      #   Wait for revenue calculation instead of processing it in the background.
      #
      #   @return [Boolean, nil]
      optional :synchronous, Onlyfans::Internal::Type::Boolean

      # @!attribute with_deleted
      #   Whether to include deleted tracking links. Default `true`.
      #
      #   @return [Integer, Onlyfans::Models::TrackingLinkListParams::WithDeleted, nil]
      optional :with_deleted, enum: -> { Onlyfans::TrackingLinkListParams::WithDeleted }

      # @!method initialize(account:, end_date: nil, limit: nil, offset: nil, pagination: nil, sort: nil, sortby: nil, start_date: nil, synchronous: nil, with_deleted: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfans::Models::TrackingLinkListParams} for more details.
      #
      #   @param account [String]
      #
      #   @param end_date [String, nil] The end date for tracking links. Keep empty to get all. Must not be greater than
      #
      #   @param limit [Integer] The number of tracking links to return. Default `10`. Must be at least 1. Must n
      #
      #   @param offset [Integer] The offset used for pagination. Default `0`. Must be at least 0.
      #
      #   @param pagination [Integer, Onlyfans::Models::TrackingLinkListParams::Pagination]
      #
      #   @param sort [Symbol, Onlyfans::Models::TrackingLinkListParams::Sort] Sort direction. Default `desc`.
      #
      #   @param sortby [Symbol, Onlyfans::Models::TrackingLinkListParams::Sortby] Sort by subscriber count (`claims`) or creation date (`created_date`).
      #
      #   @param start_date [String, nil] The start date for tracking links. Keep empty to get all. Must not be greater th
      #
      #   @param synchronous [Boolean] Wait for revenue calculation instead of processing it in the background.
      #
      #   @param with_deleted [Integer, Onlyfans::Models::TrackingLinkListParams::WithDeleted] Whether to include deleted tracking links. Default `true`.
      #
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]

      module Pagination
        extend Onlyfans::Internal::Type::Enum

        PAGINATION_0 = 0
        PAGINATION_1 = 1

        # @!method self.values
        #   @return [Array<Integer>]
      end

      # Sort direction. Default `desc`.
      module Sort
        extend Onlyfans::Internal::Type::Enum

        ASC = :asc
        DESC = :desc

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Sort by subscriber count (`claims`) or creation date (`created_date`).
      module Sortby
        extend Onlyfans::Internal::Type::Enum

        CLAIMS = :claims
        CREATED_DATE = :created_date

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Whether to include deleted tracking links. Default `true`.
      module WithDeleted
        extend Onlyfans::Internal::Type::Enum

        WITH_DELETED_0 = 0
        WITH_DELETED_1 = 1

        # @!method self.values
        #   @return [Array<Integer>]
      end
    end
  end
end
