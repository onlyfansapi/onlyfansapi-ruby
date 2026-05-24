# frozen_string_literal: true

module Onlyfansapi
  module Resources
    class UserLists
      class Users
        # Add multiple Users To OnlyFans User List
        #
        # @overload add(user_list_id, account:, ids:, request_options: {})
        #
        # @param user_list_id [Integer] Path param: OnlyFans User List ID
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

        # Remove User from OnlyFans User List
        #
        # @overload remove(user_id, account:, user_list_id:, request_options: {})
        #
        # @param user_id [Integer] OnlyFans User ID
        #
        # @param account [String] The Account ID
        #
        # @param user_list_id [Integer] OnlyFans User List ID
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
