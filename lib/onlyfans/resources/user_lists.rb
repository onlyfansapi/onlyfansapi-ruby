# frozen_string_literal: true

module Onlyfans
  module Resources
    class UserLists
      # @return [Onlyfans::Resources::UserLists::Users]
      attr_reader :users

      # Create a OnlyFans User List
      #
      # @overload create(account, name:, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param name [String] Must not be greater than 64 characters.
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::UserListCreateResponse]
      #
      # @see Onlyfans::Models::UserListCreateParams
      def create(account, params)
        parsed, options = Onlyfans::UserListCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/%1$s/user-lists", account],
          body: parsed,
          model: Onlyfans::Models::UserListCreateResponse,
          options: options
        )
      end

      # Get a user list
      #
      # @overload retrieve(user_list_id, account:, request_options: {})
      #
      # @param user_list_id [String] OnlyFans User List ID, or a default list name like `tagged`
      #
      # @param account [String] The Account ID
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::UserListRetrieveResponse]
      #
      # @see Onlyfans::Models::UserListRetrieveParams
      def retrieve(user_list_id, params)
        parsed, options = Onlyfans::UserListRetrieveParams.dump_request(params)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/%1$s/user-lists/%2$s", account, user_list_id],
          model: Onlyfans::Models::UserListRetrieveResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Onlyfans::Models::UserListUpdateParams} for more details.
      #
      # Update a OnlyFans User List
      #
      # @overload update(user_list_id, account:, name:, is_pinned_to_feed: nil, request_options: {})
      #
      # @param user_list_id [String] Path param: OnlyFans User List ID, or a default list name like `tagged`
      #
      # @param account [String] Path param: The Account ID
      #
      # @param name [String] Body param: The new name for the User List.
      #
      # @param is_pinned_to_feed [Boolean, nil] Body param: Whether to pin the User List to feed to the OnlyFans homepage or not
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::UserListUpdateResponse]
      #
      # @see Onlyfans::Models::UserListUpdateParams
      def update(user_list_id, params)
        parsed, options = Onlyfans::UserListUpdateParams.dump_request(params)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :put,
          path: ["api/%1$s/user-lists/%2$s", account, user_list_id],
          body: parsed,
          model: Onlyfans::Models::UserListUpdateResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Onlyfans::Models::UserListListParams} for more details.
      #
      # Get a list of OnlyFans Collections - User Lists
      #
      # @overload list(account, limit: nil, offset: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param limit [Integer, nil] How many results to return in the request. Max. 50 user lists. Must be at least
      #
      # @param offset [Integer, nil] Must be at least 0.
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::UserListListResponse]
      #
      # @see Onlyfans::Models::UserListListParams
      def list(account, params = {})
        parsed, options = Onlyfans::UserListListParams.dump_request(params)
        query = Onlyfans::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/%1$s/user-lists", account],
          query: query,
          model: Onlyfans::Models::UserListListResponse,
          options: options
        )
      end

      # Delete a OnlyFans User List
      #
      # @overload delete(user_list_id, account:, request_options: {})
      #
      # @param user_list_id [String] OnlyFans User List ID, or a default list name like `tagged`
      #
      # @param account [String] The Account ID
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::UserListDeleteResponse]
      #
      # @see Onlyfans::Models::UserListDeleteParams
      def delete(user_list_id, params)
        parsed, options = Onlyfans::UserListDeleteParams.dump_request(params)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :delete,
          path: ["api/%1$s/user-lists/%2$s", account, user_list_id],
          model: Onlyfans::Models::UserListDeleteResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Onlyfans::Client]
      def initialize(client:)
        @client = client
        @users = Onlyfans::Resources::UserLists::Users.new(client: client)
      end
    end
  end
end
