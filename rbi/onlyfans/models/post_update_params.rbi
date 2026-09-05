# typed: strong

module Onlyfans
  module Models
    class PostUpdateParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Onlyfans::PostUpdateParams, Onlyfans::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :account

      sig { returns(Integer) }
      attr_accessor :post_id

      # The post text content
      sig { returns(String) }
      attr_accessor :text

      # Screen `text` for OnlyFans banned words and block the update if any are found
      # (returns a 422 listing the offending words). `strict_ban` blocks all tiers,
      # `risky` blocks Risky + Replace/soften, `replace_soften` blocks Replace/soften
      # only. Omit to disable screening.
      sig do
        returns(
          T.nilable(Onlyfans::PostUpdateParams::BlockBannedWords::OrSymbol)
        )
      end
      attr_reader :block_banned_words

      sig do
        params(
          block_banned_words:
            Onlyfans::PostUpdateParams::BlockBannedWords::OrSymbol
        ).void
      end
      attr_writer :block_banned_words

      # Number of days after which the post will expire. Between 1 and 30 days. Keep
      # empty for no expiration.
      sig { returns(T.nilable(Integer)) }
      attr_reader :expire_days

      sig { params(expire_days: Integer).void }
      attr_writer :expire_days

      # Add a fundraising target to your post. If present, value must be at least 10.
      sig { returns(T.nilable(Integer)) }
      attr_reader :fund_raising_target_amount

      sig { params(fund_raising_target_amount: Integer).void }
      attr_writer :fund_raising_target_amount

      # Specify which tip amounts will be listed under the fundraising card. Required
      # with `fundRaisingTargetAmount`, and you must provide at least 1 option. Array
      # items cannot be higher than the `fundRaisingTargetAmount`.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :fund_raising_tips_presets

      sig { params(fund_raising_tips_presets: T::Array[String]).void }
      attr_writer :fund_raising_tips_presets

      # Array of OF label IDs. Refer to our `/posts/labels` endpoint.
      sig { returns(T.nilable(String)) }
      attr_reader :label_ids

      sig { params(label_ids: String).void }
      attr_writer :label_ids

      # Array of OFAPI `ofapi_media_` IDs, or OF media IDs
      sig { returns(T.nilable(String)) }
      attr_reader :media_files

      sig { params(media_files: String).void }
      attr_writer :media_files

      # Price for paid content (0 or between 3-100). In case this is not zero,
      # **mediaFiles** is required
      sig { returns(T.nilable(Integer)) }
      attr_reader :price

      sig { params(price: Integer).void }
      attr_writer :price

      # Array OnlyFans creator user IDs to tag in your post
      sig { returns(T.nilable(String)) }
      attr_reader :rf_tag

      sig { params(rf_tag: String).void }
      attr_writer :rf_tag

      # Add your post to the "Saved for later" queue.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :save_for_later

      sig { params(save_for_later: T::Boolean).void }
      attr_writer :save_for_later

      # Schedule your post in the future (UTC timezone).
      sig { returns(T.nilable(String)) }
      attr_reader :scheduled_date

      sig { params(scheduled_date: String).void }
      attr_writer :scheduled_date

      # The array key of your quiz' correct answer. Required when `votingType` is
      # "quiz". Keep in mind that arrays start at `0`
      sig { returns(T.nilable(Integer)) }
      attr_reader :voting_correct_index

      sig { params(voting_correct_index: Integer).void }
      attr_writer :voting_correct_index

      # The due date (in days) of your poll/quiz. Can be 1, 3, 7 or 30 days. Can only be
      # filled with `votingType`.
      sig { returns(T.nilable(Integer)) }
      attr_reader :voting_due

      sig { params(voting_due: Integer).void }
      attr_writer :voting_due

      # The options of your poll/quiz. Required with `votingType`.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :voting_options

      sig { params(voting_options: T::Array[String]).void }
      attr_writer :voting_options

      # Include a poll or quiz within your post.
      sig do
        returns(T.nilable(Onlyfans::PostUpdateParams::VotingType::OrSymbol))
      end
      attr_reader :voting_type

      sig do
        params(
          voting_type: Onlyfans::PostUpdateParams::VotingType::OrSymbol
        ).void
      end
      attr_writer :voting_type

      sig do
        params(
          account: String,
          post_id: Integer,
          text: String,
          block_banned_words:
            Onlyfans::PostUpdateParams::BlockBannedWords::OrSymbol,
          expire_days: Integer,
          fund_raising_target_amount: Integer,
          fund_raising_tips_presets: T::Array[String],
          label_ids: String,
          media_files: String,
          price: Integer,
          rf_tag: String,
          save_for_later: T::Boolean,
          scheduled_date: String,
          voting_correct_index: Integer,
          voting_due: Integer,
          voting_options: T::Array[String],
          voting_type: Onlyfans::PostUpdateParams::VotingType::OrSymbol,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        post_id:,
        # The post text content
        text:,
        # Screen `text` for OnlyFans banned words and block the update if any are found
        # (returns a 422 listing the offending words). `strict_ban` blocks all tiers,
        # `risky` blocks Risky + Replace/soften, `replace_soften` blocks Replace/soften
        # only. Omit to disable screening.
        block_banned_words: nil,
        # Number of days after which the post will expire. Between 1 and 30 days. Keep
        # empty for no expiration.
        expire_days: nil,
        # Add a fundraising target to your post. If present, value must be at least 10.
        fund_raising_target_amount: nil,
        # Specify which tip amounts will be listed under the fundraising card. Required
        # with `fundRaisingTargetAmount`, and you must provide at least 1 option. Array
        # items cannot be higher than the `fundRaisingTargetAmount`.
        fund_raising_tips_presets: nil,
        # Array of OF label IDs. Refer to our `/posts/labels` endpoint.
        label_ids: nil,
        # Array of OFAPI `ofapi_media_` IDs, or OF media IDs
        media_files: nil,
        # Price for paid content (0 or between 3-100). In case this is not zero,
        # **mediaFiles** is required
        price: nil,
        # Array OnlyFans creator user IDs to tag in your post
        rf_tag: nil,
        # Add your post to the "Saved for later" queue.
        save_for_later: nil,
        # Schedule your post in the future (UTC timezone).
        scheduled_date: nil,
        # The array key of your quiz' correct answer. Required when `votingType` is
        # "quiz". Keep in mind that arrays start at `0`
        voting_correct_index: nil,
        # The due date (in days) of your poll/quiz. Can be 1, 3, 7 or 30 days. Can only be
        # filled with `votingType`.
        voting_due: nil,
        # The options of your poll/quiz. Required with `votingType`.
        voting_options: nil,
        # Include a poll or quiz within your post.
        voting_type: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            post_id: Integer,
            text: String,
            block_banned_words:
              Onlyfans::PostUpdateParams::BlockBannedWords::OrSymbol,
            expire_days: Integer,
            fund_raising_target_amount: Integer,
            fund_raising_tips_presets: T::Array[String],
            label_ids: String,
            media_files: String,
            price: Integer,
            rf_tag: String,
            save_for_later: T::Boolean,
            scheduled_date: String,
            voting_correct_index: Integer,
            voting_due: Integer,
            voting_options: T::Array[String],
            voting_type: Onlyfans::PostUpdateParams::VotingType::OrSymbol,
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
            T.all(Symbol, Onlyfans::PostUpdateParams::BlockBannedWords)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        STRICT_BAN =
          T.let(
            :strict_ban,
            Onlyfans::PostUpdateParams::BlockBannedWords::TaggedSymbol
          )
        RISKY =
          T.let(
            :risky,
            Onlyfans::PostUpdateParams::BlockBannedWords::TaggedSymbol
          )
        REPLACE_SOFTEN =
          T.let(
            :replace_soften,
            Onlyfans::PostUpdateParams::BlockBannedWords::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Onlyfans::PostUpdateParams::BlockBannedWords::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Include a poll or quiz within your post.
      module VotingType
        extend Onlyfans::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Onlyfans::PostUpdateParams::VotingType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        POLL =
          T.let(:poll, Onlyfans::PostUpdateParams::VotingType::TaggedSymbol)
        QUIZ =
          T.let(:quiz, Onlyfans::PostUpdateParams::VotingType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Onlyfans::PostUpdateParams::VotingType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
