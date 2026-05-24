# typed: strong

module Onlyfansapi
  module Resources
    class Users
      # APIs for fetching OnlyFans users
      class Restrict
        # Restrict a user. You will not see messages or comments from this them.
        sig do
          params(
            user_id: String,
            account: String,
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(Onlyfansapi::Models::Users::RestrictCreateResponse)
        end
        def create(
          # The OnlyFans ID of the user to restrict.
          user_id,
          # The Account ID
          account:,
          request_options: {}
        )
        end

        # Unrestrict a previously restricted user. You will start seeing messages and
        # comments from them again.
        sig do
          params(
            user_id: String,
            account: String,
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(Onlyfansapi::Models::Users::RestrictDeleteResponse)
        end
        def delete(
          # The OnlyFans ID of the user to restrict.
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
