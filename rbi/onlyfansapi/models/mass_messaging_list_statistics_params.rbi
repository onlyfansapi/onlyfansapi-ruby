# typed: strong

module Onlyfansapi
  module Models
    class MassMessagingListStatisticsParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::MassMessagingListStatisticsParams,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account

      # Number of mass messages to return (default = 20)
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # Number of mass messages to skip for pagination
      sig { returns(T.nilable(Integer)) }
      attr_reader :offset

      sig { params(offset: Integer).void }
      attr_writer :offset

      # Optionally, find a mass message by the message text.
      sig { returns(T.nilable(String)) }
      attr_reader :query

      sig { params(query: String).void }
      attr_writer :query

      # Filter by sent / scheduled / unsent (default = sent)
      sig do
        returns(
          T.nilable(
            Onlyfansapi::MassMessagingListStatisticsParams::Type::OrSymbol
          )
        )
      end
      attr_reader :type

      sig do
        params(
          type: Onlyfansapi::MassMessagingListStatisticsParams::Type::OrSymbol
        ).void
      end
      attr_writer :type

      sig do
        params(
          account: String,
          limit: Integer,
          offset: Integer,
          query: String,
          type: Onlyfansapi::MassMessagingListStatisticsParams::Type::OrSymbol,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        # Number of mass messages to return (default = 20)
        limit: nil,
        # Number of mass messages to skip for pagination
        offset: nil,
        # Optionally, find a mass message by the message text.
        query: nil,
        # Filter by sent / scheduled / unsent (default = sent)
        type: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            limit: Integer,
            offset: Integer,
            query: String,
            type:
              Onlyfansapi::MassMessagingListStatisticsParams::Type::OrSymbol,
            request_options: Onlyfansapi::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Filter by sent / scheduled / unsent (default = sent)
      module Type
        extend Onlyfansapi::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Onlyfansapi::MassMessagingListStatisticsParams::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SENT =
          T.let(
            :sent,
            Onlyfansapi::MassMessagingListStatisticsParams::Type::TaggedSymbol
          )
        SCHEDULED =
          T.let(
            :scheduled,
            Onlyfansapi::MassMessagingListStatisticsParams::Type::TaggedSymbol
          )
        UNSENT =
          T.let(
            :unsent,
            Onlyfansapi::MassMessagingListStatisticsParams::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Onlyfansapi::MassMessagingListStatisticsParams::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
