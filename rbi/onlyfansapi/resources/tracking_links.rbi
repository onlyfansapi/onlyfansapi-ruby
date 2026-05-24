# typed: strong

module Onlyfansapi
  module Resources
    # APIs for managing tracking links
    class TrackingLinks
      # APIs for managing tracking links
      sig { returns(Onlyfansapi::Resources::TrackingLinks::Tags) }
      attr_reader :tags

      # Create a new Tracking Link for the account
      sig do
        params(
          account: String,
          name: String,
          tags: T::Array[String],
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::TrackingLinkCreateResponse)
      end
      def create(
        # The Account ID
        account,
        # The name of the Tracking Link
        name:,
        # Array of tag names to add to the tracking link.
        tags: nil,
        request_options: {}
      )
      end

      # Get individual Tracking Link details and it's revenue data
      sig do
        params(
          tracking_link_id: String,
          account: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::TrackingLinkRetrieveResponse)
      end
      def retrieve(
        # The ID of the tracking link.
        tracking_link_id,
        # The Account ID
        account:,
        request_options: {}
      )
      end

      # List all tracking links for the account and revenue data
      sig do
        params(
          account: String,
          end_date: T.nilable(String),
          limit: T.nilable(Integer),
          offset: T.nilable(Integer),
          sort: T.nilable(Onlyfansapi::TrackingLinkListParams::Sort::OrSymbol),
          sortby:
            T.nilable(Onlyfansapi::TrackingLinkListParams::Sortby::OrSymbol),
          start_date: T.nilable(String),
          synchronous: T.nilable(T::Boolean),
          with_deleted: T.nilable(T::Boolean),
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::TrackingLinkListResponse)
      end
      def list(
        # The Account ID
        account,
        # The end date for Tracking Links. Keep empty to get all.
        end_date: nil,
        # The number of tracking links to return. Default `3`
        limit: nil,
        # The offset used for pagination. Default `0`
        offset: nil,
        # Sort the results. Default `desc`
        sort: nil,
        # Sort by subscriber count (claims), or creation date
        sortby: nil,
        # The start date for Tracking Links. Keep empty to get all.
        start_date: nil,
        # Wait for the revenue data to finish processing, instead of processing in the
        # background. **Will result in longer response times, use with caution**. Default
        # `false`
        synchronous: nil,
        # Whether or not to include deleted tracking links in the response. Default
        # `false`
        with_deleted: nil,
        request_options: {}
      )
      end

      # Delete a Tracking Link
      sig do
        params(
          tracking_link_id: String,
          account: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::TrackingLinkDeleteResponse)
      end
      def delete(
        # The ID of the tracking link.
        tracking_link_id,
        # The Account ID
        account:,
        request_options: {}
      )
      end

      # Get per-link time-to-profit cohort ARPS windows for a specific Tracking Link
      sig do
        params(
          tracking_link_id: String,
          account: String,
          acquisition_end: String,
          acquisition_start: String,
          revenue_basis:
            Onlyfansapi::TrackingLinkGetCohortArpsParams::RevenueBasis::OrSymbol,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).void
      end
      def get_cohort_arps(
        # Path param: The ID of the tracking link.
        tracking_link_id,
        # Path param: The Account ID
        account:,
        # Query param: Optional acquisition range end date
        acquisition_end: nil,
        # Query param: Optional acquisition range start date
        acquisition_start: nil,
        # Query param: Revenue basis. Defaults to `net`.
        revenue_basis: nil,
        request_options: {}
      )
      end

      # Get dashboard-style summary plus daily and monthly metrics for a specific
      # Tracking Link. <Callout title='Important information'> - `daily_metrics` returns
      # **incremental per-day values**, not cumulative totals. - Cumulative totals are
      # available in the `summary` section. - Historical daily data is only available
      # from when we began recording daily link stats. - Daily data can only be tracked
      # from the date the account was connected to OnlyFans API; earlier periods are not
      # available. </Callout>
      sig do
        params(
          tracking_link_id: String,
          account: String,
          date_end: String,
          date_start: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::TrackingLinkGetStatsResponse)
      end
      def get_stats(
        # Path param: The ID of the tracking link.
        tracking_link_id,
        # Path param: The Account ID
        account:,
        # Query param: Optional stats range end date
        date_end: nil,
        # Query param: Optional stats range start date
        date_start: nil,
        request_options: {}
      )
      end

      # Get list of spenders who made purchases through a Tracking Link
      sig do
        params(
          tracking_link_id: String,
          account: String,
          limit: Integer,
          min_spend: Float,
          offset: Integer,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::TrackingLinkListSpendersResponse)
      end
      def list_spenders(
        # Path param: The ID of the Tracking Link. Can be retrieved from the above store
        # and list endpoints.
        tracking_link_id,
        # Path param: The Account ID
        account:,
        # Query param: The number of spenders to return per page. Default `50`.
        limit: nil,
        # Query param: Minimal spend of a fan. Default `1`. Must be at least 1.
        min_spend: nil,
        # Query param: The offset used for pagination. Default `0`.
        offset: nil,
        request_options: {}
      )
      end

      # Get list of subscribers who joined through a Tracking Link
      sig do
        params(
          tracking_link_id: String,
          account: String,
          limit: Integer,
          offset: Integer,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::TrackingLinkListSubscribersResponse)
      end
      def list_subscribers(
        # Path param: The ID of the Tracking Link. Can be retrieved from the above store
        # and list endpoints.
        tracking_link_id,
        # Path param: The Account ID
        account:,
        # Query param: The number of subscribers to return per page. Default `10`
        limit:,
        # Query param: The offset used for pagination. Default `0`
        offset:,
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
