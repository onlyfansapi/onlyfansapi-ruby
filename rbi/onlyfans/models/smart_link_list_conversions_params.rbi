# typed: strong

module Onlyfans
  module Models
    class SmartLinkListConversionsParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfans::SmartLinkListConversionsParams,
            Onlyfans::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :smart_link_id

      # Optional conversion type filter
      sig do
        returns(
          T.nilable(
            Onlyfans::SmartLinkListConversionsParams::ConversionType::OrSymbol
          )
        )
      end
      attr_reader :conversion_type

      sig do
        params(
          conversion_type:
            Onlyfans::SmartLinkListConversionsParams::ConversionType::OrSymbol
        ).void
      end
      attr_writer :conversion_type

      # Optional report range end date
      sig { returns(T.nilable(String)) }
      attr_reader :date_end

      sig { params(date_end: String).void }
      attr_writer :date_end

      # Optional report range start date
      sig { returns(T.nilable(String)) }
      attr_reader :date_start

      sig { params(date_start: String).void }
      attr_writer :date_start

      # Include conversions from clicks marked as bots. Default `true`
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_bots

      sig { params(include_bots: T::Boolean).void }
      attr_writer :include_bots

      # Include conversions from duplicate clicks. Default `true`
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_duplicates

      sig { params(include_duplicates: T::Boolean).void }
      attr_writer :include_duplicates

      # Rows per page. Default `100`
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # Offset for pagination. Default `0`
      sig { returns(T.nilable(Integer)) }
      attr_reader :offset

      sig { params(offset: Integer).void }
      attr_writer :offset

      # Optional - Search for conversions by OnlyFans User ID
      sig { returns(T.nilable(String)) }
      attr_reader :onlyfans_user_id

      sig { params(onlyfans_user_id: String).void }
      attr_writer :onlyfans_user_id

      sig do
        params(
          smart_link_id: String,
          conversion_type:
            Onlyfans::SmartLinkListConversionsParams::ConversionType::OrSymbol,
          date_end: String,
          date_start: String,
          include_bots: T::Boolean,
          include_duplicates: T::Boolean,
          limit: Integer,
          offset: Integer,
          onlyfans_user_id: String,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        smart_link_id:,
        # Optional conversion type filter
        conversion_type: nil,
        # Optional report range end date
        date_end: nil,
        # Optional report range start date
        date_start: nil,
        # Include conversions from clicks marked as bots. Default `true`
        include_bots: nil,
        # Include conversions from duplicate clicks. Default `true`
        include_duplicates: nil,
        # Rows per page. Default `100`
        limit: nil,
        # Offset for pagination. Default `0`
        offset: nil,
        # Optional - Search for conversions by OnlyFans User ID
        onlyfans_user_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            smart_link_id: String,
            conversion_type:
              Onlyfans::SmartLinkListConversionsParams::ConversionType::OrSymbol,
            date_end: String,
            date_start: String,
            include_bots: T::Boolean,
            include_duplicates: T::Boolean,
            limit: Integer,
            offset: Integer,
            onlyfans_user_id: String,
            request_options: Onlyfans::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Optional conversion type filter
      module ConversionType
        extend Onlyfans::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Onlyfans::SmartLinkListConversionsParams::ConversionType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NEW_SUBSCRIBER =
          T.let(
            :new_subscriber,
            Onlyfans::SmartLinkListConversionsParams::ConversionType::TaggedSymbol
          )
        NEW_TRANSACTION =
          T.let(
            :new_transaction,
            Onlyfans::SmartLinkListConversionsParams::ConversionType::TaggedSymbol
          )
        MESSAGE_RECEIVED =
          T.let(
            :message_received,
            Onlyfans::SmartLinkListConversionsParams::ConversionType::TaggedSymbol
          )
        FAN_SENT_3_MESSAGES =
          T.let(
            :fan_sent_3_messages,
            Onlyfans::SmartLinkListConversionsParams::ConversionType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Onlyfans::SmartLinkListConversionsParams::ConversionType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
