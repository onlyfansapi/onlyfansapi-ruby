# typed: strong

module Onlyfansapi
  module Resources
    class Users
      # APIs for fetching OnlyFans users
      class Block
        # Block user from accessing your profile.
        sig do
          params(
            user_id: String,
            account: String,
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(Onlyfansapi::Models::Users::BlockCreateResponse)
        end
        def create(
          # The OnlyFans ID of the user to block.
          user_id,
          # The Account ID
          account:,
          request_options: {}
        )
        end

        # Unblock a previously blocked user.
        sig do
          params(
            user_id: String,
            account: String,
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(Onlyfansapi::Models::Users::BlockDeleteResponse)
        end
        def delete(
          # The OnlyFans ID of the user to block.
          user_id,
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
end
