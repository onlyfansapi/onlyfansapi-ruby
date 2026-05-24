# frozen_string_literal: true

module Onlyfansapi
  module Resources
    class Users
      # APIs for fetching OnlyFans users
      class Block
        # Block user from accessing your profile.
        #
        # @overload create(user_id, account:, request_options: {})
        #
        # @param user_id [String] The OnlyFans ID of the user to block.
        #
        # @param account [String] The Account ID
        #
        # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfansapi::Models::Users::BlockCreateResponse]
        #
        # @see Onlyfansapi::Models::Users::BlockCreateParams
        def create(user_id, params)
          parsed, options = Onlyfansapi::Users::BlockCreateParams.dump_request(params)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["api/%1$s/users/%2$s/block", account, user_id],
            model: Onlyfansapi::Models::Users::BlockCreateResponse,
            options: options
          )
        end

        # Unblock a previously blocked user.
        #
        # @overload delete(user_id, account:, request_options: {})
        #
        # @param user_id [String] The OnlyFans ID of the user to block.
        #
        # @param account [String] The Account ID
        #
        # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfansapi::Models::Users::BlockDeleteResponse]
        #
        # @see Onlyfansapi::Models::Users::BlockDeleteParams
        def delete(user_id, params)
          parsed, options = Onlyfansapi::Users::BlockDeleteParams.dump_request(params)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["api/%1$s/users/%2$s/block", account, user_id],
            model: Onlyfansapi::Models::Users::BlockDeleteResponse,
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
