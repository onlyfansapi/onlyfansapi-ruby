# typed: strong

module Onlyfansapi
  module Resources
    class UserLists
      class Users
        # Add multiple Users To OnlyFans User List
        sig do
          params(
            user_list_id: String,
            account: String,
            ids: T::Array[String],
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(Onlyfansapi::Models::UserLists::UserAddResponse)
        end
        def add(
          # Path param: OnlyFans User List ID, or a default list name like `tagged`
          user_list_id,
          # Path param: The Account ID
          account:,
          # Body param: Array of OnlyFans User IDs to be added into the list
          ids:,
          request_options: {}
        )
        end

        # Remove User from OnlyFans User List
        sig do
          params(
            user_id: Integer,
            account: String,
            user_list_id: String,
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(Onlyfansapi::Models::UserLists::UserRemoveResponse)
        end
        def remove(
          # OnlyFans User ID
          user_id,
          # The Account ID
          account:,
          # OnlyFans User List ID
          user_list_id:,
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
