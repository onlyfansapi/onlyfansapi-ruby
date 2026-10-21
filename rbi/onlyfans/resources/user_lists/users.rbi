# typed: strong

module Onlyfans
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
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(Onlyfans::Models::UserLists::UserListResponse)
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
            skip_invalid: T::Boolean,
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(Onlyfans::Models::UserLists::UserAddResponse::Variants)
        end
        def add(
          # Path param: OnlyFans User List ID, or a default list name like `tagged`
          user_list_id,
          # Path param: The Account ID
          account:,
          # Body param: Array of OnlyFans User IDs to be added into the list
          ids:,
          # Body param: Set to `true` to skip the User IDs OnlyFans refuses instead of
          # failing the whole batch. We drop the rejected IDs and retry the remainder for
          # you (up to 5 OnlyFans attempts, each costing 1 credit), then respond `200` with
          # `data.added` (the IDs that made it in) and `data.failed` (an object mapping each
          # rejected User ID to the reason OnlyFans gave). Note this changes the shape of
          # `data` — see the example responses. Failures that are not about individual users
          # (e.g. an invalid or inaccessible list ID) still return the regular `400`.
          skip_invalid: nil,
          request_options: {}
        )
        end

        # Remove all users from a OnlyFans User List
        sig do
          params(
            user_list_id: String,
            account: String,
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(Onlyfans::Models::UserLists::UserClearResponse)
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
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(Onlyfans::Models::UserLists::UserListPinnedResponse)
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
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(Onlyfans::Models::UserLists::UserPinResponse)
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
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(Onlyfans::Models::UserLists::UserRemoveResponse)
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
        sig { params(client: Onlyfans::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
