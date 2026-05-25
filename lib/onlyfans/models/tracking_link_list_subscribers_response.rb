# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::TrackingLinks#list_subscribers
    class TrackingLinkListSubscribersResponse < Onlyfans::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfans::Models::TrackingLinkListSubscribersResponse::Meta, nil]
      optional :_meta, -> { Onlyfans::Models::TrackingLinkListSubscribersResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfans::Models::TrackingLinkListSubscribersResponse::Data, nil]
      optional :data, -> { Onlyfans::Models::TrackingLinkListSubscribersResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfans::Models::TrackingLinkListSubscribersResponse::Meta]
      #   @param data [Onlyfans::Models::TrackingLinkListSubscribersResponse::Data]

      # @see Onlyfans::Models::TrackingLinkListSubscribersResponse#_meta
      class Meta < Onlyfans::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfans::Models::TrackingLinkListSubscribersResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfans::Models::TrackingLinkListSubscribersResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfans::Models::TrackingLinkListSubscribersResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfans::Models::TrackingLinkListSubscribersResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfans::Models::TrackingLinkListSubscribersResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfans::Models::TrackingLinkListSubscribersResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfans::Models::TrackingLinkListSubscribersResponse::Meta::Cache]
        #   @param _credits [Onlyfans::Models::TrackingLinkListSubscribersResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfans::Models::TrackingLinkListSubscribersResponse::Meta::RateLimits]

        # @see Onlyfans::Models::TrackingLinkListSubscribersResponse::Meta#_cache
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

        # @see Onlyfans::Models::TrackingLinkListSubscribersResponse::Meta#_credits
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

        # @see Onlyfans::Models::TrackingLinkListSubscribersResponse::Meta#_rate_limits
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

      # @see Onlyfans::Models::TrackingLinkListSubscribersResponse#data
      class Data < Onlyfans::Internal::Type::BaseModel
        # @!attribute has_more
        #
        #   @return [Boolean, nil]
        optional :has_more, Onlyfans::Internal::Type::Boolean, api_name: :hasMore

        # @!attribute list
        #
        #   @return [Array<Onlyfans::Models::TrackingLinkListSubscribersResponse::Data::List>, nil]
        optional :list,
                 -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::TrackingLinkListSubscribersResponse::Data::List] }

        # @!attribute marker
        #
        #   @return [Integer, nil]
        optional :marker, Integer

        # @!method initialize(has_more: nil, list: nil, marker: nil)
        #   @param has_more [Boolean]
        #   @param list [Array<Onlyfans::Models::TrackingLinkListSubscribersResponse::Data::List>]
        #   @param marker [Integer]

        class List < Onlyfans::Internal::Type::BaseModel
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
          #   @return [Onlyfans::Models::TrackingLinkListSubscribersResponse::Data::List::AvatarThumbs, nil]
          optional :avatar_thumbs,
                   -> { Onlyfans::Models::TrackingLinkListSubscribersResponse::Data::List::AvatarThumbs },
                   api_name: :avatarThumbs

          # @!attribute can_add_subscriber
          #
          #   @return [Boolean, nil]
          optional :can_add_subscriber, Onlyfans::Internal::Type::Boolean, api_name: :canAddSubscriber

          # @!attribute can_comment_story
          #
          #   @return [Boolean, nil]
          optional :can_comment_story, Onlyfans::Internal::Type::Boolean, api_name: :canCommentStory

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

          # @!attribute can_report
          #
          #   @return [Boolean, nil]
          optional :can_report, Onlyfans::Internal::Type::Boolean, api_name: :canReport

          # @!attribute can_restrict
          #
          #   @return [Boolean, nil]
          optional :can_restrict, Onlyfans::Internal::Type::Boolean, api_name: :canRestrict

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
          optional :has_not_viewed_story, Onlyfans::Internal::Type::Boolean, api_name: :hasNotViewedStory

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
          optional :is_restricted, Onlyfans::Internal::Type::Boolean, api_name: :isRestricted

          # @!attribute is_verified
          #
          #   @return [Boolean, nil]
          optional :is_verified, Onlyfans::Internal::Type::Boolean, api_name: :isVerified

          # @!attribute last_seen
          #
          #   @return [String, nil]
          optional :last_seen, String, api_name: :lastSeen, nil?: true

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
          #   @return [Boolean, nil]
          optional :subscribed_by, Onlyfans::Internal::Type::Boolean, api_name: :subscribedBy

          # @!attribute subscribed_by_autoprolong
          #
          #   @return [String, nil]
          optional :subscribed_by_autoprolong, String, api_name: :subscribedByAutoprolong, nil?: true

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

          # @!attribute view
          #
          #   @return [String, nil]
          optional :view, String

          # @!method initialize(id: nil, avatar: nil, avatar_thumbs: nil, can_add_subscriber: nil, can_comment_story: nil, can_earn: nil, can_look_story: nil, can_pay_internal: nil, can_report: nil, can_restrict: nil, current_subscribe_price: nil, display_name: nil, has_not_viewed_story: nil, has_scheduled_stream: nil, has_stories: nil, has_stream: nil, header: nil, header_size: nil, header_thumbs: nil, is_restricted: nil, is_verified: nil, last_seen: nil, name: nil, notice: nil, subscribed_by: nil, subscribed_by_autoprolong: nil, subscribed_by_expire: nil, subscribed_by_expire_date: nil, subscribed_is_expired_now: nil, subscribed_on: nil, subscribed_on_duration: nil, subscribed_on_expired_now: nil, subscribe_price: nil, tips_enabled: nil, tips_max: nil, tips_min: nil, tips_min_internal: nil, tips_text_enabled: nil, username: nil, view: nil)
          #   @param id [Integer]
          #   @param avatar [String]
          #   @param avatar_thumbs [Onlyfans::Models::TrackingLinkListSubscribersResponse::Data::List::AvatarThumbs]
          #   @param can_add_subscriber [Boolean]
          #   @param can_comment_story [Boolean]
          #   @param can_earn [Boolean]
          #   @param can_look_story [Boolean]
          #   @param can_pay_internal [Boolean]
          #   @param can_report [Boolean]
          #   @param can_restrict [Boolean]
          #   @param current_subscribe_price [String, nil]
          #   @param display_name [String]
          #   @param has_not_viewed_story [Boolean]
          #   @param has_scheduled_stream [Boolean]
          #   @param has_stories [Boolean]
          #   @param has_stream [Boolean]
          #   @param header [String, nil]
          #   @param header_size [String, nil]
          #   @param header_thumbs [String, nil]
          #   @param is_restricted [Boolean]
          #   @param is_verified [Boolean]
          #   @param last_seen [String, nil]
          #   @param name [String]
          #   @param notice [String]
          #   @param subscribed_by [Boolean]
          #   @param subscribed_by_autoprolong [String, nil]
          #   @param subscribed_by_expire [String, nil]
          #   @param subscribed_by_expire_date [String, nil]
          #   @param subscribed_is_expired_now [String, nil]
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

          # @see Onlyfans::Models::TrackingLinkListSubscribersResponse::Data::List#avatar_thumbs
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
        end
      end
    end
  end
end
