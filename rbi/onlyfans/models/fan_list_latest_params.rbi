# typed: strong

module Onlyfans
  module Models
    class FanListLatestParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Onlyfans::FanListLatestParams, Onlyfans::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :account

      # End date for filtering (required with start_date). Must be a valid date. Must
      # not be greater than 255 characters.
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

      # Start date for filtering (required with end_date). Must be a valid date. Must
      # not be greater than 255 characters.
      sig { returns(T.nilable(String)) }
      attr_accessor :start_date

      # Filter by type: total, renew, or new.
      sig { returns(T.nilable(Onlyfans::FanListLatestParams::Type::OrSymbol)) }
      attr_accessor :type

      sig do
        params(
          account: String,
          end_date: T.nilable(String),
          limit: Integer,
          offset: Integer,
          start_date: T.nilable(String),
          type: T.nilable(Onlyfans::FanListLatestParams::Type::OrSymbol),
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        # End date for filtering (required with start_date). Must be a valid date. Must
        # not be greater than 255 characters.
        end_date: nil,
        # Number of fans to return (1-50). Must be at least 1. Must not be greater
        # than 100.
        limit: nil,
        # Number of fans to skip. Must be at least 0.
        offset: nil,
        # Start date for filtering (required with end_date). Must be a valid date. Must
        # not be greater than 255 characters.
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
            type: T.nilable(Onlyfans::FanListLatestParams::Type::OrSymbol),
            request_options: Onlyfans::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Filter by type: total, renew, or new.
      module Type
        extend Onlyfans::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Onlyfans::FanListLatestParams::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TOTAL = T.let(:total, Onlyfans::FanListLatestParams::Type::TaggedSymbol)
        RENEW = T.let(:renew, Onlyfans::FanListLatestParams::Type::TaggedSymbol)
        NEW = T.let(:new, Onlyfans::FanListLatestParams::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Onlyfans::FanListLatestParams::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
