# frozen_string_literal: true

module Onlyfans
  module Models
    module Users
      # @see Onlyfans::Resources::Users::Restrict#delete
      class RestrictDeleteResponse < Onlyfans::Internal::Type::BaseModel
        # @!attribute _meta
        #
        #   @return [Onlyfans::Models::Users::RestrictDeleteResponse::Meta, nil]
        optional :_meta, -> { Onlyfans::Models::Users::RestrictDeleteResponse::Meta }

        # @!attribute data
        #
        #   @return [Onlyfans::Models::Users::RestrictDeleteResponse::Data, nil]
        optional :data, -> { Onlyfans::Models::Users::RestrictDeleteResponse::Data }

        # @!method initialize(_meta: nil, data: nil)
        #   @param _meta [Onlyfans::Models::Users::RestrictDeleteResponse::Meta]
        #   @param data [Onlyfans::Models::Users::RestrictDeleteResponse::Data]

        # @see Onlyfans::Models::Users::RestrictDeleteResponse#_meta
        class Meta < Onlyfans::Internal::Type::BaseModel
          # @!attribute _cache
          #
          #   @return [Onlyfans::Models::Users::RestrictDeleteResponse::Meta::Cache, nil]
          optional :_cache, -> { Onlyfans::Models::Users::RestrictDeleteResponse::Meta::Cache }

          # @!attribute _credits
          #
          #   @return [Onlyfans::Models::Users::RestrictDeleteResponse::Meta::Credits, nil]
          optional :_credits, -> { Onlyfans::Models::Users::RestrictDeleteResponse::Meta::Credits }

          # @!attribute _rate_limits
          #
          #   @return [Onlyfans::Models::Users::RestrictDeleteResponse::Meta::RateLimits, nil]
          optional :_rate_limits, -> { Onlyfans::Models::Users::RestrictDeleteResponse::Meta::RateLimits }

          # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
          #   @param _cache [Onlyfans::Models::Users::RestrictDeleteResponse::Meta::Cache]
          #   @param _credits [Onlyfans::Models::Users::RestrictDeleteResponse::Meta::Credits]
          #   @param _rate_limits [Onlyfans::Models::Users::RestrictDeleteResponse::Meta::RateLimits]

          # @see Onlyfans::Models::Users::RestrictDeleteResponse::Meta#_cache
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

          # @see Onlyfans::Models::Users::RestrictDeleteResponse::Meta#_credits
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

          # @see Onlyfans::Models::Users::RestrictDeleteResponse::Meta#_rate_limits
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

        # @see Onlyfans::Models::Users::RestrictDeleteResponse#data
        class Data < Onlyfans::Internal::Type::BaseModel
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
          #   @return [Onlyfans::Models::Users::RestrictDeleteResponse::Data::AvatarThumbs, nil]
          optional :avatar_thumbs,
                   -> { Onlyfans::Models::Users::RestrictDeleteResponse::Data::AvatarThumbs },
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
          #   @return [Onlyfans::Models::Users::RestrictDeleteResponse::Data::HeaderSize, nil]
          optional :header_size,
                   -> { Onlyfans::Models::Users::RestrictDeleteResponse::Data::HeaderSize },
                   api_name: :headerSize

          # @!attribute header_thumbs
          #
          #   @return [Onlyfans::Models::Users::RestrictDeleteResponse::Data::HeaderThumbs, nil]
          optional :header_thumbs,
                   -> { Onlyfans::Models::Users::RestrictDeleteResponse::Data::HeaderThumbs },
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
          #   @return [Array<Onlyfans::Models::Users::RestrictDeleteResponse::Data::ListsState>, nil]
          optional :lists_states,
                   -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::Users::RestrictDeleteResponse::Data::ListsState] },
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
          #   @return [Onlyfans::Models::Users::RestrictDeleteResponse::Data::SubscribedByData, nil]
          optional :subscribed_by_data,
                   -> { Onlyfans::Models::Users::RestrictDeleteResponse::Data::SubscribedByData },
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
          #   @return [String, nil]
          optional :subscribed_on, String, api_name: :subscribedOn, nil?: true

          # @!attribute subscribed_on_data
          #
          #   @return [Onlyfans::Models::Users::RestrictDeleteResponse::Data::SubscribedOnData, nil]
          optional :subscribed_on_data,
                   -> { Onlyfans::Models::Users::RestrictDeleteResponse::Data::SubscribedOnData },
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
          #   @return [Float, nil]
          optional :subscribe_price, Float, api_name: :subscribePrice

          # @!attribute subscribers_count
          #
          #   @return [String, nil]
          optional :subscribers_count, String, api_name: :subscribersCount, nil?: true

          # @!attribute subscription_bundles
          #
          #   @return [Array<Onlyfans::Models::Users::RestrictDeleteResponse::Data::SubscriptionBundle>, nil]
          optional :subscription_bundles,
                   -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::Users::RestrictDeleteResponse::Data::SubscriptionBundle] },
                   api_name: :subscriptionBundles

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

          # @!method initialize(id: nil, about: nil, archived_posts_count: nil, audios_count: nil, avatar: nil, avatar_header_converter_upload: nil, avatar_thumbs: nil, can_add_subscriber: nil, can_chat: nil, can_comment_story: nil, can_create_promotion: nil, can_create_trial: nil, can_earn: nil, can_look_story: nil, can_pay_internal: nil, can_receive_chat_message: nil, can_report: nil, can_restrict: nil, can_trial_send: nil, can_unsubscribe: nil, current_subscribe_price: nil, display_name: nil, favorited_count: nil, favorites_count: nil, finished_streams_count: nil, first_published_post_date: nil, has_friends: nil, has_labels: nil, has_links: nil, has_not_viewed_story: nil, has_pinned_posts: nil, has_saved_streams: nil, has_scheduled_stream: nil, has_stories: nil, has_stream: nil, header: nil, header_size: nil, header_thumbs: nil, is_adult_content: nil, is_blocked: nil, is_friend: nil, is_markdown_disabled_for_about: nil, is_paywall_required: nil, is_pending_autoprolong: nil, is_performer: nil, is_private_restriction: nil, is_real_performer: nil, is_referrer_allowed: nil, is_restricted: nil, is_spotify_connected: nil, is_spring_connected: nil, is_verified: nil, join_date: nil, last_seen: nil, lists_states: nil, location: nil, medias_count: nil, name: nil, notice: nil, photos_count: nil, posts_count: nil, private_archived_posts_count: nil, should_show_finished_streams: nil, show_media_count: nil, show_posts_in_feed: nil, show_subscribers_count: nil, subscribed_by: nil, subscribed_by_autoprolong: nil, subscribed_by_data: nil, subscribed_by_expire: nil, subscribed_by_expire_date: nil, subscribed_is_expired_now: nil, subscribed_on: nil, subscribed_on_data: nil, subscribed_on_duration: nil, subscribed_on_expired_now: nil, subscribe_price: nil, subscribers_count: nil, subscription_bundles: nil, tips_enabled: nil, tips_max: nil, tips_min: nil, tips_min_internal: nil, tips_text_enabled: nil, username: nil, videos_count: nil, view: nil, website: nil, wishlist: nil)
          #   @param id [Integer]
          #   @param about [String]
          #   @param archived_posts_count [Integer]
          #   @param audios_count [Integer]
          #   @param avatar [String]
          #   @param avatar_header_converter_upload [Boolean]
          #   @param avatar_thumbs [Onlyfans::Models::Users::RestrictDeleteResponse::Data::AvatarThumbs]
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
          #   @param header_size [Onlyfans::Models::Users::RestrictDeleteResponse::Data::HeaderSize]
          #   @param header_thumbs [Onlyfans::Models::Users::RestrictDeleteResponse::Data::HeaderThumbs]
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
          #   @param lists_states [Array<Onlyfans::Models::Users::RestrictDeleteResponse::Data::ListsState>]
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
          #   @param subscribed_by_data [Onlyfans::Models::Users::RestrictDeleteResponse::Data::SubscribedByData]
          #   @param subscribed_by_expire [Boolean]
          #   @param subscribed_by_expire_date [String]
          #   @param subscribed_is_expired_now [Boolean]
          #   @param subscribed_on [String, nil]
          #   @param subscribed_on_data [Onlyfans::Models::Users::RestrictDeleteResponse::Data::SubscribedOnData]
          #   @param subscribed_on_duration [String]
          #   @param subscribed_on_expired_now [Boolean]
          #   @param subscribe_price [Float]
          #   @param subscribers_count [String, nil]
          #   @param subscription_bundles [Array<Onlyfans::Models::Users::RestrictDeleteResponse::Data::SubscriptionBundle>]
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

          # @see Onlyfans::Models::Users::RestrictDeleteResponse::Data#avatar_thumbs
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

          # @see Onlyfans::Models::Users::RestrictDeleteResponse::Data#header_size
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

          # @see Onlyfans::Models::Users::RestrictDeleteResponse::Data#header_thumbs
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

          # @see Onlyfans::Models::Users::RestrictDeleteResponse::Data#subscribed_by_data
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
            #   @return [Float, nil]
            optional :regular_price, Float, api_name: :regularPrice

            # @!attribute renewed_at
            #
            #   @return [String, nil]
            optional :renewed_at, String, api_name: :renewedAt, nil?: true

            # @!attribute show_posts_in_feed
            #
            #   @return [Boolean, nil]
            optional :show_posts_in_feed, Onlyfans::Internal::Type::Boolean, api_name: :showPostsInFeed

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
            #   @return [Float, nil]
            optional :subscribe_price, Float, api_name: :subscribePrice

            # @!attribute subscribes
            #
            #   @return [Array<Onlyfans::Models::Users::RestrictDeleteResponse::Data::SubscribedByData::Subscribe>, nil]
            optional :subscribes,
                     -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::Users::RestrictDeleteResponse::Data::SubscribedByData::Subscribe] }

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
            #   @param regular_price [Float]
            #   @param renewed_at [String, nil]
            #   @param show_posts_in_feed [Boolean]
            #   @param status [String]
            #   @param subscribe_at [String]
            #   @param subscribe_price [Float]
            #   @param subscribes [Array<Onlyfans::Models::Users::RestrictDeleteResponse::Data::SubscribedByData::Subscribe>]
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
              #   @param offer_end [String, nil]
              #   @param offer_start [String]
              #   @param price [Integer]
              #   @param regular_price [Float]
              #   @param start_date [String]
              #   @param subscriber_id [Integer]
              #   @param type [String]
              #   @param user_id [Integer]
            end
          end

          # @see Onlyfans::Models::Users::RestrictDeleteResponse::Data#subscribed_on_data
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
            #   @return [Integer, nil]
            optional :regular_price, Integer, api_name: :regularPrice

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
            #   @return [Integer, nil]
            optional :subscribe_price, Integer, api_name: :subscribePrice

            # @!attribute subscribes
            #
            #   @return [Array<Object>, nil]
            optional :subscribes, Onlyfans::Internal::Type::ArrayOf[Onlyfans::Internal::Type::Unknown]

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
            #   @param regular_price [Integer]
            #   @param renewed_at [String, nil]
            #   @param status [String, nil]
            #   @param streams_summ [Integer]
            #   @param subscribe_at [String]
            #   @param subscribe_price [Integer]
            #   @param subscribes [Array<Object>]
            #   @param subscribes_summ [Integer]
            #   @param tips_summ [Integer]
            #   @param total_summ [Integer]
            #   @param unsubscribe_reason [String]
          end

          class SubscriptionBundle < Onlyfans::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [Integer, nil]
            optional :id, Integer

            # @!attribute can_buy
            #
            #   @return [Boolean, nil]
            optional :can_buy, Onlyfans::Internal::Type::Boolean, api_name: :canBuy

            # @!attribute discount
            #
            #   @return [Integer, nil]
            optional :discount, Integer

            # @!attribute duration
            #
            #   @return [Integer, nil]
            optional :duration, Integer

            # @!attribute price
            #
            #   @return [Float, nil]
            optional :price, Float

            # @!method initialize(id: nil, can_buy: nil, discount: nil, duration: nil, price: nil)
            #   @param id [Integer]
            #   @param can_buy [Boolean]
            #   @param discount [Integer]
            #   @param duration [Integer]
            #   @param price [Float]
          end
        end
      end
    end
  end
end
