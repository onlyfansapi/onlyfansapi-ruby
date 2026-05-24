# frozen_string_literal: true

module Onlyfansapi
  module Resources
    class TrialLinks
      # APIs for managing Free Trial Links
      class Tags
        # Get tags for a specific free trial link. This is a free endpoint.
        #
        # @overload list(trial_link_id, account:, request_options: {})
        #
        # @param trial_link_id [Integer] The ID of the trial link
        #
        # @param account [String] The Account ID
        #
        # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfansapi::Models::TrialLinks::TagListResponse]
        #
        # @see Onlyfansapi::Models::TrialLinks::TagListParams
        def list(trial_link_id, params)
          parsed, options = Onlyfansapi::TrialLinks::TagListParams.dump_request(params)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["api/%1$s/trial-links/%2$s/tags", account, trial_link_id],
            model: Onlyfansapi::Models::TrialLinks::TagListResponse,
            options: options
          )
        end

        # Add tags to a specific free trial link. Existing tags are preserved. This is a
        # free endpoint.
        #
        # @overload add(trial_link_id, account:, tags:, request_options: {})
        #
        # @param trial_link_id [Integer] Path param: The ID of the trial link
        #
        # @param account [String] Path param: The Account ID
        #
        # @param tags [Array<String>] Body param: Array of tag names to add to the trial link.
        #
        # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfansapi::Models::TrialLinks::TagAddResponse]
        #
        # @see Onlyfansapi::Models::TrialLinks::TagAddParams
        def add(trial_link_id, params)
          parsed, options = Onlyfansapi::TrialLinks::TagAddParams.dump_request(params)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["api/%1$s/trial-links/%2$s/tags", account, trial_link_id],
            body: parsed,
            model: Onlyfansapi::Models::TrialLinks::TagAddResponse,
            options: options
          )
        end

        # Remove tags from a specific free trial link. This is a free endpoint.
        #
        # @overload remove(trial_link_id, account:, tags:, request_options: {})
        #
        # @param trial_link_id [Integer] Path param: The ID of the trial link
        #
        # @param account [String] Path param: The Account ID
        #
        # @param tags [Array<String>] Body param: Array of tag names to remove from the trial link.
        #
        # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfansapi::Models::TrialLinks::TagRemoveResponse]
        #
        # @see Onlyfansapi::Models::TrialLinks::TagRemoveParams
        def remove(trial_link_id, params)
          parsed, options = Onlyfansapi::TrialLinks::TagRemoveParams.dump_request(params)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["api/%1$s/trial-links/%2$s/tags", account, trial_link_id],
            body: parsed,
            model: Onlyfansapi::Models::TrialLinks::TagRemoveResponse,
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
end
