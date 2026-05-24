# frozen_string_literal: true

module Onlyfansapi
  module Resources
    # APIs for managing Smart Links (Free Trial Links and Tracking Links with pooled
    # inventory)
    class SmartLinks
      # Some parameter documentations has been truncated, see
      # {Onlyfansapi::Models::SmartLinkCreateParams} for more details.
      #
      # Create a new Smart Link for the account. Smart Links are pooled Free Trial or
      # Tracking links that rotate inventory automatically.
      #
      # @overload create(account_id:, link_type:, name:, free_trial_days: nil, request_options: {})
      #
      # @param account_id [String] The prefixed ID of the account to create the Smart Link for
      #
      # @param link_type [Symbol, Onlyfansapi::Models::SmartLinkCreateParams::LinkType] The type of Smart Link to create
      #
      # @param name [String] The name of the Smart Link
      #
      # @param free_trial_days [Integer] The number of free trial days (required if `link_type` is `free_trial`). Must be
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::SmartLinkCreateResponse]
      #
      # @see Onlyfansapi::Models::SmartLinkCreateParams
      def create(params)
        parsed, options = Onlyfansapi::SmartLinkCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/smart-links",
          body: parsed,
          model: Onlyfansapi::Models::SmartLinkCreateResponse,
          options: options
        )
      end

      # Get a specific Smart Link by its ID
      #
      # @overload retrieve(smart_link_id, request_options: {})
      #
      # @param smart_link_id [String] The ID of the Smart Link
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::SmartLinkRetrieveResponse]
      #
      # @see Onlyfansapi::Models::SmartLinkRetrieveParams
      def retrieve(smart_link_id, params = {})
        @client.request(
          method: :get,
          path: ["api/smart-links/%1$s", smart_link_id],
          model: Onlyfansapi::Models::SmartLinkRetrieveResponse,
          options: params[:request_options]
        )
      end

      # List all Smart Links
      #
      # @overload list(account_ids: nil, limit: nil, meta_pixel_ids: nil, name: nil, offset: nil, request_options: {})
      #
      # @param account_ids [String] Comma-separated account prefixed IDs to include.
      #
      # @param limit [Integer] The number of Smart Links to return. Default `50`
      #
      # @param meta_pixel_ids [String] Comma-separated Meta Pixel IDs to include.
      #
      # @param name [String] Filter Smart Links by name.
      #
      # @param offset [Integer] The offset used for pagination. Default `0`
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::SmartLinkListResponse]
      #
      # @see Onlyfansapi::Models::SmartLinkListParams
      def list(params = {})
        parsed, options = Onlyfansapi::SmartLinkListParams.dump_request(params)
        query = Onlyfansapi::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "api/smart-links",
          query: query,
          model: Onlyfansapi::Models::SmartLinkListResponse,
          options: options
        )
      end

      # Delete a Smart Link by its ID
      #
      # @overload delete(smart_link_id, request_options: {})
      #
      # @param smart_link_id [String] The ID of the Smart Link
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::SmartLinkDeleteResponse]
      #
      # @see Onlyfansapi::Models::SmartLinkDeleteParams
      def delete(smart_link_id, params = {})
        @client.request(
          method: :delete,
          path: ["api/smart-links/%1$s", smart_link_id],
          model: Onlyfansapi::Models::SmartLinkDeleteResponse,
          options: params[:request_options]
        )
      end

      # Query smart link clicks in a date range with optional bot/duplicate filtering
      #
      # @overload list_clicks(smart_link_id, date_end: nil, date_start: nil, include_bots: nil, include_duplicates: nil, limit: nil, offset: nil, request_options: {})
      #
      # @param smart_link_id [String] The ID of the smart link.
      #
      # @param date_end [String] Optional report range end date
      #
      # @param date_start [String] Optional report range start date
      #
      # @param include_bots [Boolean] Include clicks marked as bots. Default `true`
      #
      # @param include_duplicates [Boolean] Include duplicate clicks. Default `true`
      #
      # @param limit [Integer] Rows per page. Default `100`
      #
      # @param offset [Integer] Offset for pagination. Default `0`
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::SmartLinkListClicksResponse]
      #
      # @see Onlyfansapi::Models::SmartLinkListClicksParams
      def list_clicks(smart_link_id, params = {})
        parsed, options = Onlyfansapi::SmartLinkListClicksParams.dump_request(params)
        query = Onlyfansapi::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/smart-links/%1$s/clicks", smart_link_id],
          query: query,
          model: Onlyfansapi::Models::SmartLinkListClicksResponse,
          options: options
        )
      end

      # Query smart link conversions in a date range with optional bot/duplicate and
      # conversion type filtering
      #
      # @overload list_conversions(smart_link_id, conversion_type: nil, date_end: nil, date_start: nil, include_bots: nil, include_duplicates: nil, limit: nil, offset: nil, onlyfans_user_id: nil, request_options: {})
      #
      # @param smart_link_id [String] The ID of the smart link.
      #
      # @param conversion_type [Symbol, Onlyfansapi::Models::SmartLinkListConversionsParams::ConversionType] Optional conversion type filter
      #
      # @param date_end [String] Optional report range end date
      #
      # @param date_start [String] Optional report range start date
      #
      # @param include_bots [Boolean] Include conversions from clicks marked as bots. Default `true`
      #
      # @param include_duplicates [Boolean] Include conversions from duplicate clicks. Default `true`
      #
      # @param limit [Integer] Rows per page. Default `100`
      #
      # @param offset [Integer] Offset for pagination. Default `0`
      #
      # @param onlyfans_user_id [String] Optional - Search for conversions by OnlyFans User ID
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::SmartLinkListConversionsResponse]
      #
      # @see Onlyfansapi::Models::SmartLinkListConversionsParams
      def list_conversions(smart_link_id, params = {})
        parsed, options = Onlyfansapi::SmartLinkListConversionsParams.dump_request(params)
        query = Onlyfansapi::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/smart-links/%1$s/conversions", smart_link_id],
          query: query,
          model: Onlyfansapi::Models::SmartLinkListConversionsResponse,
          options: options
        )
      end

      # Query attributed Smart Link fans with aggregate fan metrics and subscriber
      # attribution metadata
      #
      # @overload list_fans(smart_link_id, has_messages: nil, limit: nil, min_messages_sent_by_fan: nil, min_revenue_net: nil, min_tips_net: nil, offset: nil, sort: nil, request_options: {})
      #
      # @param smart_link_id [String] The ID of the smart link.
      #
      # @param has_messages [Boolean] Optional - Filter to fans with or without fan-sent messages
      #
      # @param limit [Integer] Rows per page. Default `100`
      #
      # @param min_messages_sent_by_fan [Integer] Optional minimum number of messages sent by fan
      #
      # @param min_revenue_net [Float] Optional minimum net revenue
      #
      # @param min_tips_net [Float] Optional minimum net tips
      #
      # @param offset [Integer] Offset for pagination. Default `0`
      #
      # @param sort [Symbol, Onlyfansapi::Models::SmartLinkListFansParams::Sort] Optional sort field. Default `-revenue_net`
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::SmartLinkListFansResponse]
      #
      # @see Onlyfansapi::Models::SmartLinkListFansParams
      def list_fans(smart_link_id, params = {})
        parsed, options = Onlyfansapi::SmartLinkListFansParams.dump_request(params)
        query = Onlyfansapi::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/smart-links/%1$s/fans", smart_link_id],
          query: query,
          model: Onlyfansapi::Models::SmartLinkListFansResponse,
          options: options
        )
      end

      # Compatibility endpoint returning fans with attributed spend through a Smart Link
      #
      # @overload list_spenders(smart_link_id, limit: nil, min_spend: nil, offset: nil, request_options: {})
      #
      # @param smart_link_id [String] The ID of the smart link.
      #
      # @param limit [Integer] The number of spenders to return per page. Default `50`
      #
      # @param min_spend [Float] Minimal spend of a fan. Default `1`
      #
      # @param offset [Integer] The offset used for pagination. Default `0`
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::SmartLinkListSpendersResponse]
      #
      # @see Onlyfansapi::Models::SmartLinkListSpendersParams
      def list_spenders(smart_link_id, params = {})
        parsed, options = Onlyfansapi::SmartLinkListSpendersParams.dump_request(params)
        query = Onlyfansapi::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/smart-links/%1$s/spenders", smart_link_id],
          query: query.transform_keys(min_spend: "minSpend"),
          model: Onlyfansapi::Models::SmartLinkListSpendersResponse,
          options: options
        )
      end

      # Get per-link time-to-profit cohort ARPS windows for a specific Smart Link
      #
      # @overload retrieve_cohort_arps(smart_link_id, acquisition_end: nil, acquisition_start: nil, revenue_basis: nil, request_options: {})
      #
      # @param smart_link_id [String] The ID of the smart link.
      #
      # @param acquisition_end [String] Optional acquisition range end date
      #
      # @param acquisition_start [String] Optional acquisition range start date
      #
      # @param revenue_basis [Symbol, Onlyfansapi::Models::SmartLinkRetrieveCohortArpsParams::RevenueBasis] Revenue basis. Defaults to `net`.
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Onlyfansapi::Models::SmartLinkRetrieveCohortArpsParams
      def retrieve_cohort_arps(smart_link_id, params = {})
        parsed, options = Onlyfansapi::SmartLinkRetrieveCohortArpsParams.dump_request(params)
        query = Onlyfansapi::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/smart-links/%1$s/cohort-arps", smart_link_id],
          query: query,
          model: NilClass,
          options: options
        )
      end

      # Get dashboard-style summary plus daily and monthly metrics for a specific Smart
      # Link on the current team
      #
      # @overload retrieve_stats(smart_link_id, date_end: nil, date_start: nil, request_options: {})
      #
      # @param smart_link_id [String] The ID of the smart link.
      #
      # @param date_end [String] Optional stats range end date
      #
      # @param date_start [String] Optional stats range start date
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::SmartLinkRetrieveStatsResponse]
      #
      # @see Onlyfansapi::Models::SmartLinkRetrieveStatsParams
      def retrieve_stats(smart_link_id, params = {})
        parsed, options = Onlyfansapi::SmartLinkRetrieveStatsParams.dump_request(params)
        query = Onlyfansapi::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/smart-links/%1$s/stats", smart_link_id],
          query: query,
          model: Onlyfansapi::Models::SmartLinkRetrieveStatsResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Onlyfansapi::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
