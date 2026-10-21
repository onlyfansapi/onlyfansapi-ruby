# typed: strong

module Onlyfans
  module Models
    class SharedTrackingLinkListParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfans::SharedTrackingLinkListParams,
            Onlyfans::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account

      # The number of shared tracking links to return. Default `10`. Must be at least 1.
      # Must not be greater than 100.
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # The offset used for pagination. Default `0`. Must be at least 0.
      sig { returns(T.nilable(Integer)) }
      attr_reader :offset

      sig { params(offset: Integer).void }
      attr_writer :offset

      # Whether pagination metadata is enabled. Default `1`.
      sig do
        returns(
          T.nilable(
            Onlyfans::SharedTrackingLinkListParams::Pagination::OrInteger
          )
        )
      end
      attr_reader :pagination

      sig do
        params(
          pagination:
            Onlyfans::SharedTrackingLinkListParams::Pagination::OrInteger
        ).void
      end
      attr_writer :pagination

      # Whether deleted links participate in sorting. Default `1`.
      sig do
        returns(
          T.nilable(
            Onlyfans::SharedTrackingLinkListParams::SortingDeleted::OrInteger
          )
        )
      end
      attr_reader :sorting_deleted

      sig do
        params(
          sorting_deleted:
            Onlyfans::SharedTrackingLinkListParams::SortingDeleted::OrInteger
        ).void
      end
      attr_writer :sorting_deleted

      # Whether statistics are included. Default `true`. Must not be greater than 10
      # characters.
      sig { returns(T.nilable(String)) }
      attr_reader :stats

      sig { params(stats: String).void }
      attr_writer :stats

      # Wait for the database sync instead of processing it in the background.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :synchronous

      sig { params(synchronous: T::Boolean).void }
      attr_writer :synchronous

      # Whether to include deleted shared tracking links. Default `1`.
      sig do
        returns(
          T.nilable(
            Onlyfans::SharedTrackingLinkListParams::WithDeleted::OrInteger
          )
        )
      end
      attr_reader :with_deleted

      sig do
        params(
          with_deleted:
            Onlyfans::SharedTrackingLinkListParams::WithDeleted::OrInteger
        ).void
      end
      attr_writer :with_deleted

      sig do
        params(
          account: String,
          limit: Integer,
          offset: Integer,
          pagination:
            Onlyfans::SharedTrackingLinkListParams::Pagination::OrInteger,
          sorting_deleted:
            Onlyfans::SharedTrackingLinkListParams::SortingDeleted::OrInteger,
          stats: String,
          synchronous: T::Boolean,
          with_deleted:
            Onlyfans::SharedTrackingLinkListParams::WithDeleted::OrInteger,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        # The number of shared tracking links to return. Default `10`. Must be at least 1.
        # Must not be greater than 100.
        limit: nil,
        # The offset used for pagination. Default `0`. Must be at least 0.
        offset: nil,
        # Whether pagination metadata is enabled. Default `1`.
        pagination: nil,
        # Whether deleted links participate in sorting. Default `1`.
        sorting_deleted: nil,
        # Whether statistics are included. Default `true`. Must not be greater than 10
        # characters.
        stats: nil,
        # Wait for the database sync instead of processing it in the background.
        synchronous: nil,
        # Whether to include deleted shared tracking links. Default `1`.
        with_deleted: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            limit: Integer,
            offset: Integer,
            pagination:
              Onlyfans::SharedTrackingLinkListParams::Pagination::OrInteger,
            sorting_deleted:
              Onlyfans::SharedTrackingLinkListParams::SortingDeleted::OrInteger,
            stats: String,
            synchronous: T::Boolean,
            with_deleted:
              Onlyfans::SharedTrackingLinkListParams::WithDeleted::OrInteger,
            request_options: Onlyfans::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Whether pagination metadata is enabled. Default `1`.
      module Pagination
        extend Onlyfans::Internal::Type::Enum

        TaggedInteger =
          T.type_alias do
            T.all(Integer, Onlyfans::SharedTrackingLinkListParams::Pagination)
          end
        OrInteger = T.type_alias { Integer }

        PAGINATION_0 =
          T.let(
            0,
            Onlyfans::SharedTrackingLinkListParams::Pagination::TaggedInteger
          )
        PAGINATION_1 =
          T.let(
            1,
            Onlyfans::SharedTrackingLinkListParams::Pagination::TaggedInteger
          )

        sig do
          override.returns(
            T::Array[
              Onlyfans::SharedTrackingLinkListParams::Pagination::TaggedInteger
            ]
          )
        end
        def self.values
        end
      end

      # Whether deleted links participate in sorting. Default `1`.
      module SortingDeleted
        extend Onlyfans::Internal::Type::Enum

        TaggedInteger =
          T.type_alias do
            T.all(
              Integer,
              Onlyfans::SharedTrackingLinkListParams::SortingDeleted
            )
          end
        OrInteger = T.type_alias { Integer }

        SORTING_DELETED_0 =
          T.let(
            0,
            Onlyfans::SharedTrackingLinkListParams::SortingDeleted::TaggedInteger
          )
        SORTING_DELETED_1 =
          T.let(
            1,
            Onlyfans::SharedTrackingLinkListParams::SortingDeleted::TaggedInteger
          )

        sig do
          override.returns(
            T::Array[
              Onlyfans::SharedTrackingLinkListParams::SortingDeleted::TaggedInteger
            ]
          )
        end
        def self.values
        end
      end

      # Whether to include deleted shared tracking links. Default `1`.
      module WithDeleted
        extend Onlyfans::Internal::Type::Enum

        TaggedInteger =
          T.type_alias do
            T.all(Integer, Onlyfans::SharedTrackingLinkListParams::WithDeleted)
          end
        OrInteger = T.type_alias { Integer }

        WITH_DELETED_0 =
          T.let(
            0,
            Onlyfans::SharedTrackingLinkListParams::WithDeleted::TaggedInteger
          )
        WITH_DELETED_1 =
          T.let(
            1,
            Onlyfans::SharedTrackingLinkListParams::WithDeleted::TaggedInteger
          )

        sig do
          override.returns(
            T::Array[
              Onlyfans::SharedTrackingLinkListParams::WithDeleted::TaggedInteger
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
