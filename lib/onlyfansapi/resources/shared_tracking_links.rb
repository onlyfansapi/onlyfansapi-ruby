# frozen_string_literal: true

module Onlyfansapi
  module Resources
    # APIs for Tracking Links (campaigns) that other OF creators have shared with this
    # account. Revenue, cost, and spender data are not available for shared campaigns.
    class SharedTrackingLinks
      # APIs for Tracking Links (campaigns) that other OF creators have shared with this
      # account. Revenue, cost, and spender data are not available for shared campaigns.
      # @return [Onlyfansapi::Resources::SharedTrackingLinks::Tags]
      attr_reader :tags

      # Some parameter documentations has been truncated, see
      # {Onlyfansapi::Models::SharedTrackingLinkListParams} for more details.
      #
      # List all Tracking Links (campaigns) shared with the account by other OF
      # creators. Calls OnlyFans live and syncs to our cache.
      #
      # @overload list(account, limit: nil, offset: nil, synchronous: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param limit [Integer] The number of shared tracking links to return. Default `10`
      #
      # @param offset [Integer] The offset used for pagination. Default `0`
      #
      # @param synchronous [Boolean, nil] Wait for the database sync to finish, instead of running it in the
      # background. \*
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::SharedTrackingLinkListResponse]
      #
      # @see Onlyfansapi::Models::SharedTrackingLinkListParams
      def list(account, params = {})
        parsed, options = Onlyfansapi::SharedTrackingLinkListParams.dump_request(params)
        query = Onlyfansapi::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/%1$s/shared-tracking-links", account],
          query: query,
          model: Onlyfansapi::Models::SharedTrackingLinkListResponse,
          options: options
        )
      end

      # Revoke the account's access to a shared Tracking Link (campaign). Calls OnlyFans
      # `DELETE /campaigns/share-access`, then removes the local cache row. The owner
      # keeps the link.
      #
      # @overload revoke_access(shared_tracking_link_id, account:, request_options: {})
      #
      # @param shared_tracking_link_id [Integer] The OnlyFans-side ID of the shared tracking link
      #
      # @param account [String] The Account ID
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::SharedTrackingLinkRevokeAccessResponse]
      #
      # @see Onlyfansapi::Models::SharedTrackingLinkRevokeAccessParams
      def revoke_access(shared_tracking_link_id, params)
        parsed, options = Onlyfansapi::SharedTrackingLinkRevokeAccessParams.dump_request(params)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :delete,
          path: ["api/%1$s/shared-tracking-links/%2$s", account, shared_tracking_link_id],
          model: Onlyfansapi::Models::SharedTrackingLinkRevokeAccessResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Onlyfansapi::Client]
      def initialize(client:)
        @client = client
        @tags = Onlyfansapi::Resources::SharedTrackingLinks::Tags.new(client: client)
      end
    end
  end
end
