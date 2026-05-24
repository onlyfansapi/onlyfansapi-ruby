# typed: strong

module Onlyfansapi
  module Models
    class PostCreateParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Onlyfansapi::PostCreateParams, Onlyfansapi::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :account

      # The post text content
      sig { returns(String) }
      attr_accessor :text

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

      # Direct file uploads, OFAPI `ofapi_media_` IDs, or OF vault IDs.
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
        returns(T.nilable(Onlyfansapi::PostCreateParams::VotingType::OrSymbol))
      end
      attr_reader :voting_type

      sig do
        params(
          voting_type: Onlyfansapi::PostCreateParams::VotingType::OrSymbol
        ).void
      end
      attr_writer :voting_type

      sig do
        params(
          account: String,
          text: String,
          expire_days: Integer,
          fund_raising_target_amount: Integer,
          fund_raising_tips_presets: T::Array[String],
          label_ids: String,
          media_files: T::Array[T.anything],
          previews: T::Array[T.anything],
          rf_tag: String,
          save_for_later: T::Boolean,
          scheduled_date: String,
          voting_correct_index: Integer,
          voting_due: Integer,
          voting_options: T::Array[String],
          voting_type: Onlyfansapi::PostCreateParams::VotingType::OrSymbol,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        # The post text content
        text:,
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
        # Direct file uploads, OFAPI `ofapi_media_` IDs, or OF vault IDs.
        media_files: nil,
        # Direct file uploads, OFAPI `ofapi_media_` IDs, OF vault IDs, or integer indices
        # referencing uploaded files in `mediaFiles`. Will be shown if `price` is
        # provided.
        previews: nil,
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
            text: String,
            expire_days: Integer,
            fund_raising_target_amount: Integer,
            fund_raising_tips_presets: T::Array[String],
            label_ids: String,
            media_files: T::Array[T.anything],
            previews: T::Array[T.anything],
            rf_tag: String,
            save_for_later: T::Boolean,
            scheduled_date: String,
            voting_correct_index: Integer,
            voting_due: Integer,
            voting_options: T::Array[String],
            voting_type: Onlyfansapi::PostCreateParams::VotingType::OrSymbol,
            request_options: Onlyfansapi::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Include a poll or quiz within your post.
      module VotingType
        extend Onlyfansapi::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Onlyfansapi::PostCreateParams::VotingType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        POLL =
          T.let(:poll, Onlyfansapi::PostCreateParams::VotingType::TaggedSymbol)
        QUIZ =
          T.let(:quiz, Onlyfansapi::PostCreateParams::VotingType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Onlyfansapi::PostCreateParams::VotingType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
