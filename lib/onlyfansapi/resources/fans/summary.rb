# frozen_string_literal: true

module Onlyfansapi
  module Resources
    class Fans
      # APIs for generating and retrieving AI-powered fan profile summaries
      class Summary
        # Queue generation or regeneration of an AI profile summary for a fan. Costs 200
        # credits (charged on completion). Use the GET endpoint to poll for results. To
        # regenerate an existing summary, pass `regenerate: true`.
        #
        # @overload generate_summary(fan_id, account:, regenerate: nil, request_options: {})
        #
        # @param fan_id [String] Path param: Fan's OnlyFans ID
        #
        # @param account [String] Path param: The Account ID
        #
        # @param regenerate [Boolean] Body param: Set to true to regenerate an existing completed summary.
        #
        # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfansapi::Models::Fans::SummaryGenerateSummaryResponse]
        #
        # @see Onlyfansapi::Models::Fans::SummaryGenerateSummaryParams
        def generate_summary(fan_id, params)
          parsed, options = Onlyfansapi::Fans::SummaryGenerateSummaryParams.dump_request(params)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["api/%1$s/fans/%2$s/summary", account, fan_id],
            body: parsed,
            model: Onlyfansapi::Models::Fans::SummaryGenerateSummaryResponse,
            options: options
          )
        end

        # Retrieve the AI profile summary for a fan. Poll this endpoint after triggering a
        # generation to check for completion.
        #
        # @overload get_summary(fan_id, account:, request_options: {})
        #
        # @param fan_id [String] Fan's OnlyFans ID
        #
        # @param account [String] The Account ID
        #
        # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfansapi::Models::Fans::SummaryGetSummaryResponse]
        #
        # @see Onlyfansapi::Models::Fans::SummaryGetSummaryParams
        def get_summary(fan_id, params)
          parsed, options = Onlyfansapi::Fans::SummaryGetSummaryParams.dump_request(params)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["api/%1$s/fans/%2$s/summary", account, fan_id],
            model: Onlyfansapi::Models::Fans::SummaryGetSummaryResponse,
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
