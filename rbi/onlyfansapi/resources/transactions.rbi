# typed: strong

module Onlyfansapi
  module Resources
    # APIs for managing OnlyFans transactions
    class Transactions
      # Get a paginated list of transactions for an Account. Newest transactions are
      # first.
      sig do
        params(
          account: String,
          limit: String,
          marker: String,
          start_date: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::TransactionListResponse)
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
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Onlyfansapi::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
