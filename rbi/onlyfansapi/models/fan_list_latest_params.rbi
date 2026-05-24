# typed: strong

module Onlyfansapi
  module Models
    class FanListLatestParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::FanListLatestParams,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account

      # End date for filtering (required with start_date). This field is required when
      # <code>start_date</code> is present.
      sig { returns(T.nilable(String)) }
      attr_accessor :end_date

      # Number of fans to return (1-50). Must be at least 1. Must not be greater
      # than 100.
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # Number of fans to skip. Must be at least 0.
      sig { returns(T.nilable(Integer)) }
      attr_reader :offset

      sig { params(offset: Integer).void }
      attr_writer :offset

      # Start date for filtering (required with end_date). This field is required when
      # <code>end_date</code> is present.
      sig { returns(T.nilable(String)) }
      attr_accessor :start_date

      # Filter by type: total, renew, or new.
      sig do
        returns(T.nilable(Onlyfansapi::FanListLatestParams::Type::OrSymbol))
      end
      attr_accessor :type

      sig do
        params(
          account: String,
          end_date: T.nilable(String),
          limit: Integer,
          offset: Integer,
          start_date: T.nilable(String),
          type: T.nilable(Onlyfansapi::FanListLatestParams::Type::OrSymbol),
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        # End date for filtering (required with start_date). This field is required when
        # <code>start_date</code> is present.
        end_date: nil,
        # Number of fans to return (1-50). Must be at least 1. Must not be greater
        # than 100.
        limit: nil,
        # Number of fans to skip. Must be at least 0.
        offset: nil,
        # Start date for filtering (required with end_date). This field is required when
        # <code>end_date</code> is present.
        start_date: nil,
        # Filter by type: total, renew, or new.
        type: nil,
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
            start_date: T.nilable(String),
            type: T.nilable(Onlyfansapi::FanListLatestParams::Type::OrSymbol),
            request_options: Onlyfansapi::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Filter by type: total, renew, or new.
      module Type
        extend Onlyfansapi::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Onlyfansapi::FanListLatestParams::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TOTAL =
          T.let(:total, Onlyfansapi::FanListLatestParams::Type::TaggedSymbol)
        RENEW =
          T.let(:renew, Onlyfansapi::FanListLatestParams::Type::TaggedSymbol)
        NEW = T.let(:new, Onlyfansapi::FanListLatestParams::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Onlyfansapi::FanListLatestParams::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
