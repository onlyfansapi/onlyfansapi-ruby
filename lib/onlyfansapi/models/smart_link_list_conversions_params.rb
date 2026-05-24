# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::SmartLinks#list_conversions
    class SmartLinkListConversionsParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      # @!attribute smart_link_id
      #
      #   @return [String]
      required :smart_link_id, String

      # @!attribute conversion_type
      #   Optional conversion type filter
      #
      #   @return [Symbol, Onlyfansapi::Models::SmartLinkListConversionsParams::ConversionType, nil]
      optional :conversion_type, enum: -> { Onlyfansapi::SmartLinkListConversionsParams::ConversionType }

      # @!attribute date_end
      #   Optional report range end date
      #
      #   @return [String, nil]
      optional :date_end, String

      # @!attribute date_start
      #   Optional report range start date
      #
      #   @return [String, nil]
      optional :date_start, String

      # @!attribute include_bots
      #   Include conversions from clicks marked as bots. Default `true`
      #
      #   @return [Boolean, nil]
      optional :include_bots, Onlyfansapi::Internal::Type::Boolean

      # @!attribute include_duplicates
      #   Include conversions from duplicate clicks. Default `true`
      #
      #   @return [Boolean, nil]
      optional :include_duplicates, Onlyfansapi::Internal::Type::Boolean

      # @!attribute limit
      #   Rows per page. Default `100`
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute offset
      #   Offset for pagination. Default `0`
      #
      #   @return [Integer, nil]
      optional :offset, Integer

      # @!attribute onlyfans_user_id
      #   Optional - Search for conversions by OnlyFans User ID
      #
      #   @return [String, nil]
      optional :onlyfans_user_id, String

      # @!method initialize(smart_link_id:, conversion_type: nil, date_end: nil, date_start: nil, include_bots: nil, include_duplicates: nil, limit: nil, offset: nil, onlyfans_user_id: nil, request_options: {})
      #   @param smart_link_id [String]
      #
      #   @param conversion_type [Symbol, Onlyfansapi::Models::SmartLinkListConversionsParams::ConversionType] Optional conversion type filter
      #
      #   @param date_end [String] Optional report range end date
      #
      #   @param date_start [String] Optional report range start date
      #
      #   @param include_bots [Boolean] Include conversions from clicks marked as bots. Default `true`
      #
      #   @param include_duplicates [Boolean] Include conversions from duplicate clicks. Default `true`
      #
      #   @param limit [Integer] Rows per page. Default `100`
      #
      #   @param offset [Integer] Offset for pagination. Default `0`
      #
      #   @param onlyfans_user_id [String] Optional - Search for conversions by OnlyFans User ID
      #
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]

      # Optional conversion type filter
      module ConversionType
        extend Onlyfansapi::Internal::Type::Enum

        NEW_SUBSCRIBER = :new_subscriber
        NEW_TRANSACTION = :new_transaction
        MESSAGE_RECEIVED = :message_received
        FAN_SENT_3_MESSAGES = :fan_sent_3_messages

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
