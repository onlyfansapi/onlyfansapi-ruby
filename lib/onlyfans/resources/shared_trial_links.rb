# frozen_string_literal: true

module Onlyfans
  module Resources
    # APIs for Free Trial Links that other OF creators have shared with this account.
    # Revenue, cost, and spender data are not available for shared links.
    class SharedTrialLinks
      # APIs for Free Trial Links that other OF creators have shared with this account.
      # Revenue, cost, and spender data are not available for shared links.
      # @return [Onlyfans::Resources::SharedTrialLinks::Tags]
      attr_reader :tags

      # Some parameter documentations has been truncated, see
      # {Onlyfans::Models::SharedTrialLinkListParams} for more details.
      #
      # List all Free Trial Links shared with the account by other OF creators. Calls
      # OnlyFans live and syncs to our cache.
      #
      # @overload list(account, limit: nil, offset: nil, synchronous: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param limit [Integer] The number of shared trial links to return. Default `10`
      #
      # @param offset [Integer] The offset used for pagination. Default `0`
      #
      # @param synchronous [Boolean, nil] Wait for the database sync to finish, instead of running it in the
      # background. \*
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::SharedTrialLinkListResponse]
      #
      # @see Onlyfans::Models::SharedTrialLinkListParams
      def list(account, params = {})
        parsed, options = Onlyfans::SharedTrialLinkListParams.dump_request(params)
        query = Onlyfans::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/%1$s/shared-trial-links", account],
          query: query,
          model: Onlyfans::Models::SharedTrialLinkListResponse,
          options: options
        )
      end

      # Revoke the account's access to a shared Free Trial Link. Calls OnlyFans
      # `DELETE /trials/share-access`, then removes the local cache row. The owner keeps
      # the link.
      #
      # @overload revoke_access(shared_trial_link_id, account:, request_options: {})
      #
      # @param shared_trial_link_id [Integer] The OnlyFans-side ID of the shared trial link
      #
      # @param account [String] The Account ID
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::SharedTrialLinkRevokeAccessResponse]
      #
      # @see Onlyfans::Models::SharedTrialLinkRevokeAccessParams
      def revoke_access(shared_trial_link_id, params)
        parsed, options = Onlyfans::SharedTrialLinkRevokeAccessParams.dump_request(params)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :delete,
          path: ["api/%1$s/shared-trial-links/%2$s", account, shared_trial_link_id],
          model: Onlyfans::Models::SharedTrialLinkRevokeAccessResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Onlyfans::Client]
      def initialize(client:)
        @client = client
        @tags = Onlyfans::Resources::SharedTrialLinks::Tags.new(client: client)
      end
    end
  end
end
