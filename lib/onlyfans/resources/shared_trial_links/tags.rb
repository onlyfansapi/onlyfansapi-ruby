# frozen_string_literal: true

module Onlyfans
  module Resources
    class SharedTrialLinks
      # APIs for Free Trial Links that other OF creators have shared with this account.
      # Revenue, cost, and spender data are not available for shared links.
      class Tags
        # Get tags for a specific shared Free Trial Link. Tag namespace is shared with
        # owned Free Trial Links. This is a free endpoint.
        #
        # @overload list(shared_trial_link_id, account:, request_options: {})
        #
        # @param shared_trial_link_id [Integer] The OnlyFans-side ID of the shared trial link
        #
        # @param account [String] The Account ID
        #
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::SharedTrialLinks::TagListResponse]
        #
        # @see Onlyfans::Models::SharedTrialLinks::TagListParams
        def list(shared_trial_link_id, params)
          parsed, options = Onlyfans::SharedTrialLinks::TagListParams.dump_request(params)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["api/%1$s/shared-trial-links/%2$s/tags", account, shared_trial_link_id],
            model: Onlyfans::Models::SharedTrialLinks::TagListResponse,
            options: options
          )
        end

        # Add tags to a shared Free Trial Link. Existing tags are preserved. Tag namespace
        # is shared with owned Free Trial Links. This is a free endpoint.
        #
        # @overload add(shared_trial_link_id, account:, tags:, request_options: {})
        #
        # @param shared_trial_link_id [Integer] Path param: The OnlyFans-side ID of the shared trial link
        #
        # @param account [String] Path param: The Account ID
        #
        # @param tags [Array<String>] Body param: Array of tag names to add to the shared trial link.
        #
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::SharedTrialLinks::TagAddResponse]
        #
        # @see Onlyfans::Models::SharedTrialLinks::TagAddParams
        def add(shared_trial_link_id, params)
          parsed, options = Onlyfans::SharedTrialLinks::TagAddParams.dump_request(params)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["api/%1$s/shared-trial-links/%2$s/tags", account, shared_trial_link_id],
            body: parsed,
            model: Onlyfans::Models::SharedTrialLinks::TagAddResponse,
            options: options
          )
        end

        # Remove tags from a shared Free Trial Link. Tag namespace is shared with owned
        # Free Trial Links. This is a free endpoint.
        #
        # @overload remove(shared_trial_link_id, account:, tags:, request_options: {})
        #
        # @param shared_trial_link_id [Integer] Path param: The OnlyFans-side ID of the shared trial link
        #
        # @param account [String] Path param: The Account ID
        #
        # @param tags [Array<String>] Body param: Array of tag names to remove from the shared trial link.
        #
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::SharedTrialLinks::TagRemoveResponse]
        #
        # @see Onlyfans::Models::SharedTrialLinks::TagRemoveParams
        def remove(shared_trial_link_id, params)
          parsed, options = Onlyfans::SharedTrialLinks::TagRemoveParams.dump_request(params)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["api/%1$s/shared-trial-links/%2$s/tags", account, shared_trial_link_id],
            body: parsed,
            model: Onlyfans::Models::SharedTrialLinks::TagRemoveResponse,
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
