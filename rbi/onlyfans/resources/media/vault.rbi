# typed: strong

module Onlyfans
  module Resources
    class Media
      class Vault
        sig { returns(Onlyfans::Resources::Media::Vault::Lists) }
        attr_reader :lists

        # Retrieve details about a specific media item in your vault.
        sig do
          params(
            media_id: Integer,
            account: String,
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(Onlyfans::Models::Media::VaultRetrieveResponse)
        end
        def retrieve(
          # The ID of the media item to retrieve.
          media_id,
          # The Account ID
          account:,
          request_options: {}
        )
        end

        # List media items stored in your vault. See how many likes and how much tips did
        # they get.
        sig do
          params(
            account: String,
            field: Onlyfans::Media::VaultListParams::Field::OrSymbol,
            limit: Integer,
            list: Integer,
            offset: Integer,
            query: T.nilable(String),
            sort: Onlyfans::Media::VaultListParams::Sort::OrSymbol,
            type: Onlyfans::Media::VaultListParams::Type::OrSymbol,
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(Onlyfans::Models::Media::VaultListResponse)
        end
        def list(
          # The Account ID
          account,
          # Sort the results by a field. Default `recent`
          field: nil,
          # Number of media to return per page (10 - 100). Default: `24`
          limit: nil,
          # Only show media items from a specific list (category). **Refer to our Media
          # Vault Lists endpoints.**
          list: nil,
          # The offset used for pagination. Default `0`
          offset: nil,
          # Optionally, search for a text query.
          query: nil,
          # Sort the results. Default `desc`
          sort: nil,
          # Filter the results by a media type. Keep empty to show all media.
          type: nil,
          request_options: {}
        )
        end

        # Delete one or multiple media from your vault.
        sig do
          params(
            account: String,
            media_ids: T::Array[String],
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(Onlyfans::Models::Media::VaultDeleteResponse)
        end
        def delete(
          # The Account ID
          account,
          # Array of media IDs to delete.
          media_ids:,
          request_options: {}
        )
        end

        # Upload a media file directly to your vault.
        sig do
          params(
            account: String,
            async: T::Boolean,
            file: Onlyfans::Internal::FileInput,
            file_url: String,
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(Onlyfans::Models::Media::VaultUploadResponse)
        end
        def upload(
          # The Account ID
          account,
          # Set to `true` to process uploads in the background. Returns a `polling_url` to
          # check status. Recommended for large files. Instead of polling, you can subscribe
          # to the `media_uploads.completed` and `media_uploads.failed` webhook events —
          # they only fire for async uploads.
          async: nil,
          # The file to upload. Required if `file_url` is not provided. Maximum file size:
          # 100 MB (limited by Cloudflare).
          file: nil,
          # A URL to download the file from. Required if `file` is not provided. Maximum
          # file size depends on the subscription configuration.
          file_url: nil,
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
