# typed: strong

module Onlyfansapi
  module Resources
    class Users
      # APIs for fetching OnlyFans users
      class Subscribe
        # Subscribe to a user's profile.
        sig do
          params(
            user_id: String,
            account: String,
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(Onlyfansapi::Models::Users::SubscribeCreateResponse)
        end
        def create(
          # The OnlyFans ID of the user to subscribe to.
          user_id,
          # The Account ID
          account:,
          request_options: {}
        )
        end

        # Unsubscribe from a user's profile.
        sig do
          params(
            user_id: String,
            account: String,
            reason: String,
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(Onlyfansapi::Models::Users::SubscribeDeleteResponse)
        end
        def delete(
          # Path param: The OnlyFans ID of the user to subscribe to.
          user_id,
          # Path param: The Account ID
          account:,
          # Body param: Reason for unsubscribing. Valid options: `1,2,3,4,5`. Leave empty
          # for `No specific reason`.
          reason:,
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
end
