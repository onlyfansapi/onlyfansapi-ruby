# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Settings#retrieve
    class SettingRetrieveResponse < Onlyfansapi::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfansapi::Models::SettingRetrieveResponse::Meta, nil]
      optional :_meta, -> { Onlyfansapi::Models::SettingRetrieveResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfansapi::Models::SettingRetrieveResponse::Data, nil]
      optional :data, -> { Onlyfansapi::Models::SettingRetrieveResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfansapi::Models::SettingRetrieveResponse::Meta]
      #   @param data [Onlyfansapi::Models::SettingRetrieveResponse::Data]

      # @see Onlyfansapi::Models::SettingRetrieveResponse#_meta
      class Meta < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfansapi::Models::SettingRetrieveResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfansapi::Models::SettingRetrieveResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfansapi::Models::SettingRetrieveResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfansapi::Models::SettingRetrieveResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfansapi::Models::SettingRetrieveResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfansapi::Models::SettingRetrieveResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfansapi::Models::SettingRetrieveResponse::Meta::Cache]
        #   @param _credits [Onlyfansapi::Models::SettingRetrieveResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfansapi::Models::SettingRetrieveResponse::Meta::RateLimits]

        # @see Onlyfansapi::Models::SettingRetrieveResponse::Meta#_cache
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

        # @see Onlyfansapi::Models::SettingRetrieveResponse::Meta#_credits
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

        # @see Onlyfansapi::Models::SettingRetrieveResponse::Meta#_rate_limits
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

      # @see Onlyfansapi::Models::SettingRetrieveResponse#data
      class Data < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute activity_hub_allowed
        #
        #   @return [Boolean, nil]
        optional :activity_hub_allowed, Onlyfansapi::Internal::Type::Boolean, api_name: :activityHubAllowed

        # @!attribute activity_hub_tokens
        #
        #   @return [Array<Object>, nil]
        optional :activity_hub_tokens,
                 Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Internal::Type::Unknown],
                 api_name: :activityHubTokens

        # @!attribute app_otp
        #
        #   @return [Boolean, nil]
        optional :app_otp, Onlyfansapi::Internal::Type::Boolean, api_name: :appOtp

        # @!attribute avatar_header_converter_upload
        #
        #   @return [Boolean, nil]
        optional :avatar_header_converter_upload,
                 Onlyfansapi::Internal::Type::Boolean,
                 api_name: :avatarHeaderConverterUpload

        # @!attribute blocked_countries
        #
        #   @return [Array<Object>, nil]
        optional :blocked_countries,
                 Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Internal::Type::Unknown],
                 api_name: :blockedCountries

        # @!attribute blocked_ips
        #
        #   @return [Array<Object>, nil]
        optional :blocked_ips,
                 Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Internal::Type::Unknown],
                 api_name: :blockedIps

        # @!attribute blocked_states
        #
        #   @return [Array<Object>, nil]
        optional :blocked_states,
                 Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Internal::Type::Unknown],
                 api_name: :blockedStates

        # @!attribute bundle_max_price
        #
        #   @return [Integer, nil]
        optional :bundle_max_price, Integer, api_name: :bundleMaxPrice

        # @!attribute can_accept_message_only_from_friends
        #
        #   @return [Boolean, nil]
        optional :can_accept_message_only_from_friends,
                 Onlyfansapi::Internal::Type::Boolean,
                 api_name: :canAcceptMessageOnlyFromFriends

        # @!attribute can_add_phone
        #
        #   @return [Boolean, nil]
        optional :can_add_phone, Onlyfansapi::Internal::Type::Boolean, api_name: :canAddPhone

        # @!attribute can_add_subscriber_by_bundle
        #
        #   @return [Onlyfansapi::Models::SettingRetrieveResponse::Data::CanAddSubscriberByBundle, nil]
        optional :can_add_subscriber_by_bundle,
                 -> { Onlyfansapi::Models::SettingRetrieveResponse::Data::CanAddSubscriberByBundle },
                 api_name: :canAddSubscriberByBundle

        # @!attribute can_make_profile_links
        #
        #   @return [Boolean, nil]
        optional :can_make_profile_links, Onlyfansapi::Internal::Type::Boolean, api_name: :canMakeProfileLinks

        # @!attribute can_socials_connect
        #
        #   @return [Boolean, nil]
        optional :can_socials_connect, Onlyfansapi::Internal::Type::Boolean, api_name: :canSocialsConnect

        # @!attribute change_email_step
        #
        #   @return [String, nil]
        optional :change_email_step, String, api_name: :changeEmailStep, nil?: true

        # @!attribute changelog_updates
        #
        #   @return [Integer, nil]
        optional :changelog_updates, Integer, api_name: :changelogUpdates

        # @!attribute comments_only_for_payers
        #
        #   @return [Boolean, nil]
        optional :comments_only_for_payers,
                 Onlyfansapi::Internal::Type::Boolean,
                 api_name: :commentsOnlyForPayers

        # @!attribute confirm_email_sent_at
        #
        #   @return [String, nil]
        optional :confirm_email_sent_at, String, api_name: :confirmEmailSentAt

        # @!attribute co_streaming_request_from
        #
        #   @return [String, nil]
        optional :co_streaming_request_from, String, api_name: :coStreamingRequestFrom

        # @!attribute creators_comments_only_for_friends
        #
        #   @return [Boolean, nil]
        optional :creators_comments_only_for_friends,
                 Onlyfansapi::Internal::Type::Boolean,
                 api_name: :creatorsCommentsOnlyForFriends

        # @!attribute disable_subscribes_offers
        #
        #   @return [Boolean, nil]
        optional :disable_subscribes_offers,
                 Onlyfansapi::Internal::Type::Boolean,
                 api_name: :disableSubscribesOffers

        # @!attribute face_otp
        #
        #   @return [Boolean, nil]
        optional :face_otp, Onlyfansapi::Internal::Type::Boolean, api_name: :faceOtp

        # @!attribute force_face_otp
        #
        #   @return [Boolean, nil]
        optional :force_face_otp, Onlyfansapi::Internal::Type::Boolean, api_name: :forceFaceOtp

        # @!attribute has_paid_posts
        #
        #   @return [Boolean, nil]
        optional :has_paid_posts, Onlyfansapi::Internal::Type::Boolean, api_name: :hasPaidPosts

        # @!attribute has_password
        #
        #   @return [Boolean, nil]
        optional :has_password, Onlyfansapi::Internal::Type::Boolean, api_name: :hasPassword

        # @!attribute hide_after_mass_messages
        #
        #   @return [Boolean, nil]
        optional :hide_after_mass_messages,
                 Onlyfansapi::Internal::Type::Boolean,
                 api_name: :hideAfterMassMessages

        # @!attribute important_subscription_notifications
        #
        #   @return [Boolean, nil]
        optional :important_subscription_notifications,
                 Onlyfansapi::Internal::Type::Boolean,
                 api_name: :importantSubscriptionNotifications

        # @!attribute is_auto_follow_back
        #
        #   @return [Boolean, nil]
        optional :is_auto_follow_back, Onlyfansapi::Internal::Type::Boolean, api_name: :isAutoFollowBack

        # @!attribute is_co_streaming_allowed
        #
        #   @return [Boolean, nil]
        optional :is_co_streaming_allowed,
                 Onlyfansapi::Internal::Type::Boolean,
                 api_name: :isCoStreamingAllowed

        # @!attribute is_delete_initiated
        #
        #   @return [Boolean, nil]
        optional :is_delete_initiated, Onlyfansapi::Internal::Type::Boolean, api_name: :isDeleteInitiated

        # @!attribute is_drm_enabled
        #
        #   @return [Boolean, nil]
        optional :is_drm_enabled, Onlyfansapi::Internal::Type::Boolean, api_name: :isDrmEnabled

        # @!attribute is_email_notifications_enabled
        #
        #   @return [Boolean, nil]
        optional :is_email_notifications_enabled,
                 Onlyfansapi::Internal::Type::Boolean,
                 api_name: :isEmailNotificationsEnabled

        # @!attribute is_monthly_newsletters
        #
        #   @return [Boolean, nil]
        optional :is_monthly_newsletters,
                 Onlyfansapi::Internal::Type::Boolean,
                 api_name: :isMonthlyNewsletters

        # @!attribute is_old_login_redirect
        #
        #   @return [Boolean, nil]
        optional :is_old_login_redirect, Onlyfansapi::Internal::Type::Boolean, api_name: :isOldLoginRedirect

        # @!attribute is_opensea_connected
        #
        #   @return [Boolean, nil]
        optional :is_opensea_connected, Onlyfansapi::Internal::Type::Boolean, api_name: :isOpenseaConnected

        # @!attribute is_otp_app_connected
        #
        #   @return [Boolean, nil]
        optional :is_otp_app_connected, Onlyfansapi::Internal::Type::Boolean, api_name: :isOtpAppConnected

        # @!attribute is_private
        #
        #   @return [Boolean, nil]
        optional :is_private, Onlyfansapi::Internal::Type::Boolean, api_name: :isPrivate

        # @!attribute is_suggestions_opt_out
        #
        #   @return [Boolean, nil]
        optional :is_suggestions_opt_out, Onlyfansapi::Internal::Type::Boolean, api_name: :isSuggestionsOptOut

        # @!attribute is_telegram_connected
        #
        #   @return [Boolean, nil]
        optional :is_telegram_connected, Onlyfansapi::Internal::Type::Boolean, api_name: :isTelegramConnected

        # @!attribute last_subscription_expired_at
        #
        #   @return [String, nil]
        optional :last_subscription_expired_at, String, api_name: :lastSubscriptionExpiredAt, nil?: true

        # @!attribute life_time_email_code
        #
        #   @return [String, nil]
        optional :life_time_email_code, String, api_name: :lifeTimeEmailCode, nil?: true

        # @!attribute mute_tags_in_chats
        #
        #   @return [Boolean, nil]
        optional :mute_tags_in_chats, Onlyfansapi::Internal::Type::Boolean, api_name: :muteTagsInChats

        # @!attribute mute_tags_in_posts
        #
        #   @return [Boolean, nil]
        optional :mute_tags_in_posts, Onlyfansapi::Internal::Type::Boolean, api_name: :muteTagsInPosts

        # @!attribute mute_tags_in_stories
        #
        #   @return [Boolean, nil]
        optional :mute_tags_in_stories, Onlyfansapi::Internal::Type::Boolean, api_name: :muteTagsInStories

        # @!attribute mute_tags_in_streams
        #
        #   @return [Boolean, nil]
        optional :mute_tags_in_streams, Onlyfansapi::Internal::Type::Boolean, api_name: :muteTagsInStreams

        # @!attribute new_email
        #
        #   @return [String, nil]
        optional :new_email, String, api_name: :newEmail, nil?: true

        # @!attribute notify_on_all_mentions
        #
        #   @return [Boolean, nil]
        optional :notify_on_all_mentions, Onlyfansapi::Internal::Type::Boolean, api_name: :notifyOnAllMentions

        # @!attribute phone_last4
        #
        #   @return [String, nil]
        optional :phone_last4, String, api_name: :phoneLast4, nil?: true

        # @!attribute phone_otp
        #
        #   @return [Boolean, nil]
        optional :phone_otp, Onlyfansapi::Internal::Type::Boolean, api_name: :phoneOtp

        # @!attribute recommender_reward
        #
        #   @return [String, nil]
        optional :recommender_reward, String, api_name: :recommenderReward, nil?: true

        # @!attribute reply_on_subscribe
        #
        #   @return [Boolean, nil]
        optional :reply_on_subscribe, Onlyfansapi::Internal::Type::Boolean, api_name: :replyOnSubscribe

        # @!attribute send_awards_top1
        #
        #   @return [Boolean, nil]
        optional :send_awards_top1, Onlyfansapi::Internal::Type::Boolean, api_name: :sendAwardsTop1

        # @!attribute send_awards_top5
        #
        #   @return [Boolean, nil]
        optional :send_awards_top5, Onlyfansapi::Internal::Type::Boolean, api_name: :sendAwardsTop5

        # @!attribute should_receive_less_notifications
        #
        #   @return [Boolean, nil]
        optional :should_receive_less_notifications,
                 Onlyfansapi::Internal::Type::Boolean,
                 api_name: :shouldReceiveLessNotifications

        # @!attribute show_friends_to_subscribers
        #
        #   @return [Boolean, nil]
        optional :show_friends_to_subscribers,
                 Onlyfansapi::Internal::Type::Boolean,
                 api_name: :showFriendsToSubscribers

        # @!attribute show_full_text_in_email_notify
        #
        #   @return [Boolean, nil]
        optional :show_full_text_in_email_notify,
                 Onlyfansapi::Internal::Type::Boolean,
                 api_name: :showFullTextInEmailNotify

        # @!attribute show_posts_tips
        #
        #   @return [Boolean, nil]
        optional :show_posts_tips, Onlyfansapi::Internal::Type::Boolean, api_name: :showPostsTips

        # @!attribute show_subscribes_offers
        #
        #   @return [Boolean, nil]
        optional :show_subscribes_offers,
                 Onlyfansapi::Internal::Type::Boolean,
                 api_name: :showSubscribesOffers

        # @!attribute socials_connects
        #
        #   @return [Array<Object>, nil]
        optional :socials_connects,
                 Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Internal::Type::Unknown],
                 api_name: :socialsConnects

        # @!attribute streaming_mux_key
        #
        #   @return [String, nil]
        optional :streaming_mux_key, String, api_name: :streamingMuxKey, nil?: true

        # @!attribute streaming_mux_key_expired_at
        #
        #   @return [String, nil]
        optional :streaming_mux_key_expired_at, String, api_name: :streamingMuxKeyExpiredAt, nil?: true

        # @!attribute streaming_mux_server
        #
        #   @return [String, nil]
        optional :streaming_mux_server, String, api_name: :streamingMuxServer

        # @!attribute streaming_obs_key
        #
        #   @return [String, nil]
        optional :streaming_obs_key, String, api_name: :streamingObsKey

        # @!attribute streaming_obs_server
        #
        #   @return [String, nil]
        optional :streaming_obs_server, String, api_name: :streamingObsServer

        # @!attribute streaming_rtmp_key
        #
        #   @return [String, nil]
        optional :streaming_rtmp_key, String, api_name: :streamingRtmpKey

        # @!attribute streaming_rtmp_server
        #
        #   @return [String, nil]
        optional :streaming_rtmp_server, String, api_name: :streamingRtmpServer

        # @!attribute strong_otp
        #
        #   @return [Boolean, nil]
        optional :strong_otp, Onlyfansapi::Internal::Type::Boolean, api_name: :strongOtp

        # @!attribute unfollow_auto_follow_back
        #
        #   @return [Boolean, nil]
        optional :unfollow_auto_follow_back,
                 Onlyfansapi::Internal::Type::Boolean,
                 api_name: :unfollowAutoFollowBack

        # @!method initialize(activity_hub_allowed: nil, activity_hub_tokens: nil, app_otp: nil, avatar_header_converter_upload: nil, blocked_countries: nil, blocked_ips: nil, blocked_states: nil, bundle_max_price: nil, can_accept_message_only_from_friends: nil, can_add_phone: nil, can_add_subscriber_by_bundle: nil, can_make_profile_links: nil, can_socials_connect: nil, change_email_step: nil, changelog_updates: nil, comments_only_for_payers: nil, confirm_email_sent_at: nil, co_streaming_request_from: nil, creators_comments_only_for_friends: nil, disable_subscribes_offers: nil, face_otp: nil, force_face_otp: nil, has_paid_posts: nil, has_password: nil, hide_after_mass_messages: nil, important_subscription_notifications: nil, is_auto_follow_back: nil, is_co_streaming_allowed: nil, is_delete_initiated: nil, is_drm_enabled: nil, is_email_notifications_enabled: nil, is_monthly_newsletters: nil, is_old_login_redirect: nil, is_opensea_connected: nil, is_otp_app_connected: nil, is_private: nil, is_suggestions_opt_out: nil, is_telegram_connected: nil, last_subscription_expired_at: nil, life_time_email_code: nil, mute_tags_in_chats: nil, mute_tags_in_posts: nil, mute_tags_in_stories: nil, mute_tags_in_streams: nil, new_email: nil, notify_on_all_mentions: nil, phone_last4: nil, phone_otp: nil, recommender_reward: nil, reply_on_subscribe: nil, send_awards_top1: nil, send_awards_top5: nil, should_receive_less_notifications: nil, show_friends_to_subscribers: nil, show_full_text_in_email_notify: nil, show_posts_tips: nil, show_subscribes_offers: nil, socials_connects: nil, streaming_mux_key: nil, streaming_mux_key_expired_at: nil, streaming_mux_server: nil, streaming_obs_key: nil, streaming_obs_server: nil, streaming_rtmp_key: nil, streaming_rtmp_server: nil, strong_otp: nil, unfollow_auto_follow_back: nil)
        #   @param activity_hub_allowed [Boolean]
        #   @param activity_hub_tokens [Array<Object>]
        #   @param app_otp [Boolean]
        #   @param avatar_header_converter_upload [Boolean]
        #   @param blocked_countries [Array<Object>]
        #   @param blocked_ips [Array<Object>]
        #   @param blocked_states [Array<Object>]
        #   @param bundle_max_price [Integer]
        #   @param can_accept_message_only_from_friends [Boolean]
        #   @param can_add_phone [Boolean]
        #   @param can_add_subscriber_by_bundle [Onlyfansapi::Models::SettingRetrieveResponse::Data::CanAddSubscriberByBundle]
        #   @param can_make_profile_links [Boolean]
        #   @param can_socials_connect [Boolean]
        #   @param change_email_step [String, nil]
        #   @param changelog_updates [Integer]
        #   @param comments_only_for_payers [Boolean]
        #   @param confirm_email_sent_at [String]
        #   @param co_streaming_request_from [String]
        #   @param creators_comments_only_for_friends [Boolean]
        #   @param disable_subscribes_offers [Boolean]
        #   @param face_otp [Boolean]
        #   @param force_face_otp [Boolean]
        #   @param has_paid_posts [Boolean]
        #   @param has_password [Boolean]
        #   @param hide_after_mass_messages [Boolean]
        #   @param important_subscription_notifications [Boolean]
        #   @param is_auto_follow_back [Boolean]
        #   @param is_co_streaming_allowed [Boolean]
        #   @param is_delete_initiated [Boolean]
        #   @param is_drm_enabled [Boolean]
        #   @param is_email_notifications_enabled [Boolean]
        #   @param is_monthly_newsletters [Boolean]
        #   @param is_old_login_redirect [Boolean]
        #   @param is_opensea_connected [Boolean]
        #   @param is_otp_app_connected [Boolean]
        #   @param is_private [Boolean]
        #   @param is_suggestions_opt_out [Boolean]
        #   @param is_telegram_connected [Boolean]
        #   @param last_subscription_expired_at [String, nil]
        #   @param life_time_email_code [String, nil]
        #   @param mute_tags_in_chats [Boolean]
        #   @param mute_tags_in_posts [Boolean]
        #   @param mute_tags_in_stories [Boolean]
        #   @param mute_tags_in_streams [Boolean]
        #   @param new_email [String, nil]
        #   @param notify_on_all_mentions [Boolean]
        #   @param phone_last4 [String, nil]
        #   @param phone_otp [Boolean]
        #   @param recommender_reward [String, nil]
        #   @param reply_on_subscribe [Boolean]
        #   @param send_awards_top1 [Boolean]
        #   @param send_awards_top5 [Boolean]
        #   @param should_receive_less_notifications [Boolean]
        #   @param show_friends_to_subscribers [Boolean]
        #   @param show_full_text_in_email_notify [Boolean]
        #   @param show_posts_tips [Boolean]
        #   @param show_subscribes_offers [Boolean]
        #   @param socials_connects [Array<Object>]
        #   @param streaming_mux_key [String, nil]
        #   @param streaming_mux_key_expired_at [String, nil]
        #   @param streaming_mux_server [String]
        #   @param streaming_obs_key [String]
        #   @param streaming_obs_server [String]
        #   @param streaming_rtmp_key [String]
        #   @param streaming_rtmp_server [String]
        #   @param strong_otp [Boolean]
        #   @param unfollow_auto_follow_back [Boolean]

        # @see Onlyfansapi::Models::SettingRetrieveResponse::Data#can_add_subscriber_by_bundle
        class CanAddSubscriberByBundle < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute discounts
          #
          #   @return [Onlyfansapi::Models::SettingRetrieveResponse::Data::CanAddSubscriberByBundle::Discounts, nil]
          optional :discounts,
                   -> { Onlyfansapi::Models::SettingRetrieveResponse::Data::CanAddSubscriberByBundle::Discounts }

          # @!attribute durations
          #
          #   @return [Onlyfansapi::Models::SettingRetrieveResponse::Data::CanAddSubscriberByBundle::Durations, nil]
          optional :durations,
                   -> { Onlyfansapi::Models::SettingRetrieveResponse::Data::CanAddSubscriberByBundle::Durations }

          # @!method initialize(discounts: nil, durations: nil)
          #   @param discounts [Onlyfansapi::Models::SettingRetrieveResponse::Data::CanAddSubscriberByBundle::Discounts]
          #   @param durations [Onlyfansapi::Models::SettingRetrieveResponse::Data::CanAddSubscriberByBundle::Durations]

          # @see Onlyfansapi::Models::SettingRetrieveResponse::Data::CanAddSubscriberByBundle#discounts
          class Discounts < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute number_0
            #
            #   @return [String, nil]
            optional :number_0, String, api_name: :"0"

            # @!attribute number_10
            #
            #   @return [String, nil]
            optional :number_10, String, api_name: :"10"

            # @!attribute number_15
            #
            #   @return [String, nil]
            optional :number_15, String, api_name: :"15"

            # @!attribute number_20
            #
            #   @return [String, nil]
            optional :number_20, String, api_name: :"20"

            # @!attribute number_25
            #
            #   @return [String, nil]
            optional :number_25, String, api_name: :"25"

            # @!attribute number_30
            #
            #   @return [String, nil]
            optional :number_30, String, api_name: :"30"

            # @!attribute number_35
            #
            #   @return [String, nil]
            optional :number_35, String, api_name: :"35"

            # @!attribute number_40
            #
            #   @return [String, nil]
            optional :number_40, String, api_name: :"40"

            # @!attribute number_45
            #
            #   @return [String, nil]
            optional :number_45, String, api_name: :"45"

            # @!attribute number_5
            #
            #   @return [String, nil]
            optional :number_5, String, api_name: :"5"

            # @!attribute number_50
            #
            #   @return [String, nil]
            optional :number_50, String, api_name: :"50"

            # @!method initialize(number_0: nil, number_10: nil, number_15: nil, number_20: nil, number_25: nil, number_30: nil, number_35: nil, number_40: nil, number_45: nil, number_5: nil, number_50: nil)
            #   @param number_0 [String]
            #   @param number_10 [String]
            #   @param number_15 [String]
            #   @param number_20 [String]
            #   @param number_25 [String]
            #   @param number_30 [String]
            #   @param number_35 [String]
            #   @param number_40 [String]
            #   @param number_45 [String]
            #   @param number_5 [String]
            #   @param number_50 [String]
          end

          # @see Onlyfansapi::Models::SettingRetrieveResponse::Data::CanAddSubscriberByBundle#durations
          class Durations < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute number_12
            #
            #   @return [String, nil]
            optional :number_12, String, api_name: :"12"

            # @!attribute number_3
            #
            #   @return [String, nil]
            optional :number_3, String, api_name: :"3"

            # @!attribute number_6
            #
            #   @return [String, nil]
            optional :number_6, String, api_name: :"6"

            # @!method initialize(number_12: nil, number_3: nil, number_6: nil)
            #   @param number_12 [String]
            #   @param number_3 [String]
            #   @param number_6 [String]
          end
        end
      end
    end
  end
end
