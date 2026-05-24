# typed: strong

module Onlyfansapi
  module Resources
    class UserLists
      class Users
        # Get all users in a OnlyFans User List
        sig do
          params(
            user_list_id: String,
            account: String,
            limit: String,
            offset: String,
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(Onlyfansapi::Models::UserLists::UserListResponse)
        end
        def list(
          # Path param: OnlyFans User List ID, or a default list name like `tagged`
          user_list_id,
          # Path param: The Account ID
          account:,
          # Query param: Number of users to return (1 - 100). Default = 10
          limit: nil,
          # Query param: Number of users to skip for pagination
          offset: nil,
          request_options: {}
        )
        end

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

        # Remove all users from a OnlyFans User List
        sig do
          params(
            user_list_id: String,
            account: String,
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(Onlyfansapi::Models::UserLists::UserClearResponse)
        end
        def clear(
          # OnlyFans User List ID, or a default list name like `tagged`
          user_list_id,
          # The Account ID
          account:,
          request_options: {}
        )
        end

        # Get pinned users from an OnlyFans User List.
        sig do
          params(
            user_list_id: String,
            account: String,
            limit: String,
            offset: String,
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(Onlyfansapi::Models::UserLists::UserListPinnedResponse)
        end
        def list_pinned(
          # Path param: OnlyFans User List ID, or a default list name like `friends`
          user_list_id,
          # Path param: The Account ID
          account:,
          # Query param: Number of users to return (1 - 100). Default = 10
          limit: nil,
          # Query param: Number of users to skip for pagination
          offset: nil,
          request_options: {}
        )
        end

        # Pin a user in any OnlyFans user list.
        sig do
          params(
            user_id: Integer,
            account: String,
            user_list_id: String,
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(Onlyfansapi::Models::UserLists::UserPinResponse)
        end
        def pin(
          # OnlyFans User ID to pin or unpin
          user_id,
          # The Account ID
          account:,
          # OnlyFans User List ID, or a default list name like `friends`
          user_list_id:,
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
