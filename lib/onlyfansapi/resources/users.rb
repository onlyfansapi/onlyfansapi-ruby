# frozen_string_literal: true

module Onlyfansapi
  module Resources
    # APIs for fetching OnlyFans users
    class Users
      # APIs for fetching OnlyFans users
      # @return [Onlyfansapi::Resources::Users::Restrict]
      attr_reader :restrict

      # APIs for fetching OnlyFans users
      # @return [Onlyfansapi::Resources::Users::Block]
      attr_reader :block

      # APIs for fetching OnlyFans users
      # @return [Onlyfansapi::Resources::Users::Subscribe]
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
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::UserRetrieveResponse]
      #
      # @see Onlyfansapi::Models::UserRetrieveParams
      def retrieve(username, params)
        parsed, options = Onlyfansapi::UserRetrieveParams.dump_request(params)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/%1$s/users/%2$s", account, username],
          model: Onlyfansapi::Models::UserRetrieveResponse,
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
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::UserListResponse]
      #
      # @see Onlyfansapi::Models::UserListParams
      def list(account, params)
        parsed, options = Onlyfansapi::UserListParams.dump_request(params)
        query = Onlyfansapi::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/%1$s/users/list", account],
          query: query,
          model: Onlyfansapi::Models::UserListResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Onlyfansapi::Client]
      def initialize(client:)
        @client = client
        @restrict = Onlyfansapi::Resources::Users::Restrict.new(client: client)
        @block = Onlyfansapi::Resources::Users::Block.new(client: client)
        @subscribe = Onlyfansapi::Resources::Users::Subscribe.new(client: client)
      end
    end
  end
end
