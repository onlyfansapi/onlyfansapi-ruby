# frozen_string_literal: true

module Onlyfansapi
  module Models
    module Engagement
      # @see Onlyfansapi::Resources::Engagement::Messages#get_message_buyers
      class MessageGetMessageBuyersResponse < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute _meta
        #
        #   @return [Onlyfansapi::Models::Engagement::MessageGetMessageBuyersResponse::Meta, nil]
        optional :_meta, -> { Onlyfansapi::Models::Engagement::MessageGetMessageBuyersResponse::Meta }

        # @!attribute _pagination
        #
        #   @return [Onlyfansapi::Models::Engagement::MessageGetMessageBuyersResponse::Pagination, nil]
        optional :_pagination, -> { Onlyfansapi::Models::Engagement::MessageGetMessageBuyersResponse::Pagination }

        # @!attribute data
        #
        #   @return [Onlyfansapi::Models::Engagement::MessageGetMessageBuyersResponse::Data, nil]
        optional :data, -> { Onlyfansapi::Models::Engagement::MessageGetMessageBuyersResponse::Data }

        # @!method initialize(_meta: nil, _pagination: nil, data: nil)
        #   @param _meta [Onlyfansapi::Models::Engagement::MessageGetMessageBuyersResponse::Meta]
        #   @param _pagination [Onlyfansapi::Models::Engagement::MessageGetMessageBuyersResponse::Pagination]
        #   @param data [Onlyfansapi::Models::Engagement::MessageGetMessageBuyersResponse::Data]

        # @see Onlyfansapi::Models::Engagement::MessageGetMessageBuyersResponse#_meta
        class Meta < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute _cache
          #
          #   @return [Onlyfansapi::Models::Engagement::MessageGetMessageBuyersResponse::Meta::Cache, nil]
          optional :_cache, -> { Onlyfansapi::Models::Engagement::MessageGetMessageBuyersResponse::Meta::Cache }

          # @!attribute _credits
          #
          #   @return [Onlyfansapi::Models::Engagement::MessageGetMessageBuyersResponse::Meta::Credits, nil]
          optional :_credits, -> { Onlyfansapi::Models::Engagement::MessageGetMessageBuyersResponse::Meta::Credits }

          # @!attribute _rate_limits
          #
          #   @return [Onlyfansapi::Models::Engagement::MessageGetMessageBuyersResponse::Meta::RateLimits, nil]
          optional :_rate_limits,
                   -> { Onlyfansapi::Models::Engagement::MessageGetMessageBuyersResponse::Meta::RateLimits }

          # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
          #   @param _cache [Onlyfansapi::Models::Engagement::MessageGetMessageBuyersResponse::Meta::Cache]
          #   @param _credits [Onlyfansapi::Models::Engagement::MessageGetMessageBuyersResponse::Meta::Credits]
          #   @param _rate_limits [Onlyfansapi::Models::Engagement::MessageGetMessageBuyersResponse::Meta::RateLimits]

          # @see Onlyfansapi::Models::Engagement::MessageGetMessageBuyersResponse::Meta#_cache
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

          # @see Onlyfansapi::Models::Engagement::MessageGetMessageBuyersResponse::Meta#_credits
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

          # @see Onlyfansapi::Models::Engagement::MessageGetMessageBuyersResponse::Meta#_rate_limits
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

        # @see Onlyfansapi::Models::Engagement::MessageGetMessageBuyersResponse#_pagination
        class Pagination < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute next_page
          #
          #   @return [String, nil]
          optional :next_page, String

          # @!method initialize(next_page: nil)
          #   @param next_page [String]
        end

        # @see Onlyfansapi::Models::Engagement::MessageGetMessageBuyersResponse#data
        class Data < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute has_more
          #
          #   @return [Boolean, nil]
          optional :has_more, Onlyfansapi::Internal::Type::Boolean, api_name: :hasMore

          # @!attribute list
          #
          #   @return [Array<Onlyfansapi::Models::Engagement::MessageGetMessageBuyersResponse::Data::List>, nil]
          optional :list,
                   -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::Engagement::MessageGetMessageBuyersResponse::Data::List] }

          # @!attribute marker
          #
          #   @return [Integer, nil]
          optional :marker, Integer

          # @!method initialize(has_more: nil, list: nil, marker: nil)
          #   @param has_more [Boolean]
          #   @param list [Array<Onlyfansapi::Models::Engagement::MessageGetMessageBuyersResponse::Data::List>]
          #   @param marker [Integer]

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
            optional :has_scheduled_stream,
                     Onlyfansapi::Internal::Type::Boolean,
                     api_name: :hasScheduledStream

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
            optional :subscribed_by_expire,
                     Onlyfansapi::Internal::Type::Boolean,
                     api_name: :subscribedByExpire

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

            # @!method initialize(id: nil, avatar: nil, avatar_thumbs: nil, can_add_subscriber: nil, can_comment_story: nil, can_earn: nil, can_look_story: nil, can_pay_internal: nil, can_report: nil, can_restrict: nil, current_subscribe_price: nil, display_name: nil, has_not_viewed_story: nil, has_scheduled_stream: nil, has_stories: nil, has_stream: nil, header: nil, header_size: nil, header_thumbs: nil, is_active: nil, is_restricted: nil, is_verified: nil, last_seen: nil, name: nil, notice: nil, show_media_count: nil, subscribed_by: nil, subscribed_by_autoprolong: nil, subscribed_by_expire: nil, subscribed_by_expire_date: nil, subscribed_is_expired_now: nil, subscribed_on: nil, subscribed_on_duration: nil, subscribed_on_expired_now: nil, subscribe_price: nil, tips_enabled: nil, tips_max: nil, tips_min: nil, tips_min_internal: nil, tips_text_enabled: nil, username: nil, view: nil)
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
            #   @param has_stream [Boolean]
            #   @param header [String, nil]
            #   @param header_size [String, nil]
            #   @param header_thumbs [String, nil]
            #   @param is_active [Boolean]
            #   @param is_restricted [Boolean]
            #   @param is_verified [Boolean]
            #   @param last_seen [String]
            #   @param name [String]
            #   @param notice [String]
            #   @param show_media_count [Boolean]
            #   @param subscribed_by [Boolean]
            #   @param subscribed_by_autoprolong [Boolean]
            #   @param subscribed_by_expire [Boolean]
            #   @param subscribed_by_expire_date [String]
            #   @param subscribed_is_expired_now [Boolean]
            #   @param subscribed_on [String, nil]
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
          end
        end
      end
    end
  end
end
