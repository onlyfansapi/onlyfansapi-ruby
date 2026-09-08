# typed: strong

module Onlyfans
  module Resources
    # APIs for Free Trial Links that other OF creators have shared with this account.
    # Revenue, cost, and spender data are not available for shared links.
    class SharedTrialLinks
      # APIs for Free Trial Links that other OF creators have shared with this account.
      # Revenue, cost, and spender data are not available for shared links.
      sig { returns(Onlyfans::Resources::SharedTrialLinks::Tags) }
      attr_reader :tags

      # List all Free Trial Links shared with the account by other OF creators. Calls
      # OnlyFans live and syncs to our cache.
      sig do
        params(
          account: String,
          limit: Integer,
          offset: Integer,
          pagination:
            Onlyfans::SharedTrialLinkListParams::Pagination::OrInteger,
          synchronous: T::Boolean,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::SharedTrialLinkListResponse)
      end
      def list(
        # The Account ID
        account,
        # The number of shared trial links to return. Default `10`. Must be at least 1.
        # Must not be greater than 100.
        limit: nil,
        # The offset used for pagination. Default `0`. Must be at least 0.
        offset: nil,
        pagination: nil,
        # Wait for the database sync instead of processing it in the background.
        synchronous: nil,
        request_options: {}
      )
      end

      # Revoke the account's access to a shared Free Trial Link. Calls OnlyFans
      # `DELETE /trials/share-access`, then removes the local cache row. The owner keeps
      # the link.
      sig do
        params(
          shared_trial_link_id: Integer,
          account: String,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::SharedTrialLinkRevokeAccessResponse)
      end
      def revoke_access(
        # The OnlyFans-side ID of the shared trial link
        shared_trial_link_id,
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
