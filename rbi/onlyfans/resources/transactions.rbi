# typed: strong

module Onlyfans
  module Resources
    # APIs for managing OnlyFans transactions
    class Transactions
      # Get a paginated list of transactions for an Account. Newest transactions are
      # first. You can filter by transaction type and tips source.
      sig do
        params(
          account: String,
          limit: String,
          marker: String,
          start_date: String,
          tips_source: String,
          type: String,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::TransactionListResponse)
      end
      def list(
        # The Account ID
        account,
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

      # @api private
      sig { params(client: Onlyfans::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
