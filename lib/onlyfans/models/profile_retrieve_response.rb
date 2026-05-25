# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Profiles#retrieve
    class ProfileRetrieveResponse < Onlyfans::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfans::Models::ProfileRetrieveResponse::Meta, nil]
      optional :_meta, -> { Onlyfans::Models::ProfileRetrieveResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfans::Models::ProfileRetrieveResponse::Data, nil]
      optional :data, -> { Onlyfans::Models::ProfileRetrieveResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfans::Models::ProfileRetrieveResponse::Meta]
      #   @param data [Onlyfans::Models::ProfileRetrieveResponse::Data]

      # @see Onlyfans::Models::ProfileRetrieveResponse#_meta
      class Meta < Onlyfans::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfans::Models::ProfileRetrieveResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfans::Models::ProfileRetrieveResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfans::Models::ProfileRetrieveResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfans::Models::ProfileRetrieveResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfans::Models::ProfileRetrieveResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfans::Models::ProfileRetrieveResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfans::Models::ProfileRetrieveResponse::Meta::Cache]
        #   @param _credits [Onlyfans::Models::ProfileRetrieveResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfans::Models::ProfileRetrieveResponse::Meta::RateLimits]

        # @see Onlyfans::Models::ProfileRetrieveResponse::Meta#_cache
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

        # @see Onlyfans::Models::ProfileRetrieveResponse::Meta#_credits
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

        # @see Onlyfans::Models::ProfileRetrieveResponse::Meta#_rate_limits
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

      # @see Onlyfans::Models::ProfileRetrieveResponse#data
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
        #   @return [Onlyfans::Models::ProfileRetrieveResponse::Data::AvatarThumbs, nil]
        optional :avatar_thumbs,
                 -> { Onlyfans::Models::ProfileRetrieveResponse::Data::AvatarThumbs },
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

        # @!attribute current_subscribe_price
        #
        #   @return [String, nil]
        optional :current_subscribe_price, String, api_name: :currentSubscribePrice, nil?: true

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
        #   @return [Onlyfans::Models::ProfileRetrieveResponse::Data::HeaderSize, nil]
        optional :header_size,
                 -> { Onlyfans::Models::ProfileRetrieveResponse::Data::HeaderSize },
                 api_name: :headerSize

        # @!attribute header_thumbs
        #
        #   @return [Onlyfans::Models::ProfileRetrieveResponse::Data::HeaderThumbs, nil]
        optional :header_thumbs,
                 -> { Onlyfans::Models::ProfileRetrieveResponse::Data::HeaderThumbs },
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

        # @!attribute ofapi_gender
        #
        #   @return [String, nil]
        optional :ofapi_gender, String

        # @!attribute ofapi_gender_confidence
        #
        #   @return [Float, nil]
        optional :ofapi_gender_confidence, Float

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

        # @!attribute referal_bonus_summ_for_referer
        #
        #   @return [Integer, nil]
        optional :referal_bonus_summ_for_referer, Integer, api_name: :referalBonusSummForReferer

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
        optional :subscribed_on, Onlyfans::Internal::Type::Boolean, api_name: :subscribedOn

        # @!attribute subscribed_on_data
        #
        #   @return [String, nil]
        optional :subscribed_on_data, String, api_name: :subscribedOnData, nil?: true

        # @!attribute subscribed_on_duration
        #
        #   @return [String, nil]
        optional :subscribed_on_duration, String, api_name: :subscribedOnDuration, nil?: true

        # @!attribute subscribed_on_expired_now
        #
        #   @return [String, nil]
        optional :subscribed_on_expired_now, String, api_name: :subscribedOnExpiredNow, nil?: true

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
        optional :website, String

        # @!attribute wishlist
        #
        #   @return [String, nil]
        optional :wishlist, String, nil?: true

        # @!method initialize(id: nil, about: nil, archived_posts_count: nil, audios_count: nil, avatar: nil, avatar_header_converter_upload: nil, avatar_thumbs: nil, can_add_subscriber: nil, can_chat: nil, can_comment_story: nil, can_create_promotion: nil, can_create_trial: nil, can_earn: nil, can_look_story: nil, can_pay_internal: nil, can_receive_chat_message: nil, can_report: nil, can_restrict: nil, can_trial_send: nil, current_subscribe_price: nil, favorited_count: nil, favorites_count: nil, first_published_post_date: nil, has_labels: nil, has_links: nil, has_not_viewed_story: nil, has_pinned_posts: nil, has_scheduled_stream: nil, has_stories: nil, has_stream: nil, header: nil, header_size: nil, header_thumbs: nil, is_adult_content: nil, is_blocked: nil, is_friend: nil, is_markdown_disabled_for_about: nil, is_performer: nil, is_private_restriction: nil, is_real_performer: nil, is_referrer_allowed: nil, is_restricted: nil, is_spotify_connected: nil, is_spring_connected: nil, is_verified: nil, join_date: nil, last_seen: nil, location: nil, medias_count: nil, name: nil, ofapi_gender: nil, ofapi_gender_confidence: nil, photos_count: nil, posts_count: nil, private_archived_posts_count: nil, referal_bonus_summ_for_referer: nil, show_media_count: nil, show_posts_in_feed: nil, show_subscribers_count: nil, subscribed_by: nil, subscribed_by_autoprolong: nil, subscribed_by_data: nil, subscribed_by_expire: nil, subscribed_by_expire_date: nil, subscribed_is_expired_now: nil, subscribed_on: nil, subscribed_on_data: nil, subscribed_on_duration: nil, subscribed_on_expired_now: nil, subscribe_price: nil, subscribers_count: nil, tips_enabled: nil, tips_max: nil, tips_min: nil, tips_min_internal: nil, tips_text_enabled: nil, username: nil, videos_count: nil, view: nil, website: nil, wishlist: nil)
        #   @param id [Integer]
        #   @param about [String]
        #   @param archived_posts_count [Integer]
        #   @param audios_count [Integer]
        #   @param avatar [String]
        #   @param avatar_header_converter_upload [Boolean]
        #   @param avatar_thumbs [Onlyfans::Models::ProfileRetrieveResponse::Data::AvatarThumbs]
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
        #   @param current_subscribe_price [String, nil]
        #   @param favorited_count [Integer]
        #   @param favorites_count [Integer]
        #   @param first_published_post_date [String]
        #   @param has_labels [Boolean]
        #   @param has_links [Boolean]
        #   @param has_not_viewed_story [Boolean]
        #   @param has_pinned_posts [Boolean]
        #   @param has_scheduled_stream [Boolean]
        #   @param has_stories [Boolean]
        #   @param has_stream [Boolean]
        #   @param header [String]
        #   @param header_size [Onlyfans::Models::ProfileRetrieveResponse::Data::HeaderSize]
        #   @param header_thumbs [Onlyfans::Models::ProfileRetrieveResponse::Data::HeaderThumbs]
        #   @param is_adult_content [Boolean]
        #   @param is_blocked [Boolean]
        #   @param is_friend [Boolean]
        #   @param is_markdown_disabled_for_about [Boolean]
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
        #   @param location [String, nil]
        #   @param medias_count [Integer]
        #   @param name [String]
        #   @param ofapi_gender [String]
        #   @param ofapi_gender_confidence [Float]
        #   @param photos_count [Integer]
        #   @param posts_count [Integer]
        #   @param private_archived_posts_count [Integer]
        #   @param referal_bonus_summ_for_referer [Integer]
        #   @param show_media_count [Boolean]
        #   @param show_posts_in_feed [Boolean]
        #   @param show_subscribers_count [Boolean]
        #   @param subscribed_by [Boolean]
        #   @param subscribed_by_autoprolong [String, nil]
        #   @param subscribed_by_data [String, nil]
        #   @param subscribed_by_expire [String, nil]
        #   @param subscribed_by_expire_date [String, nil]
        #   @param subscribed_is_expired_now [String, nil]
        #   @param subscribed_on [Boolean]
        #   @param subscribed_on_data [String, nil]
        #   @param subscribed_on_duration [String, nil]
        #   @param subscribed_on_expired_now [String, nil]
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
        #   @param website [String]
        #   @param wishlist [String, nil]

        # @see Onlyfans::Models::ProfileRetrieveResponse::Data#avatar_thumbs
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

        # @see Onlyfans::Models::ProfileRetrieveResponse::Data#header_size
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

        # @see Onlyfans::Models::ProfileRetrieveResponse::Data#header_thumbs
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
      end
    end
  end
end
