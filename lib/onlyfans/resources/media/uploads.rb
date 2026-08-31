# frozen_string_literal: true

module Onlyfans
  module Resources
    class Media
      class Uploads
        # Check the status of a media upload. Poll this endpoint until status is
        # `completed` or `failed`. This endpoint is free and does not cost any credits.
        #
        # **Possible statuses:**
        #
        # - `pending` — Upload is queued
        # - `processing` — Download/upload in progress
        # - `completed` — Upload finished, `media` and `credits_used` are included
        # - `failed` — Upload failed, `error` is included
        #
        # Instead of polling, you can subscribe to the `media_uploads.completed` and
        # `media_uploads.failed` webhook events. They carry the same fields as this
        # endpoint and are only sent for async (`async=true`) uploads — synchronous
        # uploads return their result directly.
        #
        # @overload get_status(upload, account:, request_options: {})
        #
        # @param upload [String] The prefixed ID of the upload.
        #
        # @param account [String] The Account ID
        #
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::Media::UploadGetStatusResponse::UnionMember0, Onlyfans::Models::Media::UploadGetStatusResponse::UnionMember1, Onlyfans::Models::Media::UploadGetStatusResponse::UnionMember2, Onlyfans::Models::Media::UploadGetStatusResponse::UnionMember3, Onlyfans::Models::Media::UploadGetStatusResponse::UnionMember4]
        #
        # @see Onlyfans::Models::Media::UploadGetStatusParams
        def get_status(upload, params)
          parsed, options = Onlyfans::Media::UploadGetStatusParams.dump_request(params)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["api/%1$s/media/uploads/%2$s/status", account, upload],
            model: Onlyfans::Models::Media::UploadGetStatusResponse,
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
