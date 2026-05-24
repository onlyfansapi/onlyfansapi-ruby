# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Stories#list_viewers
    class StoryListViewersResponse < Onlyfansapi::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfansapi::Models::StoryListViewersResponse::Meta, nil]
      optional :_meta, -> { Onlyfansapi::Models::StoryListViewersResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfansapi::Models::StoryListViewersResponse::Data, nil]
      optional :data, -> { Onlyfansapi::Models::StoryListViewersResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfansapi::Models::StoryListViewersResponse::Meta]
      #   @param data [Onlyfansapi::Models::StoryListViewersResponse::Data]

      # @see Onlyfansapi::Models::StoryListViewersResponse#_meta
      class Meta < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfansapi::Models::StoryListViewersResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfansapi::Models::StoryListViewersResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfansapi::Models::StoryListViewersResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfansapi::Models::StoryListViewersResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfansapi::Models::StoryListViewersResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfansapi::Models::StoryListViewersResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfansapi::Models::StoryListViewersResponse::Meta::Cache]
        #   @param _credits [Onlyfansapi::Models::StoryListViewersResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfansapi::Models::StoryListViewersResponse::Meta::RateLimits]

        # @see Onlyfansapi::Models::StoryListViewersResponse::Meta#_cache
        class Cache < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute is_cached
          #
          #   @return [Boolean, nil]
          optional :is_cached, Onlyfansapi::Internal::Type::Boolean

          # @!attribute note
          #
          #   @return [String, nil]
          optional :note, String

          # @!method initialize(is_cached: nil, note: nil)
          #   @param is_cached [Boolean]
          #   @param note [String]
        end

        # @see Onlyfansapi::Models::StoryListViewersResponse::Meta#_credits
        class Credits < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute balance
          #
          #   @return [Integer, nil]
          optional :balance, Integer

          # @!attribute note
          #
          #   @return [String, nil]
          optional :note, String

          # @!attribute used
          #
          #   @return [Integer, nil]
          optional :used, Integer

          # @!method initialize(balance: nil, note: nil, used: nil)
          #   @param balance [Integer]
          #   @param note [String]
          #   @param used [Integer]
        end

        # @see Onlyfansapi::Models::StoryListViewersResponse::Meta#_rate_limits
        class RateLimits < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute limit_day
          #
          #   @return [String, nil]
          optional :limit_day, String, nil?: true

          # @!attribute limit_minute
          #
          #   @return [Integer, nil]
          optional :limit_minute, Integer

          # @!attribute notice
          #
          #   @return [String, nil]
          optional :notice, String

          # @!attribute remaining_day
          #
          #   @return [String, nil]
          optional :remaining_day, String, nil?: true

          # @!attribute remaining_minute
          #
          #   @return [Integer, nil]
          optional :remaining_minute, Integer

          # @!method initialize(limit_day: nil, limit_minute: nil, notice: nil, remaining_day: nil, remaining_minute: nil)
          #   @param limit_day [String, nil]
          #   @param limit_minute [Integer]
          #   @param notice [String]
          #   @param remaining_day [String, nil]
          #   @param remaining_minute [Integer]
        end
      end

      # @see Onlyfansapi::Models::StoryListViewersResponse#data
      class Data < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute has_more
        #
        #   @return [Boolean, nil]
        optional :has_more, Onlyfansapi::Internal::Type::Boolean, api_name: :hasMore

        # @!attribute list
        #
        #   @return [Array<Onlyfansapi::Models::StoryListViewersResponse::Data::List>, nil]
        optional :list,
                 -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::StoryListViewersResponse::Data::List] }

        # @!method initialize(has_more: nil, list: nil)
        #   @param has_more [Boolean]
        #   @param list [Array<Onlyfansapi::Models::StoryListViewersResponse::Data::List>]

        class List < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [Integer, nil]
          optional :id, Integer

          # @!attribute avatar
          #
          #   @return [String, nil]
          optional :avatar, String, nil?: true

          # @!attribute avatar_thumbs
          #
          #   @return [String, nil]
          optional :avatar_thumbs, String, api_name: :avatarThumbs, nil?: true

          # @!attribute can_add_subscriber
          #
          #   @return [Boolean, nil]
          optional :can_add_subscriber, Onlyfansapi::Internal::Type::Boolean, api_name: :canAddSubscriber

          # @!attribute can_comment_story
          #
          #   @return [Boolean, nil]
          optional :can_comment_story, Onlyfansapi::Internal::Type::Boolean, api_name: :canCommentStory

          # @!attribute can_earn
          #
          #   @return [Boolean, nil]
          optional :can_earn, Onlyfansapi::Internal::Type::Boolean, api_name: :canEarn

          # @!attribute can_look_story
          #
          #   @return [Boolean, nil]
          optional :can_look_story, Onlyfansapi::Internal::Type::Boolean, api_name: :canLookStory

          # @!attribute can_pay_internal
          #
          #   @return [Boolean, nil]
          optional :can_pay_internal, Onlyfansapi::Internal::Type::Boolean, api_name: :canPayInternal

          # @!attribute can_report
          #
          #   @return [Boolean, nil]
          optional :can_report, Onlyfansapi::Internal::Type::Boolean, api_name: :canReport

          # @!attribute can_restrict
          #
          #   @return [Boolean, nil]
          optional :can_restrict, Onlyfansapi::Internal::Type::Boolean, api_name: :canRestrict

          # @!attribute current_subscribe_price
          #
          #   @return [Integer, nil]
          optional :current_subscribe_price, Integer, api_name: :currentSubscribePrice

          # @!attribute display_name
          #
          #   @return [String, nil]
          optional :display_name, String, api_name: :displayName

          # @!attribute has_not_viewed_story
          #
          #   @return [Boolean, nil]
          optional :has_not_viewed_story, Onlyfansapi::Internal::Type::Boolean, api_name: :hasNotViewedStory

          # @!attribute has_scheduled_stream
          #
          #   @return [Boolean, nil]
          optional :has_scheduled_stream, Onlyfansapi::Internal::Type::Boolean, api_name: :hasScheduledStream

          # @!attribute has_stories
          #
          #   @return [Boolean, nil]
          optional :has_stories, Onlyfansapi::Internal::Type::Boolean, api_name: :hasStories

          # @!attribute has_story_tips
          #
          #   @return [Boolean, nil]
          optional :has_story_tips, Onlyfansapi::Internal::Type::Boolean, api_name: :hasStoryTips

          # @!attribute has_stream
          #
          #   @return [Boolean, nil]
          optional :has_stream, Onlyfansapi::Internal::Type::Boolean, api_name: :hasStream

          # @!attribute has_top_story_tips
          #
          #   @return [Boolean, nil]
          optional :has_top_story_tips, Onlyfansapi::Internal::Type::Boolean, api_name: :hasTopStoryTips

          # @!attribute header
          #
          #   @return [String, nil]
          optional :header, String, nil?: true

          # @!attribute header_size
          #
          #   @return [String, nil]
          optional :header_size, String, api_name: :headerSize, nil?: true

          # @!attribute header_thumbs
          #
          #   @return [String, nil]
          optional :header_thumbs, String, api_name: :headerThumbs, nil?: true

          # @!attribute is_restricted
          #
          #   @return [Boolean, nil]
          optional :is_restricted, Onlyfansapi::Internal::Type::Boolean, api_name: :isRestricted

          # @!attribute is_story_blocked_user
          #
          #   @return [Boolean, nil]
          optional :is_story_blocked_user, Onlyfansapi::Internal::Type::Boolean, api_name: :isStoryBlockedUser

          # @!attribute is_story_liked
          #
          #   @return [Boolean, nil]
          optional :is_story_liked, Onlyfansapi::Internal::Type::Boolean, api_name: :isStoryLiked

          # @!attribute is_verified
          #
          #   @return [Boolean, nil]
          optional :is_verified, Onlyfansapi::Internal::Type::Boolean, api_name: :isVerified

          # @!attribute last_seen
          #
          #   @return [String, nil]
          optional :last_seen, String, api_name: :lastSeen

          # @!attribute lists_states
          #
          #   @return [Array<Onlyfansapi::Models::StoryListViewersResponse::Data::List::ListsState>, nil]
          optional :lists_states,
                   -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::StoryListViewersResponse::Data::List::ListsState] },
                   api_name: :listsStates

          # @!attribute name
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute notice
          #
          #   @return [String, nil]
          optional :notice, String

          # @!attribute show_media_count
          #
          #   @return [Boolean, nil]
          optional :show_media_count, Onlyfansapi::Internal::Type::Boolean, api_name: :showMediaCount

          # @!attribute subscribed_by
          #
          #   @return [Boolean, nil]
          optional :subscribed_by, Onlyfansapi::Internal::Type::Boolean, api_name: :subscribedBy

          # @!attribute subscribed_by_autoprolong
          #
          #   @return [Boolean, nil]
          optional :subscribed_by_autoprolong,
                   Onlyfansapi::Internal::Type::Boolean,
                   api_name: :subscribedByAutoprolong

          # @!attribute subscribed_by_expire
          #
          #   @return [Boolean, nil]
          optional :subscribed_by_expire, Onlyfansapi::Internal::Type::Boolean, api_name: :subscribedByExpire

          # @!attribute subscribed_by_expire_date
          #
          #   @return [String, nil]
          optional :subscribed_by_expire_date, String, api_name: :subscribedByExpireDate

          # @!attribute subscribed_is_expired_now
          #
          #   @return [Boolean, nil]
          optional :subscribed_is_expired_now,
                   Onlyfansapi::Internal::Type::Boolean,
                   api_name: :subscribedIsExpiredNow

          # @!attribute subscribed_on
          #
          #   @return [Boolean, nil]
          optional :subscribed_on, Onlyfansapi::Internal::Type::Boolean, api_name: :subscribedOn

          # @!attribute subscribed_on_duration
          #
          #   @return [String, nil]
          optional :subscribed_on_duration, String, api_name: :subscribedOnDuration

          # @!attribute subscribed_on_expired_now
          #
          #   @return [Boolean, nil]
          optional :subscribed_on_expired_now,
                   Onlyfansapi::Internal::Type::Boolean,
                   api_name: :subscribedOnExpiredNow

          # @!attribute subscribe_price
          #
          #   @return [Integer, nil]
          optional :subscribe_price, Integer, api_name: :subscribePrice

          # @!attribute tips_enabled
          #
          #   @return [Boolean, nil]
          optional :tips_enabled, Onlyfansapi::Internal::Type::Boolean, api_name: :tipsEnabled

          # @!attribute tips_max
          #
          #   @return [Integer, nil]
          optional :tips_max, Integer, api_name: :tipsMax

          # @!attribute tips_min
          #
          #   @return [Integer, nil]
          optional :tips_min, Integer, api_name: :tipsMin

          # @!attribute tips_min_internal
          #
          #   @return [Integer, nil]
          optional :tips_min_internal, Integer, api_name: :tipsMinInternal

          # @!attribute tips_text_enabled
          #
          #   @return [Boolean, nil]
          optional :tips_text_enabled, Onlyfansapi::Internal::Type::Boolean, api_name: :tipsTextEnabled

          # @!attribute username
          #
          #   @return [String, nil]
          optional :username, String

          # @!attribute view
          #
          #   @return [String, nil]
          optional :view, String

          # @!method initialize(id: nil, avatar: nil, avatar_thumbs: nil, can_add_subscriber: nil, can_comment_story: nil, can_earn: nil, can_look_story: nil, can_pay_internal: nil, can_report: nil, can_restrict: nil, current_subscribe_price: nil, display_name: nil, has_not_viewed_story: nil, has_scheduled_stream: nil, has_stories: nil, has_story_tips: nil, has_stream: nil, has_top_story_tips: nil, header: nil, header_size: nil, header_thumbs: nil, is_restricted: nil, is_story_blocked_user: nil, is_story_liked: nil, is_verified: nil, last_seen: nil, lists_states: nil, name: nil, notice: nil, show_media_count: nil, subscribed_by: nil, subscribed_by_autoprolong: nil, subscribed_by_expire: nil, subscribed_by_expire_date: nil, subscribed_is_expired_now: nil, subscribed_on: nil, subscribed_on_duration: nil, subscribed_on_expired_now: nil, subscribe_price: nil, tips_enabled: nil, tips_max: nil, tips_min: nil, tips_min_internal: nil, tips_text_enabled: nil, username: nil, view: nil)
          #   @param id [Integer]
          #   @param avatar [String, nil]
          #   @param avatar_thumbs [String, nil]
          #   @param can_add_subscriber [Boolean]
          #   @param can_comment_story [Boolean]
          #   @param can_earn [Boolean]
          #   @param can_look_story [Boolean]
          #   @param can_pay_internal [Boolean]
          #   @param can_report [Boolean]
          #   @param can_restrict [Boolean]
          #   @param current_subscribe_price [Integer]
          #   @param display_name [String]
          #   @param has_not_viewed_story [Boolean]
          #   @param has_scheduled_stream [Boolean]
          #   @param has_stories [Boolean]
          #   @param has_story_tips [Boolean]
          #   @param has_stream [Boolean]
          #   @param has_top_story_tips [Boolean]
          #   @param header [String, nil]
          #   @param header_size [String, nil]
          #   @param header_thumbs [String, nil]
          #   @param is_restricted [Boolean]
          #   @param is_story_blocked_user [Boolean]
          #   @param is_story_liked [Boolean]
          #   @param is_verified [Boolean]
          #   @param last_seen [String]
          #   @param lists_states [Array<Onlyfansapi::Models::StoryListViewersResponse::Data::List::ListsState>]
          #   @param name [String]
          #   @param notice [String]
          #   @param show_media_count [Boolean]
          #   @param subscribed_by [Boolean]
          #   @param subscribed_by_autoprolong [Boolean]
          #   @param subscribed_by_expire [Boolean]
          #   @param subscribed_by_expire_date [String]
          #   @param subscribed_is_expired_now [Boolean]
          #   @param subscribed_on [Boolean]
          #   @param subscribed_on_duration [String]
          #   @param subscribed_on_expired_now [Boolean]
          #   @param subscribe_price [Integer]
          #   @param tips_enabled [Boolean]
          #   @param tips_max [Integer]
          #   @param tips_min [Integer]
          #   @param tips_min_internal [Integer]
          #   @param tips_text_enabled [Boolean]
          #   @param username [String]
          #   @param view [String]

          class ListsState < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String, nil]
            optional :id, String

            # @!attribute can_add_user
            #
            #   @return [Boolean, nil]
            optional :can_add_user, Onlyfansapi::Internal::Type::Boolean, api_name: :canAddUser

            # @!attribute cannot_add_user_reason
            #
            #   @return [String, nil]
            optional :cannot_add_user_reason, String, api_name: :cannotAddUserReason

            # @!attribute has_user
            #
            #   @return [Boolean, nil]
            optional :has_user, Onlyfansapi::Internal::Type::Boolean, api_name: :hasUser

            # @!attribute name
            #
            #   @return [String, nil]
            optional :name, String

            # @!attribute type
            #
            #   @return [String, nil]
            optional :type, String

            # @!method initialize(id: nil, can_add_user: nil, cannot_add_user_reason: nil, has_user: nil, name: nil, type: nil)
            #   @param id [String]
            #   @param can_add_user [Boolean]
            #   @param cannot_add_user_reason [String]
            #   @param has_user [Boolean]
            #   @param name [String]
            #   @param type [String]
          end
        end
      end
    end
  end
end
