# typed: strong

module Onlyfansapi
  module Resources
    # APIs for Tracking Links (campaigns) that other OF creators have shared with this
    # account. Revenue, cost, and spender data are not available for shared campaigns.
    class SharedTrackingLinks
      # APIs for Tracking Links (campaigns) that other OF creators have shared with this
      # account. Revenue, cost, and spender data are not available for shared campaigns.
      sig { returns(Onlyfansapi::Resources::SharedTrackingLinks::Tags) }
      attr_reader :tags

      # List all Tracking Links (campaigns) shared with the account by other OF
      # creators. Calls OnlyFans live and syncs to our cache.
      sig do
        params(
          account: String,
          limit: Integer,
          offset: Integer,
          synchronous: T.nilable(T::Boolean),
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::SharedTrackingLinkListResponse)
      end
      def list(
        # The Account ID
        account,
        # The number of shared tracking links to return. Default `10`
        limit: nil,
        # The offset used for pagination. Default `0`
        offset: nil,
        # Wait for the database sync to finish, instead of running it in the background.
        # **Will result in longer response times, use with caution**. Default `false`
        synchronous: nil,
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
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::SharedTrackingLinkRevokeAccessResponse)
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
      sig { params(client: Onlyfansapi::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
