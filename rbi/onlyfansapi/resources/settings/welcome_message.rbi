# typed: strong

module Onlyfansapi
  module Resources
    class Settings
      class WelcomeMessage
        # Get the current automatic welcome message template that is sent when someone
        # subscribes.
        sig do
          params(
            account: String,
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(
            Onlyfansapi::Models::Settings::WelcomeMessageRetrieveResponse
          )
        end
        def retrieve(
          # The Account ID
          account,
          request_options: {}
        )
        end

        # Update the automatic welcome message template that is sent when someone
        # subscribes.
        sig do
          params(
            account: String,
            is_forward: T::Boolean,
            locked_text: T::Boolean,
            media_files: T::Array[T.anything],
            previews: T::Array[T.anything],
            price: Integer,
            rf_guest: String,
            rf_partner: String,
            rf_tag: String,
            text: String,
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(Onlyfansapi::Models::Settings::WelcomeMessageUpdateResponse)
        end
        def update(
          # The Account ID
          account,
          is_forward: nil,
          # Whether the text should be shown or hidden.
          locked_text: nil,
          # Direct file uploads, OFAPI `ofapi_media_` IDs, or OF vault IDs. Will be hidden
          # if `price` is provided.
          media_files: nil,
          # Direct file uploads, OFAPI `ofapi_media_` IDs, OF vault IDs, or integer indices
          # referencing uploaded files in `mediaFiles`. Will be shown if `price` is
          # provided.
          previews: nil,
          # Price for paid content (0 or between 3-200). In case this is not zero,
          # **mediaFiles** is required.
          price: nil,
          # Array of OnlyFans Release Form Guest IDs to tag in your message.
          rf_guest: nil,
          # Array of OnlyFans Release Form Partners IDs to tag in your message.
          rf_partner: nil,
          # Array of OnlyFans Creator User IDs to tag in your message.
          rf_tag: nil,
          # The welcome message text content. Required unless a media file is present.
          text: nil,
          request_options: {}
        )
        end

        # Enable or disable the automatic welcome message that is sent when someone
        # subscribes.
        sig do
          params(
            account: String,
            enabled: T::Boolean,
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(Onlyfansapi::Models::Settings::WelcomeMessageToggleResponse)
        end
        def toggle(
          # The Account ID
          account,
          # Whether the welcome message should be enabled.
          enabled:,
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
