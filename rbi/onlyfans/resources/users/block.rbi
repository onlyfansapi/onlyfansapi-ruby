# typed: strong

module Onlyfans
  module Resources
    class Users
      # APIs for fetching OnlyFans users
      class Block
        # Block user from accessing your profile.
        sig do
          params(
            user_id: String,
            account: String,
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(Onlyfans::Models::Users::BlockCreateResponse)
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
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(Onlyfans::Models::Users::BlockDeleteResponse)
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
        sig { params(client: Onlyfans::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
