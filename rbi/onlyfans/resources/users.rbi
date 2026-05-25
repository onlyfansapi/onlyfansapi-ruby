# typed: strong

module Onlyfans
  module Resources
    # APIs for fetching OnlyFans users
    class Users
      # APIs for fetching OnlyFans users
      sig { returns(Onlyfans::Resources::Users::Restrict) }
      attr_reader :restrict

      # APIs for fetching OnlyFans users
      sig { returns(Onlyfans::Resources::Users::Block) }
      attr_reader :block

      # APIs for fetching OnlyFans users
      sig { returns(Onlyfans::Resources::Users::Subscribe) }
      attr_reader :subscribe

      # Get OnlyFans Profile details for a given username. User details are retrieved
      # using the current `{account}` so fields like `subscribedOnData` which include
      # potential subscription details will be included.
      sig do
        params(
          username: String,
          account: String,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::UserRetrieveResponse)
      end
      def retrieve(
        # The OnlyFans username of the user to retrieve details for.
        username,
        # The Account ID
        account:,
        request_options: {}
      )
      end

      # Save on credits by getting up to 10 user details with a single request. User
      # details are retrieved using the current `{account}` so fields like
      # `subscribedOnData` which include potential subscription details will be
      # included.
      sig do
        params(
          account: String,
          ids: String,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::UserListResponse)
      end
      def list(
        # The Account ID
        account,
        # Comma-separated list of user IDs (max. 10 IDs). Must be at least 1 character.
        ids:,
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
