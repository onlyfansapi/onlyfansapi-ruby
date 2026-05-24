# frozen_string_literal: true

module Onlyfansapi
  module Resources
    class Workflows
      class AccountPerformance
        # @overload retrieve_starting_revenues(account, request_options: {})
        #
        # @param account [String] The Account ID
        #
        # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Onlyfansapi::Models::Workflows::AccountPerformanceRetrieveStartingRevenuesParams
        def retrieve_starting_revenues(account, params = {})
          @client.request(
            method: :get,
            path: ["api/%1$s/workflows/account-performance/starting-revenues", account],
            model: NilClass,
            options: params[:request_options]
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
