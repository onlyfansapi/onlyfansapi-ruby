# frozen_string_literal: true

module Onlyfans
  module Resources
    # APIs for Tracking Links (campaigns) that other OF creators have shared with this
    # account. Revenue, cost, and spender data are not available for shared campaigns.
    class SharedTrackingLinks
      # APIs for Tracking Links (campaigns) that other OF creators have shared with this
      # account. Revenue, cost, and spender data are not available for shared campaigns.
      # @return [Onlyfans::Resources::SharedTrackingLinks::Tags]
      attr_reader :tags

      # Some parameter documentations has been truncated, see
      # {Onlyfans::Models::SharedTrackingLinkListParams} for more details.
      #
      # List all Tracking Links (campaigns) shared with the account by other OF
      # creators. Calls OnlyFans live and syncs to our cache.
      #
      # @overload list(account, limit: nil, offset: nil, pagination: nil, sorting_deleted: nil, stats: nil, synchronous: nil, with_deleted: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param limit [Integer] The number of shared tracking links to return. Default `10`. Must be at least 1.
      #
      # @param offset [Integer] The offset used for pagination. Default `0`. Must be at least 0.
      #
      # @param pagination [Integer, Onlyfans::Models::SharedTrackingLinkListParams::Pagination] Whether pagination metadata is enabled. Default `1`.
      #
      # @param sorting_deleted [Integer, Onlyfans::Models::SharedTrackingLinkListParams::SortingDeleted] Whether deleted links participate in sorting. Default `1`.
      #
      # @param stats [String] Whether statistics are included. Default `true`. Must not be greater than 10 cha
      #
      # @param synchronous [Boolean] Wait for the database sync instead of processing it in the background.
      #
      # @param with_deleted [Integer, Onlyfans::Models::SharedTrackingLinkListParams::WithDeleted] Whether to include deleted shared tracking links. Default `1`.
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::SharedTrackingLinkListResponse]
      #
      # @see Onlyfans::Models::SharedTrackingLinkListParams
      def list(account, params = {})
        parsed, options = Onlyfans::SharedTrackingLinkListParams.dump_request(params)
        query = Onlyfans::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/%1$s/shared-tracking-links", account],
          query: query,
          model: Onlyfans::Models::SharedTrackingLinkListResponse,
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
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::SharedTrackingLinkRevokeAccessResponse]
      #
      # @see Onlyfans::Models::SharedTrackingLinkRevokeAccessParams
      def revoke_access(shared_tracking_link_id, params)
        parsed, options = Onlyfans::SharedTrackingLinkRevokeAccessParams.dump_request(params)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :delete,
          path: ["api/%1$s/shared-tracking-links/%2$s", account, shared_tracking_link_id],
          model: Onlyfans::Models::SharedTrackingLinkRevokeAccessResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Onlyfans::Client]
      def initialize(client:)
        @client = client
        @tags = Onlyfans::Resources::SharedTrackingLinks::Tags.new(client: client)
      end
    end
  end
end
