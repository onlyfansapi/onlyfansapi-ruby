# typed: strong

module Onlyfans
  module Resources
    class Settings
      class SocialMediaButtons
        # Updates a social media button from the account
        sig do
          params(
            button_id: String,
            account: String,
            label: String,
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(Onlyfans::Models::Settings::SocialMediaButtonUpdateResponse)
        end
        def update(
          # Path param: The ID of the social media button to update
          button_id,
          # Path param: The Account ID
          account:,
          # Body param: The new label for the button
          label:,
          request_options: {}
        )
        end

        # Returns the list of social media buttons for the account
        sig do
          params(
            account: String,
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(Onlyfans::Models::Settings::SocialMediaButtonListResponse)
        end
        def list(
          # The Account ID
          account,
          request_options: {}
        )
        end

        # Deletes a social media button from the account
        sig do
          params(
            button_id: String,
            account: String,
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(Onlyfans::Models::Settings::SocialMediaButtonDeleteResponse)
        end
        def delete(
          # The ID of the social media button to update
          button_id,
          # The Account ID
          account:,
          request_options: {}
        )
        end

        # Adds a new social media button to the account
        sig do
          params(
            account: String,
            label: String,
            type:
              Onlyfans::Settings::SocialMediaButtonAddParams::Type::OrSymbol,
            value: String,
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(Onlyfans::Models::Settings::SocialMediaButtonAddResponse)
        end
        def add(
          # The Account ID
          account,
          # The button label
          label:,
          # The button type
          type:,
          # The button value, either a username or link.
          value:,
          request_options: {}
        )
        end

        # Changes the order of social media buttons for the account
        sig do
          params(
            account: String,
            button_ids: T::Array[String],
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(
            Onlyfans::Models::Settings::SocialMediaButtonReorderResponse
          )
        end
        def reorder(
          # The Account ID
          account,
          # The new order of the buttons
          button_ids:,
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
