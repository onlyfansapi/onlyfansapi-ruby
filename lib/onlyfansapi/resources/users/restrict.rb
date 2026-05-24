# frozen_string_literal: true

module Onlyfansapi
  module Resources
    class Users
      # APIs for fetching OnlyFans users
      class Restrict
        # Restrict a user. You will not see messages or comments from this them.
        #
        # @overload create(user_id, account:, request_options: {})
        #
        # @param user_id [String] The OnlyFans ID of the user to restrict.
        #
        # @param account [String] The Account ID
        #
        # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfansapi::Models::Users::RestrictCreateResponse]
        #
        # @see Onlyfansapi::Models::Users::RestrictCreateParams
        def create(user_id, params)
          parsed, options = Onlyfansapi::Users::RestrictCreateParams.dump_request(params)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["api/%1$s/users/%2$s/restrict", account, user_id],
            model: Onlyfansapi::Models::Users::RestrictCreateResponse,
            options: options
          )
        end

        # Unrestrict a previously restricted user. You will start seeing messages and
        # comments from them again.
        #
        # @overload delete(user_id, account:, request_options: {})
        #
        # @param user_id [String] The OnlyFans ID of the user to restrict.
        #
        # @param account [String] The Account ID
        #
        # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfansapi::Models::Users::RestrictDeleteResponse]
        #
        # @see Onlyfansapi::Models::Users::RestrictDeleteParams
        def delete(user_id, params)
          parsed, options = Onlyfansapi::Users::RestrictDeleteParams.dump_request(params)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["api/%1$s/users/%2$s/restrict", account, user_id],
            model: Onlyfansapi::Models::Users::RestrictDeleteResponse,
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
