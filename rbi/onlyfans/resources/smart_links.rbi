# typed: strong

module Onlyfans
  module Resources
    # APIs for managing Smart Links (Free Trial Links and Tracking Links with pooled
    # inventory)
    class SmartLinks
      # Create a new Smart Link for the account. Smart Links are pooled Free Trial or
      # Tracking links that rotate inventory automatically.
      sig do
        params(
          account_id: String,
          link_type: Onlyfans::SmartLinkCreateParams::LinkType::OrSymbol,
          name: String,
          free_trial_days: Integer,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::SmartLinkCreateResponse)
      end
      def create(
        # The prefixed ID of the account to create the Smart Link for
        account_id:,
        # The type of Smart Link to create
        link_type:,
        # The name of the Smart Link
        name:,
        # The number of free trial days (required if `link_type` is `free_trial`). Must be
        # between 1 and 360.
        free_trial_days: nil,
        request_options: {}
      )
      end

      # Get a specific Smart Link by its ID
      sig do
        params(
          smart_link_id: String,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::SmartLinkRetrieveResponse)
      end
      def retrieve(
        # The ID of the Smart Link
        smart_link_id,
        request_options: {}
      )
      end

      # List all Smart Links
      sig do
        params(
          account_ids: T.nilable(String),
          filter: Onlyfans::SmartLinkListParams::Filter::OrHash,
          limit: Integer,
          meta_pixel_ids: T.nilable(String),
          name: T.nilable(String),
          offset: Integer,
          pixel_ids: T.nilable(String),
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::SmartLinkListResponse)
      end
      def list(
        # Comma-separated account prefixed IDs to include.
        account_ids: nil,
        filter: nil,
        # The number of Smart Links to return. Default `50`. Must be at least 1. Must not
        # be greater than 1000.
        limit: nil,
        # Deprecated alias for `pixel_ids`. Comma-separated Pixel IDs to include.
        meta_pixel_ids: nil,
        # Filter Smart Links by name. Must not be greater than 255 characters.
        name: nil,
        # The offset used for pagination. Default `0`. Must be at least 0.
        offset: nil,
        # Comma-separated ad platform Pixel IDs to include.
        pixel_ids: nil,
        request_options: {}
      )
      end

      # Delete a Smart Link by its ID
      sig do
        params(
          smart_link_id: String,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::SmartLinkDeleteResponse)
      end
      def delete(
        # The ID of the Smart Link
        smart_link_id,
        request_options: {}
      )
      end

      # Query smart link clicks in a date range with optional bot/duplicate filtering
      sig do
        params(
          smart_link_id: String,
          date_end: String,
          date_start: String,
          include_bots: T::Boolean,
          include_duplicates: T::Boolean,
          limit: Integer,
          offset: Integer,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::SmartLinkListClicksResponse)
      end
      def list_clicks(
        # The ID of the smart link.
        smart_link_id,
        # Optional report range end date
        date_end: nil,
        # Optional report range start date
        date_start: nil,
        # Include clicks marked as bots. Default `true`
        include_bots: nil,
        # Include duplicate clicks. Default `true`
        include_duplicates: nil,
        # Rows per page. Default `100`
        limit: nil,
        # Offset for pagination. Default `0`
        offset: nil,
        request_options: {}
      )
      end

      # Query smart link conversions in a date range with optional bot/duplicate and
      # conversion type filtering
      sig do
        params(
          smart_link_id: String,
          conversion_type:
            Onlyfans::SmartLinkListConversionsParams::ConversionType::OrSymbol,
          date_end: String,
          date_start: String,
          include_bots: T::Boolean,
          include_duplicates: T::Boolean,
          limit: Integer,
          offset: Integer,
          onlyfans_user_id: String,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::SmartLinkListConversionsResponse)
      end
      def list_conversions(
        # The ID of the smart link.
        smart_link_id,
        # Optional conversion type filter
        conversion_type: nil,
        # Optional report range end date
        date_end: nil,
        # Optional report range start date
        date_start: nil,
        # Include conversions from clicks marked as bots. Default `true`
        include_bots: nil,
        # Include conversions from duplicate clicks. Default `true`
        include_duplicates: nil,
        # Rows per page. Default `100`
        limit: nil,
        # Offset for pagination. Default `0`
        offset: nil,
        # Optional - Search for conversions by OnlyFans User ID
        onlyfans_user_id: nil,
        request_options: {}
      )
      end

      # Query attributed Smart Link fans with aggregate fan metrics and subscriber
      # attribution metadata
      sig do
        params(
          smart_link_id: String,
          has_messages: T::Boolean,
          limit: Integer,
          min_messages_sent_by_fan: Integer,
          min_revenue_net: Float,
          min_tips_net: Float,
          offset: Integer,
          previously_subscribed: T::Boolean,
          sort: Onlyfans::SmartLinkListFansParams::Sort::OrSymbol,
          subscribed_using_promo: T::Boolean,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::SmartLinkListFansResponse)
      end
      def list_fans(
        # The ID of the smart link.
        smart_link_id,
        # Optional - Filter to fans with or without fan-sent messages
        has_messages: nil,
        # Rows per page. Default `100`
        limit: nil,
        # Optional minimum number of messages sent by fan
        min_messages_sent_by_fan: nil,
        # Optional minimum net revenue
        min_revenue_net: nil,
        # Optional minimum net tips
        min_tips_net: nil,
        # Offset for pagination. Default `0`
        offset: nil,
        # Optional - Filter to returning subscribers (fans previously subscribed before
        # this subscription)
        previously_subscribed: nil,
        # Optional sort field. Default `-revenue_net`
        sort: nil,
        # Optional - Filter to fans who subscribed via a promotion/offer
        subscribed_using_promo: nil,
        request_options: {}
      )
      end

      # Compatibility endpoint returning fans with attributed spend through a Smart Link
      sig do
        params(
          smart_link_id: String,
          limit: Integer,
          min_spend: Float,
          offset: Integer,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::SmartLinkListSpendersResponse)
      end
      def list_spenders(
        # The ID of the smart link.
        smart_link_id,
        # The number of spenders to return per page. Default `50`
        limit: nil,
        # Minimal spend of a fan. Default `1`
        min_spend: nil,
        # The offset used for pagination. Default `0`
        offset: nil,
        request_options: {}
      )
      end

      # Get per-link time-to-profit cohort ARPS windows for a specific Smart Link
      sig do
        params(
          smart_link_id: String,
          acquisition_end: String,
          acquisition_start: String,
          revenue_basis:
            Onlyfans::SmartLinkRetrieveCohortArpsParams::RevenueBasis::OrSymbol,
          request_options: Onlyfans::RequestOptions::OrHash
        ).void
      end
      def retrieve_cohort_arps(
        # The ID of the smart link.
        smart_link_id,
        # Optional acquisition range end date
        acquisition_end: nil,
        # Optional acquisition range start date
        acquisition_start: nil,
        # Revenue basis. Defaults to `net`.
        revenue_basis: nil,
        request_options: {}
      )
      end

      # Get dashboard-style summary plus daily and monthly metrics for a specific Smart
      # Link on the current team
      sig do
        params(
          smart_link_id: String,
          date_end: String,
          date_start: String,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::SmartLinkRetrieveStatsResponse)
      end
      def retrieve_stats(
        # The ID of the smart link.
        smart_link_id,
        # Optional stats range end date
        date_end: nil,
        # Optional stats range start date
        date_start: nil,
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
