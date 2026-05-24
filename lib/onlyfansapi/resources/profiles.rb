# frozen_string_literal: true

module Onlyfansapi
  module Resources
    class Profiles
      # Get profile details by username.
      #
      # @overload retrieve(username, request_options: {})
      #
      # @param username [String] The username of the profile to get
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::ProfileRetrieveResponse]
      #
      # @see Onlyfansapi::Models::ProfileRetrieveParams
      def retrieve(username, params = {})
        @client.request(
          method: :get,
          path: ["api/profiles/%1$s", username],
          model: Onlyfansapi::Models::ProfileRetrieveResponse,
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
