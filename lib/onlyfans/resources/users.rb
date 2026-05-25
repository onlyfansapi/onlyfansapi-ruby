# frozen_string_literal: true

module Onlyfans
  module Resources
    # APIs for fetching OnlyFans users
    class Users
      # APIs for fetching OnlyFans users
      # @return [Onlyfans::Resources::Users::Restrict]
      attr_reader :restrict

      # APIs for fetching OnlyFans users
      # @return [Onlyfans::Resources::Users::Block]
      attr_reader :block

      # APIs for fetching OnlyFans users
      # @return [Onlyfans::Resources::Users::Subscribe]
      attr_reader :subscribe

      # Get OnlyFans Profile details for a given username. User details are retrieved
      # using the current `{account}` so fields like `subscribedOnData` which include
      # potential subscription details will be included.
      #
      # @overload retrieve(username, account:, request_options: {})
      #
      # @param username [String] The OnlyFans username of the user to retrieve details for.
      #
      # @param account [String] The Account ID
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::UserRetrieveResponse]
      #
      # @see Onlyfans::Models::UserRetrieveParams
      def retrieve(username, params)
        parsed, options = Onlyfans::UserRetrieveParams.dump_request(params)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/%1$s/users/%2$s", account, username],
          model: Onlyfans::Models::UserRetrieveResponse,
          options: options
        )
      end

      # Save on credits by getting up to 10 user details with a single request. User
      # details are retrieved using the current `{account}` so fields like
      # `subscribedOnData` which include potential subscription details will be
      # included.
      #
      # @overload list(account, ids:, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param ids [String] Comma-separated list of user IDs (max. 10 IDs). Must be at least 1 character.
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::UserListResponse]
      #
      # @see Onlyfans::Models::UserListParams
      def list(account, params)
        parsed, options = Onlyfans::UserListParams.dump_request(params)
        query = Onlyfans::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/%1$s/users/list", account],
          query: query,
          model: Onlyfans::Models::UserListResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Onlyfans::Client]
      def initialize(client:)
        @client = client
        @restrict = Onlyfans::Resources::Users::Restrict.new(client: client)
        @block = Onlyfans::Resources::Users::Block.new(client: client)
        @subscribe = Onlyfans::Resources::Users::Subscribe.new(client: client)
      end
    end
  end
end
