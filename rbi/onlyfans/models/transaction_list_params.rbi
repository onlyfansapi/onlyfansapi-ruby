# typed: strong

module Onlyfans
  module Models
    class TransactionListParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Onlyfans::TransactionListParams, Onlyfans::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :account

      # The number of transactions to return. Recommended: `10`
      sig { returns(T.nilable(String)) }
      attr_reader :limit

      sig { params(limit: String).void }
      attr_writer :limit

      # The marker used for pagination. Default: `null`
      sig { returns(T.nilable(String)) }
      attr_reader :marker

      sig { params(marker: String).void }
      attr_writer :marker

      # The start date for transactions list. Default: `-30days`
      sig { returns(T.nilable(String)) }
      attr_reader :start_date

      sig { params(start_date: String).void }
      attr_writer :start_date

      # Filter tips by source. Only applies when `type=tips`. Options: `profile`,
      # `post_all`, `chat`, `stream`, `story`
      sig { returns(T.nilable(String)) }
      attr_reader :tips_source

      sig { params(tips_source: String).void }
      attr_writer :tips_source

      # Filter by transaction type. Options: `subscribes`, `tips`, `post`,
      # `chat_messages`, `stream`
      sig { returns(T.nilable(String)) }
      attr_reader :type

      sig { params(type: String).void }
      attr_writer :type

      sig do
        params(
          account: String,
          limit: String,
          marker: String,
          start_date: String,
          tips_source: String,
          type: String,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        # The number of transactions to return. Recommended: `10`
        limit: nil,
        # The marker used for pagination. Default: `null`
        marker: nil,
        # The start date for transactions list. Default: `-30days`
        start_date: nil,
        # Filter tips by source. Only applies when `type=tips`. Options: `profile`,
        # `post_all`, `chat`, `stream`, `story`
        tips_source: nil,
        # Filter by transaction type. Options: `subscribes`, `tips`, `post`,
        # `chat_messages`, `stream`
        type: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            limit: String,
            marker: String,
            start_date: String,
            tips_source: String,
            type: String,
            request_options: Onlyfans::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
