# typed: strong

module Onlyfans
  module Resources
    class Media
      class Vault
        class Lists
          sig { returns(Onlyfans::Resources::Media::Vault::Lists::Media) }
          attr_reader :media

          # Create a new Vault list.
          sig do
            params(
              account: String,
              name: String,
              request_options: Onlyfans::RequestOptions::OrHash
            ).returns(Onlyfans::Models::Media::Vault::ListCreateResponse)
          end
          def create(
            # The Account ID
            account,
            # The name of your new list
            name:,
            request_options: {}
          )
          end

          # Show a Vault list.
          sig do
            params(
              list_id: String,
              account: String,
              request_options: Onlyfans::RequestOptions::OrHash
            ).returns(Onlyfans::Models::Media::Vault::ListRetrieveResponse)
          end
          def retrieve(
            # The ID of the list
            list_id,
            # The Account ID
            account:,
            request_options: {}
          )
          end

          # Rename a Vault list.
          sig do
            params(
              list_id: String,
              account: String,
              request_options: Onlyfans::RequestOptions::OrHash
            ).returns(Onlyfans::Models::Media::Vault::ListUpdateResponse)
          end
          def update(
            # The ID of the list
            list_id,
            # The Account ID
            account:,
            request_options: {}
          )
          end

          # List your Vault lists (categories).
          sig do
            params(
              account: String,
              limit: Integer,
              offset: Integer,
              query: String,
              request_options: Onlyfans::RequestOptions::OrHash
            ).returns(Onlyfans::Models::Media::Vault::ListListResponse)
          end
          def list(
            # The Account ID
            account,
            # Number of media to return per page. Default: `24`
            limit: nil,
            # The offset used for pagination. Default `0`
            offset: nil,
            # Optionally, find a list by its name.
            query: nil,
            request_options: {}
          )
          end

          # Delete a Vault list.
          sig do
            params(
              list_id: String,
              account: String,
              request_options: Onlyfans::RequestOptions::OrHash
            ).returns(Onlyfans::Models::Media::Vault::ListDeleteResponse)
          end
          def delete(
            # The ID of the list
            list_id,
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
end
