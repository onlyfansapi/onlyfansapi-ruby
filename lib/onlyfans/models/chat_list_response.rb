# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Chats#list
    class ChatListResponse < Onlyfans::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfans::Models::ChatListResponse::Meta, nil]
      optional :_meta, -> { Onlyfans::Models::ChatListResponse::Meta }

      # @!attribute _pagination
      #
      #   @return [Onlyfans::Models::ChatListResponse::Pagination, nil]
      optional :_pagination, -> { Onlyfans::Models::ChatListResponse::Pagination }

      # @!attribute data
      #
      #   @return [Array<Onlyfans::Models::ChatListResponse::Data>, nil]
      optional :data, -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::ChatListResponse::Data] }

      # @!method initialize(_meta: nil, _pagination: nil, data: nil)
      #   @param _meta [Onlyfans::Models::ChatListResponse::Meta]
      #   @param _pagination [Onlyfans::Models::ChatListResponse::Pagination]
      #   @param data [Array<Onlyfans::Models::ChatListResponse::Data>]

      # @see Onlyfans::Models::ChatListResponse#_meta
      class Meta < Onlyfans::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfans::Models::ChatListResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfans::Models::ChatListResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfans::Models::ChatListResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfans::Models::ChatListResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfans::Models::ChatListResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfans::Models::ChatListResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfans::Models::ChatListResponse::Meta::Cache]
        #   @param _credits [Onlyfans::Models::ChatListResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfans::Models::ChatListResponse::Meta::RateLimits]

        # @see Onlyfans::Models::ChatListResponse::Meta#_cache
        class Cache < Onlyfans::Internal::Type::BaseModel
          # @!attribute is_cached
          #
          #   @return [Boolean, nil]
          optional :is_cached, Onlyfans::Internal::Type::Boolean

          # @!attribute note
          #
          #   @return [String, nil]
          optional :note, String

          # @!method initialize(is_cached: nil, note: nil)
          #   @param is_cached [Boolean]
          #   @param note [String]
        end

        # @see Onlyfans::Models::ChatListResponse::Meta#_credits
        class Credits < Onlyfans::Internal::Type::BaseModel
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

        # @see Onlyfans::Models::ChatListResponse::Meta#_rate_limits
        class RateLimits < Onlyfans::Internal::Type::BaseModel
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

      # @see Onlyfans::Models::ChatListResponse#_pagination
      class Pagination < Onlyfans::Internal::Type::BaseModel
        # @!attribute next_page
        #
        #   @return [String, nil]
        optional :next_page, String

        # @!method initialize(next_page: nil)
        #   @param next_page [String]
      end

      class Data < Onlyfans::Internal::Type::BaseModel
        # @!attribute can_go_to_profile
        #
        #   @return [Boolean, nil]
        optional :can_go_to_profile, Onlyfans::Internal::Type::Boolean, api_name: :canGoToProfile

        # @!attribute can_not_send_reason
        #
        #   @return [Boolean, nil]
        optional :can_not_send_reason, Onlyfans::Internal::Type::Boolean, api_name: :canNotSendReason

        # @!attribute can_send_message
        #
        #   @return [Boolean, nil]
        optional :can_send_message, Onlyfans::Internal::Type::Boolean, api_name: :canSendMessage

        # @!attribute count_pinned_messages
        #
        #   @return [Integer, nil]
        optional :count_pinned_messages, Integer, api_name: :countPinnedMessages

        # @!attribute fan
        #
        #   @return [Onlyfans::Models::ChatListResponse::Data::Fan, nil]
        optional :fan, -> { Onlyfans::Models::ChatListResponse::Data::Fan }

        # @!attribute has_purchased_feed
        #
        #   @return [Boolean, nil]
        optional :has_purchased_feed, Onlyfans::Internal::Type::Boolean, api_name: :hasPurchasedFeed

        # @!attribute has_unread_tips
        #
        #   @return [Boolean, nil]
        optional :has_unread_tips, Onlyfans::Internal::Type::Boolean, api_name: :hasUnreadTips

        # @!attribute is_muted_notifications
        #
        #   @return [Boolean, nil]
        optional :is_muted_notifications, Onlyfans::Internal::Type::Boolean, api_name: :isMutedNotifications

        # @!attribute last_message
        #
        #   @return [Onlyfans::Models::ChatListResponse::Data::LastMessage, nil]
        optional :last_message,
                 -> { Onlyfans::Models::ChatListResponse::Data::LastMessage },
                 api_name: :lastMessage

        # @!attribute last_read_message_id
        #
        #   @return [Integer, nil]
        optional :last_read_message_id, Integer, api_name: :lastReadMessageId

        # @!attribute unread_messages_count
        #
        #   @return [Integer, nil]
        optional :unread_messages_count, Integer, api_name: :unreadMessagesCount

        # @!method initialize(can_go_to_profile: nil, can_not_send_reason: nil, can_send_message: nil, count_pinned_messages: nil, fan: nil, has_purchased_feed: nil, has_unread_tips: nil, is_muted_notifications: nil, last_message: nil, last_read_message_id: nil, unread_messages_count: nil)
        #   @param can_go_to_profile [Boolean]
        #   @param can_not_send_reason [Boolean]
        #   @param can_send_message [Boolean]
        #   @param count_pinned_messages [Integer]
        #   @param fan [Onlyfans::Models::ChatListResponse::Data::Fan]
        #   @param has_purchased_feed [Boolean]
        #   @param has_unread_tips [Boolean]
        #   @param is_muted_notifications [Boolean]
        #   @param last_message [Onlyfans::Models::ChatListResponse::Data::LastMessage]
        #   @param last_read_message_id [Integer]
        #   @param unread_messages_count [Integer]

        # @see Onlyfans::Models::ChatListResponse::Data#fan
        class Fan < Onlyfans::Internal::Type::BaseModel
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
                   Onlyfans::Internal::Type::Boolean,
                   api_name: :avatarHeaderConverterUpload

          # @!attribute avatar_thumbs
          #
          #   @return [Onlyfans::Models::ChatListResponse::Data::Fan::AvatarThumbs, nil]
          optional :avatar_thumbs,
                   -> { Onlyfans::Models::ChatListResponse::Data::Fan::AvatarThumbs },
                   api_name: :avatarThumbs

          # @!attribute can_add_subscriber
          #
          #   @return [Boolean, nil]
          optional :can_add_subscriber, Onlyfans::Internal::Type::Boolean, api_name: :canAddSubscriber

          # @!attribute can_chat
          #
          #   @return [Boolean, nil]
          optional :can_chat, Onlyfans::Internal::Type::Boolean, api_name: :canChat

          # @!attribute can_comment_story
          #
          #   @return [Boolean, nil]
          optional :can_comment_story, Onlyfans::Internal::Type::Boolean, api_name: :canCommentStory

          # @!attribute can_create_promotion
          #
          #   @return [Boolean, nil]
          optional :can_create_promotion, Onlyfans::Internal::Type::Boolean, api_name: :canCreatePromotion

          # @!attribute can_create_trial
          #
          #   @return [Boolean, nil]
          optional :can_create_trial, Onlyfans::Internal::Type::Boolean, api_name: :canCreateTrial

          # @!attribute can_earn
          #
          #   @return [Boolean, nil]
          optional :can_earn, Onlyfans::Internal::Type::Boolean, api_name: :canEarn

          # @!attribute can_look_story
          #
          #   @return [Boolean, nil]
          optional :can_look_story, Onlyfans::Internal::Type::Boolean, api_name: :canLookStory

          # @!attribute can_pay_internal
          #
          #   @return [Boolean, nil]
          optional :can_pay_internal, Onlyfans::Internal::Type::Boolean, api_name: :canPayInternal

          # @!attribute can_receive_chat_message
          #
          #   @return [Boolean, nil]
          optional :can_receive_chat_message,
                   Onlyfans::Internal::Type::Boolean,
                   api_name: :canReceiveChatMessage

          # @!attribute can_report
          #
          #   @return [Boolean, nil]
          optional :can_report, Onlyfans::Internal::Type::Boolean, api_name: :canReport

          # @!attribute can_restrict
          #
          #   @return [Boolean, nil]
          optional :can_restrict, Onlyfans::Internal::Type::Boolean, api_name: :canRestrict

          # @!attribute can_trial_send
          #
          #   @return [Boolean, nil]
          optional :can_trial_send, Onlyfans::Internal::Type::Boolean, api_name: :canTrialSend

          # @!attribute can_unsubscribe
          #
          #   @return [Boolean, nil]
          optional :can_unsubscribe, Onlyfans::Internal::Type::Boolean, api_name: :canUnsubscribe

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

          # @!attribute finished_streams_count
          #
          #   @return [Integer, nil]
          optional :finished_streams_count, Integer, api_name: :finishedStreamsCount

          # @!attribute first_published_post_date
          #
          #   @return [String, nil]
          optional :first_published_post_date, String, api_name: :firstPublishedPostDate

          # @!attribute has_friends
          #
          #   @return [Boolean, nil]
          optional :has_friends, Onlyfans::Internal::Type::Boolean, api_name: :hasFriends

          # @!attribute has_labels
          #
          #   @return [Boolean, nil]
          optional :has_labels, Onlyfans::Internal::Type::Boolean, api_name: :hasLabels

          # @!attribute has_links
          #
          #   @return [Boolean, nil]
          optional :has_links, Onlyfans::Internal::Type::Boolean, api_name: :hasLinks

          # @!attribute has_not_viewed_story
          #
          #   @return [Boolean, nil]
          optional :has_not_viewed_story, Onlyfans::Internal::Type::Boolean, api_name: :hasNotViewedStory

          # @!attribute has_pinned_posts
          #
          #   @return [Boolean, nil]
          optional :has_pinned_posts, Onlyfans::Internal::Type::Boolean, api_name: :hasPinnedPosts

          # @!attribute has_saved_streams
          #
          #   @return [Boolean, nil]
          optional :has_saved_streams, Onlyfans::Internal::Type::Boolean, api_name: :hasSavedStreams

          # @!attribute has_scheduled_stream
          #
          #   @return [Boolean, nil]
          optional :has_scheduled_stream, Onlyfans::Internal::Type::Boolean, api_name: :hasScheduledStream

          # @!attribute has_stories
          #
          #   @return [Boolean, nil]
          optional :has_stories, Onlyfans::Internal::Type::Boolean, api_name: :hasStories

          # @!attribute has_stream
          #
          #   @return [Boolean, nil]
          optional :has_stream, Onlyfans::Internal::Type::Boolean, api_name: :hasStream

          # @!attribute header
          #
          #   @return [String, nil]
          optional :header, String

          # @!attribute header_size
          #
          #   @return [Onlyfans::Models::ChatListResponse::Data::Fan::HeaderSize, nil]
          optional :header_size,
                   -> { Onlyfans::Models::ChatListResponse::Data::Fan::HeaderSize },
                   api_name: :headerSize

          # @!attribute header_thumbs
          #
          #   @return [Onlyfans::Models::ChatListResponse::Data::Fan::HeaderThumbs, nil]
          optional :header_thumbs,
                   -> { Onlyfans::Models::ChatListResponse::Data::Fan::HeaderThumbs },
                   api_name: :headerThumbs

          # @!attribute is_adult_content
          #
          #   @return [Boolean, nil]
          optional :is_adult_content, Onlyfans::Internal::Type::Boolean, api_name: :isAdultContent

          # @!attribute is_blocked
          #
          #   @return [Boolean, nil]
          optional :is_blocked, Onlyfans::Internal::Type::Boolean, api_name: :isBlocked

          # @!attribute is_friend
          #
          #   @return [Boolean, nil]
          optional :is_friend, Onlyfans::Internal::Type::Boolean, api_name: :isFriend

          # @!attribute is_markdown_disabled_for_about
          #
          #   @return [Boolean, nil]
          optional :is_markdown_disabled_for_about,
                   Onlyfans::Internal::Type::Boolean,
                   api_name: :isMarkdownDisabledForAbout

          # @!attribute is_paywall_required
          #
          #   @return [Boolean, nil]
          optional :is_paywall_required, Onlyfans::Internal::Type::Boolean, api_name: :isPaywallRequired

          # @!attribute is_pending_autoprolong
          #
          #   @return [Boolean, nil]
          optional :is_pending_autoprolong, Onlyfans::Internal::Type::Boolean, api_name: :isPendingAutoprolong

          # @!attribute is_performer
          #
          #   @return [Boolean, nil]
          optional :is_performer, Onlyfans::Internal::Type::Boolean, api_name: :isPerformer

          # @!attribute is_private_restriction
          #
          #   @return [Boolean, nil]
          optional :is_private_restriction, Onlyfans::Internal::Type::Boolean, api_name: :isPrivateRestriction

          # @!attribute is_real_performer
          #
          #   @return [Boolean, nil]
          optional :is_real_performer, Onlyfans::Internal::Type::Boolean, api_name: :isRealPerformer

          # @!attribute is_referrer_allowed
          #
          #   @return [Boolean, nil]
          optional :is_referrer_allowed, Onlyfans::Internal::Type::Boolean, api_name: :isReferrerAllowed

          # @!attribute is_restricted
          #
          #   @return [Boolean, nil]
          optional :is_restricted, Onlyfans::Internal::Type::Boolean, api_name: :isRestricted

          # @!attribute is_spotify_connected
          #
          #   @return [Boolean, nil]
          optional :is_spotify_connected, Onlyfans::Internal::Type::Boolean, api_name: :isSpotifyConnected

          # @!attribute is_spring_connected
          #
          #   @return [Boolean, nil]
          optional :is_spring_connected, Onlyfans::Internal::Type::Boolean, api_name: :isSpringConnected

          # @!attribute is_verified
          #
          #   @return [Boolean, nil]
          optional :is_verified, Onlyfans::Internal::Type::Boolean, api_name: :isVerified

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
          #   @return [Array<Onlyfans::Models::ChatListResponse::Data::Fan::ListsState>, nil]
          optional :lists_states,
                   -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::ChatListResponse::Data::Fan::ListsState] },
                   api_name: :listsStates

          # @!attribute location
          #
          #   @return [String, nil]
          optional :location, String

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

          # @!attribute should_show_finished_streams
          #
          #   @return [Boolean, nil]
          optional :should_show_finished_streams,
                   Onlyfans::Internal::Type::Boolean,
                   api_name: :shouldShowFinishedStreams

          # @!attribute show_media_count
          #
          #   @return [Boolean, nil]
          optional :show_media_count, Onlyfans::Internal::Type::Boolean, api_name: :showMediaCount

          # @!attribute show_posts_in_feed
          #
          #   @return [Boolean, nil]
          optional :show_posts_in_feed, Onlyfans::Internal::Type::Boolean, api_name: :showPostsInFeed

          # @!attribute show_subscribers_count
          #
          #   @return [Boolean, nil]
          optional :show_subscribers_count, Onlyfans::Internal::Type::Boolean, api_name: :showSubscribersCount

          # @!attribute subscribed_by
          #
          #   @return [Boolean, nil]
          optional :subscribed_by, Onlyfans::Internal::Type::Boolean, api_name: :subscribedBy

          # @!attribute subscribed_by_autoprolong
          #
          #   @return [Boolean, nil]
          optional :subscribed_by_autoprolong,
                   Onlyfans::Internal::Type::Boolean,
                   api_name: :subscribedByAutoprolong

          # @!attribute subscribed_by_data
          #
          #   @return [Onlyfans::Models::ChatListResponse::Data::Fan::SubscribedByData, nil]
          optional :subscribed_by_data,
                   -> { Onlyfans::Models::ChatListResponse::Data::Fan::SubscribedByData },
                   api_name: :subscribedByData

          # @!attribute subscribed_by_expire
          #
          #   @return [Boolean, nil]
          optional :subscribed_by_expire, Onlyfans::Internal::Type::Boolean, api_name: :subscribedByExpire

          # @!attribute subscribed_by_expire_date
          #
          #   @return [String, nil]
          optional :subscribed_by_expire_date, String, api_name: :subscribedByExpireDate

          # @!attribute subscribed_is_expired_now
          #
          #   @return [Boolean, nil]
          optional :subscribed_is_expired_now,
                   Onlyfans::Internal::Type::Boolean,
                   api_name: :subscribedIsExpiredNow

          # @!attribute subscribed_on
          #
          #   @return [Boolean, nil]
          optional :subscribed_on, Onlyfans::Internal::Type::Boolean, api_name: :subscribedOn

          # @!attribute subscribed_on_data
          #
          #   @return [Onlyfans::Models::ChatListResponse::Data::Fan::SubscribedOnData, nil]
          optional :subscribed_on_data,
                   -> { Onlyfans::Models::ChatListResponse::Data::Fan::SubscribedOnData },
                   api_name: :subscribedOnData

          # @!attribute subscribed_on_duration
          #
          #   @return [String, nil]
          optional :subscribed_on_duration, String, api_name: :subscribedOnDuration

          # @!attribute subscribed_on_expired_now
          #
          #   @return [Boolean, nil]
          optional :subscribed_on_expired_now,
                   Onlyfans::Internal::Type::Boolean,
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
          optional :tips_enabled, Onlyfans::Internal::Type::Boolean, api_name: :tipsEnabled

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
          optional :tips_text_enabled, Onlyfans::Internal::Type::Boolean, api_name: :tipsTextEnabled

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

          # @!method initialize(id: nil, about: nil, archived_posts_count: nil, audios_count: nil, avatar: nil, avatar_header_converter_upload: nil, avatar_thumbs: nil, can_add_subscriber: nil, can_chat: nil, can_comment_story: nil, can_create_promotion: nil, can_create_trial: nil, can_earn: nil, can_look_story: nil, can_pay_internal: nil, can_receive_chat_message: nil, can_report: nil, can_restrict: nil, can_trial_send: nil, can_unsubscribe: nil, current_subscribe_price: nil, display_name: nil, favorited_count: nil, favorites_count: nil, finished_streams_count: nil, first_published_post_date: nil, has_friends: nil, has_labels: nil, has_links: nil, has_not_viewed_story: nil, has_pinned_posts: nil, has_saved_streams: nil, has_scheduled_stream: nil, has_stories: nil, has_stream: nil, header: nil, header_size: nil, header_thumbs: nil, is_adult_content: nil, is_blocked: nil, is_friend: nil, is_markdown_disabled_for_about: nil, is_paywall_required: nil, is_pending_autoprolong: nil, is_performer: nil, is_private_restriction: nil, is_real_performer: nil, is_referrer_allowed: nil, is_restricted: nil, is_spotify_connected: nil, is_spring_connected: nil, is_verified: nil, join_date: nil, last_seen: nil, lists_states: nil, location: nil, medias_count: nil, name: nil, notice: nil, photos_count: nil, posts_count: nil, private_archived_posts_count: nil, should_show_finished_streams: nil, show_media_count: nil, show_posts_in_feed: nil, show_subscribers_count: nil, subscribed_by: nil, subscribed_by_autoprolong: nil, subscribed_by_data: nil, subscribed_by_expire: nil, subscribed_by_expire_date: nil, subscribed_is_expired_now: nil, subscribed_on: nil, subscribed_on_data: nil, subscribed_on_duration: nil, subscribed_on_expired_now: nil, subscribe_price: nil, subscribers_count: nil, tips_enabled: nil, tips_max: nil, tips_min: nil, tips_min_internal: nil, tips_text_enabled: nil, username: nil, videos_count: nil, view: nil, website: nil, wishlist: nil)
          #   @param id [Integer]
          #   @param about [String]
          #   @param archived_posts_count [Integer]
          #   @param audios_count [Integer]
          #   @param avatar [String]
          #   @param avatar_header_converter_upload [Boolean]
          #   @param avatar_thumbs [Onlyfans::Models::ChatListResponse::Data::Fan::AvatarThumbs]
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
          #   @param finished_streams_count [Integer]
          #   @param first_published_post_date [String]
          #   @param has_friends [Boolean]
          #   @param has_labels [Boolean]
          #   @param has_links [Boolean]
          #   @param has_not_viewed_story [Boolean]
          #   @param has_pinned_posts [Boolean]
          #   @param has_saved_streams [Boolean]
          #   @param has_scheduled_stream [Boolean]
          #   @param has_stories [Boolean]
          #   @param has_stream [Boolean]
          #   @param header [String]
          #   @param header_size [Onlyfans::Models::ChatListResponse::Data::Fan::HeaderSize]
          #   @param header_thumbs [Onlyfans::Models::ChatListResponse::Data::Fan::HeaderThumbs]
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
          #   @param lists_states [Array<Onlyfans::Models::ChatListResponse::Data::Fan::ListsState>]
          #   @param location [String]
          #   @param medias_count [Integer]
          #   @param name [String]
          #   @param notice [String]
          #   @param photos_count [Integer]
          #   @param posts_count [Integer]
          #   @param private_archived_posts_count [Integer]
          #   @param should_show_finished_streams [Boolean]
          #   @param show_media_count [Boolean]
          #   @param show_posts_in_feed [Boolean]
          #   @param show_subscribers_count [Boolean]
          #   @param subscribed_by [Boolean]
          #   @param subscribed_by_autoprolong [Boolean]
          #   @param subscribed_by_data [Onlyfans::Models::ChatListResponse::Data::Fan::SubscribedByData]
          #   @param subscribed_by_expire [Boolean]
          #   @param subscribed_by_expire_date [String]
          #   @param subscribed_is_expired_now [Boolean]
          #   @param subscribed_on [Boolean]
          #   @param subscribed_on_data [Onlyfans::Models::ChatListResponse::Data::Fan::SubscribedOnData]
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

          # @see Onlyfans::Models::ChatListResponse::Data::Fan#avatar_thumbs
          class AvatarThumbs < Onlyfans::Internal::Type::BaseModel
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

          # @see Onlyfans::Models::ChatListResponse::Data::Fan#header_size
          class HeaderSize < Onlyfans::Internal::Type::BaseModel
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

          # @see Onlyfans::Models::ChatListResponse::Data::Fan#header_thumbs
          class HeaderThumbs < Onlyfans::Internal::Type::BaseModel
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

          class ListsState < Onlyfans::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String, nil]
            optional :id, String

            # @!attribute can_add_user
            #
            #   @return [Boolean, nil]
            optional :can_add_user, Onlyfans::Internal::Type::Boolean, api_name: :canAddUser

            # @!attribute cannot_add_user_reason
            #
            #   @return [String, nil]
            optional :cannot_add_user_reason, String, api_name: :cannotAddUserReason

            # @!attribute has_user
            #
            #   @return [Boolean, nil]
            optional :has_user, Onlyfans::Internal::Type::Boolean, api_name: :hasUser

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

          # @see Onlyfans::Models::ChatListResponse::Data::Fan#subscribed_by_data
          class SubscribedByData < Onlyfans::Internal::Type::BaseModel
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
                     Onlyfans::Internal::Type::Boolean,
                     api_name: :hasActivePaidSubscriptions

            # @!attribute is_muted
            #
            #   @return [Boolean, nil]
            optional :is_muted, Onlyfans::Internal::Type::Boolean, api_name: :isMuted

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
            optional :renewed_at, String, api_name: :renewedAt

            # @!attribute show_posts_in_feed
            #
            #   @return [Boolean, nil]
            optional :show_posts_in_feed, Onlyfans::Internal::Type::Boolean, api_name: :showPostsInFeed

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
            #   @return [Array<Onlyfans::Models::ChatListResponse::Data::Fan::SubscribedByData::Subscribe>, nil]
            optional :subscribes,
                     -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::ChatListResponse::Data::Fan::SubscribedByData::Subscribe] }

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
            #   @param renewed_at [String]
            #   @param show_posts_in_feed [Boolean]
            #   @param status [String, nil]
            #   @param subscribe_at [String]
            #   @param subscribe_price [Integer]
            #   @param subscribes [Array<Onlyfans::Models::ChatListResponse::Data::Fan::SubscribedByData::Subscribe>]
            #   @param unsubscribe_reason [String]

            class Subscribe < Onlyfans::Internal::Type::BaseModel
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
              optional :is_current, Onlyfans::Internal::Type::Boolean, api_name: :isCurrent

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

          # @see Onlyfans::Models::ChatListResponse::Data::Fan#subscribed_on_data
          class SubscribedOnData < Onlyfans::Internal::Type::BaseModel
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
                     Onlyfans::Internal::Type::Boolean,
                     api_name: :hasActivePaidSubscriptions

            # @!attribute is_muted
            #
            #   @return [Boolean, nil]
            optional :is_muted, Onlyfans::Internal::Type::Boolean, api_name: :isMuted

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
            optional :renewed_at, String, api_name: :renewedAt

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
            #   @return [Array<Onlyfans::Models::ChatListResponse::Data::Fan::SubscribedOnData::Subscribe>, nil]
            optional :subscribes,
                     -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::ChatListResponse::Data::Fan::SubscribedOnData::Subscribe] }

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
            #   @param renewed_at [String]
            #   @param status [String, nil]
            #   @param streams_summ [Integer]
            #   @param subscribe_at [String]
            #   @param subscribe_price [Float]
            #   @param subscribes [Array<Onlyfans::Models::ChatListResponse::Data::Fan::SubscribedOnData::Subscribe>]
            #   @param subscribes_summ [Integer]
            #   @param tips_summ [Integer]
            #   @param total_summ [Integer]
            #   @param unsubscribe_reason [String]

            class Subscribe < Onlyfans::Internal::Type::BaseModel
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
              optional :is_current, Onlyfans::Internal::Type::Boolean, api_name: :isCurrent

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
        end

        # @see Onlyfans::Models::ChatListResponse::Data#last_message
        class LastMessage < Onlyfans::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [Integer, nil]
          optional :id, Integer

          # @!attribute can_be_pinned
          #
          #   @return [Boolean, nil]
          optional :can_be_pinned, Onlyfans::Internal::Type::Boolean, api_name: :canBePinned

          # @!attribute cancel_seconds
          #
          #   @return [Integer, nil]
          optional :cancel_seconds, Integer, api_name: :cancelSeconds

          # @!attribute can_purchase
          #
          #   @return [Boolean, nil]
          optional :can_purchase, Onlyfans::Internal::Type::Boolean, api_name: :canPurchase

          # @!attribute can_purchase_reason
          #
          #   @return [String, nil]
          optional :can_purchase_reason, String, api_name: :canPurchaseReason

          # @!attribute can_report
          #
          #   @return [Boolean, nil]
          optional :can_report, Onlyfans::Internal::Type::Boolean, api_name: :canReport

          # @!attribute can_unsend_queue
          #
          #   @return [Boolean, nil]
          optional :can_unsend_queue, Onlyfans::Internal::Type::Boolean, api_name: :canUnsendQueue

          # @!attribute changed_at
          #
          #   @return [String, nil]
          optional :changed_at, String, api_name: :changedAt

          # @!attribute created_at
          #
          #   @return [String, nil]
          optional :created_at, String, api_name: :createdAt

          # @!attribute from_user
          #
          #   @return [Onlyfans::Models::ChatListResponse::Data::LastMessage::FromUser, nil]
          optional :from_user,
                   -> { Onlyfans::Models::ChatListResponse::Data::LastMessage::FromUser },
                   api_name: :fromUser

          # @!attribute giphy_id
          #
          #   @return [String, nil]
          optional :giphy_id, String, api_name: :giphyId, nil?: true

          # @!attribute is_couple_people_media
          #
          #   @return [Boolean, nil]
          optional :is_couple_people_media, Onlyfans::Internal::Type::Boolean, api_name: :isCouplePeopleMedia

          # @!attribute is_free
          #
          #   @return [Boolean, nil]
          optional :is_free, Onlyfans::Internal::Type::Boolean, api_name: :isFree

          # @!attribute is_from_queue
          #
          #   @return [Boolean, nil]
          optional :is_from_queue, Onlyfans::Internal::Type::Boolean, api_name: :isFromQueue

          # @!attribute is_liked
          #
          #   @return [Boolean, nil]
          optional :is_liked, Onlyfans::Internal::Type::Boolean, api_name: :isLiked

          # @!attribute is_markdown_disabled
          #
          #   @return [Boolean, nil]
          optional :is_markdown_disabled, Onlyfans::Internal::Type::Boolean, api_name: :isMarkdownDisabled

          # @!attribute is_media_ready
          #
          #   @return [Boolean, nil]
          optional :is_media_ready, Onlyfans::Internal::Type::Boolean, api_name: :isMediaReady

          # @!attribute is_new
          #
          #   @return [Boolean, nil]
          optional :is_new, Onlyfans::Internal::Type::Boolean, api_name: :isNew

          # @!attribute is_opened
          #
          #   @return [Boolean, nil]
          optional :is_opened, Onlyfans::Internal::Type::Boolean, api_name: :isOpened

          # @!attribute is_pinned
          #
          #   @return [Boolean, nil]
          optional :is_pinned, Onlyfans::Internal::Type::Boolean, api_name: :isPinned

          # @!attribute is_reported_by_me
          #
          #   @return [Boolean, nil]
          optional :is_reported_by_me, Onlyfans::Internal::Type::Boolean, api_name: :isReportedByMe

          # @!attribute is_tip
          #
          #   @return [Boolean, nil]
          optional :is_tip, Onlyfans::Internal::Type::Boolean, api_name: :isTip

          # @!attribute locked_text
          #
          #   @return [Boolean, nil]
          optional :locked_text, Onlyfans::Internal::Type::Boolean, api_name: :lockedText

          # @!attribute media
          #
          #   @return [Array<Object>, nil]
          optional :media, Onlyfans::Internal::Type::ArrayOf[Onlyfans::Internal::Type::Unknown]

          # @!attribute media_count
          #
          #   @return [Integer, nil]
          optional :media_count, Integer, api_name: :mediaCount

          # @!attribute previews
          #
          #   @return [Array<Object>, nil]
          optional :previews, Onlyfans::Internal::Type::ArrayOf[Onlyfans::Internal::Type::Unknown]

          # @!attribute price
          #
          #   @return [Integer, nil]
          optional :price, Integer

          # @!attribute queue_id
          #
          #   @return [Integer, nil]
          optional :queue_id, Integer, api_name: :queueId

          # @!attribute response_type
          #
          #   @return [String, nil]
          optional :response_type, String, api_name: :responseType

          # @!attribute text
          #
          #   @return [String, nil]
          optional :text, String

          # @!attribute unsend_seconds_queue
          #
          #   @return [Integer, nil]
          optional :unsend_seconds_queue, Integer, api_name: :unsendSecondsQueue

          # @!method initialize(id: nil, can_be_pinned: nil, cancel_seconds: nil, can_purchase: nil, can_purchase_reason: nil, can_report: nil, can_unsend_queue: nil, changed_at: nil, created_at: nil, from_user: nil, giphy_id: nil, is_couple_people_media: nil, is_free: nil, is_from_queue: nil, is_liked: nil, is_markdown_disabled: nil, is_media_ready: nil, is_new: nil, is_opened: nil, is_pinned: nil, is_reported_by_me: nil, is_tip: nil, locked_text: nil, media: nil, media_count: nil, previews: nil, price: nil, queue_id: nil, response_type: nil, text: nil, unsend_seconds_queue: nil)
          #   @param id [Integer]
          #   @param can_be_pinned [Boolean]
          #   @param cancel_seconds [Integer]
          #   @param can_purchase [Boolean]
          #   @param can_purchase_reason [String]
          #   @param can_report [Boolean]
          #   @param can_unsend_queue [Boolean]
          #   @param changed_at [String]
          #   @param created_at [String]
          #   @param from_user [Onlyfans::Models::ChatListResponse::Data::LastMessage::FromUser]
          #   @param giphy_id [String, nil]
          #   @param is_couple_people_media [Boolean]
          #   @param is_free [Boolean]
          #   @param is_from_queue [Boolean]
          #   @param is_liked [Boolean]
          #   @param is_markdown_disabled [Boolean]
          #   @param is_media_ready [Boolean]
          #   @param is_new [Boolean]
          #   @param is_opened [Boolean]
          #   @param is_pinned [Boolean]
          #   @param is_reported_by_me [Boolean]
          #   @param is_tip [Boolean]
          #   @param locked_text [Boolean]
          #   @param media [Array<Object>]
          #   @param media_count [Integer]
          #   @param previews [Array<Object>]
          #   @param price [Integer]
          #   @param queue_id [Integer]
          #   @param response_type [String]
          #   @param text [String]
          #   @param unsend_seconds_queue [Integer]

          # @see Onlyfans::Models::ChatListResponse::Data::LastMessage#from_user
          class FromUser < Onlyfans::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [Integer, nil]
            optional :id, Integer

            # @!attribute _view
            #
            #   @return [String, nil]
            optional :_view, String

            # @!method initialize(id: nil, _view: nil)
            #   @param id [Integer]
            #   @param _view [String]
          end
        end
      end
    end
  end
end
