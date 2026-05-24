# frozen_string_literal: true

module Onlyfansapi
  module Resources
    class UserLists
      # @return [Onlyfansapi::Resources::UserLists::Users]
      attr_reader :users

      # Create a OnlyFans User List
      #
      # @overload create(account, name:, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param name [String] Must not be greater than 64 characters.
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::UserListCreateResponse]
      #
      # @see Onlyfansapi::Models::UserListCreateParams
      def create(account, params)
        parsed, options = Onlyfansapi::UserListCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/%1$s/user-lists", account],
          body: parsed,
          model: Onlyfansapi::Models::UserListCreateResponse,
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
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::UserListRetrieveResponse]
      #
      # @see Onlyfansapi::Models::UserListRetrieveParams
      def retrieve(user_list_id, params)
        parsed, options = Onlyfansapi::UserListRetrieveParams.dump_request(params)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/%1$s/user-lists/%2$s", account, user_list_id],
          model: Onlyfansapi::Models::UserListRetrieveResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Onlyfansapi::Models::UserListUpdateParams} for more details.
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
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::UserListUpdateResponse]
      #
      # @see Onlyfansapi::Models::UserListUpdateParams
      def update(user_list_id, params)
        parsed, options = Onlyfansapi::UserListUpdateParams.dump_request(params)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :put,
          path: ["api/%1$s/user-lists/%2$s", account, user_list_id],
          body: parsed,
          model: Onlyfansapi::Models::UserListUpdateResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Onlyfansapi::Models::UserListListParams} for more details.
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
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::UserListListResponse]
      #
      # @see Onlyfansapi::Models::UserListListParams
      def list(account, params = {})
        parsed, options = Onlyfansapi::UserListListParams.dump_request(params)
        query = Onlyfansapi::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/%1$s/user-lists", account],
          query: query,
          model: Onlyfansapi::Models::UserListListResponse,
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
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::UserListDeleteResponse]
      #
      # @see Onlyfansapi::Models::UserListDeleteParams
      def delete(user_list_id, params)
        parsed, options = Onlyfansapi::UserListDeleteParams.dump_request(params)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :delete,
          path: ["api/%1$s/user-lists/%2$s", account, user_list_id],
          model: Onlyfansapi::Models::UserListDeleteResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Onlyfansapi::Client]
      def initialize(client:)
        @client = client
        @users = Onlyfansapi::Resources::UserLists::Users.new(client: client)
      end
    end
  end
end
