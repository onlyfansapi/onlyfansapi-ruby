# typed: strong

module Onlyfansapi
  module Resources
    # APIs for fetching OnlyFans users
    class Users
      # Get OnlyFans Profile details for a given username. User details are retrieved
      # using the current current `{account}` so fields like `subscribedOnData` which
      # include potential subscription details will be included.
      sig do
        params(
          username: String,
          account: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::UserRetrieveResponse)
      end
      def retrieve(
        username,
        # The Account ID
        account:,
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
