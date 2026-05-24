# frozen_string_literal: true

module Onlyfansapi
  module Resources
    # APIs for managing tracking links
    class TrackingLinks
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
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::TrackingLinkCreateResponse]
      #
      # @see Onlyfansapi::Models::TrackingLinkCreateParams
      def create(account, params)
        parsed, options = Onlyfansapi::TrackingLinkCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/%1$s/tracking-links", account],
          body: parsed,
          model: Onlyfansapi::Models::TrackingLinkCreateResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Onlyfansapi::Models::TrackingLinkListParams} for more details.
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
      # @param sort [Symbol, Onlyfansapi::Models::TrackingLinkListParams::Sort, nil] Sort the results. Default `desc`
      #
      # @param sortby [Symbol, Onlyfansapi::Models::TrackingLinkListParams::Sortby, nil] Sort by subscriber count (claims), or creation date
      #
      # @param start_date [String, nil] The start date for Tracking Links. Keep empty to get all.
      #
      # @param synchronous [Boolean, nil] Wait for the revenue data to finish processing, instead of processing in the bac
      #
      # @param with_deleted [Boolean, nil] Whether or not to include deleted tracking links in the response. Default `false
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::TrackingLinkListResponse]
      #
      # @see Onlyfansapi::Models::TrackingLinkListParams
      def list(account, params = {})
        parsed, options = Onlyfansapi::TrackingLinkListParams.dump_request(params)
        query = Onlyfansapi::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/%1$s/tracking-links", account],
          query: query.transform_keys(end_date: "endDate", start_date: "startDate"),
          model: Onlyfansapi::Models::TrackingLinkListResponse,
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
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::TrackingLinkDeleteResponse]
      #
      # @see Onlyfansapi::Models::TrackingLinkDeleteParams
      def delete(tracking_link_id, params)
        parsed, options = Onlyfansapi::TrackingLinkDeleteParams.dump_request(params)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :delete,
          path: ["api/%1$s/tracking-links/%2$s", account, tracking_link_id],
          model: Onlyfansapi::Models::TrackingLinkDeleteResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Onlyfansapi::Models::TrackingLinkListSpendersParams} for more details.
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
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::TrackingLinkListSpendersResponse]
      #
      # @see Onlyfansapi::Models::TrackingLinkListSpendersParams
      def list_spenders(tracking_link_id, params)
        parsed, options = Onlyfansapi::TrackingLinkListSpendersParams.dump_request(params)
        query = Onlyfansapi::Internal::Util.encode_query_params(parsed)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/%1$s/tracking-links/%2$s/spenders", account, tracking_link_id],
          query: query.transform_keys(min_spend: "minSpend"),
          model: Onlyfansapi::Models::TrackingLinkListSpendersResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Onlyfansapi::Models::TrackingLinkListSubscribersParams} for more details.
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
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::TrackingLinkListSubscribersResponse]
      #
      # @see Onlyfansapi::Models::TrackingLinkListSubscribersParams
      def list_subscribers(tracking_link_id, params)
        parsed, options = Onlyfansapi::TrackingLinkListSubscribersParams.dump_request(params)
        query = Onlyfansapi::Internal::Util.encode_query_params(parsed)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/%1$s/tracking-links/%2$s/subscribers", account, tracking_link_id],
          query: query,
          model: Onlyfansapi::Models::TrackingLinkListSubscribersResponse,
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
