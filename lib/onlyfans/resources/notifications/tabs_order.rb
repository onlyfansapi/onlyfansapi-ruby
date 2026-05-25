# frozen_string_literal: true

module Onlyfans
  module Resources
    class Notifications
      # Endpoints for managingr account notifications
      class TabsOrder
        # Some parameter documentations has been truncated, see
        # {Onlyfans::Models::Notifications::TabsOrderUpdateParams} for more details.
        #
        # Update the order of an account's notification tabs as displayed on the OnlyFans
        # notifications page
        #
        # @overload update(account, tabs:, request_options: {})
        #
        # @param account [String] The Account ID
        #
        # @param tabs [Array<String>] Array of tab keys. Must include exactly these: all, subscriptions, onlyfans, pur
        #
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::Notifications::TabsOrderUpdateResponse]
        #
        # @see Onlyfans::Models::Notifications::TabsOrderUpdateParams
        def update(account, params)
          parsed, options = Onlyfans::Notifications::TabsOrderUpdateParams.dump_request(params)
          @client.request(
            method: :put,
            path: ["api/%1$s/notifications/tabs-order", account],
            body: parsed,
            model: Onlyfans::Models::Notifications::TabsOrderUpdateResponse,
            options: options
          )
        end

        # Get the order of an account's notification tabs as displayed on the OnlyFans
        # notifications page
        #
        # @overload get(account, request_options: {})
        #
        # @param account [String] The Account ID
        #
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::Notifications::TabsOrderGetResponse]
        #
        # @see Onlyfans::Models::Notifications::TabsOrderGetParams
        def get(account, params = {})
          @client.request(
            method: :get,
            path: ["api/%1$s/notifications/tabs-order", account],
            model: Onlyfans::Models::Notifications::TabsOrderGetResponse,
            options: params[:request_options]
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
