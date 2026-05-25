# typed: strong

module Onlyfans
  module Models
    module Settings
      class WelcomeMessageUpdateParams < Onlyfans::Internal::Type::BaseModel
        extend Onlyfans::Internal::Type::RequestParameters::Converter
        include Onlyfans::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Settings::WelcomeMessageUpdateParams,
              Onlyfans::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :account

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_forward

        sig { params(is_forward: T::Boolean).void }
        attr_writer :is_forward

        # Whether the text should be shown or hidden.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :locked_text

        sig { params(locked_text: T::Boolean).void }
        attr_writer :locked_text

        # Direct file uploads, OFAPI `ofapi_media_` IDs, or OF vault IDs. Will be hidden
        # if `price` is provided.
        sig { returns(T.nilable(T::Array[T.anything])) }
        attr_reader :media_files

        sig { params(media_files: T::Array[T.anything]).void }
        attr_writer :media_files

        # Direct file uploads, OFAPI `ofapi_media_` IDs, OF vault IDs, or integer indices
        # referencing uploaded files in `mediaFiles`. Will be shown if `price` is
        # provided.
        sig { returns(T.nilable(T::Array[T.anything])) }
        attr_reader :previews

        sig { params(previews: T::Array[T.anything]).void }
        attr_writer :previews

        # Price for paid content (0 or between 3-200). In case this is not zero,
        # **mediaFiles** is required.
        sig { returns(T.nilable(Integer)) }
        attr_reader :price

        sig { params(price: Integer).void }
        attr_writer :price

        # Array of OnlyFans Release Form Guest IDs to tag in your message.
        sig { returns(T.nilable(String)) }
        attr_reader :rf_guest

        sig { params(rf_guest: String).void }
        attr_writer :rf_guest

        # Array of OnlyFans Release Form Partners IDs to tag in your message.
        sig { returns(T.nilable(String)) }
        attr_reader :rf_partner

        sig { params(rf_partner: String).void }
        attr_writer :rf_partner

        # Array of OnlyFans Creator User IDs to tag in your message.
        sig { returns(T.nilable(String)) }
        attr_reader :rf_tag

        sig { params(rf_tag: String).void }
        attr_writer :rf_tag

        # The welcome message text content. Required unless a media file is present.
        sig { returns(T.nilable(String)) }
        attr_reader :text

        sig { params(text: String).void }
        attr_writer :text

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
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          account:,
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

        sig do
          override.returns(
            {
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
              request_options: Onlyfans::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
