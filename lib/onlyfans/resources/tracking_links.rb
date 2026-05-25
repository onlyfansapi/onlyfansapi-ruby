# frozen_string_literal: true

module Onlyfans
  module Resources
    # APIs for managing tracking links
    class TrackingLinks
      # APIs for managing tracking links
      # @return [Onlyfans::Resources::TrackingLinks::Tags]
      attr_reader :tags

      # Create a new Tracking Link for the account
      #
      # @overload create(account, name:, tags: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param name [String] The name of the Tracking Link
      #
      # @param tags [Array<String>] Array of tag names to add to the tracking link.
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::TrackingLinkCreateResponse]
      #
      # @see Onlyfans::Models::TrackingLinkCreateParams
      def create(account, params)
        parsed, options = Onlyfans::TrackingLinkCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/%1$s/tracking-links", account],
          body: parsed,
          model: Onlyfans::Models::TrackingLinkCreateResponse,
          options: options
        )
      end

      # Get individual Tracking Link details and it's revenue data
      #
      # @overload retrieve(tracking_link_id, account:, request_options: {})
      #
      # @param tracking_link_id [String] The ID of the tracking link.
      #
      # @param account [String] The Account ID
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::TrackingLinkRetrieveResponse]
      #
      # @see Onlyfans::Models::TrackingLinkRetrieveParams
      def retrieve(tracking_link_id, params)
        parsed, options = Onlyfans::TrackingLinkRetrieveParams.dump_request(params)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/%1$s/tracking-links/%2$s", account, tracking_link_id],
          model: Onlyfans::Models::TrackingLinkRetrieveResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Onlyfans::Models::TrackingLinkListParams} for more details.
      #
      # List all tracking links for the account and revenue data
      #
      # @overload list(account, end_date: nil, limit: nil, offset: nil, sort: nil, sortby: nil, start_date: nil, synchronous: nil, with_deleted: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param end_date [String, nil] The end date for Tracking Links. Keep empty to get all.
      #
      # @param limit [Integer, nil] The number of tracking links to return. Default `3`
      #
      # @param offset [Integer, nil] The offset used for pagination. Default `0`
      #
      # @param sort [Symbol, Onlyfans::Models::TrackingLinkListParams::Sort, nil] Sort the results. Default `desc`
      #
      # @param sortby [Symbol, Onlyfans::Models::TrackingLinkListParams::Sortby, nil] Sort by subscriber count (claims), or creation date
      #
      # @param start_date [String, nil] The start date for Tracking Links. Keep empty to get all.
      #
      # @param synchronous [Boolean, nil] Wait for the revenue data to finish processing, instead of processing in the bac
      #
      # @param with_deleted [Boolean, nil] Whether or not to include deleted tracking links in the response. Default `false
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::TrackingLinkListResponse]
      #
      # @see Onlyfans::Models::TrackingLinkListParams
      def list(account, params = {})
        parsed, options = Onlyfans::TrackingLinkListParams.dump_request(params)
        query = Onlyfans::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/%1$s/tracking-links", account],
          query: query.transform_keys(end_date: "endDate", start_date: "startDate"),
          model: Onlyfans::Models::TrackingLinkListResponse,
          options: options
        )
      end

      # Delete a Tracking Link
      #
      # @overload delete(tracking_link_id, account:, request_options: {})
      #
      # @param tracking_link_id [String] The ID of the tracking link.
      #
      # @param account [String] The Account ID
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::TrackingLinkDeleteResponse]
      #
      # @see Onlyfans::Models::TrackingLinkDeleteParams
      def delete(tracking_link_id, params)
        parsed, options = Onlyfans::TrackingLinkDeleteParams.dump_request(params)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :delete,
          path: ["api/%1$s/tracking-links/%2$s", account, tracking_link_id],
          model: Onlyfans::Models::TrackingLinkDeleteResponse,
          options: options
        )
      end

      # Get per-link time-to-profit cohort ARPS windows for a specific Tracking Link
      #
      # @overload get_cohort_arps(tracking_link_id, account:, acquisition_end: nil, acquisition_start: nil, revenue_basis: nil, request_options: {})
      #
      # @param tracking_link_id [String] Path param: The ID of the tracking link.
      #
      # @param account [String] Path param: The Account ID
      #
      # @param acquisition_end [String] Query param: Optional acquisition range end date
      #
      # @param acquisition_start [String] Query param: Optional acquisition range start date
      #
      # @param revenue_basis [Symbol, Onlyfans::Models::TrackingLinkGetCohortArpsParams::RevenueBasis] Query param: Revenue basis. Defaults to `net`.
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Onlyfans::Models::TrackingLinkGetCohortArpsParams
      def get_cohort_arps(tracking_link_id, params)
        parsed, options = Onlyfans::TrackingLinkGetCohortArpsParams.dump_request(params)
        query = Onlyfans::Internal::Util.encode_query_params(parsed)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/%1$s/tracking-links/%2$s/cohort-arps", account, tracking_link_id],
          query: query,
          model: NilClass,
          options: options
        )
      end

      # Get dashboard-style summary plus daily and monthly metrics for a specific
      # Tracking Link. <Callout title='Important information'> - `daily_metrics` returns
      # **incremental per-day values**, not cumulative totals. - Cumulative totals are
      # available in the `summary` section. - Historical daily data is only available
      # from when we began recording daily link stats. - Daily data can only be tracked
      # from the date the account was connected to OnlyFans API; earlier periods are not
      # available. </Callout>
      #
      # @overload get_stats(tracking_link_id, account:, date_end: nil, date_start: nil, request_options: {})
      #
      # @param tracking_link_id [String] Path param: The ID of the tracking link.
      #
      # @param account [String] Path param: The Account ID
      #
      # @param date_end [String] Query param: Optional stats range end date
      #
      # @param date_start [String] Query param: Optional stats range start date
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::TrackingLinkGetStatsResponse]
      #
      # @see Onlyfans::Models::TrackingLinkGetStatsParams
      def get_stats(tracking_link_id, params)
        parsed, options = Onlyfans::TrackingLinkGetStatsParams.dump_request(params)
        query = Onlyfans::Internal::Util.encode_query_params(parsed)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/%1$s/tracking-links/%2$s/stats", account, tracking_link_id],
          query: query,
          model: Onlyfans::Models::TrackingLinkGetStatsResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Onlyfans::Models::TrackingLinkListSpendersParams} for more details.
      #
      # Get list of spenders who made purchases through a Tracking Link
      #
      # @overload list_spenders(tracking_link_id, account:, limit: nil, min_spend: nil, offset: nil, request_options: {})
      #
      # @param tracking_link_id [String] Path param: The ID of the Tracking Link. Can be retrieved from the above store a
      #
      # @param account [String] Path param: The Account ID
      #
      # @param limit [Integer] Query param: The number of spenders to return per page. Default `50`.
      #
      # @param min_spend [Float] Query param: Minimal spend of a fan. Default `1`. Must be at least 1.
      #
      # @param offset [Integer] Query param: The offset used for pagination. Default `0`.
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::TrackingLinkListSpendersResponse]
      #
      # @see Onlyfans::Models::TrackingLinkListSpendersParams
      def list_spenders(tracking_link_id, params)
        parsed, options = Onlyfans::TrackingLinkListSpendersParams.dump_request(params)
        query = Onlyfans::Internal::Util.encode_query_params(parsed)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/%1$s/tracking-links/%2$s/spenders", account, tracking_link_id],
          query: query.transform_keys(min_spend: "minSpend"),
          model: Onlyfans::Models::TrackingLinkListSpendersResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Onlyfans::Models::TrackingLinkListSubscribersParams} for more details.
      #
      # Get list of subscribers who joined through a Tracking Link
      #
      # @overload list_subscribers(tracking_link_id, account:, limit:, offset:, request_options: {})
      #
      # @param tracking_link_id [String] Path param: The ID of the Tracking Link. Can be retrieved from the above store a
      #
      # @param account [String] Path param: The Account ID
      #
      # @param limit [Integer] Query param: The number of subscribers to return per page. Default `10`
      #
      # @param offset [Integer] Query param: The offset used for pagination. Default `0`
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::TrackingLinkListSubscribersResponse]
      #
      # @see Onlyfans::Models::TrackingLinkListSubscribersParams
      def list_subscribers(tracking_link_id, params)
        parsed, options = Onlyfans::TrackingLinkListSubscribersParams.dump_request(params)
        query = Onlyfans::Internal::Util.encode_query_params(parsed)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/%1$s/tracking-links/%2$s/subscribers", account, tracking_link_id],
          query: query,
          model: Onlyfans::Models::TrackingLinkListSubscribersResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Onlyfans::Client]
      def initialize(client:)
        @client = client
        @tags = Onlyfans::Resources::TrackingLinks::Tags.new(client: client)
      end
    end
  end
end
