# frozen_string_literal: true

module Onlyfans
  module Resources
    # APIs for managing Free Trial Links
    class TrialLinks
      # APIs for managing Free Trial Links
      # @return [Onlyfans::Resources::TrialLinks::Tags]
      attr_reader :tags

      # Some parameter documentations has been truncated, see
      # {Onlyfans::Models::TrialLinkCreateParams} for more details.
      #
      # Create a new free trial link for the account
      #
      # @overload create(account, duration:, offer_expiration:, offer_limit:, name: nil, tags: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param duration [Integer, Onlyfans::Models::TrialLinkCreateParams::Duration] The duration of the free trial **in days**. Must be **1**, **3**, **7**, **14**,
      #
      # @param offer_expiration [Integer] The trial link expiration **in days (from now)**. Must either be **0** (to never
      #
      # @param offer_limit [Integer, Onlyfans::Models::TrialLinkCreateParams::OfferLimit] How many people can use this offer. Must either be **0** (for no limit), or a nu
      #
      # @param name [String, nil] The name of the trail link (optional). Cannot be longer than 64 characters.
      #
      # @param tags [Array<String>] Array of tag names to add to the trial link.
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::TrialLinkCreateResponse]
      #
      # @see Onlyfans::Models::TrialLinkCreateParams
      def create(account, params)
        parsed, options = Onlyfans::TrialLinkCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/%1$s/trial-links", account],
          body: parsed,
          model: Onlyfans::Models::TrialLinkCreateResponse,
          options: options
        )
      end

      # Get individual Free Trial Link details and it's revenue data
      #
      # @overload retrieve(trial_link_id, account:, request_options: {})
      #
      # @param trial_link_id [String] The ID of the trial link.
      #
      # @param account [String] The Account ID
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::TrialLinkRetrieveResponse]
      #
      # @see Onlyfans::Models::TrialLinkRetrieveParams
      def retrieve(trial_link_id, params)
        parsed, options = Onlyfans::TrialLinkRetrieveParams.dump_request(params)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/%1$s/trial-links/%2$s", account, trial_link_id],
          model: Onlyfans::Models::TrialLinkRetrieveResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Onlyfans::Models::TrialLinkListParams} for more details.
      #
      # List all free trial links for the account, including the details and statistics
      #
      # @overload list(account, limit:, offset:, field: nil, sort: nil, synchronous: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param limit [Integer] The number of trial links to return. Default `10`
      #
      # @param offset [Integer] The offset used for pagination. Default `0`
      #
      # @param field [Symbol, Onlyfans::Models::TrialLinkListParams::Field, nil] Sort the results by a field. Default `create_date`
      #
      # @param sort [Symbol, Onlyfans::Models::TrialLinkListParams::Sort, nil] Sort the results. Default `desc`
      #
      # @param synchronous [Boolean, nil] Wait for the revenue data to finish processing, instead of processing in the bac
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::TrialLinkListResponse]
      #
      # @see Onlyfans::Models::TrialLinkListParams
      def list(account, params)
        parsed, options = Onlyfans::TrialLinkListParams.dump_request(params)
        query = Onlyfans::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/%1$s/trial-links", account],
          query: query,
          model: Onlyfans::Models::TrialLinkListResponse,
          options: options
        )
      end

      # Delete a free trial link by its ID
      #
      # @overload delete(trial_link_id, account:, request_options: {})
      #
      # @param trial_link_id [String] The ID of the trial link.
      #
      # @param account [String] The Account ID
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::TrialLinkDeleteResponse]
      #
      # @see Onlyfans::Models::TrialLinkDeleteParams
      def delete(trial_link_id, params)
        parsed, options = Onlyfans::TrialLinkDeleteParams.dump_request(params)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :delete,
          path: ["api/%1$s/trial-links/%2$s", account, trial_link_id],
          model: Onlyfans::Models::TrialLinkDeleteResponse,
          options: options
        )
      end

      # Only available if we already scraped subscribers and calculated revenue per fan
      #
      # @overload list_spenders(trial_link_id, account:, limit: nil, min_spend: nil, offset: nil, request_options: {})
      #
      # @param trial_link_id [String] Path param: The ID of the free trial link to get spenders for
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
      # @return [Onlyfans::Models::TrialLinkListSpendersResponse]
      #
      # @see Onlyfans::Models::TrialLinkListSpendersParams
      def list_spenders(trial_link_id, params)
        parsed, options = Onlyfans::TrialLinkListSpendersParams.dump_request(params)
        query = Onlyfans::Internal::Util.encode_query_params(parsed)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/%1$s/trial-links/%2$s/spenders", account, trial_link_id],
          query: query.transform_keys(min_spend: "minSpend"),
          model: Onlyfans::Models::TrialLinkListSpendersResponse,
          options: options
        )
      end

      # Get list of subscribers who joined through a Free Trial Link
      #
      # @overload list_subscribers(trial_link_id, account:, limit:, offset:, request_options: {})
      #
      # @param trial_link_id [String] Path param: The ID of the trial link.
      #
      # @param account [String] Path param: The Account ID
      #
      # @param limit [Integer] Query param: The number of subscribers to return per page. Default `10`
      #
      # @param offset [Integer] Query param: The offset used for pagination. Default `0`
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::TrialLinkListSubscribersResponse]
      #
      # @see Onlyfans::Models::TrialLinkListSubscribersParams
      def list_subscribers(trial_link_id, params)
        parsed, options = Onlyfans::TrialLinkListSubscribersParams.dump_request(params)
        query = Onlyfans::Internal::Util.encode_query_params(parsed)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/%1$s/trial-links/%2$s/subscribers", account, trial_link_id],
          query: query,
          model: Onlyfans::Models::TrialLinkListSubscribersResponse,
          options: options
        )
      end

      # Get per-link time-to-profit cohort ARPS windows for a specific Free Trial Link
      #
      # @overload retrieve_cohort_arps(trial_link_id, account:, acquisition_end: nil, acquisition_start: nil, revenue_basis: nil, request_options: {})
      #
      # @param trial_link_id [String] Path param: The ID of the trial link.
      #
      # @param account [String] Path param: The Account ID
      #
      # @param acquisition_end [String] Query param: Optional acquisition range end date
      #
      # @param acquisition_start [String] Query param: Optional acquisition range start date
      #
      # @param revenue_basis [Symbol, Onlyfans::Models::TrialLinkRetrieveCohortArpsParams::RevenueBasis] Query param: Revenue basis. Defaults to `net`.
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Onlyfans::Models::TrialLinkRetrieveCohortArpsParams
      def retrieve_cohort_arps(trial_link_id, params)
        parsed, options = Onlyfans::TrialLinkRetrieveCohortArpsParams.dump_request(params)
        query = Onlyfans::Internal::Util.encode_query_params(parsed)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/%1$s/trial-links/%2$s/cohort-arps", account, trial_link_id],
          query: query,
          model: NilClass,
          options: options
        )
      end

      # Get dashboard-style summary plus daily and monthly metrics for a specific Free
      # Trial Link
      #
      # @overload retrieve_stats(trial_link_id, account:, date_end: nil, date_start: nil, request_options: {})
      #
      # @param trial_link_id [String] Path param: The ID of the trial link.
      #
      # @param account [String] Path param: The Account ID
      #
      # @param date_end [String] Query param: Optional stats range end date
      #
      # @param date_start [String] Query param: Optional stats range start date
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::TrialLinkRetrieveStatsResponse]
      #
      # @see Onlyfans::Models::TrialLinkRetrieveStatsParams
      def retrieve_stats(trial_link_id, params)
        parsed, options = Onlyfans::TrialLinkRetrieveStatsParams.dump_request(params)
        query = Onlyfans::Internal::Util.encode_query_params(parsed)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/%1$s/trial-links/%2$s/stats", account, trial_link_id],
          query: query,
          model: Onlyfans::Models::TrialLinkRetrieveStatsResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Onlyfans::Client]
      def initialize(client:)
        @client = client
        @tags = Onlyfans::Resources::TrialLinks::Tags.new(client: client)
      end
    end
  end
end
