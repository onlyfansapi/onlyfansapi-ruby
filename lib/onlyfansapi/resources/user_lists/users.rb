# frozen_string_literal: true

module Onlyfansapi
  module Resources
    class UserLists
      class Users
        # Get all users in a OnlyFans User List
        #
        # @overload list(user_list_id, account:, limit: nil, offset: nil, request_options: {})
        #
        # @param user_list_id [String] Path param: OnlyFans User List ID, or a default list name like `tagged`
        #
        # @param account [String] Path param: The Account ID
        #
        # @param limit [String] Query param: Number of users to return (1 - 100). Default = 10
        #
        # @param offset [String] Query param: Number of users to skip for pagination
        #
        # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfansapi::Models::UserLists::UserListResponse]
        #
        # @see Onlyfansapi::Models::UserLists::UserListParams
        def list(user_list_id, params)
          parsed, options = Onlyfansapi::UserLists::UserListParams.dump_request(params)
          query = Onlyfansapi::Internal::Util.encode_query_params(parsed)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["api/%1$s/user-lists/%2$s/users", account, user_list_id],
            query: query,
            model: Onlyfansapi::Models::UserLists::UserListResponse,
            options: options
          )
        end

        # Add multiple Users To OnlyFans User List
        #
        # @overload add(user_list_id, account:, ids:, request_options: {})
        #
        # @param user_list_id [String] Path param: OnlyFans User List ID, or a default list name like `tagged`
        #
        # @param account [String] Path param: The Account ID
        #
        # @param ids [Array<String>] Body param: Array of OnlyFans User IDs to be added into the list
        #
        # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfansapi::Models::UserLists::UserAddResponse]
        #
        # @see Onlyfansapi::Models::UserLists::UserAddParams
        def add(user_list_id, params)
          parsed, options = Onlyfansapi::UserLists::UserAddParams.dump_request(params)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["api/%1$s/user-lists/%2$s/users", account, user_list_id],
            body: parsed,
            model: Onlyfansapi::Models::UserLists::UserAddResponse,
            options: options
          )
        end

        # Remove all users from a OnlyFans User List
        #
        # @overload clear(user_list_id, account:, request_options: {})
        #
        # @param user_list_id [String] OnlyFans User List ID, or a default list name like `tagged`
        #
        # @param account [String] The Account ID
        #
        # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfansapi::Models::UserLists::UserClearResponse]
        #
        # @see Onlyfansapi::Models::UserLists::UserClearParams
        def clear(user_list_id, params)
          parsed, options = Onlyfansapi::UserLists::UserClearParams.dump_request(params)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["api/%1$s/user-lists/%2$s/users", account, user_list_id],
            model: Onlyfansapi::Models::UserLists::UserClearResponse,
            options: options
          )
        end

        # Get pinned users from an OnlyFans User List.
        #
        # @overload list_pinned(user_list_id, account:, limit: nil, offset: nil, request_options: {})
        #
        # @param user_list_id [String] Path param: OnlyFans User List ID, or a default list name like `friends`
        #
        # @param account [String] Path param: The Account ID
        #
        # @param limit [String] Query param: Number of users to return (1 - 100). Default = 10
        #
        # @param offset [String] Query param: Number of users to skip for pagination
        #
        # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfansapi::Models::UserLists::UserListPinnedResponse]
        #
        # @see Onlyfansapi::Models::UserLists::UserListPinnedParams
        def list_pinned(user_list_id, params)
          parsed, options = Onlyfansapi::UserLists::UserListPinnedParams.dump_request(params)
          query = Onlyfansapi::Internal::Util.encode_query_params(parsed)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["api/%1$s/user-lists/%2$s/users/pinned", account, user_list_id],
            query: query,
            model: Onlyfansapi::Models::UserLists::UserListPinnedResponse,
            options: options
          )
        end

        # Pin a user in any OnlyFans user list.
        #
        # @overload pin(user_id, account:, user_list_id:, request_options: {})
        #
        # @param user_id [Integer] OnlyFans User ID to pin or unpin
        #
        # @param account [String] The Account ID
        #
        # @param user_list_id [String] OnlyFans User List ID, or a default list name like `friends`
        #
        # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfansapi::Models::UserLists::UserPinResponse]
        #
        # @see Onlyfansapi::Models::UserLists::UserPinParams
        def pin(user_id, params)
          parsed, options = Onlyfansapi::UserLists::UserPinParams.dump_request(params)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          user_list_id =
            parsed.delete(:user_list_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["api/%1$s/user-lists/%2$s/users/%3$s/pin", account, user_list_id, user_id],
            model: Onlyfansapi::Models::UserLists::UserPinResponse,
            options: options
          )
        end

        # Remove User from OnlyFans User List
        #
        # @overload remove(user_id, account:, user_list_id:, request_options: {})
        #
        # @param user_id [Integer] OnlyFans User ID
        #
        # @param account [String] The Account ID
        #
        # @param user_list_id [String] OnlyFans User List ID
        #
        # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfansapi::Models::UserLists::UserRemoveResponse]
        #
        # @see Onlyfansapi::Models::UserLists::UserRemoveParams
        def remove(user_id, params)
          parsed, options = Onlyfansapi::UserLists::UserRemoveParams.dump_request(params)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          user_list_id =
            parsed.delete(:user_list_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["api/%1$s/user-lists/%2$s/users/%3$s", account, user_list_id, user_id],
            model: Onlyfansapi::Models::UserLists::UserRemoveResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Onlyfansapi::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
