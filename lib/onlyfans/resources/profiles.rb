# frozen_string_literal: true

module Onlyfans
  module Resources
    class Profiles
      # Some parameter documentations has been truncated, see
      # {Onlyfans::Models::ProfileRetrieveParams} for more details.
      #
      # Get profile details by username.
      #
      # @overload retrieve(username, fresh: nil, request_options: {})
      #
      # @param username [String] The username of the profile to get
      #
      # @param fresh [Boolean, nil] If `true` then OnlyFansAPI will always return the real time information about pr
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::ProfileRetrieveResponse]
      #
      # @see Onlyfans::Models::ProfileRetrieveParams
      def retrieve(username, params = {})
        parsed, options = Onlyfans::ProfileRetrieveParams.dump_request(params)
        query = Onlyfans::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/profiles/%1$s", username],
          query: query,
          model: Onlyfans::Models::ProfileRetrieveResponse,
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
