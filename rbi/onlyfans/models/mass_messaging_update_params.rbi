# typed: strong

module Onlyfans
  module Models
    class MassMessagingUpdateParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfans::MassMessagingUpdateParams,
            Onlyfans::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account

      sig { returns(String) }
      attr_accessor :id

      # The message text content
      sig { returns(String) }
      attr_accessor :text

      # Screen `text` for OnlyFans banned words and block the update if any are found
      # (returns a 422 listing the offending words). `strict_ban` blocks all tiers,
      # `risky` blocks Risky + Replace/soften, `replace_soften` blocks Replace/soften
      # only. Omit to disable screening.
      sig do
        returns(
          T.nilable(
            Onlyfans::MassMessagingUpdateParams::BlockBannedWords::OrSymbol
          )
        )
      end
      attr_reader :block_banned_words

      sig do
        params(
          block_banned_words:
            Onlyfans::MassMessagingUpdateParams::BlockBannedWords::OrSymbol
        ).void
      end
      attr_writer :block_banned_words

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

      # Array of media file upload prefixed_ids, or OF media IDs (required if price is
      # not 0). Will be hidden if `price` is provided.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :media_files

      sig { params(media_files: T::Array[String]).void }
      attr_writer :media_files

      # Array of media file upload prefixed_ids, or OF media IDs (required if price is
      # not 0). Will be shown if `price` is provided. All `previews` values must also
      # exist in the `mediaFiles` array.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :previews

      sig { params(previews: T::Array[String]).void }
      attr_writer :previews

      # Price for paid content in USD (0 or between 3-200). In case this is not zero,
      # **mediaFiles** is required
      sig { returns(T.nilable(Float)) }
      attr_reader :price

      sig { params(price: Float).void }
      attr_writer :price

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
          id: String,
          text: String,
          block_banned_words:
            Onlyfans::MassMessagingUpdateParams::BlockBannedWords::OrSymbol,
          giphy_id: String,
          locked_text: T::Boolean,
          media_files: T::Array[String],
          previews: T::Array[String],
          price: Float,
          scheduled_date: String,
          user_ids: T::Array[String],
          user_lists: T::Array[String],
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        id:,
        # The message text content
        text:,
        # Screen `text` for OnlyFans banned words and block the update if any are found
        # (returns a 422 listing the offending words). `strict_ban` blocks all tiers,
        # `risky` blocks Risky + Replace/soften, `replace_soften` blocks Replace/soften
        # only. Omit to disable screening.
        block_banned_words: nil,
        # The ID of the Giphy GIF to attach to the message. Get IDs from the Giphy listing
        # endpoints (`/giphy/trending`, `/giphy/search`).
        giphy_id: nil,
        # Whether the text should be shown or hidden
        locked_text: nil,
        # Array of media file upload prefixed_ids, or OF media IDs (required if price is
        # not 0). Will be hidden if `price` is provided.
        media_files: nil,
        # Array of media file upload prefixed_ids, or OF media IDs (required if price is
        # not 0). Will be shown if `price` is provided. All `previews` values must also
        # exist in the `mediaFiles` array.
        previews: nil,
        # Price for paid content in USD (0 or between 3-200). In case this is not zero,
        # **mediaFiles** is required
        price: nil,
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
            id: String,
            text: String,
            block_banned_words:
              Onlyfans::MassMessagingUpdateParams::BlockBannedWords::OrSymbol,
            giphy_id: String,
            locked_text: T::Boolean,
            media_files: T::Array[String],
            previews: T::Array[String],
            price: Float,
            scheduled_date: String,
            user_ids: T::Array[String],
            user_lists: T::Array[String],
            request_options: Onlyfans::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Screen `text` for OnlyFans banned words and block the update if any are found
      # (returns a 422 listing the offending words). `strict_ban` blocks all tiers,
      # `risky` blocks Risky + Replace/soften, `replace_soften` blocks Replace/soften
      # only. Omit to disable screening.
      module BlockBannedWords
        extend Onlyfans::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Onlyfans::MassMessagingUpdateParams::BlockBannedWords)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        STRICT_BAN =
          T.let(
            :strict_ban,
            Onlyfans::MassMessagingUpdateParams::BlockBannedWords::TaggedSymbol
          )
        RISKY =
          T.let(
            :risky,
            Onlyfans::MassMessagingUpdateParams::BlockBannedWords::TaggedSymbol
          )
        REPLACE_SOFTEN =
          T.let(
            :replace_soften,
            Onlyfans::MassMessagingUpdateParams::BlockBannedWords::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Onlyfans::MassMessagingUpdateParams::BlockBannedWords::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
