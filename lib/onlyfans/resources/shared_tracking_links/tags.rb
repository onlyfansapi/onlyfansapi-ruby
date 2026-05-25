# frozen_string_literal: true

module Onlyfans
  module Resources
    class SharedTrackingLinks
      # APIs for Tracking Links (campaigns) that other OF creators have shared with this
      # account. Revenue, cost, and spender data are not available for shared campaigns.
      class Tags
        # Get tags for a specific shared Tracking Link. Tag namespace is shared with owned
        # Tracking Links. This is a free endpoint.
        #
        # @overload list(shared_tracking_link_id, account:, request_options: {})
        #
        # @param shared_tracking_link_id [Integer] The OnlyFans-side ID of the shared tracking link
        #
        # @param account [String] The Account ID
        #
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::SharedTrackingLinks::TagListResponse]
        #
        # @see Onlyfans::Models::SharedTrackingLinks::TagListParams
        def list(shared_tracking_link_id, params)
          parsed, options = Onlyfans::SharedTrackingLinks::TagListParams.dump_request(params)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["api/%1$s/shared-tracking-links/%2$s/tags", account, shared_tracking_link_id],
            model: Onlyfans::Models::SharedTrackingLinks::TagListResponse,
            options: options
          )
        end

        # Add tags to a shared Tracking Link. Existing tags are preserved. Tag namespace
        # is shared with owned Tracking Links. This is a free endpoint.
        #
        # @overload add(shared_tracking_link_id, account:, tags:, request_options: {})
        #
        # @param shared_tracking_link_id [Integer] Path param: The OnlyFans-side ID of the shared tracking link
        #
        # @param account [String] Path param: The Account ID
        #
        # @param tags [Array<String>] Body param: Array of tag names to add to the shared tracking link.
        #
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::SharedTrackingLinks::TagAddResponse]
        #
        # @see Onlyfans::Models::SharedTrackingLinks::TagAddParams
        def add(shared_tracking_link_id, params)
          parsed, options = Onlyfans::SharedTrackingLinks::TagAddParams.dump_request(params)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["api/%1$s/shared-tracking-links/%2$s/tags", account, shared_tracking_link_id],
            body: parsed,
            model: Onlyfans::Models::SharedTrackingLinks::TagAddResponse,
            options: options
          )
        end

        # Remove tags from a shared Tracking Link. Tag namespace is shared with owned
        # Tracking Links. This is a free endpoint.
        #
        # @overload remove(shared_tracking_link_id, account:, tags:, request_options: {})
        #
        # @param shared_tracking_link_id [Integer] Path param: The OnlyFans-side ID of the shared tracking link
        #
        # @param account [String] Path param: The Account ID
        #
        # @param tags [Array<String>] Body param: Array of tag names to remove from the shared tracking link.
        #
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::SharedTrackingLinks::TagRemoveResponse]
        #
        # @see Onlyfans::Models::SharedTrackingLinks::TagRemoveParams
        def remove(shared_tracking_link_id, params)
          parsed, options = Onlyfans::SharedTrackingLinks::TagRemoveParams.dump_request(params)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["api/%1$s/shared-tracking-links/%2$s/tags", account, shared_tracking_link_id],
            body: parsed,
            model: Onlyfans::Models::SharedTrackingLinks::TagRemoveResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Onlyfans::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
