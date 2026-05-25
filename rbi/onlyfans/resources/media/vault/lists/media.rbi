# typed: strong

module Onlyfans
  module Resources
    class Media
      class Vault
        class Lists
          class Media
            # Add one or multiple media to a list.
            sig do
              params(
                list_id: String,
                account: String,
                media_ids: T::Array[String],
                request_options: Onlyfans::RequestOptions::OrHash
              ).returns(Onlyfans::Models::Media::Vault::Lists::MediaAddResponse)
            end
            def add(
              # Path param: The ID of the list.
              list_id,
              # Path param: The Account ID
              account:,
              # Body param: Array of media IDs to add.
              media_ids:,
              request_options: {}
            )
            end

            # Remove one or multiple media from a list.
            sig do
              params(
                list_id: String,
                account: String,
                media_ids: T::Array[String],
                request_options: Onlyfans::RequestOptions::OrHash
              ).returns(
                Onlyfans::Models::Media::Vault::Lists::MediaRemoveResponse
              )
            end
            def remove(
              # Path param: The ID of the list.
              list_id,
              # Path param: The Account ID
              account:,
              # Body param: Array of media IDs to delete.
              media_ids:,
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
  end
end
