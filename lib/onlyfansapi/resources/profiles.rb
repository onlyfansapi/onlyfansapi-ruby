# frozen_string_literal: true

module Onlyfansapi
  module Resources
    class Profiles
      # Some parameter documentations has been truncated, see
      # {Onlyfansapi::Models::ProfileRetrieveParams} for more details.
      #
      # Get profile details by username.
      #
      # @overload retrieve(username, fresh: nil, request_options: {})
      #
      # @param username [String] The username of the profile to get
      #
      # @param fresh [Boolean, nil] If `true` then OnlyFansAPI will always return the real time information about pr
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::ProfileRetrieveResponse]
      #
      # @see Onlyfansapi::Models::ProfileRetrieveParams
      def retrieve(username, params = {})
        parsed, options = Onlyfansapi::ProfileRetrieveParams.dump_request(params)
        query = Onlyfansapi::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/profiles/%1$s", username],
          query: query,
          model: Onlyfansapi::Models::ProfileRetrieveResponse,
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
