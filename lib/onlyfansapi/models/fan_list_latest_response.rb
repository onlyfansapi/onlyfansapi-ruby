# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Fans#list_latest
    class FanListLatestResponse < Onlyfansapi::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfansapi::Models::FanListLatestResponse::Meta, nil]
      optional :_meta, -> { Onlyfansapi::Models::FanListLatestResponse::Meta }

      # @!attribute _pagination
      #
      #   @return [Onlyfansapi::Models::FanListLatestResponse::Pagination, nil]
      optional :_pagination, -> { Onlyfansapi::Models::FanListLatestResponse::Pagination }

      # @!attribute data
      #
      #   @return [Onlyfansapi::Models::FanListLatestResponse::Data, nil]
      optional :data, -> { Onlyfansapi::Models::FanListLatestResponse::Data }

      # @!method initialize(_meta: nil, _pagination: nil, data: nil)
      #   @param _meta [Onlyfansapi::Models::FanListLatestResponse::Meta]
      #   @param _pagination [Onlyfansapi::Models::FanListLatestResponse::Pagination]
      #   @param data [Onlyfansapi::Models::FanListLatestResponse::Data]

      # @see Onlyfansapi::Models::FanListLatestResponse#_meta
      class Meta < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfansapi::Models::FanListLatestResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfansapi::Models::FanListLatestResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfansapi::Models::FanListLatestResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfansapi::Models::FanListLatestResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfansapi::Models::FanListLatestResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfansapi::Models::FanListLatestResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfansapi::Models::FanListLatestResponse::Meta::Cache]
        #   @param _credits [Onlyfansapi::Models::FanListLatestResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfansapi::Models::FanListLatestResponse::Meta::RateLimits]

        # @see Onlyfansapi::Models::FanListLatestResponse::Meta#_cache
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

        # @see Onlyfansapi::Models::FanListLatestResponse::Meta#_credits
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

        # @see Onlyfansapi::Models::FanListLatestResponse::Meta#_rate_limits
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

      # @see Onlyfansapi::Models::FanListLatestResponse#_pagination
      class Pagination < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute next_page
        #
        #   @return [String, nil]
        optional :next_page, String, nil?: true

        # @!method initialize(next_page: nil)
        #   @param next_page [String, nil]
      end

      # @see Onlyfansapi::Models::FanListLatestResponse#data
      class Data < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute has_more
        #
        #   @return [Boolean, nil]
        optional :has_more, Onlyfansapi::Internal::Type::Boolean, api_name: :hasMore

        # @!attribute offset
        #
        #   @return [Integer, nil]
        optional :offset, Integer

        # @!attribute users
        #
        #   @return [Array<Onlyfansapi::Models::FanListLatestResponse::Data::User>, nil]
        optional :users,
                 -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::FanListLatestResponse::Data::User] }

        # @!method initialize(has_more: nil, offset: nil, users: nil)
        #   @param has_more [Boolean]
        #   @param offset [Integer]
        #   @param users [Array<Onlyfansapi::Models::FanListLatestResponse::Data::User>]

        class User < Onlyfansapi::Internal::Type::BaseModel
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
          #   @return [Onlyfansapi::Models::FanListLatestResponse::Data::User::AvatarThumbs, nil]
          optional :avatar_thumbs,
                   -> { Onlyfansapi::Models::FanListLatestResponse::Data::User::AvatarThumbs },
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
          optional :header, String, nil?: true

          # @!attribute header_size
          #
          #   @return [String, nil]
          optional :header_size, String, api_name: :headerSize, nil?: true

          # @!attribute header_thumbs
          #
          #   @return [String, nil]
          optional :header_thumbs, String, api_name: :headerThumbs, nil?: true

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
          #   @return [Array<Onlyfansapi::Models::FanListLatestResponse::Data::User::ListsState>, nil]
          optional :lists_states,
                   -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::FanListLatestResponse::Data::User::ListsState] },
                   api_name: :listsStates

          # @!attribute name
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute notice
          #
          #   @return [String, nil]
          optional :notice, String

          # @!attribute promo_offers
          #
          #   @return [Array<Onlyfansapi::Models::FanListLatestResponse::Data::User::PromoOffer>, nil]
          optional :promo_offers,
                   -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::FanListLatestResponse::Data::User::PromoOffer] },
                   api_name: :promoOffers

          # @!attribute subscribed_by
          #
          #   @return [Boolean, nil]
          optional :subscribed_by, Onlyfansapi::Internal::Type::Boolean, api_name: :subscribedBy

          # @!attribute subscribed_by_autoprolong
          #
          #   @return [String, nil]
          optional :subscribed_by_autoprolong, String, api_name: :subscribedByAutoprolong, nil?: true

          # @!attribute subscribed_by_data
          #
          #   @return [String, nil]
          optional :subscribed_by_data, String, api_name: :subscribedByData, nil?: true

          # @!attribute subscribed_by_expire
          #
          #   @return [String, nil]
          optional :subscribed_by_expire, String, api_name: :subscribedByExpire, nil?: true

          # @!attribute subscribed_by_expire_date
          #
          #   @return [String, nil]
          optional :subscribed_by_expire_date, String, api_name: :subscribedByExpireDate, nil?: true

          # @!attribute subscribed_is_expired_now
          #
          #   @return [String, nil]
          optional :subscribed_is_expired_now, String, api_name: :subscribedIsExpiredNow, nil?: true

          # @!attribute subscribed_on
          #
          #   @return [Boolean, nil]
          optional :subscribed_on, Onlyfansapi::Internal::Type::Boolean, api_name: :subscribedOn

          # @!attribute subscribed_on_data
          #
          #   @return [Onlyfansapi::Models::FanListLatestResponse::Data::User::SubscribedOnData, nil]
          optional :subscribed_on_data,
                   -> { Onlyfansapi::Models::FanListLatestResponse::Data::User::SubscribedOnData },
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
          #   @return [Float, nil]
          optional :subscribe_price, Float, api_name: :subscribePrice

          # @!attribute subscription_bundles
          #
          #   @return [Array<Object>, nil]
          optional :subscription_bundles,
                   Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Internal::Type::Unknown],
                   api_name: :subscriptionBundles

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

          # @!method initialize(id: nil, avatar: nil, avatar_thumbs: nil, can_add_subscriber: nil, can_comment_story: nil, can_earn: nil, can_look_story: nil, can_pay_internal: nil, can_receive_chat_message: nil, can_report: nil, can_restrict: nil, can_trial_send: nil, current_subscribe_price: nil, display_name: nil, has_not_viewed_story: nil, has_scheduled_stream: nil, has_stories: nil, has_stream: nil, header: nil, header_size: nil, header_thumbs: nil, hide_chat: nil, is_blocked: nil, is_paywall_required: nil, is_performer: nil, is_real_performer: nil, is_restricted: nil, is_verified: nil, last_seen: nil, lists_states: nil, name: nil, notice: nil, promo_offers: nil, subscribed_by: nil, subscribed_by_autoprolong: nil, subscribed_by_data: nil, subscribed_by_expire: nil, subscribed_by_expire_date: nil, subscribed_is_expired_now: nil, subscribed_on: nil, subscribed_on_data: nil, subscribed_on_duration: nil, subscribed_on_expired_now: nil, subscribe_price: nil, subscription_bundles: nil, tips_enabled: nil, tips_max: nil, tips_min: nil, tips_min_internal: nil, tips_text_enabled: nil, username: nil, view: nil)
          #   @param id [Integer]
          #   @param avatar [String]
          #   @param avatar_thumbs [Onlyfansapi::Models::FanListLatestResponse::Data::User::AvatarThumbs]
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
          #   @param header [String, nil]
          #   @param header_size [String, nil]
          #   @param header_thumbs [String, nil]
          #   @param hide_chat [Boolean]
          #   @param is_blocked [Boolean]
          #   @param is_paywall_required [Boolean]
          #   @param is_performer [Boolean]
          #   @param is_real_performer [Boolean]
          #   @param is_restricted [Boolean]
          #   @param is_verified [Boolean]
          #   @param last_seen [String]
          #   @param lists_states [Array<Onlyfansapi::Models::FanListLatestResponse::Data::User::ListsState>]
          #   @param name [String]
          #   @param notice [String]
          #   @param promo_offers [Array<Onlyfansapi::Models::FanListLatestResponse::Data::User::PromoOffer>]
          #   @param subscribed_by [Boolean]
          #   @param subscribed_by_autoprolong [String, nil]
          #   @param subscribed_by_data [String, nil]
          #   @param subscribed_by_expire [String, nil]
          #   @param subscribed_by_expire_date [String, nil]
          #   @param subscribed_is_expired_now [String, nil]
          #   @param subscribed_on [Boolean]
          #   @param subscribed_on_data [Onlyfansapi::Models::FanListLatestResponse::Data::User::SubscribedOnData]
          #   @param subscribed_on_duration [String]
          #   @param subscribed_on_expired_now [Boolean]
          #   @param subscribe_price [Float]
          #   @param subscription_bundles [Array<Object>]
          #   @param tips_enabled [Boolean]
          #   @param tips_max [Integer]
          #   @param tips_min [Integer]
          #   @param tips_min_internal [Integer]
          #   @param tips_text_enabled [Boolean]
          #   @param username [String]
          #   @param view [String]

          # @see Onlyfansapi::Models::FanListLatestResponse::Data::User#avatar_thumbs
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

          class PromoOffer < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [Integer, nil]
            optional :id, Integer

            # @!attribute created_at
            #
            #   @return [String, nil]
            optional :created_at, String, api_name: :createdAt

            # @!attribute expired_at
            #
            #   @return [String, nil]
            optional :expired_at, String, api_name: :expiredAt

            # @!attribute finished_at
            #
            #   @return [String, nil]
            optional :finished_at, String, api_name: :finishedAt

            # @!attribute subscribe_days
            #
            #   @return [Integer, nil]
            optional :subscribe_days, Integer, api_name: :subscribeDays

            # @!attribute subscriber_id
            #
            #   @return [String, nil]
            optional :subscriber_id, String, api_name: :subscriberId

            # @!attribute user_id
            #
            #   @return [String, nil]
            optional :user_id, String, api_name: :userId

            # @!method initialize(id: nil, created_at: nil, expired_at: nil, finished_at: nil, subscribe_days: nil, subscriber_id: nil, user_id: nil)
            #   @param id [Integer]
            #   @param created_at [String]
            #   @param expired_at [String]
            #   @param finished_at [String]
            #   @param subscribe_days [Integer]
            #   @param subscriber_id [String]
            #   @param user_id [String]
          end

          # @see Onlyfansapi::Models::FanListLatestResponse::Data::User#subscribed_on_data
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

            # @!attribute last_activity
            #
            #   @return [String, nil]
            optional :last_activity, String, api_name: :lastActivity

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

            # @!attribute recommendations
            #
            #   @return [Integer, nil]
            optional :recommendations, Integer

            # @!attribute regular_price
            #
            #   @return [Integer, nil]
            optional :regular_price, Integer, api_name: :regularPrice

            # @!attribute renewed_at
            #
            #   @return [String, nil]
            optional :renewed_at, String, api_name: :renewedAt, nil?: true

            # @!attribute status
            #
            #   @return [String, nil]
            optional :status, String

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
            #   @return [Integer, nil]
            optional :subscribe_price, Integer, api_name: :subscribePrice

            # @!attribute subscribes
            #
            #   @return [Array<Onlyfansapi::Models::FanListLatestResponse::Data::User::SubscribedOnData::Subscribe>, nil]
            optional :subscribes,
                     -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::FanListLatestResponse::Data::User::SubscribedOnData::Subscribe] }

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

            # @!method initialize(discount_finished_at: nil, discount_percent: nil, discount_period: nil, discount_started_at: nil, duration: nil, expired_at: nil, has_active_paid_subscriptions: nil, is_muted: nil, last_activity: nil, messages_summ: nil, new_price: nil, posts_summ: nil, price: nil, recommendations: nil, regular_price: nil, renewed_at: nil, status: nil, streams_summ: nil, subscribe_at: nil, subscribe_price: nil, subscribes: nil, subscribes_summ: nil, tips_summ: nil, total_summ: nil, unsubscribe_reason: nil)
            #   @param discount_finished_at [String, nil]
            #   @param discount_percent [Integer]
            #   @param discount_period [Integer]
            #   @param discount_started_at [String, nil]
            #   @param duration [String]
            #   @param expired_at [String]
            #   @param has_active_paid_subscriptions [Boolean]
            #   @param is_muted [Boolean]
            #   @param last_activity [String]
            #   @param messages_summ [Integer]
            #   @param new_price [Integer]
            #   @param posts_summ [Integer]
            #   @param price [Integer]
            #   @param recommendations [Integer]
            #   @param regular_price [Integer]
            #   @param renewed_at [String, nil]
            #   @param status [String]
            #   @param streams_summ [Integer]
            #   @param subscribe_at [String]
            #   @param subscribe_price [Integer]
            #   @param subscribes [Array<Onlyfansapi::Models::FanListLatestResponse::Data::User::SubscribedOnData::Subscribe>]
            #   @param subscribes_summ [Integer]
            #   @param tips_summ [Integer]
            #   @param total_summ [Integer]
            #   @param unsubscribe_reason [String]

            class Subscribe < Onlyfansapi::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [Integer, nil]
              optional :id, Integer

              # @!attribute action
              #
              #   @return [String, nil]
              optional :action, String

              # @!attribute cancel_date
              #
              #   @return [String, nil]
              optional :cancel_date, String, api_name: :cancelDate, nil?: true

              # @!attribute date
              #
              #   @return [String, nil]
              optional :date, String

              # @!attribute discount
              #
              #   @return [Integer, nil]
              optional :discount, Integer

              # @!attribute duration
              #
              #   @return [Integer, nil]
              optional :duration, Integer

              # @!attribute earning_id
              #
              #   @return [Integer, nil]
              optional :earning_id, Integer, api_name: :earningId

              # @!attribute expire_date
              #
              #   @return [String, nil]
              optional :expire_date, String, api_name: :expireDate

              # @!attribute is_current
              #
              #   @return [Boolean, nil]
              optional :is_current, Onlyfansapi::Internal::Type::Boolean, api_name: :isCurrent

              # @!attribute offer_end
              #
              #   @return [String, nil]
              optional :offer_end, String, api_name: :offerEnd

              # @!attribute offer_start
              #
              #   @return [String, nil]
              optional :offer_start, String, api_name: :offerStart

              # @!attribute price
              #
              #   @return [Integer, nil]
              optional :price, Integer

              # @!attribute regular_price
              #
              #   @return [Float, nil]
              optional :regular_price, Float, api_name: :regularPrice

              # @!attribute start_date
              #
              #   @return [String, nil]
              optional :start_date, String, api_name: :startDate

              # @!attribute subscriber_id
              #
              #   @return [Integer, nil]
              optional :subscriber_id, Integer, api_name: :subscriberId

              # @!attribute type
              #
              #   @return [String, nil]
              optional :type, String

              # @!attribute user_id
              #
              #   @return [Integer, nil]
              optional :user_id, Integer, api_name: :userId

              # @!method initialize(id: nil, action: nil, cancel_date: nil, date: nil, discount: nil, duration: nil, earning_id: nil, expire_date: nil, is_current: nil, offer_end: nil, offer_start: nil, price: nil, regular_price: nil, start_date: nil, subscriber_id: nil, type: nil, user_id: nil)
              #   @param id [Integer]
              #   @param action [String]
              #   @param cancel_date [String, nil]
              #   @param date [String]
              #   @param discount [Integer]
              #   @param duration [Integer]
              #   @param earning_id [Integer]
              #   @param expire_date [String]
              #   @param is_current [Boolean]
              #   @param offer_end [String]
              #   @param offer_start [String]
              #   @param price [Integer]
              #   @param regular_price [Float]
              #   @param start_date [String]
              #   @param subscriber_id [Integer]
              #   @param type [String]
              #   @param user_id [Integer]
            end
          end
        end
      end
    end
  end
end
