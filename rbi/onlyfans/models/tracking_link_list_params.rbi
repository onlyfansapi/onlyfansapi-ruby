# typed: strong

module Onlyfans
  module Models
    class TrackingLinkListParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Onlyfans::TrackingLinkListParams, Onlyfans::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :account

      # The end date for tracking links. Keep empty to get all. Must not be greater than
      # 255 characters.
      sig { returns(T.nilable(String)) }
      attr_accessor :end_date

      # The number of tracking links to return. Default `10`. Must be at least 1. Must
      # not be greater than 100.
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # The offset used for pagination. Default `0`. Must be at least 0.
      sig { returns(T.nilable(Integer)) }
      attr_reader :offset

      sig { params(offset: Integer).void }
      attr_writer :offset

      sig do
        returns(
          T.nilable(Onlyfans::TrackingLinkListParams::Pagination::OrInteger)
        )
      end
      attr_reader :pagination

      sig do
        params(
          pagination: Onlyfans::TrackingLinkListParams::Pagination::OrInteger
        ).void
      end
      attr_writer :pagination

      # Sort direction. Default `desc`.
      sig do
        returns(T.nilable(Onlyfans::TrackingLinkListParams::Sort::OrSymbol))
      end
      attr_reader :sort

      sig do
        params(sort: Onlyfans::TrackingLinkListParams::Sort::OrSymbol).void
      end
      attr_writer :sort

      # Sort by subscriber count (`claims`) or creation date (`created_date`).
      sig do
        returns(T.nilable(Onlyfans::TrackingLinkListParams::Sortby::OrSymbol))
      end
      attr_reader :sortby

      sig do
        params(sortby: Onlyfans::TrackingLinkListParams::Sortby::OrSymbol).void
      end
      attr_writer :sortby

      # The start date for tracking links. Keep empty to get all. Must not be greater
      # than 255 characters.
      sig { returns(T.nilable(String)) }
      attr_accessor :start_date

      # Wait for revenue calculation instead of processing it in the background.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :synchronous

      sig { params(synchronous: T::Boolean).void }
      attr_writer :synchronous

      # Whether to include deleted tracking links. Default `true`.
      sig do
        returns(
          T.nilable(Onlyfans::TrackingLinkListParams::WithDeleted::OrInteger)
        )
      end
      attr_reader :with_deleted

      sig do
        params(
          with_deleted: Onlyfans::TrackingLinkListParams::WithDeleted::OrInteger
        ).void
      end
      attr_writer :with_deleted

      sig do
        params(
          account: String,
          end_date: T.nilable(String),
          limit: Integer,
          offset: Integer,
          pagination: Onlyfans::TrackingLinkListParams::Pagination::OrInteger,
          sort: Onlyfans::TrackingLinkListParams::Sort::OrSymbol,
          sortby: Onlyfans::TrackingLinkListParams::Sortby::OrSymbol,
          start_date: T.nilable(String),
          synchronous: T::Boolean,
          with_deleted:
            Onlyfans::TrackingLinkListParams::WithDeleted::OrInteger,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        # The end date for tracking links. Keep empty to get all. Must not be greater than
        # 255 characters.
        end_date: nil,
        # The number of tracking links to return. Default `10`. Must be at least 1. Must
        # not be greater than 100.
        limit: nil,
        # The offset used for pagination. Default `0`. Must be at least 0.
        offset: nil,
        pagination: nil,
        # Sort direction. Default `desc`.
        sort: nil,
        # Sort by subscriber count (`claims`) or creation date (`created_date`).
        sortby: nil,
        # The start date for tracking links. Keep empty to get all. Must not be greater
        # than 255 characters.
        start_date: nil,
        # Wait for revenue calculation instead of processing it in the background.
        synchronous: nil,
        # Whether to include deleted tracking links. Default `true`.
        with_deleted: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            end_date: T.nilable(String),
            limit: Integer,
            offset: Integer,
            pagination: Onlyfans::TrackingLinkListParams::Pagination::OrInteger,
            sort: Onlyfans::TrackingLinkListParams::Sort::OrSymbol,
            sortby: Onlyfans::TrackingLinkListParams::Sortby::OrSymbol,
            start_date: T.nilable(String),
            synchronous: T::Boolean,
            with_deleted:
              Onlyfans::TrackingLinkListParams::WithDeleted::OrInteger,
            request_options: Onlyfans::RequestOptions
          }
        )
      end
      def to_hash
      end

      module Pagination
        extend Onlyfans::Internal::Type::Enum

        TaggedInteger =
          T.type_alias do
            T.all(Integer, Onlyfans::TrackingLinkListParams::Pagination)
          end
        OrInteger = T.type_alias { Integer }

        PAGINATION_0 =
          T.let(0, Onlyfans::TrackingLinkListParams::Pagination::TaggedInteger)
        PAGINATION_1 =
          T.let(1, Onlyfans::TrackingLinkListParams::Pagination::TaggedInteger)

        sig do
          override.returns(
            T::Array[
              Onlyfans::TrackingLinkListParams::Pagination::TaggedInteger
            ]
          )
        end
        def self.values
        end
      end

      # Sort direction. Default `desc`.
      module Sort
        extend Onlyfans::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Onlyfans::TrackingLinkListParams::Sort) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ASC = T.let(:asc, Onlyfans::TrackingLinkListParams::Sort::TaggedSymbol)
        DESC =
          T.let(:desc, Onlyfans::TrackingLinkListParams::Sort::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Onlyfans::TrackingLinkListParams::Sort::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Sort by subscriber count (`claims`) or creation date (`created_date`).
      module Sortby
        extend Onlyfans::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Onlyfans::TrackingLinkListParams::Sortby)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CLAIMS =
          T.let(:claims, Onlyfans::TrackingLinkListParams::Sortby::TaggedSymbol)
        CREATED_DATE =
          T.let(
            :created_date,
            Onlyfans::TrackingLinkListParams::Sortby::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Onlyfans::TrackingLinkListParams::Sortby::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Whether to include deleted tracking links. Default `true`.
      module WithDeleted
        extend Onlyfans::Internal::Type::Enum

        TaggedInteger =
          T.type_alias do
            T.all(Integer, Onlyfans::TrackingLinkListParams::WithDeleted)
          end
        OrInteger = T.type_alias { Integer }

        WITH_DELETED_0 =
          T.let(0, Onlyfans::TrackingLinkListParams::WithDeleted::TaggedInteger)
        WITH_DELETED_1 =
          T.let(1, Onlyfans::TrackingLinkListParams::WithDeleted::TaggedInteger)

        sig do
          override.returns(
            T::Array[
              Onlyfans::TrackingLinkListParams::WithDeleted::TaggedInteger
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
