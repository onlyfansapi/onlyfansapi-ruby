# frozen_string_literal: true

module Onlyfansapi
  module Resources
    # Endpoints for your linked accounts
    class Me
      # Get OnlyFans Profile details for the currently used Account
      #
      # @overload retrieve(account, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::MeRetrieveResponse]
      #
      # @see Onlyfansapi::Models::MeRetrieveParams
      def retrieve(account, params = {})
        @client.request(
          method: :get,
          path: ["api/%1$s/me", account],
          model: Onlyfansapi::Models::MeRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Get the start date of the model (the date+time monetization was enabled)
      #
      # @overload get_model_start_date(account, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::MeGetModelStartDateResponse]
      #
      # @see Onlyfansapi::Models::MeGetModelStartDateParams
      def get_model_start_date(account, params = {})
        @client.request(
          method: :get,
          path: ["api/%1$s/me/model-start-date", account],
          model: Onlyfansapi::Models::MeGetModelStartDateResponse,
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
