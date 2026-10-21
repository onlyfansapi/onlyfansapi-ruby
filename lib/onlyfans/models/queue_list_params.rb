# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Queue#list
    class QueueListParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute publish_date_end
      #   Latest publish date to return. Must be a valid date. Must be a valid date. Must
      #   be a date after or equal to <code>publishDateStart</code>.
      #
      #   @return [String]
      required :publish_date_end, String

      # @!attribute publish_date_start
      #   Earliest publish date to return (must be at least today). Must be a valid date.
      #   Must be a valid date. Must be a date after or equal to <code>today</code>.
      #
      #   @return [String]
      required :publish_date_start, String

      # @!attribute timezone
      #   Timezone of the provided dates.
      #   [View available timezone values](https://www.php.net/manual/en/timezones.php).
      #   Must be a valid time zone, such as <code>Africa/Accra</code>.
      #
      #   @return [String]
      required :timezone, String

      # @!attribute limit
      #   Maximum number of queue items to return (default 20). Must be at least 1. Must
      #   not be greater than 100.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute type
      #
      #   @return [Array<Symbol, Onlyfans::Models::QueueListParams::Type>, nil]
      optional :type, -> { Onlyfans::Internal::Type::ArrayOf[enum: Onlyfans::QueueListParams::Type] }

      # @!method initialize(account:, publish_date_end:, publish_date_start:, timezone:, limit: nil, type: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfans::Models::QueueListParams} for more details.
      #
      #   @param account [String]
      #
      #   @param publish_date_end [String] Latest publish date to return. Must be a valid date. Must be a valid date. Must
      #
      #   @param publish_date_start [String] Earliest publish date to return (must be at least today). Must be a valid date.
      #
      #   @param timezone [String] Timezone of the provided dates. [View available timezone values](https://www.php
      #
      #   @param limit [Integer] Maximum number of queue items to return (default 20). Must be at least 1. Must n
      #
      #   @param type [Array<Symbol, Onlyfans::Models::QueueListParams::Type>]
      #
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]

      module Type
        extend Onlyfans::Internal::Type::Enum

        CHAT = :chat
        POST = :post

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
