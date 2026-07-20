# typed: strong

module Onlyfans
  module Models
    class MassMessagingSendParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Onlyfans::MassMessagingSendParams, Onlyfans::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :account

      # The message text content
      sig { returns(String) }
      attr_accessor :text

      # Screen `text` for OnlyFans banned words and block the send if any are found
      # (returns a 422 listing the offending words). `strict_ban` blocks all tiers,
      # `risky` blocks Risky + Replace/soften, `replace_soften` blocks Replace/soften
      # only. Omit to disable screening.
      sig do
        returns(
          T.nilable(
            Onlyfans::MassMessagingSendParams::BlockBannedWords::OrSymbol
          )
        )
      end
      attr_reader :block_banned_words

      sig do
        params(
          block_banned_words:
            Onlyfans::MassMessagingSendParams::BlockBannedWords::OrSymbol
        ).void
      end
      attr_writer :block_banned_words

      # Array of user list IDs that the mass message will NOT be sent to.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :excluded_lists

      sig { params(excluded_lists: T::Array[String]).void }
      attr_writer :excluded_lists

      # The ID of the Giphy GIF to attach to the message. Get IDs from the Giphy listing
      # endpoints (`/giphy/trending`, `/giphy/search`).
      sig { returns(T.nilable(String)) }
      attr_reader :giphy_id

      sig { params(giphy_id: String).void }
      attr_writer :giphy_id

      # Whether the text should be shown or hidden
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
      # **mediaFiles** is required
      sig { returns(T.nilable(Integer)) }
      attr_reader :price

      sig { params(price: Integer).void }
      attr_writer :price

      # Array of OnlyFans Release Form Guest IDs to tag in your mass message
      sig { returns(T.nilable(String)) }
      attr_reader :rf_guest

      sig { params(rf_guest: String).void }
      attr_writer :rf_guest

      # Array of OnlyFans Release Form Partners IDs to tag in your mass message
      sig { returns(T.nilable(String)) }
      attr_reader :rf_partner

      sig { params(rf_partner: String).void }
      attr_writer :rf_partner

      # Array of OnlyFans Creator User IDs to tag in your mass message
      sig { returns(T.nilable(String)) }
      attr_reader :rf_tag

      sig { params(rf_tag: String).void }
      attr_writer :rf_tag

      # Add your message to the "Saved for later" queue.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :save_for_later

      sig { params(save_for_later: T::Boolean).void }
      attr_writer :save_for_later

      # Schedule the chat message in the future (UTC timezone).
      sig { returns(T.nilable(String)) }
      attr_reader :scheduled_date

      sig { params(scheduled_date: String).void }
      attr_writer :scheduled_date

      # Array of user IDs that the mass message will be sent to.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :user_ids

      sig { params(user_ids: T::Array[String]).void }
      attr_writer :user_ids

      # Array of user list IDs that the mass message will be sent to.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :user_lists

      sig { params(user_lists: T::Array[String]).void }
      attr_writer :user_lists

      sig do
        params(
          account: String,
          text: String,
          block_banned_words:
            Onlyfans::MassMessagingSendParams::BlockBannedWords::OrSymbol,
          excluded_lists: T::Array[String],
          giphy_id: String,
          locked_text: T::Boolean,
          media_files: T::Array[T.anything],
          previews: T::Array[T.anything],
          price: Integer,
          rf_guest: String,
          rf_partner: String,
          rf_tag: String,
          save_for_later: T::Boolean,
          scheduled_date: String,
          user_ids: T::Array[String],
          user_lists: T::Array[String],
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        # The message text content
        text:,
        # Screen `text` for OnlyFans banned words and block the send if any are found
        # (returns a 422 listing the offending words). `strict_ban` blocks all tiers,
        # `risky` blocks Risky + Replace/soften, `replace_soften` blocks Replace/soften
        # only. Omit to disable screening.
        block_banned_words: nil,
        # Array of user list IDs that the mass message will NOT be sent to.
        excluded_lists: nil,
        # The ID of the Giphy GIF to attach to the message. Get IDs from the Giphy listing
        # endpoints (`/giphy/trending`, `/giphy/search`).
        giphy_id: nil,
        # Whether the text should be shown or hidden
        locked_text: nil,
        # Direct file uploads, OFAPI `ofapi_media_` IDs, or OF vault IDs. Will be hidden
        # if `price` is provided.
        media_files: nil,
        # Direct file uploads, OFAPI `ofapi_media_` IDs, OF vault IDs, or integer indices
        # referencing uploaded files in `mediaFiles`. Will be shown if `price` is
        # provided.
        previews: nil,
        # Price for paid content (0 or between 3-200). In case this is not zero,
        # **mediaFiles** is required
        price: nil,
        # Array of OnlyFans Release Form Guest IDs to tag in your mass message
        rf_guest: nil,
        # Array of OnlyFans Release Form Partners IDs to tag in your mass message
        rf_partner: nil,
        # Array of OnlyFans Creator User IDs to tag in your mass message
        rf_tag: nil,
        # Add your message to the "Saved for later" queue.
        save_for_later: nil,
        # Schedule the chat message in the future (UTC timezone).
        scheduled_date: nil,
        # Array of user IDs that the mass message will be sent to.
        user_ids: nil,
        # Array of user list IDs that the mass message will be sent to.
        user_lists: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            text: String,
            block_banned_words:
              Onlyfans::MassMessagingSendParams::BlockBannedWords::OrSymbol,
            excluded_lists: T::Array[String],
            giphy_id: String,
            locked_text: T::Boolean,
            media_files: T::Array[T.anything],
            previews: T::Array[T.anything],
            price: Integer,
            rf_guest: String,
            rf_partner: String,
            rf_tag: String,
            save_for_later: T::Boolean,
            scheduled_date: String,
            user_ids: T::Array[String],
            user_lists: T::Array[String],
            request_options: Onlyfans::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Screen `text` for OnlyFans banned words and block the send if any are found
      # (returns a 422 listing the offending words). `strict_ban` blocks all tiers,
      # `risky` blocks Risky + Replace/soften, `replace_soften` blocks Replace/soften
      # only. Omit to disable screening.
      module BlockBannedWords
        extend Onlyfans::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Onlyfans::MassMessagingSendParams::BlockBannedWords)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        STRICT_BAN =
          T.let(
            :strict_ban,
            Onlyfans::MassMessagingSendParams::BlockBannedWords::TaggedSymbol
          )
        RISKY =
          T.let(
            :risky,
            Onlyfans::MassMessagingSendParams::BlockBannedWords::TaggedSymbol
          )
        REPLACE_SOFTEN =
          T.let(
            :replace_soften,
            Onlyfans::MassMessagingSendParams::BlockBannedWords::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Onlyfans::MassMessagingSendParams::BlockBannedWords::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
