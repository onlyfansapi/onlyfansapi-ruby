# typed: strong

module Onlyfans
  module Resources
    # Endpoints for managingr account notifications
    class Notifications
      # Endpoints for managingr account notifications
      sig { returns(Onlyfans::Resources::Notifications::TabsOrder) }
      attr_reader :tabs_order

      # List all notifications for the account
      sig do
        params(
          account: String,
          from_id: Integer,
          limit: Integer,
          skip_users: Onlyfans::NotificationListParams::SkipUsers::OrSymbol,
          type: Onlyfans::NotificationListParams::Type::OrSymbol,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::NotificationListResponse)
      end
      def list(
        # The Account ID
        account,
        # Used for pagination. This value should be the ID of the previous response's last
        # notification.
        from_id: nil,
        # The number of notifications. Default `10`
        limit: nil,
        # Whether to skip user details. Default `all`
        skip_users: nil,
        # Filter notifications by a specific type
        type: nil,
        request_options: {}
      )
      end

      # Get a quick overview of all unread notification types
      sig do
        params(
          account: String,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::NotificationGetCountsResponse)
      end
      def get_counts(
        # The Account ID
        account,
        request_options: {}
      )
      end

      # Mark all notifications of this account as read
      sig do
        params(
          account: String,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::NotificationMarkAllAsReadResponse)
      end
      def mark_all_as_read(
        # The Account ID
        account,
        request_options: {}
      )
      end

      # Search users that have appeared in your notifications
      sig do
        params(
          account: String,
          query: String,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::NotificationSearchUsersResponse)
      end
      def search_users(
        # The Account ID
        account,
        # The query to search for. Can be either a name or username.
        query:,
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
