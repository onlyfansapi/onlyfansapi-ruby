# frozen_string_literal: true

module Onlyfansapi
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
        # @overload get_status(upload, account:, request_options: {})
        #
        # @param upload [String] The prefixed ID of the upload.
        #
        # @param account [String] The Account ID
        #
        # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember0, Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember1, Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember2, Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember3]
        #
        # @see Onlyfansapi::Models::Media::UploadGetStatusParams
        def get_status(upload, params)
          parsed, options = Onlyfansapi::Media::UploadGetStatusParams.dump_request(params)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["api/%1$s/media/uploads/%2$s/status", account, upload],
            model: Onlyfansapi::Models::Media::UploadGetStatusResponse,
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
