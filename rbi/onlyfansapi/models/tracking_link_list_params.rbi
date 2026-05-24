# typed: strong

module Onlyfansapi
  module Models
    class TrackingLinkListParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::TrackingLinkListParams,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account

      # The end date for Tracking Links. Keep empty to get all.
      sig { returns(T.nilable(String)) }
      attr_accessor :end_date

      # The number of tracking links to return. Default `3`
      sig { returns(T.nilable(Integer)) }
      attr_accessor :limit

      # The offset used for pagination. Default `0`
      sig { returns(T.nilable(Integer)) }
      attr_accessor :offset

      # Sort the results. Default `desc`
      sig do
        returns(T.nilable(Onlyfansapi::TrackingLinkListParams::Sort::OrSymbol))
      end
      attr_accessor :sort

      # Sort by subscriber count (claims), or creation date
      sig do
        returns(
          T.nilable(Onlyfansapi::TrackingLinkListParams::Sortby::OrSymbol)
        )
      end
      attr_accessor :sortby

      # The start date for Tracking Links. Keep empty to get all.
      sig { returns(T.nilable(String)) }
      attr_accessor :start_date

      # Wait for the revenue data to finish processing, instead of processing in the
      # background. **Will result in longer response times, use with caution**. Default
      # `false`
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :synchronous

      # Whether or not to include deleted tracking links in the response. Default
      # `false`
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :with_deleted

      sig do
        params(
          account: String,
          end_date: T.nilable(String),
          limit: T.nilable(Integer),
          offset: T.nilable(Integer),
          sort: T.nilable(Onlyfansapi::TrackingLinkListParams::Sort::OrSymbol),
          sortby:
            T.nilable(Onlyfansapi::TrackingLinkListParams::Sortby::OrSymbol),
          start_date: T.nilable(String),
          synchronous: T.nilable(T::Boolean),
          with_deleted: T.nilable(T::Boolean),
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        # The end date for Tracking Links. Keep empty to get all.
        end_date: nil,
        # The number of tracking links to return. Default `3`
        limit: nil,
        # The offset used for pagination. Default `0`
        offset: nil,
        # Sort the results. Default `desc`
        sort: nil,
        # Sort by subscriber count (claims), or creation date
        sortby: nil,
        # The start date for Tracking Links. Keep empty to get all.
        start_date: nil,
        # Wait for the revenue data to finish processing, instead of processing in the
        # background. **Will result in longer response times, use with caution**. Default
        # `false`
        synchronous: nil,
        # Whether or not to include deleted tracking links in the response. Default
        # `false`
        with_deleted: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            end_date: T.nilable(String),
            limit: T.nilable(Integer),
            offset: T.nilable(Integer),
            sort:
              T.nilable(Onlyfansapi::TrackingLinkListParams::Sort::OrSymbol),
            sortby:
              T.nilable(Onlyfansapi::TrackingLinkListParams::Sortby::OrSymbol),
            start_date: T.nilable(String),
            synchronous: T.nilable(T::Boolean),
            with_deleted: T.nilable(T::Boolean),
            request_options: Onlyfansapi::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Sort the results. Default `desc`
      module Sort
        extend Onlyfansapi::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Onlyfansapi::TrackingLinkListParams::Sort)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DESC =
          T.let(:desc, Onlyfansapi::TrackingLinkListParams::Sort::TaggedSymbol)
        ASC =
          T.let(:asc, Onlyfansapi::TrackingLinkListParams::Sort::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Onlyfansapi::TrackingLinkListParams::Sort::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Sort by subscriber count (claims), or creation date
      module Sortby
        extend Onlyfansapi::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Onlyfansapi::TrackingLinkListParams::Sortby)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CLAIMS =
          T.let(
            :claims,
            Onlyfansapi::TrackingLinkListParams::Sortby::TaggedSymbol
          )
        CREATED_DATE =
          T.let(
            :created_date,
            Onlyfansapi::TrackingLinkListParams::Sortby::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Onlyfansapi::TrackingLinkListParams::Sortby::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
