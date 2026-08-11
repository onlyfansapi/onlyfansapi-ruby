# typed: strong

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
        sig do
          params(
            upload: String,
            account: String,
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(Onlyfans::Models::Media::UploadGetStatusResponse::Variants)
        end
        def get_status(
          # The prefixed ID of the upload.
          upload,
          # The Account ID
          account:,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Onlyfans::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
