# typed: strong

module Onlyfans
  module Resources
    # APIs for Tracking Links (campaigns) that other OF creators have shared with this
    # account. Revenue, cost, and spender data are not available for shared campaigns.
    class SharedTrackingLinks
      # APIs for Tracking Links (campaigns) that other OF creators have shared with this
      # account. Revenue, cost, and spender data are not available for shared campaigns.
      sig { returns(Onlyfans::Resources::SharedTrackingLinks::Tags) }
      attr_reader :tags

      # List all Tracking Links (campaigns) shared with the account by other OF
      # creators. Calls OnlyFans live and syncs to our cache.
      sig do
        params(
          account: String,
          limit: Integer,
          offset: Integer,
          pagination:
            Onlyfans::SharedTrackingLinkListParams::Pagination::OrInteger,
          sorting_deleted:
            Onlyfans::SharedTrackingLinkListParams::SortingDeleted::OrInteger,
          stats: String,
          synchronous: T::Boolean,
          with_deleted:
            Onlyfans::SharedTrackingLinkListParams::WithDeleted::OrInteger,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::SharedTrackingLinkListResponse)
      end
      def list(
        # The Account ID
        account,
        # The number of shared tracking links to return. Default `10`. Must be at least 1.
        # Must not be greater than 100.
        limit: nil,
        # The offset used for pagination. Default `0`. Must be at least 0.
        offset: nil,
        # Whether pagination metadata is enabled. Default `1`.
        pagination: nil,
        # Whether deleted links participate in sorting. Default `1`.
        sorting_deleted: nil,
        # Whether statistics are included. Default `true`. Must not be greater than 10
        # characters.
        stats: nil,
        # Wait for the database sync instead of processing it in the background.
        synchronous: nil,
        # Whether to include deleted shared tracking links. Default `1`.
        with_deleted: nil,
        request_options: {}
      )
      end

      # Revoke the account's access to a shared Tracking Link (campaign). Calls OnlyFans
      # `DELETE /campaigns/share-access`, then removes the local cache row. The owner
      # keeps the link.
      sig do
        params(
          shared_tracking_link_id: Integer,
          account: String,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::SharedTrackingLinkRevokeAccessResponse)
      end
      def revoke_access(
        # The OnlyFans-side ID of the shared tracking link
        shared_tracking_link_id,
        # The Account ID
        account:,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Onlyfans::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
