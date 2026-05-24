# typed: strong

module Onlyfansapi
  module Models
    class PostListParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Onlyfansapi::PostListParams, Onlyfansapi::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :account

      # Set to true to include an array of counters (see example responses)
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :counters

      sig { params(counters: T::Boolean).void }
      attr_writer :counters

      # Number of posts to return (default = 10)
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # Filter posts by minimum publish date
      sig { returns(T.nilable(String)) }
      attr_reader :minimum_publish_date

      sig { params(minimum_publish_date: String).void }
      attr_writer :minimum_publish_date

      # Number of posts to skip for pagination
      sig { returns(T.nilable(Integer)) }
      attr_reader :offset

      sig { params(offset: Integer).void }
      attr_writer :offset

      # Order the returned posts (default = publish_date)
      sig { returns(T.nilable(Onlyfansapi::PostListParams::Order::OrSymbol)) }
      attr_reader :order

      sig { params(order: Onlyfansapi::PostListParams::Order::OrSymbol).void }
      attr_writer :order

      # Set to true to only show pinned posts
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :pinned

      sig { params(pinned: T::Boolean).void }
      attr_writer :pinned

      # Search query to filter posts
      sig { returns(T.nilable(String)) }
      attr_reader :query

      sig { params(query: String).void }
      attr_writer :query

      # Sort the returned posts (default = desc)
      sig { returns(T.nilable(Onlyfansapi::PostListParams::Sort::OrSymbol)) }
      attr_reader :sort

      sig { params(sort: Onlyfansapi::PostListParams::Sort::OrSymbol).void }
      attr_writer :sort

      sig do
        params(
          account: String,
          counters: T::Boolean,
          limit: Integer,
          minimum_publish_date: String,
          offset: Integer,
          order: Onlyfansapi::PostListParams::Order::OrSymbol,
          pinned: T::Boolean,
          query: String,
          sort: Onlyfansapi::PostListParams::Sort::OrSymbol,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        # Set to true to include an array of counters (see example responses)
        counters: nil,
        # Number of posts to return (default = 10)
        limit: nil,
        # Filter posts by minimum publish date
        minimum_publish_date: nil,
        # Number of posts to skip for pagination
        offset: nil,
        # Order the returned posts (default = publish_date)
        order: nil,
        # Set to true to only show pinned posts
        pinned: nil,
        # Search query to filter posts
        query: nil,
        # Sort the returned posts (default = desc)
        sort: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            counters: T::Boolean,
            limit: Integer,
            minimum_publish_date: String,
            offset: Integer,
            order: Onlyfansapi::PostListParams::Order::OrSymbol,
            pinned: T::Boolean,
            query: String,
            sort: Onlyfansapi::PostListParams::Sort::OrSymbol,
            request_options: Onlyfansapi::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Order the returned posts (default = publish_date)
      module Order
        extend Onlyfansapi::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Onlyfansapi::PostListParams::Order) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PUBLISH_DATE =
          T.let(:publish_date, Onlyfansapi::PostListParams::Order::TaggedSymbol)
        FAVORITES_COUNT =
          T.let(
            :favorites_count,
            Onlyfansapi::PostListParams::Order::TaggedSymbol
          )
        TIPS_SUMM =
          T.let(:tips_summ, Onlyfansapi::PostListParams::Order::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Onlyfansapi::PostListParams::Order::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Sort the returned posts (default = desc)
      module Sort
        extend Onlyfansapi::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Onlyfansapi::PostListParams::Sort) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DESC = T.let(:desc, Onlyfansapi::PostListParams::Sort::TaggedSymbol)
        ASC = T.let(:asc, Onlyfansapi::PostListParams::Sort::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Onlyfansapi::PostListParams::Sort::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
