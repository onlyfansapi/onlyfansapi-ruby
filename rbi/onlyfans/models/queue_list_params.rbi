# typed: strong

module Onlyfans
  module Models
    class QueueListParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Onlyfans::QueueListParams, Onlyfans::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :account

      # Latest publish date to return. Must be a valid date. Must be a valid date. Must
      # be a date after or equal to <code>publishDateStart</code>.
      sig { returns(String) }
      attr_accessor :publish_date_end

      # Earliest publish date to return (must be at least today). Must be a valid date.
      # Must be a valid date. Must be a date after or equal to <code>today</code>.
      sig { returns(String) }
      attr_accessor :publish_date_start

      # Timezone of the provided dates.
      # [View available timezone values](https://www.php.net/manual/en/timezones.php).
      # Must be a valid time zone, such as <code>Africa/Accra</code>.
      sig { returns(String) }
      attr_accessor :timezone

      # Maximum number of queue items to return (default 20). Must be at least 1. Must
      # not be greater than 100.
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      sig do
        returns(T.nilable(T::Array[Onlyfans::QueueListParams::Type::OrSymbol]))
      end
      attr_reader :type

      sig do
        params(type: T::Array[Onlyfans::QueueListParams::Type::OrSymbol]).void
      end
      attr_writer :type

      sig do
        params(
          account: String,
          publish_date_end: String,
          publish_date_start: String,
          timezone: String,
          limit: Integer,
          type: T::Array[Onlyfans::QueueListParams::Type::OrSymbol],
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        # Latest publish date to return. Must be a valid date. Must be a valid date. Must
        # be a date after or equal to <code>publishDateStart</code>.
        publish_date_end:,
        # Earliest publish date to return (must be at least today). Must be a valid date.
        # Must be a valid date. Must be a date after or equal to <code>today</code>.
        publish_date_start:,
        # Timezone of the provided dates.
        # [View available timezone values](https://www.php.net/manual/en/timezones.php).
        # Must be a valid time zone, such as <code>Africa/Accra</code>.
        timezone:,
        # Maximum number of queue items to return (default 20). Must be at least 1. Must
        # not be greater than 100.
        limit: nil,
        type: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            publish_date_end: String,
            publish_date_start: String,
            timezone: String,
            limit: Integer,
            type: T::Array[Onlyfans::QueueListParams::Type::OrSymbol],
            request_options: Onlyfans::RequestOptions
          }
        )
      end
      def to_hash
      end

      module Type
        extend Onlyfans::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Onlyfans::QueueListParams::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CHAT = T.let(:chat, Onlyfans::QueueListParams::Type::TaggedSymbol)
        POST = T.let(:post, Onlyfans::QueueListParams::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Onlyfans::QueueListParams::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
