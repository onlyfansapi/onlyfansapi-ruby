# typed: strong

module Onlyfansapi
  module Resources
    class UserLists
      sig { returns(Onlyfansapi::Resources::UserLists::Users) }
      attr_reader :users

      # Create a OnlyFans User List
      sig do
        params(
          account: String,
          name: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::UserListCreateResponse)
      end
      def create(
        # The Account ID
        account,
        # Must not be greater than 64 characters.
        name:,
        request_options: {}
      )
      end

      # Update a OnlyFans User List
      sig do
        params(
          user_list_id: Integer,
          account: String,
          name: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::UserListUpdateResponse)
      end
      def update(
        # Path param: OnlyFans User List ID
        user_list_id,
        # Path param: The Account ID
        account:,
        # Body param: Must not be greater than 64 characters.
        name:,
        request_options: {}
      )
      end

      # Get a list of OnlyFans Collections - User Lists
      sig do
        params(
          account: String,
          limit: T.nilable(Integer),
          offset: T.nilable(Integer),
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::UserListListResponse)
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
          user_list_id: Integer,
          account: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::UserListDeleteResponse)
      end
      def delete(
        # OnlyFans User List ID
        user_list_id,
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
