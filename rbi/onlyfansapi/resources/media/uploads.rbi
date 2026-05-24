# typed: strong

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
        sig do
          params(
            upload: String,
            account: String,
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(
            Onlyfansapi::Models::Media::UploadGetStatusResponse::Variants
          )
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
        sig { params(client: Onlyfansapi::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
