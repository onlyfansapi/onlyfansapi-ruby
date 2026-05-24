# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Posts#create
    class PostCreateParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute text
      #   The post text content
      #
      #   @return [String]
      required :text, String

      # @!attribute expire_days
      #   Number of days after which the post will expire. Can be 1, 3, 7 or 30 days. Keep
      #   empty for no expiration.
      #
      #   @return [Integer, nil]
      optional :expire_days, Integer, api_name: :expireDays

      # @!attribute fund_raising_target_amount
      #   Add a fundraising target to your post. If present, value must be at least 10.
      #
      #   @return [Integer, nil]
      optional :fund_raising_target_amount, Integer, api_name: :fundRaisingTargetAmount

      # @!attribute fund_raising_tips_presets
      #   Specify which tip amounts will be listed under the fundraising card. Required
      #   with `fundRaisingTargetAmount`, and you must provide at least 1 option. Array
      #   items cannot be higher than the `fundRaisingTargetAmount`.
      #
      #   @return [Array<String>, nil]
      optional :fund_raising_tips_presets,
               Onlyfansapi::Internal::Type::ArrayOf[String],
               api_name: :fundRaisingTipsPresets

      # @!attribute label_ids
      #   Array of OF label IDs. Refer to our `/posts/labels` endpoint.
      #
      #   @return [String, nil]
      optional :label_ids, String, api_name: :labelIds

      # @!attribute media_files
      #   Array of OFAPI `ofapi_media_` IDs, or OF media IDs
      #
      #   @return [String, nil]
      optional :media_files, String, api_name: :mediaFiles

      # @!attribute previews
      #   Array of media file upload prefixed_ids, or OF media IDs (required if price is
      #   not 0). Will be shown if `price` is provided. All `previews` values must also
      #   exist in the `mediaFiles` array.
      #
      #   @return [Array<String>, nil]
      optional :previews, Onlyfansapi::Internal::Type::ArrayOf[String]

      # @!attribute rf_tag
      #   Array OnlyFans creator user IDs to tag in your post
      #
      #   @return [String, nil]
      optional :rf_tag, String, api_name: :rfTag

      # @!attribute save_for_later
      #   Add your post to the "Saved for later" queue.
      #
      #   @return [Boolean, nil]
      optional :save_for_later, Onlyfansapi::Internal::Type::Boolean, api_name: :saveForLater

      # @!attribute scheduled_date
      #   Schedule your post in the future (UTC timezone).
      #
      #   @return [String, nil]
      optional :scheduled_date, String, api_name: :scheduledDate

      # @!attribute voting_correct_index
      #   The array key of your quiz' correct answer. Required when `votingType` is
      #   "quiz". Keep in mind that arrays start at `0`
      #
      #   @return [Integer, nil]
      optional :voting_correct_index, Integer, api_name: :votingCorrectIndex

      # @!attribute voting_due
      #   The due date (in days) of your poll/quiz. Can be 1, 3, 7 or 30 days. Can only be
      #   filled with `votingType`.
      #
      #   @return [Integer, nil]
      optional :voting_due, Integer, api_name: :votingDue

      # @!attribute voting_options
      #   The options of your poll/quiz. Required with `votingType`.
      #
      #   @return [Array<String>, nil]
      optional :voting_options, Onlyfansapi::Internal::Type::ArrayOf[String], api_name: :votingOptions

      # @!attribute voting_type
      #   Include a poll or quiz within your post.
      #
      #   @return [Symbol, Onlyfansapi::Models::PostCreateParams::VotingType, nil]
      optional :voting_type, enum: -> { Onlyfansapi::PostCreateParams::VotingType }, api_name: :votingType

      # @!method initialize(account:, text:, expire_days: nil, fund_raising_target_amount: nil, fund_raising_tips_presets: nil, label_ids: nil, media_files: nil, previews: nil, rf_tag: nil, save_for_later: nil, scheduled_date: nil, voting_correct_index: nil, voting_due: nil, voting_options: nil, voting_type: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfansapi::Models::PostCreateParams} for more details.
      #
      #   @param account [String]
      #
      #   @param text [String] The post text content
      #
      #   @param expire_days [Integer] Number of days after which the post will expire. Can be 1, 3, 7 or 30 days. Keep
      #
      #   @param fund_raising_target_amount [Integer] Add a fundraising target to your post. If present, value must be at least 10.
      #
      #   @param fund_raising_tips_presets [Array<String>] Specify which tip amounts will be listed under the fundraising card. Required wi
      #
      #   @param label_ids [String] Array of OF label IDs. Refer to our `/posts/labels` endpoint.
      #
      #   @param media_files [String] Array of OFAPI `ofapi_media_` IDs, or OF media IDs
      #
      #   @param previews [Array<String>] Array of media file upload prefixed_ids, or OF media IDs (required if price is n
      #
      #   @param rf_tag [String] Array OnlyFans creator user IDs to tag in your post
      #
      #   @param save_for_later [Boolean] Add your post to the "Saved for later" queue.
      #
      #   @param scheduled_date [String] Schedule your post in the future (UTC timezone).
      #
      #   @param voting_correct_index [Integer] The array key of your quiz' correct answer. Required when `votingType` is "quiz"
      #
      #   @param voting_due [Integer] The due date (in days) of your poll/quiz. Can be 1, 3, 7 or 30 days. Can only be
      #
      #   @param voting_options [Array<String>] The options of your poll/quiz. Required with `votingType`.
      #
      #   @param voting_type [Symbol, Onlyfansapi::Models::PostCreateParams::VotingType] Include a poll or quiz within your post.
      #
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]

      # Include a poll or quiz within your post.
      module VotingType
        extend Onlyfansapi::Internal::Type::Enum

        POLL = :poll
        QUIZ = :quiz

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
