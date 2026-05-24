# frozen_string_literal: true

module Onlyfansapi
  module Resources
    class Posts
      # APIs for managing your post labels
      class Labels
        # Create a new post label.
        #
        # @overload create(account, name:, request_options: {})
        #
        # @param account [String] The Account ID
        #
        # @param name [String] The name of your new label
        #
        # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfansapi::Models::Posts::LabelCreateResponse]
        #
        # @see Onlyfansapi::Models::Posts::LabelCreateParams
        def create(account, params)
          parsed, options = Onlyfansapi::Posts::LabelCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["api/%1$s/posts/labels", account],
            body: parsed,
            model: Onlyfansapi::Models::Posts::LabelCreateResponse,
            options: options
          )
        end

        # List the labels that you can use to organize your posts.
        #
        # @overload list(account, limit: nil, offset: nil, request_options: {})
        #
        # @param account [String] The Account ID
        #
        # @param limit [String] Number of labels to return (default = 10)
        #
        # @param offset [String] Number of labels to skip for pagination
        #
        # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfansapi::Models::Posts::LabelListResponse]
        #
        # @see Onlyfansapi::Models::Posts::LabelListParams
        def list(account, params = {})
          parsed, options = Onlyfansapi::Posts::LabelListParams.dump_request(params)
          query = Onlyfansapi::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["api/%1$s/posts/labels", account],
            query: query,
            model: Onlyfansapi::Models::Posts::LabelListResponse,
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
