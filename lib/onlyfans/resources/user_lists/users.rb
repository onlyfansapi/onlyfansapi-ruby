# frozen_string_literal: true

module Onlyfans
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
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::UserLists::UserListResponse]
        #
        # @see Onlyfans::Models::UserLists::UserListParams
        def list(user_list_id, params)
          parsed, options = Onlyfans::UserLists::UserListParams.dump_request(params)
          query = Onlyfans::Internal::Util.encode_query_params(parsed)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["api/%1$s/user-lists/%2$s/users", account, user_list_id],
            query: query,
            model: Onlyfans::Models::UserLists::UserListResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Onlyfans::Models::UserLists::UserAddParams} for more details.
        #
        # Add multiple Users To OnlyFans User List
        #
        # @overload add(user_list_id, account:, ids:, skip_invalid: nil, request_options: {})
        #
        # @param user_list_id [String] Path param: OnlyFans User List ID, or a default list name like `tagged`
        #
        # @param account [String] Path param: The Account ID
        #
        # @param ids [Array<String>] Body param: Array of OnlyFans User IDs to be added into the list
        #
        # @param skip_invalid [Boolean] Body param: Set to `true` to skip the User IDs OnlyFans refuses instead of faili
        #
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::UserLists::UserAddResponse::UnionMember0, Onlyfans::Models::UserLists::UserAddResponse::UnionMember1]
        #
        # @see Onlyfans::Models::UserLists::UserAddParams
        def add(user_list_id, params)
          parsed, options = Onlyfans::UserLists::UserAddParams.dump_request(params)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["api/%1$s/user-lists/%2$s/users", account, user_list_id],
            body: parsed,
            model: Onlyfans::Models::UserLists::UserAddResponse,
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
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::UserLists::UserClearResponse]
        #
        # @see Onlyfans::Models::UserLists::UserClearParams
        def clear(user_list_id, params)
          parsed, options = Onlyfans::UserLists::UserClearParams.dump_request(params)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["api/%1$s/user-lists/%2$s/users", account, user_list_id],
            model: Onlyfans::Models::UserLists::UserClearResponse,
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
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::UserLists::UserListPinnedResponse]
        #
        # @see Onlyfans::Models::UserLists::UserListPinnedParams
        def list_pinned(user_list_id, params)
          parsed, options = Onlyfans::UserLists::UserListPinnedParams.dump_request(params)
          query = Onlyfans::Internal::Util.encode_query_params(parsed)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["api/%1$s/user-lists/%2$s/users/pinned", account, user_list_id],
            query: query,
            model: Onlyfans::Models::UserLists::UserListPinnedResponse,
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
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::UserLists::UserPinResponse]
        #
        # @see Onlyfans::Models::UserLists::UserPinParams
        def pin(user_id, params)
          parsed, options = Onlyfans::UserLists::UserPinParams.dump_request(params)
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
            model: Onlyfans::Models::UserLists::UserPinResponse,
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
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::UserLists::UserRemoveResponse]
        #
        # @see Onlyfans::Models::UserLists::UserRemoveParams
        def remove(user_id, params)
          parsed, options = Onlyfans::UserLists::UserRemoveParams.dump_request(params)
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
            model: Onlyfans::Models::UserLists::UserRemoveResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Onlyfans::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
