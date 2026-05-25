# typed: strong

module Onlyfans
  module Resources
    class UserLists
      sig { returns(Onlyfans::Resources::UserLists::Users) }
      attr_reader :users

      # Create a OnlyFans User List
      sig do
        params(
          account: String,
          name: String,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::UserListCreateResponse)
      end
      def create(
        # The Account ID
        account,
        # Must not be greater than 64 characters.
        name:,
        request_options: {}
      )
      end

      # Get a user list
      sig do
        params(
          user_list_id: String,
          account: String,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::UserListRetrieveResponse)
      end
      def retrieve(
        # OnlyFans User List ID, or a default list name like `tagged`
        user_list_id,
        # The Account ID
        account:,
        request_options: {}
      )
      end

      # Update a OnlyFans User List
      sig do
        params(
          user_list_id: String,
          account: String,
          name: String,
          is_pinned_to_feed: T.nilable(T::Boolean),
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::UserListUpdateResponse)
      end
      def update(
        # Path param: OnlyFans User List ID, or a default list name like `tagged`
        user_list_id,
        # Path param: The Account ID
        account:,
        # Body param: The new name for the User List.
        name:,
        # Body param: Whether to pin the User List to feed to the OnlyFans homepage or
        # not.
        is_pinned_to_feed: nil,
        request_options: {}
      )
      end

      # Get a list of OnlyFans Collections - User Lists
      sig do
        params(
          account: String,
          limit: T.nilable(Integer),
          offset: T.nilable(Integer),
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::UserListListResponse)
      end
      def list(
        # The Account ID
        account,
        # How many results to return in the request. Max. 50 user lists. Must be at
        # least 10. Must not be greater than 50.
        limit: nil,
        # Must be at least 0.
        offset: nil,
        request_options: {}
      )
      end

      # Delete a OnlyFans User List
      sig do
        params(
          user_list_id: String,
          account: String,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::UserListDeleteResponse)
      end
      def delete(
        # OnlyFans User List ID, or a default list name like `tagged`
        user_list_id,
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
