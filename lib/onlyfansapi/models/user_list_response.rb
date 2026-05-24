# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Users#list
    class UserListResponse < Onlyfansapi::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfansapi::Models::UserListResponse::Meta, nil]
      optional :_meta, -> { Onlyfansapi::Models::UserListResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfansapi::Models::UserListResponse::Data, nil]
      optional :data, -> { Onlyfansapi::Models::UserListResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfansapi::Models::UserListResponse::Meta]
      #   @param data [Onlyfansapi::Models::UserListResponse::Data]

      # @see Onlyfansapi::Models::UserListResponse#_meta
      class Meta < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfansapi::Models::UserListResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfansapi::Models::UserListResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfansapi::Models::UserListResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfansapi::Models::UserListResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfansapi::Models::UserListResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfansapi::Models::UserListResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfansapi::Models::UserListResponse::Meta::Cache]
        #   @param _credits [Onlyfansapi::Models::UserListResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfansapi::Models::UserListResponse::Meta::RateLimits]

        # @see Onlyfansapi::Models::UserListResponse::Meta#_cache
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

        # @see Onlyfansapi::Models::UserListResponse::Meta#_credits
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

        # @see Onlyfansapi::Models::UserListResponse::Meta#_rate_limits
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

      # @see Onlyfansapi::Models::UserListResponse#data
      class Data < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute number_1000000
        #
        #   @return [Onlyfansapi::Models::UserListResponse::Data::Const1000000, nil]
        optional :number_1000000,
                 -> { Onlyfansapi::Models::UserListResponse::Data::Const1000000 },
                 api_name: :"1000000"

        # @!method initialize(number_1000000: nil)
        #   @param number_1000000 [Onlyfansapi::Models::UserListResponse::Data::Const1000000]

        # @see Onlyfansapi::Models::UserListResponse::Data#number_1000000
        class Const1000000 < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [Integer, nil]
          optional :id, Integer

          # @!attribute about
          #
          #   @return [String, nil]
          optional :about, String

          # @!attribute archived_posts_count
          #
          #   @return [Integer, nil]
          optional :archived_posts_count, Integer, api_name: :archivedPostsCount

          # @!attribute audios_count
          #
          #   @return [Integer, nil]
          optional :audios_count, Integer, api_name: :audiosCount

          # @!attribute avatar
          #
          #   @return [String, nil]
          optional :avatar, String

          # @!attribute avatar_header_converter_upload
          #
          #   @return [Boolean, nil]
          optional :avatar_header_converter_upload,
                   Onlyfansapi::Internal::Type::Boolean,
                   api_name: :avatarHeaderConverterUpload

          # @!attribute avatar_thumbs
          #
          #   @return [Onlyfansapi::Models::UserListResponse::Data::Const1000000::AvatarThumbs, nil]
          optional :avatar_thumbs,
                   -> { Onlyfansapi::Models::UserListResponse::Data::Const1000000::AvatarThumbs },
                   api_name: :avatarThumbs

          # @!attribute can_add_subscriber
          #
          #   @return [Boolean, nil]
          optional :can_add_subscriber, Onlyfansapi::Internal::Type::Boolean, api_name: :canAddSubscriber

          # @!attribute can_chat
          #
          #   @return [Boolean, nil]
          optional :can_chat, Onlyfansapi::Internal::Type::Boolean, api_name: :canChat

          # @!attribute can_comment_story
          #
          #   @return [Boolean, nil]
          optional :can_comment_story, Onlyfansapi::Internal::Type::Boolean, api_name: :canCommentStory

          # @!attribute can_create_promotion
          #
          #   @return [Boolean, nil]
          optional :can_create_promotion, Onlyfansapi::Internal::Type::Boolean, api_name: :canCreatePromotion

          # @!attribute can_create_trial
          #
          #   @return [Boolean, nil]
          optional :can_create_trial, Onlyfansapi::Internal::Type::Boolean, api_name: :canCreateTrial

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

          # @!attribute can_unsubscribe
          #
          #   @return [Boolean, nil]
          optional :can_unsubscribe, Onlyfansapi::Internal::Type::Boolean, api_name: :canUnsubscribe

          # @!attribute current_subscribe_price
          #
          #   @return [Integer, nil]
          optional :current_subscribe_price, Integer, api_name: :currentSubscribePrice

          # @!attribute display_name
          #
          #   @return [String, nil]
          optional :display_name, String, api_name: :displayName

          # @!attribute favorited_count
          #
          #   @return [Integer, nil]
          optional :favorited_count, Integer, api_name: :favoritedCount

          # @!attribute favorites_count
          #
          #   @return [Integer, nil]
          optional :favorites_count, Integer, api_name: :favoritesCount

          # @!attribute first_published_post_date
          #
          #   @return [String, nil]
          optional :first_published_post_date, String, api_name: :firstPublishedPostDate

          # @!attribute has_friends
          #
          #   @return [Boolean, nil]
          optional :has_friends, Onlyfansapi::Internal::Type::Boolean, api_name: :hasFriends

          # @!attribute has_labels
          #
          #   @return [Boolean, nil]
          optional :has_labels, Onlyfansapi::Internal::Type::Boolean, api_name: :hasLabels

          # @!attribute has_links
          #
          #   @return [Boolean, nil]
          optional :has_links, Onlyfansapi::Internal::Type::Boolean, api_name: :hasLinks

          # @!attribute has_not_viewed_story
          #
          #   @return [Boolean, nil]
          optional :has_not_viewed_story, Onlyfansapi::Internal::Type::Boolean, api_name: :hasNotViewedStory

          # @!attribute has_pinned_posts
          #
          #   @return [Boolean, nil]
          optional :has_pinned_posts, Onlyfansapi::Internal::Type::Boolean, api_name: :hasPinnedPosts

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

          # @!attribute is_active
          #
          #   @return [Boolean, nil]
          optional :is_active, Onlyfansapi::Internal::Type::Boolean, api_name: :isActive

          # @!attribute is_adult_content
          #
          #   @return [Boolean, nil]
          optional :is_adult_content, Onlyfansapi::Internal::Type::Boolean, api_name: :isAdultContent

          # @!attribute is_blocked
          #
          #   @return [Boolean, nil]
          optional :is_blocked, Onlyfansapi::Internal::Type::Boolean, api_name: :isBlocked

          # @!attribute is_friend
          #
          #   @return [Boolean, nil]
          optional :is_friend, Onlyfansapi::Internal::Type::Boolean, api_name: :isFriend

          # @!attribute is_markdown_disabled_for_about
          #
          #   @return [Boolean, nil]
          optional :is_markdown_disabled_for_about,
                   Onlyfansapi::Internal::Type::Boolean,
                   api_name: :isMarkdownDisabledForAbout

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

          # @!attribute is_private_restriction
          #
          #   @return [Boolean, nil]
          optional :is_private_restriction,
                   Onlyfansapi::Internal::Type::Boolean,
                   api_name: :isPrivateRestriction

          # @!attribute is_real_performer
          #
          #   @return [Boolean, nil]
          optional :is_real_performer, Onlyfansapi::Internal::Type::Boolean, api_name: :isRealPerformer

          # @!attribute is_referrer_allowed
          #
          #   @return [Boolean, nil]
          optional :is_referrer_allowed, Onlyfansapi::Internal::Type::Boolean, api_name: :isReferrerAllowed

          # @!attribute is_restricted
          #
          #   @return [Boolean, nil]
          optional :is_restricted, Onlyfansapi::Internal::Type::Boolean, api_name: :isRestricted

          # @!attribute is_spotify_connected
          #
          #   @return [Boolean, nil]
          optional :is_spotify_connected, Onlyfansapi::Internal::Type::Boolean, api_name: :isSpotifyConnected

          # @!attribute is_spring_connected
          #
          #   @return [Boolean, nil]
          optional :is_spring_connected, Onlyfansapi::Internal::Type::Boolean, api_name: :isSpringConnected

          # @!attribute is_verified
          #
          #   @return [Boolean, nil]
          optional :is_verified, Onlyfansapi::Internal::Type::Boolean, api_name: :isVerified

          # @!attribute join_date
          #
          #   @return [String, nil]
          optional :join_date, String, api_name: :joinDate

          # @!attribute last_seen
          #
          #   @return [String, nil]
          optional :last_seen, String, api_name: :lastSeen

          # @!attribute lists_states
          #
          #   @return [Array<Onlyfansapi::Models::UserListResponse::Data::Const1000000::ListsState>, nil]
          optional :lists_states,
                   -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::UserListResponse::Data::Const1000000::ListsState] },
                   api_name: :listsStates

          # @!attribute location
          #
          #   @return [String, nil]
          optional :location, String, nil?: true

          # @!attribute medias_count
          #
          #   @return [Integer, nil]
          optional :medias_count, Integer, api_name: :mediasCount

          # @!attribute name
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute notice
          #
          #   @return [String, nil]
          optional :notice, String

          # @!attribute photos_count
          #
          #   @return [Integer, nil]
          optional :photos_count, Integer, api_name: :photosCount

          # @!attribute posts_count
          #
          #   @return [Integer, nil]
          optional :posts_count, Integer, api_name: :postsCount

          # @!attribute private_archived_posts_count
          #
          #   @return [Integer, nil]
          optional :private_archived_posts_count, Integer, api_name: :privateArchivedPostsCount

          # @!attribute show_media_count
          #
          #   @return [Boolean, nil]
          optional :show_media_count, Onlyfansapi::Internal::Type::Boolean, api_name: :showMediaCount

          # @!attribute show_posts_in_feed
          #
          #   @return [Boolean, nil]
          optional :show_posts_in_feed, Onlyfansapi::Internal::Type::Boolean, api_name: :showPostsInFeed

          # @!attribute show_subscribers_count
          #
          #   @return [Boolean, nil]
          optional :show_subscribers_count,
                   Onlyfansapi::Internal::Type::Boolean,
                   api_name: :showSubscribersCount

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

          # @!attribute subscribed_by_data
          #
          #   @return [Onlyfansapi::Models::UserListResponse::Data::Const1000000::SubscribedByData, nil]
          optional :subscribed_by_data,
                   -> { Onlyfansapi::Models::UserListResponse::Data::Const1000000::SubscribedByData },
                   api_name: :subscribedByData

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
          #   @return [String, nil]
          optional :subscribed_on, String, api_name: :subscribedOn, nil?: true

          # @!attribute subscribed_on_data
          #
          #   @return [Onlyfansapi::Models::UserListResponse::Data::Const1000000::SubscribedOnData, nil]
          optional :subscribed_on_data,
                   -> { Onlyfansapi::Models::UserListResponse::Data::Const1000000::SubscribedOnData },
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

          # @!attribute subscribers_count
          #
          #   @return [String, nil]
          optional :subscribers_count, String, api_name: :subscribersCount, nil?: true

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

          # @!attribute videos_count
          #
          #   @return [Integer, nil]
          optional :videos_count, Integer, api_name: :videosCount

          # @!attribute view
          #
          #   @return [String, nil]
          optional :view, String

          # @!attribute website
          #
          #   @return [String, nil]
          optional :website, String, nil?: true

          # @!attribute wishlist
          #
          #   @return [String, nil]
          optional :wishlist, String, nil?: true

          # @!method initialize(id: nil, about: nil, archived_posts_count: nil, audios_count: nil, avatar: nil, avatar_header_converter_upload: nil, avatar_thumbs: nil, can_add_subscriber: nil, can_chat: nil, can_comment_story: nil, can_create_promotion: nil, can_create_trial: nil, can_earn: nil, can_look_story: nil, can_pay_internal: nil, can_receive_chat_message: nil, can_report: nil, can_restrict: nil, can_trial_send: nil, can_unsubscribe: nil, current_subscribe_price: nil, display_name: nil, favorited_count: nil, favorites_count: nil, first_published_post_date: nil, has_friends: nil, has_labels: nil, has_links: nil, has_not_viewed_story: nil, has_pinned_posts: nil, has_scheduled_stream: nil, has_stories: nil, has_stream: nil, header: nil, header_size: nil, header_thumbs: nil, is_active: nil, is_adult_content: nil, is_blocked: nil, is_friend: nil, is_markdown_disabled_for_about: nil, is_paywall_required: nil, is_pending_autoprolong: nil, is_performer: nil, is_private_restriction: nil, is_real_performer: nil, is_referrer_allowed: nil, is_restricted: nil, is_spotify_connected: nil, is_spring_connected: nil, is_verified: nil, join_date: nil, last_seen: nil, lists_states: nil, location: nil, medias_count: nil, name: nil, notice: nil, photos_count: nil, posts_count: nil, private_archived_posts_count: nil, show_media_count: nil, show_posts_in_feed: nil, show_subscribers_count: nil, subscribed_by: nil, subscribed_by_autoprolong: nil, subscribed_by_data: nil, subscribed_by_expire: nil, subscribed_by_expire_date: nil, subscribed_is_expired_now: nil, subscribed_on: nil, subscribed_on_data: nil, subscribed_on_duration: nil, subscribed_on_expired_now: nil, subscribe_price: nil, subscribers_count: nil, tips_enabled: nil, tips_max: nil, tips_min: nil, tips_min_internal: nil, tips_text_enabled: nil, username: nil, videos_count: nil, view: nil, website: nil, wishlist: nil)
          #   @param id [Integer]
          #   @param about [String]
          #   @param archived_posts_count [Integer]
          #   @param audios_count [Integer]
          #   @param avatar [String]
          #   @param avatar_header_converter_upload [Boolean]
          #   @param avatar_thumbs [Onlyfansapi::Models::UserListResponse::Data::Const1000000::AvatarThumbs]
          #   @param can_add_subscriber [Boolean]
          #   @param can_chat [Boolean]
          #   @param can_comment_story [Boolean]
          #   @param can_create_promotion [Boolean]
          #   @param can_create_trial [Boolean]
          #   @param can_earn [Boolean]
          #   @param can_look_story [Boolean]
          #   @param can_pay_internal [Boolean]
          #   @param can_receive_chat_message [Boolean]
          #   @param can_report [Boolean]
          #   @param can_restrict [Boolean]
          #   @param can_trial_send [Boolean]
          #   @param can_unsubscribe [Boolean]
          #   @param current_subscribe_price [Integer]
          #   @param display_name [String]
          #   @param favorited_count [Integer]
          #   @param favorites_count [Integer]
          #   @param first_published_post_date [String]
          #   @param has_friends [Boolean]
          #   @param has_labels [Boolean]
          #   @param has_links [Boolean]
          #   @param has_not_viewed_story [Boolean]
          #   @param has_pinned_posts [Boolean]
          #   @param has_scheduled_stream [Boolean]
          #   @param has_stories [Boolean]
          #   @param has_stream [Boolean]
          #   @param header [String, nil]
          #   @param header_size [String, nil]
          #   @param header_thumbs [String, nil]
          #   @param is_active [Boolean]
          #   @param is_adult_content [Boolean]
          #   @param is_blocked [Boolean]
          #   @param is_friend [Boolean]
          #   @param is_markdown_disabled_for_about [Boolean]
          #   @param is_paywall_required [Boolean]
          #   @param is_pending_autoprolong [Boolean]
          #   @param is_performer [Boolean]
          #   @param is_private_restriction [Boolean]
          #   @param is_real_performer [Boolean]
          #   @param is_referrer_allowed [Boolean]
          #   @param is_restricted [Boolean]
          #   @param is_spotify_connected [Boolean]
          #   @param is_spring_connected [Boolean]
          #   @param is_verified [Boolean]
          #   @param join_date [String]
          #   @param last_seen [String]
          #   @param lists_states [Array<Onlyfansapi::Models::UserListResponse::Data::Const1000000::ListsState>]
          #   @param location [String, nil]
          #   @param medias_count [Integer]
          #   @param name [String]
          #   @param notice [String]
          #   @param photos_count [Integer]
          #   @param posts_count [Integer]
          #   @param private_archived_posts_count [Integer]
          #   @param show_media_count [Boolean]
          #   @param show_posts_in_feed [Boolean]
          #   @param show_subscribers_count [Boolean]
          #   @param subscribed_by [Boolean]
          #   @param subscribed_by_autoprolong [Boolean]
          #   @param subscribed_by_data [Onlyfansapi::Models::UserListResponse::Data::Const1000000::SubscribedByData]
          #   @param subscribed_by_expire [Boolean]
          #   @param subscribed_by_expire_date [String]
          #   @param subscribed_is_expired_now [Boolean]
          #   @param subscribed_on [String, nil]
          #   @param subscribed_on_data [Onlyfansapi::Models::UserListResponse::Data::Const1000000::SubscribedOnData]
          #   @param subscribed_on_duration [String]
          #   @param subscribed_on_expired_now [Boolean]
          #   @param subscribe_price [Integer]
          #   @param subscribers_count [String, nil]
          #   @param tips_enabled [Boolean]
          #   @param tips_max [Integer]
          #   @param tips_min [Integer]
          #   @param tips_min_internal [Integer]
          #   @param tips_text_enabled [Boolean]
          #   @param username [String]
          #   @param videos_count [Integer]
          #   @param view [String]
          #   @param website [String, nil]
          #   @param wishlist [String, nil]

          # @see Onlyfansapi::Models::UserListResponse::Data::Const1000000#avatar_thumbs
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
            optional :cannot_add_user_reason, String, api_name: :cannotAddUserReason, nil?: true

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
            #   @param cannot_add_user_reason [String, nil]
            #   @param has_user [Boolean]
            #   @param name [String]
            #   @param type [String]
          end

          # @see Onlyfansapi::Models::UserListResponse::Data::Const1000000#subscribed_by_data
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
            optional :status, String

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
            #   @return [Array<Onlyfansapi::Models::UserListResponse::Data::Const1000000::SubscribedByData::Subscribe>, nil]
            optional :subscribes,
                     -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::UserListResponse::Data::Const1000000::SubscribedByData::Subscribe] }

            # @!attribute unsubscribe_reason
            #
            #   @return [String, nil]
            optional :unsubscribe_reason, String, api_name: :unsubscribeReason

            # @!method initialize(discount_finished_at: nil, discount_percent: nil, discount_period: nil, discount_started_at: nil, duration: nil, expired_at: nil, has_active_paid_subscriptions: nil, is_muted: nil, new_price: nil, price: nil, regular_price: nil, renewed_at: nil, show_posts_in_feed: nil, status: nil, subscribe_at: nil, subscribe_price: nil, subscribes: nil, unsubscribe_reason: nil)
            #   @param discount_finished_at [String, nil]
            #   @param discount_percent [Integer]
            #   @param discount_period [Integer]
            #   @param discount_started_at [String, nil]
            #   @param duration [String]
            #   @param expired_at [String]
            #   @param has_active_paid_subscriptions [Boolean]
            #   @param is_muted [Boolean]
            #   @param new_price [Integer]
            #   @param price [Integer]
            #   @param regular_price [Integer]
            #   @param renewed_at [String, nil]
            #   @param show_posts_in_feed [Boolean]
            #   @param status [String]
            #   @param subscribe_at [String]
            #   @param subscribe_price [Integer]
            #   @param subscribes [Array<Onlyfansapi::Models::UserListResponse::Data::Const1000000::SubscribedByData::Subscribe>]
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
              optional :offer_end, String, api_name: :offerEnd, nil?: true

              # @!attribute offer_start
              #
              #   @return [String, nil]
              optional :offer_start, String, api_name: :offerStart, nil?: true

              # @!attribute price
              #
              #   @return [Integer, nil]
              optional :price, Integer

              # @!attribute regular_price
              #
              #   @return [Integer, nil]
              optional :regular_price, Integer, api_name: :regularPrice

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
              #   @param offer_end [String, nil]
              #   @param offer_start [String, nil]
              #   @param price [Integer]
              #   @param regular_price [Integer]
              #   @param start_date [String]
              #   @param subscriber_id [Integer]
              #   @param type [String]
              #   @param user_id [Integer]
            end
          end

          # @see Onlyfansapi::Models::UserListResponse::Data::Const1000000#subscribed_on_data
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
            #   @return [Float, nil]
            optional :new_price, Float, api_name: :newPrice

            # @!attribute posts_summ
            #
            #   @return [Integer, nil]
            optional :posts_summ, Integer, api_name: :postsSumm

            # @!attribute price
            #
            #   @return [Float, nil]
            optional :price, Float

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
            #   @param new_price [Float]
            #   @param posts_summ [Integer]
            #   @param price [Float]
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
end
