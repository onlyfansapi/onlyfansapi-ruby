# frozen_string_literal: true

module Onlyfans
  module Resources
    # Endpoints for managingr account notifications
    class Notifications
      # Endpoints for managingr account notifications
      # @return [Onlyfans::Resources::Notifications::TabsOrder]
      attr_reader :tabs_order

      # Some parameter documentations has been truncated, see
      # {Onlyfans::Models::NotificationListParams} for more details.
      #
      # List all notifications for the account
      #
      # @overload list(account, from_id: nil, limit: nil, skip_users: nil, type: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param from_id [Integer] Used for pagination. This value should be the ID of the previous response's last
      #
      # @param limit [Integer] The number of notifications. Default `10`
      #
      # @param skip_users [Symbol, Onlyfans::Models::NotificationListParams::SkipUsers] Whether to skip user details. Defaults to `all`.
      #
      # @param type [Symbol, Onlyfans::Models::NotificationListParams::Type] Filter notifications by a specific type
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::NotificationListResponse]
      #
      # @see Onlyfans::Models::NotificationListParams
      def list(account, params = {})
        parsed, options = Onlyfans::NotificationListParams.dump_request(params)
        query = Onlyfans::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/%1$s/notifications", account],
          query: query,
          model: Onlyfans::Models::NotificationListResponse,
          options: options
        )
      end

      # Get a quick overview of all unread notification types
      #
      # @overload get_counts(account, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::NotificationGetCountsResponse]
      #
      # @see Onlyfans::Models::NotificationGetCountsParams
      def get_counts(account, params = {})
        @client.request(
          method: :get,
          path: ["api/%1$s/notifications/counts", account],
          model: Onlyfans::Models::NotificationGetCountsResponse,
          options: params[:request_options]
        )
      end

      # Mark all notifications of this account as read
      #
      # @overload mark_all_as_read(account, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::NotificationMarkAllAsReadResponse]
      #
      # @see Onlyfans::Models::NotificationMarkAllAsReadParams
      def mark_all_as_read(account, params = {})
        @client.request(
          method: :post,
          path: ["api/%1$s/notifications/mark-all-as-read", account],
          model: Onlyfans::Models::NotificationMarkAllAsReadResponse,
          options: params[:request_options]
        )
      end

      # Search users that have appeared in your notifications
      #
      # @overload search_users(account, query:, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param query [String] The query to search for. Can be either a name or username.
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::NotificationSearchUsersResponse]
      #
      # @see Onlyfans::Models::NotificationSearchUsersParams
      def search_users(account, params)
        parsed, options = Onlyfans::NotificationSearchUsersParams.dump_request(params)
        query = Onlyfans::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/%1$s/notifications/search-users", account],
          query: query,
          model: Onlyfans::Models::NotificationSearchUsersResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Onlyfans::Client]
      def initialize(client:)
        @client = client
        @tabs_order = Onlyfans::Resources::Notifications::TabsOrder.new(client: client)
      end
    end
  end
end
