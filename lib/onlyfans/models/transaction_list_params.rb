# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Transactions#list
    class TransactionListParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute limit
      #   The number of transactions to return. Recommended: `10`
      #
      #   @return [String, nil]
      optional :limit, String

      # @!attribute marker
      #   The marker used for pagination. Default: `null`
      #
      #   @return [String, nil]
      optional :marker, String

      # @!attribute start_date
      #   The start date for the transactions list. Defaults to 30 days ago.
      #
      #   @return [String, nil]
      optional :start_date, String

      # @!attribute tips_source
      #   Filter tips by source. Only applies when `type=tips`. Options: `profile`,
      #   `post_all`, `chat`, `stream`, `story`
      #
      #   @return [String, nil]
      optional :tips_source, String

      # @!attribute type
      #   Filter by transaction type. Options: `subscribes`, `tips`, `post`,
      #   `chat_messages`, `stream`
      #
      #   @return [String, nil]
      optional :type, String

      # @!method initialize(account:, limit: nil, marker: nil, start_date: nil, tips_source: nil, type: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfans::Models::TransactionListParams} for more details.
      #
      #   @param account [String]
      #
      #   @param limit [String] The number of transactions to return. Recommended: `10`
      #
      #   @param marker [String] The marker used for pagination. Default: `null`
      #
      #   @param start_date [String] The start date for the transactions list. Defaults to 30 days ago.
      #
      #   @param tips_source [String] Filter tips by source. Only applies when `type=tips`. Options: `profile`,
      #   `post\_
      #
      #   @param type [String] Filter by transaction type. Options: `subscribes`, `tips`, `post`, `chat_message
      #
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
