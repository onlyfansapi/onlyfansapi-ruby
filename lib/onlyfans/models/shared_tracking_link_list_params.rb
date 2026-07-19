# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::SharedTrackingLinks#list
    class SharedTrackingLinkListParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute limit
      #   The number of shared tracking links to return. Default `10`. Must be at least 1.
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
      #   Whether pagination metadata is enabled. Default `1`.
      #
      #   @return [Integer, Onlyfans::Models::SharedTrackingLinkListParams::Pagination, nil]
      optional :pagination, enum: -> { Onlyfans::SharedTrackingLinkListParams::Pagination }

      # @!attribute sorting_deleted
      #   Whether deleted links participate in sorting. Default `1`.
      #
      #   @return [Integer, Onlyfans::Models::SharedTrackingLinkListParams::SortingDeleted, nil]
      optional :sorting_deleted, enum: -> { Onlyfans::SharedTrackingLinkListParams::SortingDeleted }

      # @!attribute stats
      #   Whether statistics are included. Default `true`. Must not be greater than 10
      #   characters.
      #
      #   @return [String, nil]
      optional :stats, String

      # @!attribute synchronous
      #   Wait for the database sync instead of processing it in the background.
      #
      #   @return [Boolean, nil]
      optional :synchronous, Onlyfans::Internal::Type::Boolean

      # @!attribute with_deleted
      #   Whether to include deleted shared tracking links. Default `1`.
      #
      #   @return [Integer, Onlyfans::Models::SharedTrackingLinkListParams::WithDeleted, nil]
      optional :with_deleted, enum: -> { Onlyfans::SharedTrackingLinkListParams::WithDeleted }

      # @!method initialize(account:, limit: nil, offset: nil, pagination: nil, sorting_deleted: nil, stats: nil, synchronous: nil, with_deleted: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfans::Models::SharedTrackingLinkListParams} for more details.
      #
      #   @param account [String]
      #
      #   @param limit [Integer] The number of shared tracking links to return. Default `10`. Must be at least 1.
      #
      #   @param offset [Integer] The offset used for pagination. Default `0`. Must be at least 0.
      #
      #   @param pagination [Integer, Onlyfans::Models::SharedTrackingLinkListParams::Pagination] Whether pagination metadata is enabled. Default `1`.
      #
      #   @param sorting_deleted [Integer, Onlyfans::Models::SharedTrackingLinkListParams::SortingDeleted] Whether deleted links participate in sorting. Default `1`.
      #
      #   @param stats [String] Whether statistics are included. Default `true`. Must not be greater than 10 cha
      #
      #   @param synchronous [Boolean] Wait for the database sync instead of processing it in the background.
      #
      #   @param with_deleted [Integer, Onlyfans::Models::SharedTrackingLinkListParams::WithDeleted] Whether to include deleted shared tracking links. Default `1`.
      #
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]

      # Whether pagination metadata is enabled. Default `1`.
      module Pagination
        extend Onlyfans::Internal::Type::Enum

        PAGINATION_0 = 0
        PAGINATION_1 = 1

        # @!method self.values
        #   @return [Array<Integer>]
      end

      # Whether deleted links participate in sorting. Default `1`.
      module SortingDeleted
        extend Onlyfans::Internal::Type::Enum

        SORTING_DELETED_0 = 0
        SORTING_DELETED_1 = 1

        # @!method self.values
        #   @return [Array<Integer>]
      end

      # Whether to include deleted shared tracking links. Default `1`.
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
