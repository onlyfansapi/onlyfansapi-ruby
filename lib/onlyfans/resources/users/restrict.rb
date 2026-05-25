# frozen_string_literal: true

module Onlyfans
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
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::Users::RestrictCreateResponse]
        #
        # @see Onlyfans::Models::Users::RestrictCreateParams
        def create(user_id, params)
          parsed, options = Onlyfans::Users::RestrictCreateParams.dump_request(params)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["api/%1$s/users/%2$s/restrict", account, user_id],
            model: Onlyfans::Models::Users::RestrictCreateResponse,
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
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::Users::RestrictDeleteResponse]
        #
        # @see Onlyfans::Models::Users::RestrictDeleteParams
        def delete(user_id, params)
          parsed, options = Onlyfans::Users::RestrictDeleteParams.dump_request(params)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["api/%1$s/users/%2$s/restrict", account, user_id],
            model: Onlyfans::Models::Users::RestrictDeleteResponse,
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
