# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Fans#set_custom_name
    class FanSetCustomNameResponse < Onlyfansapi::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfansapi::Models::FanSetCustomNameResponse::Meta, nil]
      optional :_meta, -> { Onlyfansapi::Models::FanSetCustomNameResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfansapi::Models::FanSetCustomNameResponse::Data, nil]
      optional :data, -> { Onlyfansapi::Models::FanSetCustomNameResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfansapi::Models::FanSetCustomNameResponse::Meta]
      #   @param data [Onlyfansapi::Models::FanSetCustomNameResponse::Data]

      # @see Onlyfansapi::Models::FanSetCustomNameResponse#_meta
      class Meta < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfansapi::Models::FanSetCustomNameResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfansapi::Models::FanSetCustomNameResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfansapi::Models::FanSetCustomNameResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfansapi::Models::FanSetCustomNameResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfansapi::Models::FanSetCustomNameResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfansapi::Models::FanSetCustomNameResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfansapi::Models::FanSetCustomNameResponse::Meta::Cache]
        #   @param _credits [Onlyfansapi::Models::FanSetCustomNameResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfansapi::Models::FanSetCustomNameResponse::Meta::RateLimits]

        # @see Onlyfansapi::Models::FanSetCustomNameResponse::Meta#_cache
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

        # @see Onlyfansapi::Models::FanSetCustomNameResponse::Meta#_credits
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

        # @see Onlyfansapi::Models::FanSetCustomNameResponse::Meta#_rate_limits
        class RateLimits < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute limit_day
          #
          #   @return [Integer, nil]
          optional :limit_day, Integer

          # @!attribute limit_minute
          #
          #   @return [Integer, nil]
          optional :limit_minute, Integer

          # @!attribute remaining_day
          #
          #   @return [Integer, nil]
          optional :remaining_day, Integer

          # @!attribute remaining_minute
          #
          #   @return [Integer, nil]
          optional :remaining_minute, Integer

          # @!method initialize(limit_day: nil, limit_minute: nil, remaining_day: nil, remaining_minute: nil)
          #   @param limit_day [Integer]
          #   @param limit_minute [Integer]
          #   @param remaining_day [Integer]
          #   @param remaining_minute [Integer]
        end
      end

      # @see Onlyfansapi::Models::FanSetCustomNameResponse#data
      class Data < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [Integer, nil]
        optional :id, Integer

        # @!attribute avatar
        #
        #   @return [String, nil]
        optional :avatar, String

        # @!attribute avatar_thumbs
        #
        #   @return [Onlyfansapi::Models::FanSetCustomNameResponse::Data::AvatarThumbs, nil]
        optional :avatar_thumbs,
                 -> { Onlyfansapi::Models::FanSetCustomNameResponse::Data::AvatarThumbs },
                 api_name: :avatarThumbs

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

        # @!attribute can_receive_chat_message
        #
        #   @return [Boolean, nil]
        optional :can_receive_chat_message,
                 Onlyfansapi::Internal::Type::Boolean,
                 api_name: :canReceiveChatMessage

        # @!attribute can_report
        #
        #   @return [Boolean, nil]
        optional :can_report, Onlyfansapi::Internal::Type::Boolean, api_name: :canReport

        # @!attribute can_restrict
        #
        #   @return [Boolean, nil]
        optional :can_restrict, Onlyfansapi::Internal::Type::Boolean, api_name: :canRestrict

        # @!attribute can_trial_send
        #
        #   @return [Boolean, nil]
        optional :can_trial_send, Onlyfansapi::Internal::Type::Boolean, api_name: :canTrialSend

        # @!attribute current_subscribe_price
        #
        #   @return [String, nil]
        optional :current_subscribe_price, String, api_name: :currentSubscribePrice, nil?: true

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

        # @!attribute has_stream
        #
        #   @return [Boolean, nil]
        optional :has_stream, Onlyfansapi::Internal::Type::Boolean, api_name: :hasStream

        # @!attribute header
        #
        #   @return [String, nil]
        optional :header, String

        # @!attribute header_size
        #
        #   @return [Onlyfansapi::Models::FanSetCustomNameResponse::Data::HeaderSize, nil]
        optional :header_size,
                 -> { Onlyfansapi::Models::FanSetCustomNameResponse::Data::HeaderSize },
                 api_name: :headerSize

        # @!attribute header_thumbs
        #
        #   @return [Onlyfansapi::Models::FanSetCustomNameResponse::Data::HeaderThumbs, nil]
        optional :header_thumbs,
                 -> { Onlyfansapi::Models::FanSetCustomNameResponse::Data::HeaderThumbs },
                 api_name: :headerThumbs

        # @!attribute hide_chat
        #
        #   @return [Boolean, nil]
        optional :hide_chat, Onlyfansapi::Internal::Type::Boolean, api_name: :hideChat

        # @!attribute is_blocked
        #
        #   @return [Boolean, nil]
        optional :is_blocked, Onlyfansapi::Internal::Type::Boolean, api_name: :isBlocked

        # @!attribute is_paywall_required
        #
        #   @return [Boolean, nil]
        optional :is_paywall_required, Onlyfansapi::Internal::Type::Boolean, api_name: :isPaywallRequired

        # @!attribute is_pending_autoprolong
        #
        #   @return [Boolean, nil]
        optional :is_pending_autoprolong,
                 Onlyfansapi::Internal::Type::Boolean,
                 api_name: :isPendingAutoprolong

        # @!attribute is_performer
        #
        #   @return [Boolean, nil]
        optional :is_performer, Onlyfansapi::Internal::Type::Boolean, api_name: :isPerformer

        # @!attribute is_real_performer
        #
        #   @return [Boolean, nil]
        optional :is_real_performer, Onlyfansapi::Internal::Type::Boolean, api_name: :isRealPerformer

        # @!attribute is_restricted
        #
        #   @return [Boolean, nil]
        optional :is_restricted, Onlyfansapi::Internal::Type::Boolean, api_name: :isRestricted

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
        #   @return [Array<Onlyfansapi::Models::FanSetCustomNameResponse::Data::ListsState>, nil]
        optional :lists_states,
                 -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::FanSetCustomNameResponse::Data::ListsState] },
                 api_name: :listsStates

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute notice
        #
        #   @return [String, nil]
        optional :notice, String

        # @!attribute subscribed_by
        #
        #   @return [String, nil]
        optional :subscribed_by, String, api_name: :subscribedBy, nil?: true

        # @!attribute subscribed_by_autoprolong
        #
        #   @return [String, nil]
        optional :subscribed_by_autoprolong, String, api_name: :subscribedByAutoprolong, nil?: true

        # @!attribute subscribed_by_data
        #
        #   @return [Onlyfansapi::Models::FanSetCustomNameResponse::Data::SubscribedByData, nil]
        optional :subscribed_by_data,
                 -> { Onlyfansapi::Models::FanSetCustomNameResponse::Data::SubscribedByData },
                 api_name: :subscribedByData

        # @!attribute subscribed_by_expire
        #
        #   @return [String, nil]
        optional :subscribed_by_expire, String, api_name: :subscribedByExpire, nil?: true

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
        #   @return [String, nil]
        optional :subscribed_on, String, api_name: :subscribedOn, nil?: true

        # @!attribute subscribed_on_data
        #
        #   @return [Onlyfansapi::Models::FanSetCustomNameResponse::Data::SubscribedOnData, nil]
        optional :subscribed_on_data,
                 -> { Onlyfansapi::Models::FanSetCustomNameResponse::Data::SubscribedOnData },
                 api_name: :subscribedOnData

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

        # @!method initialize(id: nil, avatar: nil, avatar_thumbs: nil, can_add_subscriber: nil, can_comment_story: nil, can_earn: nil, can_look_story: nil, can_pay_internal: nil, can_receive_chat_message: nil, can_report: nil, can_restrict: nil, can_trial_send: nil, current_subscribe_price: nil, display_name: nil, has_not_viewed_story: nil, has_scheduled_stream: nil, has_stories: nil, has_stream: nil, header: nil, header_size: nil, header_thumbs: nil, hide_chat: nil, is_blocked: nil, is_paywall_required: nil, is_pending_autoprolong: nil, is_performer: nil, is_real_performer: nil, is_restricted: nil, is_verified: nil, last_seen: nil, lists_states: nil, name: nil, notice: nil, subscribed_by: nil, subscribed_by_autoprolong: nil, subscribed_by_data: nil, subscribed_by_expire: nil, subscribed_by_expire_date: nil, subscribed_is_expired_now: nil, subscribed_on: nil, subscribed_on_data: nil, subscribed_on_duration: nil, subscribed_on_expired_now: nil, subscribe_price: nil, tips_enabled: nil, tips_max: nil, tips_min: nil, tips_min_internal: nil, tips_text_enabled: nil, username: nil, view: nil)
        #   @param id [Integer]
        #   @param avatar [String]
        #   @param avatar_thumbs [Onlyfansapi::Models::FanSetCustomNameResponse::Data::AvatarThumbs]
        #   @param can_add_subscriber [Boolean]
        #   @param can_comment_story [Boolean]
        #   @param can_earn [Boolean]
        #   @param can_look_story [Boolean]
        #   @param can_pay_internal [Boolean]
        #   @param can_receive_chat_message [Boolean]
        #   @param can_report [Boolean]
        #   @param can_restrict [Boolean]
        #   @param can_trial_send [Boolean]
        #   @param current_subscribe_price [String, nil]
        #   @param display_name [String]
        #   @param has_not_viewed_story [Boolean]
        #   @param has_scheduled_stream [Boolean]
        #   @param has_stories [Boolean]
        #   @param has_stream [Boolean]
        #   @param header [String]
        #   @param header_size [Onlyfansapi::Models::FanSetCustomNameResponse::Data::HeaderSize]
        #   @param header_thumbs [Onlyfansapi::Models::FanSetCustomNameResponse::Data::HeaderThumbs]
        #   @param hide_chat [Boolean]
        #   @param is_blocked [Boolean]
        #   @param is_paywall_required [Boolean]
        #   @param is_pending_autoprolong [Boolean]
        #   @param is_performer [Boolean]
        #   @param is_real_performer [Boolean]
        #   @param is_restricted [Boolean]
        #   @param is_verified [Boolean]
        #   @param last_seen [String]
        #   @param lists_states [Array<Onlyfansapi::Models::FanSetCustomNameResponse::Data::ListsState>]
        #   @param name [String]
        #   @param notice [String]
        #   @param subscribed_by [String, nil]
        #   @param subscribed_by_autoprolong [String, nil]
        #   @param subscribed_by_data [Onlyfansapi::Models::FanSetCustomNameResponse::Data::SubscribedByData]
        #   @param subscribed_by_expire [String, nil]
        #   @param subscribed_by_expire_date [String]
        #   @param subscribed_is_expired_now [Boolean]
        #   @param subscribed_on [String, nil]
        #   @param subscribed_on_data [Onlyfansapi::Models::FanSetCustomNameResponse::Data::SubscribedOnData]
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

        # @see Onlyfansapi::Models::FanSetCustomNameResponse::Data#avatar_thumbs
        class AvatarThumbs < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute c144
          #
          #   @return [String, nil]
          optional :c144, String

          # @!attribute c50
          #
          #   @return [String, nil]
          optional :c50, String

          # @!method initialize(c144: nil, c50: nil)
          #   @param c144 [String]
          #   @param c50 [String]
        end

        # @see Onlyfansapi::Models::FanSetCustomNameResponse::Data#header_size
        class HeaderSize < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute height
          #
          #   @return [Integer, nil]
          optional :height, Integer

          # @!attribute width
          #
          #   @return [Integer, nil]
          optional :width, Integer

          # @!method initialize(height: nil, width: nil)
          #   @param height [Integer]
          #   @param width [Integer]
        end

        # @see Onlyfansapi::Models::FanSetCustomNameResponse::Data#header_thumbs
        class HeaderThumbs < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute w480
          #
          #   @return [String, nil]
          optional :w480, String

          # @!attribute w760
          #
          #   @return [String, nil]
          optional :w760, String

          # @!method initialize(w480: nil, w760: nil)
          #   @param w480 [String]
          #   @param w760 [String]
        end

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

        # @see Onlyfansapi::Models::FanSetCustomNameResponse::Data#subscribed_by_data
        class SubscribedByData < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute discount_finished_at
          #
          #   @return [String, nil]
          optional :discount_finished_at, String, api_name: :discountFinishedAt, nil?: true

          # @!attribute discount_percent
          #
          #   @return [Integer, nil]
          optional :discount_percent, Integer, api_name: :discountPercent

          # @!attribute discount_period
          #
          #   @return [Integer, nil]
          optional :discount_period, Integer, api_name: :discountPeriod

          # @!attribute discount_started_at
          #
          #   @return [String, nil]
          optional :discount_started_at, String, api_name: :discountStartedAt, nil?: true

          # @!attribute duration
          #
          #   @return [String, nil]
          optional :duration, String

          # @!attribute expired_at
          #
          #   @return [String, nil]
          optional :expired_at, String, api_name: :expiredAt

          # @!attribute has_active_paid_subscriptions
          #
          #   @return [Boolean, nil]
          optional :has_active_paid_subscriptions,
                   Onlyfansapi::Internal::Type::Boolean,
                   api_name: :hasActivePaidSubscriptions

          # @!attribute is_muted
          #
          #   @return [Boolean, nil]
          optional :is_muted, Onlyfansapi::Internal::Type::Boolean, api_name: :isMuted

          # @!attribute new_posts_after_expire_count
          #
          #   @return [Integer, nil]
          optional :new_posts_after_expire_count, Integer, api_name: :newPostsAfterExpireCount

          # @!attribute new_price
          #
          #   @return [Integer, nil]
          optional :new_price, Integer, api_name: :newPrice

          # @!attribute price
          #
          #   @return [Integer, nil]
          optional :price, Integer

          # @!attribute regular_price
          #
          #   @return [Integer, nil]
          optional :regular_price, Integer, api_name: :regularPrice

          # @!attribute renewed_at
          #
          #   @return [String, nil]
          optional :renewed_at, String, api_name: :renewedAt, nil?: true

          # @!attribute show_posts_in_feed
          #
          #   @return [Boolean, nil]
          optional :show_posts_in_feed, Onlyfansapi::Internal::Type::Boolean, api_name: :showPostsInFeed

          # @!attribute status
          #
          #   @return [String, nil]
          optional :status, String, nil?: true

          # @!attribute subscribe_at
          #
          #   @return [String, nil]
          optional :subscribe_at, String, api_name: :subscribeAt

          # @!attribute subscribe_price
          #
          #   @return [Integer, nil]
          optional :subscribe_price, Integer, api_name: :subscribePrice

          # @!attribute subscribes
          #
          #   @return [Array<Object>, nil]
          optional :subscribes, Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Internal::Type::Unknown]

          # @!attribute unsubscribe_reason
          #
          #   @return [String, nil]
          optional :unsubscribe_reason, String, api_name: :unsubscribeReason

          # @!method initialize(discount_finished_at: nil, discount_percent: nil, discount_period: nil, discount_started_at: nil, duration: nil, expired_at: nil, has_active_paid_subscriptions: nil, is_muted: nil, new_posts_after_expire_count: nil, new_price: nil, price: nil, regular_price: nil, renewed_at: nil, show_posts_in_feed: nil, status: nil, subscribe_at: nil, subscribe_price: nil, subscribes: nil, unsubscribe_reason: nil)
          #   @param discount_finished_at [String, nil]
          #   @param discount_percent [Integer]
          #   @param discount_period [Integer]
          #   @param discount_started_at [String, nil]
          #   @param duration [String]
          #   @param expired_at [String]
          #   @param has_active_paid_subscriptions [Boolean]
          #   @param is_muted [Boolean]
          #   @param new_posts_after_expire_count [Integer]
          #   @param new_price [Integer]
          #   @param price [Integer]
          #   @param regular_price [Integer]
          #   @param renewed_at [String, nil]
          #   @param show_posts_in_feed [Boolean]
          #   @param status [String, nil]
          #   @param subscribe_at [String]
          #   @param subscribe_price [Integer]
          #   @param subscribes [Array<Object>]
          #   @param unsubscribe_reason [String]
        end

        # @see Onlyfansapi::Models::FanSetCustomNameResponse::Data#subscribed_on_data
        class SubscribedOnData < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute discount_finished_at
          #
          #   @return [String, nil]
          optional :discount_finished_at, String, api_name: :discountFinishedAt, nil?: true

          # @!attribute discount_percent
          #
          #   @return [Integer, nil]
          optional :discount_percent, Integer, api_name: :discountPercent

          # @!attribute discount_period
          #
          #   @return [Integer, nil]
          optional :discount_period, Integer, api_name: :discountPeriod

          # @!attribute discount_started_at
          #
          #   @return [String, nil]
          optional :discount_started_at, String, api_name: :discountStartedAt, nil?: true

          # @!attribute duration
          #
          #   @return [String, nil]
          optional :duration, String

          # @!attribute expired_at
          #
          #   @return [String, nil]
          optional :expired_at, String, api_name: :expiredAt

          # @!attribute has_active_paid_subscriptions
          #
          #   @return [Boolean, nil]
          optional :has_active_paid_subscriptions,
                   Onlyfansapi::Internal::Type::Boolean,
                   api_name: :hasActivePaidSubscriptions

          # @!attribute is_muted
          #
          #   @return [Boolean, nil]
          optional :is_muted, Onlyfansapi::Internal::Type::Boolean, api_name: :isMuted

          # @!attribute messages_summ
          #
          #   @return [Integer, nil]
          optional :messages_summ, Integer, api_name: :messagesSumm

          # @!attribute new_price
          #
          #   @return [Integer, nil]
          optional :new_price, Integer, api_name: :newPrice

          # @!attribute posts_summ
          #
          #   @return [Integer, nil]
          optional :posts_summ, Integer, api_name: :postsSumm

          # @!attribute price
          #
          #   @return [Integer, nil]
          optional :price, Integer

          # @!attribute regular_price
          #
          #   @return [Float, nil]
          optional :regular_price, Float, api_name: :regularPrice

          # @!attribute renewed_at
          #
          #   @return [String, nil]
          optional :renewed_at, String, api_name: :renewedAt, nil?: true

          # @!attribute status
          #
          #   @return [String, nil]
          optional :status, String, nil?: true

          # @!attribute streams_summ
          #
          #   @return [Integer, nil]
          optional :streams_summ, Integer, api_name: :streamsSumm

          # @!attribute subscribe_at
          #
          #   @return [String, nil]
          optional :subscribe_at, String, api_name: :subscribeAt

          # @!attribute subscribe_price
          #
          #   @return [Float, nil]
          optional :subscribe_price, Float, api_name: :subscribePrice

          # @!attribute subscribes
          #
          #   @return [Array<Object>, nil]
          optional :subscribes, Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Internal::Type::Unknown]

          # @!attribute subscribes_summ
          #
          #   @return [Integer, nil]
          optional :subscribes_summ, Integer, api_name: :subscribesSumm

          # @!attribute tips_summ
          #
          #   @return [Integer, nil]
          optional :tips_summ, Integer, api_name: :tipsSumm

          # @!attribute total_summ
          #
          #   @return [Integer, nil]
          optional :total_summ, Integer, api_name: :totalSumm

          # @!attribute unsubscribe_reason
          #
          #   @return [String, nil]
          optional :unsubscribe_reason, String, api_name: :unsubscribeReason

          # @!method initialize(discount_finished_at: nil, discount_percent: nil, discount_period: nil, discount_started_at: nil, duration: nil, expired_at: nil, has_active_paid_subscriptions: nil, is_muted: nil, messages_summ: nil, new_price: nil, posts_summ: nil, price: nil, regular_price: nil, renewed_at: nil, status: nil, streams_summ: nil, subscribe_at: nil, subscribe_price: nil, subscribes: nil, subscribes_summ: nil, tips_summ: nil, total_summ: nil, unsubscribe_reason: nil)
          #   @param discount_finished_at [String, nil]
          #   @param discount_percent [Integer]
          #   @param discount_period [Integer]
          #   @param discount_started_at [String, nil]
          #   @param duration [String]
          #   @param expired_at [String]
          #   @param has_active_paid_subscriptions [Boolean]
          #   @param is_muted [Boolean]
          #   @param messages_summ [Integer]
          #   @param new_price [Integer]
          #   @param posts_summ [Integer]
          #   @param price [Integer]
          #   @param regular_price [Float]
          #   @param renewed_at [String, nil]
          #   @param status [String, nil]
          #   @param streams_summ [Integer]
          #   @param subscribe_at [String]
          #   @param subscribe_price [Float]
          #   @param subscribes [Array<Object>]
          #   @param subscribes_summ [Integer]
          #   @param tips_summ [Integer]
          #   @param total_summ [Integer]
          #   @param unsubscribe_reason [String]
        end
      end
    end
  end
end
