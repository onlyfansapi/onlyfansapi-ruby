# frozen_string_literal: true

module Onlyfans
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
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::Users::BlockCreateResponse]
        #
        # @see Onlyfans::Models::Users::BlockCreateParams
        def create(user_id, params)
          parsed, options = Onlyfans::Users::BlockCreateParams.dump_request(params)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["api/%1$s/users/%2$s/block", account, user_id],
            model: Onlyfans::Models::Users::BlockCreateResponse,
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
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::Users::BlockDeleteResponse]
        #
        # @see Onlyfans::Models::Users::BlockDeleteParams
        def delete(user_id, params)
          parsed, options = Onlyfans::Users::BlockDeleteParams.dump_request(params)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["api/%1$s/users/%2$s/block", account, user_id],
            model: Onlyfans::Models::Users::BlockDeleteResponse,
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
