# frozen_string_literal: true

module Onlyfansapi
  module Resources
    # APIs for managing Free Trial Links
    class TrialLinks
      # Some parameter documentations has been truncated, see
      # {Onlyfansapi::Models::TrialLinkCreateParams} for more details.
      #
      # Create a new free trial link for the account
      #
      # @overload create(account, duration:, offer_expiration:, offer_limit:, name: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param duration [Integer, Onlyfansapi::Models::TrialLinkCreateParams::Duration] The duration of the free trial **in days**. Must be **1**, **3**, **7**, **14**,
      #
      # @param offer_expiration [Integer] The trial link expiration **in days (from now)**. Must either be **0** (to never
      #
      # @param offer_limit [Integer, Onlyfansapi::Models::TrialLinkCreateParams::OfferLimit] How many people can use this offer. Must either be **0** (for no limit), or a nu
      #
      # @param name [String, nil] The name of the trail link (optional). Cannot be longer than 64 characters.
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::TrialLinkCreateResponse]
      #
      # @see Onlyfansapi::Models::TrialLinkCreateParams
      def create(account, params)
        parsed, options = Onlyfansapi::TrialLinkCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/%1$s/trial-links", account],
          body: parsed,
          model: Onlyfansapi::Models::TrialLinkCreateResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Onlyfansapi::Models::TrialLinkListParams} for more details.
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
      # @param field [Symbol, Onlyfansapi::Models::TrialLinkListParams::Field, nil] Sort the results by a field. Default `create_date`
      #
      # @param sort [Symbol, Onlyfansapi::Models::TrialLinkListParams::Sort, nil] Sort the results. Default `desc`
      #
      # @param synchronous [Boolean, nil] Wait for the revenue data to finish processing, instead of processing in the bac
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::TrialLinkListResponse]
      #
      # @see Onlyfansapi::Models::TrialLinkListParams
      def list(account, params)
        parsed, options = Onlyfansapi::TrialLinkListParams.dump_request(params)
        query = Onlyfansapi::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/%1$s/trial-links", account],
          query: query,
          model: Onlyfansapi::Models::TrialLinkListResponse,
          options: options
        )
      end

      # Delete a free trial link by its ID
      #
      # @overload delete(trial_link_id, account:, request_options: {})
      #
      # @param trial_link_id [Integer] The ID of the trial link to delete
      #
      # @param account [String] The Account ID
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::TrialLinkDeleteResponse]
      #
      # @see Onlyfansapi::Models::TrialLinkDeleteParams
      def delete(trial_link_id, params)
        parsed, options = Onlyfansapi::TrialLinkDeleteParams.dump_request(params)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :delete,
          path: ["api/%1$s/trial-links/%2$s", account, trial_link_id],
          model: Onlyfansapi::Models::TrialLinkDeleteResponse,
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
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::TrialLinkListSpendersResponse]
      #
      # @see Onlyfansapi::Models::TrialLinkListSpendersParams
      def list_spenders(trial_link_id, params)
        parsed, options = Onlyfansapi::TrialLinkListSpendersParams.dump_request(params)
        query = Onlyfansapi::Internal::Util.encode_query_params(parsed)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/%1$s/trial-links/%2$s/spenders", account, trial_link_id],
          query: query.transform_keys(min_spend: "minSpend"),
          model: Onlyfansapi::Models::TrialLinkListSpendersResponse,
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
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::TrialLinkListSubscribersResponse]
      #
      # @see Onlyfansapi::Models::TrialLinkListSubscribersParams
      def list_subscribers(trial_link_id, params)
        parsed, options = Onlyfansapi::TrialLinkListSubscribersParams.dump_request(params)
        query = Onlyfansapi::Internal::Util.encode_query_params(parsed)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/%1$s/trial-links/%2$s/subscribers", account, trial_link_id],
          query: query,
          model: Onlyfansapi::Models::TrialLinkListSubscribersResponse,
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
