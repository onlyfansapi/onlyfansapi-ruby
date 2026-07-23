# typed: strong

module Onlyfans
  module Resources
    # APIs for managing OnlyFans fans (subscribers)
    class Fans
      # APIs for managing OnlyFans fans (subscribers)
      sig { returns(Onlyfans::Resources::Fans::Notes) }
      attr_reader :notes

      # APIs for generating and retrieving AI-powered fan profile summaries
      sig { returns(Onlyfans::Resources::Fans::Summary) }
      attr_reader :summary

      # Get Subscription History for a given OnlyFans User ID. This can be useful, for
      # example, when the user's subscribed to your account for the first time.
      sig do
        params(
          user_id: String,
          account: String,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::FanGetSubscriptionHistoryResponse)
      end
      def get_subscription_history(
        # The OnlyFans ID of the User.
        user_id,
        # The Account ID
        account:,
        request_options: {}
      )
      end

      # Get a paginated list of fans for an Account. Newest fans are first. Paginate by
      # following `_pagination.next_page` until it is null (`data.hasMore` is the
      # authoritative flag). Do NOT use the page's item count to detect the last page —
      # OnlyFans occasionally returns fewer than `limit` items (e.g. 19 for limit=20) on
      # a non-final page because it filters entries server-side; no fans are skipped. To
      # track progress, GET `/{account}/me` returns data.subscribersCount (the current
      # active-subscriber count) as a total.
      sig do
        params(
          account: String,
          filter: Onlyfans::FanListActiveParams::Filter::OrHash,
          limit: Integer,
          offset: Integer,
          query: T.nilable(String),
          type: Onlyfans::FanListActiveParams::Type::OrSymbol,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::FanListActiveResponse)
      end
      def list_active(
        # The Account ID
        account,
        filter: nil,
        # Number of fans to return (1-20). OnlyFans does not allow more than 20 per page.
        # Must be at least 1. Must not be greater than 20.
        limit: nil,
        # Number of fans to skip. Must be at least 0.
        offset: nil,
        # Search within fan name/username.
        query: nil,
        # Filter by fan type.
        type: nil,
        request_options: {}
      )
      end

      # Get a paginated list of fans for an Account. Newest fans are first. Paginate by
      # following `_pagination.next_page` until it is null (`data.hasMore` is the
      # authoritative flag). Do NOT use the page's item count to detect the last page —
      # OnlyFans occasionally returns fewer than `limit` items (e.g. 19 for limit=20) on
      # a non-final page because it filters entries server-side; no fans are skipped.
      sig do
        params(
          account: String,
          filter: Onlyfans::FanListAllParams::Filter::OrHash,
          limit: Integer,
          offset: Integer,
          query: T.nilable(String),
          type: Onlyfans::FanListAllParams::Type::OrSymbol,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::FanListAllResponse)
      end
      def list_all(
        # The Account ID
        account,
        filter: nil,
        # Number of fans to return (1-20). OnlyFans does not allow more than 20 per page.
        # Must be at least 1. Must not be greater than 20.
        limit: nil,
        # Number of fans to skip. Must be at least 0.
        offset: nil,
        # Search within fan name/username.
        query: nil,
        # Filter by fan type.
        type: nil,
        request_options: {}
      )
      end

      # Get a paginated list of expired fans for an Account. Newest fans are first.
      # Paginate by following `_pagination.next_page` until it is null (`data.hasMore`
      # is the authoritative flag). Do NOT use the page's item count to detect the last
      # page — OnlyFans occasionally returns fewer than `limit` items (e.g. 19 for
      # limit=20) on a non-final page because it filters entries server-side; no fans
      # are skipped.
      sig do
        params(
          account: String,
          filter: Onlyfans::FanListExpiredParams::Filter::OrHash,
          limit: Integer,
          offset: Integer,
          query: T.nilable(String),
          type: Onlyfans::FanListExpiredParams::Type::OrSymbol,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::FanListExpiredResponse)
      end
      def list_expired(
        # The Account ID
        account,
        filter: nil,
        # Number of fans to return (1-20). OnlyFans does not allow more than 20 per page.
        # Must be at least 1. Must not be greater than 20.
        limit: nil,
        # Number of fans to skip. Must be at least 0.
        offset: nil,
        # Search within fan name/username.
        query: nil,
        # Filter by fan type.
        type: nil,
        request_options: {}
      )
      end

      # Get a paginated list fans, filterable by total, only new subscribers, or only
      # renewals. Newest fans are first.
      sig do
        params(
          account: String,
          end_date: T.nilable(String),
          limit: Integer,
          offset: Integer,
          start_date: T.nilable(String),
          type: T.nilable(Onlyfans::FanListLatestParams::Type::OrSymbol),
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::FanListLatestResponse)
      end
      def list_latest(
        # The Account ID
        account,
        # End date for filtering (required with start_date). Must be a valid date. Must
        # not be greater than 255 characters.
        end_date: nil,
        # Number of fans to return (1-50). Must be at least 1. Must not be greater
        # than 50.
        limit: nil,
        # Number of fans to skip. Must be at least 0.
        offset: nil,
        # Start date for filtering (required with end_date). Must be a valid date. Must
        # not be greater than 255 characters.
        start_date: nil,
        # Filter by type: total, renew, or new.
        type: nil,
        request_options: {}
      )
      end

      # Get a list of top fans sorted by spending. Filterable by total, subscriptions,
      # tips, messages, posts, or streams.
      sig do
        params(
          account: String,
          by: T.nilable(Onlyfans::FanListTopParams::By::OrSymbol),
          end_date: T.nilable(String),
          start_date: T.nilable(String),
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::FanListTopResponse)
      end
      def list_top(
        # The Account ID
        account,
        # Sort by: total (default), subscribes, tips, messages, post, streams.
        by: nil,
        # End date for filtering (required with start_date). Must be a valid date. Must
        # not be greater than 255 characters.
        end_date: nil,
        # Start date for filtering (required with end_date). Must be a valid date. Must
        # not be greater than 255 characters.
        start_date: nil,
        request_options: {}
      )
      end

      # Change the Fan's Custom Name shown in OnlyFans
      sig do
        params(
          fan_id: String,
          account: String,
          custom_name: String,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::FanSetCustomNameResponse)
      end
      def set_custom_name(
        # Path param: Fan's OnlyFans ID
        fan_id,
        # Path param: The Account ID
        account:,
        # Body param: New Custom Name for a Fan. Send empty string (`""`) or `null` to
        # clear out the custom name.
        custom_name:,
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
