# frozen_string_literal: true

module Onlyfansapi
  module Resources
    class Users
      # APIs for fetching OnlyFans users
      class Subscribe
        # Subscribe to a user's profile.
        #
        # @overload create(user_id, account:, request_options: {})
        #
        # @param user_id [String] The OnlyFans ID of the user to subscribe to.
        #
        # @param account [String] The Account ID
        #
        # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfansapi::Models::Users::SubscribeCreateResponse]
        #
        # @see Onlyfansapi::Models::Users::SubscribeCreateParams
        def create(user_id, params)
          parsed, options = Onlyfansapi::Users::SubscribeCreateParams.dump_request(params)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["api/%1$s/users/%2$s/subscribe", account, user_id],
            model: Onlyfansapi::Models::Users::SubscribeCreateResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Onlyfansapi::Models::Users::SubscribeDeleteParams} for more details.
        #
        # Unsubscribe from a user's profile.
        #
        # @overload delete(user_id, account:, reason:, request_options: {})
        #
        # @param user_id [String] Path param: The OnlyFans ID of the user to subscribe to.
        #
        # @param account [String] Path param: The Account ID
        #
        # @param reason [String] Body param: Reason for unsubscribing. Valid options: `1,2,3,4,5`. Leave empty fo
        #
        # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfansapi::Models::Users::SubscribeDeleteResponse]
        #
        # @see Onlyfansapi::Models::Users::SubscribeDeleteParams
        def delete(user_id, params)
          parsed, options = Onlyfansapi::Users::SubscribeDeleteParams.dump_request(params)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["api/%1$s/users/%2$s/subscribe", account, user_id],
            body: parsed,
            model: Onlyfansapi::Models::Users::SubscribeDeleteResponse,
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
