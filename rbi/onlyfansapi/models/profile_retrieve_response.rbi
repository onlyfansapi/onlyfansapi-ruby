# typed: strong

module Onlyfansapi
  module Models
    class ProfileRetrieveResponse < Onlyfansapi::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::Models::ProfileRetrieveResponse,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig do
        returns(T.nilable(Onlyfansapi::Models::ProfileRetrieveResponse::Meta))
      end
      attr_reader :_meta

      sig do
        params(
          _meta: Onlyfansapi::Models::ProfileRetrieveResponse::Meta::OrHash
        ).void
      end
      attr_writer :_meta

      sig do
        returns(T.nilable(Onlyfansapi::Models::ProfileRetrieveResponse::Data))
      end
      attr_reader :data

      sig do
        params(
          data: Onlyfansapi::Models::ProfileRetrieveResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          _meta: Onlyfansapi::Models::ProfileRetrieveResponse::Meta::OrHash,
          data: Onlyfansapi::Models::ProfileRetrieveResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(_meta: nil, data: nil)
      end

      sig do
        override.returns(
          {
            _meta: Onlyfansapi::Models::ProfileRetrieveResponse::Meta,
            data: Onlyfansapi::Models::ProfileRetrieveResponse::Data
          }
        )
      end
      def to_hash
      end

      class Meta < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::ProfileRetrieveResponse::Meta,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(Onlyfansapi::Models::ProfileRetrieveResponse::Meta::Cache)
          )
        end
        attr_reader :_cache

        sig do
          params(
            _cache:
              Onlyfansapi::Models::ProfileRetrieveResponse::Meta::Cache::OrHash
          ).void
        end
        attr_writer :_cache

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::ProfileRetrieveResponse::Meta::Credits
            )
          )
        end
        attr_reader :_credits

        sig do
          params(
            _credits:
              Onlyfansapi::Models::ProfileRetrieveResponse::Meta::Credits::OrHash
          ).void
        end
        attr_writer :_credits

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::ProfileRetrieveResponse::Meta::RateLimits
            )
          )
        end
        attr_reader :_rate_limits

        sig do
          params(
            _rate_limits:
              Onlyfansapi::Models::ProfileRetrieveResponse::Meta::RateLimits::OrHash
          ).void
        end
        attr_writer :_rate_limits

        sig do
          params(
            _cache:
              Onlyfansapi::Models::ProfileRetrieveResponse::Meta::Cache::OrHash,
            _credits:
              Onlyfansapi::Models::ProfileRetrieveResponse::Meta::Credits::OrHash,
            _rate_limits:
              Onlyfansapi::Models::ProfileRetrieveResponse::Meta::RateLimits::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
        end

        sig do
          override.returns(
            {
              _cache: Onlyfansapi::Models::ProfileRetrieveResponse::Meta::Cache,
              _credits:
                Onlyfansapi::Models::ProfileRetrieveResponse::Meta::Credits,
              _rate_limits:
                Onlyfansapi::Models::ProfileRetrieveResponse::Meta::RateLimits
            }
          )
        end
        def to_hash
        end

        class Cache < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::ProfileRetrieveResponse::Meta::Cache,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_cached

          sig { params(is_cached: T::Boolean).void }
          attr_writer :is_cached

          sig { returns(T.nilable(String)) }
          attr_reader :note

          sig { params(note: String).void }
          attr_writer :note

          sig do
            params(is_cached: T::Boolean, note: String).returns(
              T.attached_class
            )
          end
          def self.new(is_cached: nil, note: nil)
          end

          sig { override.returns({ is_cached: T::Boolean, note: String }) }
          def to_hash
          end
        end

        class Credits < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::ProfileRetrieveResponse::Meta::Credits,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_reader :balance

          sig { params(balance: Integer).void }
          attr_writer :balance

          sig { returns(T.nilable(String)) }
          attr_reader :note

          sig { params(note: String).void }
          attr_writer :note

          sig { returns(T.nilable(Integer)) }
          attr_reader :used

          sig { params(used: Integer).void }
          attr_writer :used

          sig do
            params(balance: Integer, note: String, used: Integer).returns(
              T.attached_class
            )
          end
          def self.new(balance: nil, note: nil, used: nil)
          end

          sig do
            override.returns({ balance: Integer, note: String, used: Integer })
          end
          def to_hash
          end
        end

        class RateLimits < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::ProfileRetrieveResponse::Meta::RateLimits,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_reader :limit_day

          sig { params(limit_day: Integer).void }
          attr_writer :limit_day

          sig { returns(T.nilable(Integer)) }
          attr_reader :limit_minute

          sig { params(limit_minute: Integer).void }
          attr_writer :limit_minute

          sig { returns(T.nilable(Integer)) }
          attr_reader :remaining_day

          sig { params(remaining_day: Integer).void }
          attr_writer :remaining_day

          sig { returns(T.nilable(Integer)) }
          attr_reader :remaining_minute

          sig { params(remaining_minute: Integer).void }
          attr_writer :remaining_minute

          sig do
            params(
              limit_day: Integer,
              limit_minute: Integer,
              remaining_day: Integer,
              remaining_minute: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            limit_day: nil,
            limit_minute: nil,
            remaining_day: nil,
            remaining_minute: nil
          )
          end

          sig do
            override.returns(
              {
                limit_day: Integer,
                limit_minute: Integer,
                remaining_day: Integer,
                remaining_minute: Integer
              }
            )
          end
          def to_hash
          end
        end
      end

      class Data < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::ProfileRetrieveResponse::Data,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Integer)) }
        attr_reader :id

        sig { params(id: Integer).void }
        attr_writer :id

        sig { returns(T.nilable(String)) }
        attr_reader :about

        sig { params(about: String).void }
        attr_writer :about

        sig { returns(T.nilable(Integer)) }
        attr_reader :archived_posts_count

        sig { params(archived_posts_count: Integer).void }
        attr_writer :archived_posts_count

        sig { returns(T.nilable(Integer)) }
        attr_reader :audios_count

        sig { params(audios_count: Integer).void }
        attr_writer :audios_count

        sig { returns(T.nilable(String)) }
        attr_reader :avatar

        sig { params(avatar: String).void }
        attr_writer :avatar

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :avatar_header_converter_upload

        sig { params(avatar_header_converter_upload: T::Boolean).void }
        attr_writer :avatar_header_converter_upload

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::ProfileRetrieveResponse::Data::AvatarThumbs
            )
          )
        end
        attr_reader :avatar_thumbs

        sig do
          params(
            avatar_thumbs:
              Onlyfansapi::Models::ProfileRetrieveResponse::Data::AvatarThumbs::OrHash
          ).void
        end
        attr_writer :avatar_thumbs

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :can_add_subscriber

        sig { params(can_add_subscriber: T::Boolean).void }
        attr_writer :can_add_subscriber

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :can_chat

        sig { params(can_chat: T::Boolean).void }
        attr_writer :can_chat

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :can_comment_story

        sig { params(can_comment_story: T::Boolean).void }
        attr_writer :can_comment_story

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :can_create_promotion

        sig { params(can_create_promotion: T::Boolean).void }
        attr_writer :can_create_promotion

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :can_create_trial

        sig { params(can_create_trial: T::Boolean).void }
        attr_writer :can_create_trial

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :can_earn

        sig { params(can_earn: T::Boolean).void }
        attr_writer :can_earn

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :can_look_story

        sig { params(can_look_story: T::Boolean).void }
        attr_writer :can_look_story

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :can_pay_internal

        sig { params(can_pay_internal: T::Boolean).void }
        attr_writer :can_pay_internal

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :can_receive_chat_message

        sig { params(can_receive_chat_message: T::Boolean).void }
        attr_writer :can_receive_chat_message

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :can_report

        sig { params(can_report: T::Boolean).void }
        attr_writer :can_report

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :can_restrict

        sig { params(can_restrict: T::Boolean).void }
        attr_writer :can_restrict

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :can_trial_send

        sig { params(can_trial_send: T::Boolean).void }
        attr_writer :can_trial_send

        sig { returns(T.nilable(String)) }
        attr_accessor :current_subscribe_price

        sig { returns(T.nilable(Integer)) }
        attr_reader :favorited_count

        sig { params(favorited_count: Integer).void }
        attr_writer :favorited_count

        sig { returns(T.nilable(Integer)) }
        attr_reader :favorites_count

        sig { params(favorites_count: Integer).void }
        attr_writer :favorites_count

        sig { returns(T.nilable(String)) }
        attr_reader :first_published_post_date

        sig { params(first_published_post_date: String).void }
        attr_writer :first_published_post_date

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :has_labels

        sig { params(has_labels: T::Boolean).void }
        attr_writer :has_labels

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :has_links

        sig { params(has_links: T::Boolean).void }
        attr_writer :has_links

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :has_not_viewed_story

        sig { params(has_not_viewed_story: T::Boolean).void }
        attr_writer :has_not_viewed_story

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :has_pinned_posts

        sig { params(has_pinned_posts: T::Boolean).void }
        attr_writer :has_pinned_posts

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :has_scheduled_stream

        sig { params(has_scheduled_stream: T::Boolean).void }
        attr_writer :has_scheduled_stream

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :has_stories

        sig { params(has_stories: T::Boolean).void }
        attr_writer :has_stories

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :has_stream

        sig { params(has_stream: T::Boolean).void }
        attr_writer :has_stream

        sig { returns(T.nilable(String)) }
        attr_reader :header

        sig { params(header: String).void }
        attr_writer :header

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::ProfileRetrieveResponse::Data::HeaderSize
            )
          )
        end
        attr_reader :header_size

        sig do
          params(
            header_size:
              Onlyfansapi::Models::ProfileRetrieveResponse::Data::HeaderSize::OrHash
          ).void
        end
        attr_writer :header_size

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::ProfileRetrieveResponse::Data::HeaderThumbs
            )
          )
        end
        attr_reader :header_thumbs

        sig do
          params(
            header_thumbs:
              Onlyfansapi::Models::ProfileRetrieveResponse::Data::HeaderThumbs::OrHash
          ).void
        end
        attr_writer :header_thumbs

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_adult_content

        sig { params(is_adult_content: T::Boolean).void }
        attr_writer :is_adult_content

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_blocked

        sig { params(is_blocked: T::Boolean).void }
        attr_writer :is_blocked

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_friend

        sig { params(is_friend: T::Boolean).void }
        attr_writer :is_friend

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_markdown_disabled_for_about

        sig { params(is_markdown_disabled_for_about: T::Boolean).void }
        attr_writer :is_markdown_disabled_for_about

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_performer

        sig { params(is_performer: T::Boolean).void }
        attr_writer :is_performer

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_private_restriction

        sig { params(is_private_restriction: T::Boolean).void }
        attr_writer :is_private_restriction

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_real_performer

        sig { params(is_real_performer: T::Boolean).void }
        attr_writer :is_real_performer

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_referrer_allowed

        sig { params(is_referrer_allowed: T::Boolean).void }
        attr_writer :is_referrer_allowed

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_restricted

        sig { params(is_restricted: T::Boolean).void }
        attr_writer :is_restricted

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_spotify_connected

        sig { params(is_spotify_connected: T::Boolean).void }
        attr_writer :is_spotify_connected

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_spring_connected

        sig { params(is_spring_connected: T::Boolean).void }
        attr_writer :is_spring_connected

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_verified

        sig { params(is_verified: T::Boolean).void }
        attr_writer :is_verified

        sig { returns(T.nilable(String)) }
        attr_reader :join_date

        sig { params(join_date: String).void }
        attr_writer :join_date

        sig { returns(T.nilable(String)) }
        attr_reader :last_seen

        sig { params(last_seen: String).void }
        attr_writer :last_seen

        sig { returns(T.nilable(String)) }
        attr_accessor :location

        sig { returns(T.nilable(Integer)) }
        attr_reader :medias_count

        sig { params(medias_count: Integer).void }
        attr_writer :medias_count

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { returns(T.nilable(String)) }
        attr_reader :ofapi_gender

        sig { params(ofapi_gender: String).void }
        attr_writer :ofapi_gender

        sig { returns(T.nilable(Float)) }
        attr_reader :ofapi_gender_confidence

        sig { params(ofapi_gender_confidence: Float).void }
        attr_writer :ofapi_gender_confidence

        sig { returns(T.nilable(Integer)) }
        attr_reader :photos_count

        sig { params(photos_count: Integer).void }
        attr_writer :photos_count

        sig { returns(T.nilable(Integer)) }
        attr_reader :posts_count

        sig { params(posts_count: Integer).void }
        attr_writer :posts_count

        sig { returns(T.nilable(Integer)) }
        attr_reader :private_archived_posts_count

        sig { params(private_archived_posts_count: Integer).void }
        attr_writer :private_archived_posts_count

        sig { returns(T.nilable(Integer)) }
        attr_reader :referal_bonus_summ_for_referer

        sig { params(referal_bonus_summ_for_referer: Integer).void }
        attr_writer :referal_bonus_summ_for_referer

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :show_media_count

        sig { params(show_media_count: T::Boolean).void }
        attr_writer :show_media_count

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :show_posts_in_feed

        sig { params(show_posts_in_feed: T::Boolean).void }
        attr_writer :show_posts_in_feed

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :show_subscribers_count

        sig { params(show_subscribers_count: T::Boolean).void }
        attr_writer :show_subscribers_count

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :subscribed_by

        sig { params(subscribed_by: T::Boolean).void }
        attr_writer :subscribed_by

        sig { returns(T.nilable(String)) }
        attr_accessor :subscribed_by_autoprolong

        sig { returns(T.nilable(String)) }
        attr_accessor :subscribed_by_data

        sig { returns(T.nilable(String)) }
        attr_accessor :subscribed_by_expire

        sig { returns(T.nilable(String)) }
        attr_accessor :subscribed_by_expire_date

        sig { returns(T.nilable(String)) }
        attr_accessor :subscribed_is_expired_now

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :subscribed_on

        sig { params(subscribed_on: T::Boolean).void }
        attr_writer :subscribed_on

        sig { returns(T.nilable(String)) }
        attr_accessor :subscribed_on_data

        sig { returns(T.nilable(String)) }
        attr_accessor :subscribed_on_duration

        sig { returns(T.nilable(String)) }
        attr_accessor :subscribed_on_expired_now

        sig { returns(T.nilable(Integer)) }
        attr_reader :subscribe_price

        sig { params(subscribe_price: Integer).void }
        attr_writer :subscribe_price

        sig { returns(T.nilable(String)) }
        attr_accessor :subscribers_count

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :tips_enabled

        sig { params(tips_enabled: T::Boolean).void }
        attr_writer :tips_enabled

        sig { returns(T.nilable(Integer)) }
        attr_reader :tips_max

        sig { params(tips_max: Integer).void }
        attr_writer :tips_max

        sig { returns(T.nilable(Integer)) }
        attr_reader :tips_min

        sig { params(tips_min: Integer).void }
        attr_writer :tips_min

        sig { returns(T.nilable(Integer)) }
        attr_reader :tips_min_internal

        sig { params(tips_min_internal: Integer).void }
        attr_writer :tips_min_internal

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :tips_text_enabled

        sig { params(tips_text_enabled: T::Boolean).void }
        attr_writer :tips_text_enabled

        sig { returns(T.nilable(String)) }
        attr_reader :username

        sig { params(username: String).void }
        attr_writer :username

        sig { returns(T.nilable(Integer)) }
        attr_reader :videos_count

        sig { params(videos_count: Integer).void }
        attr_writer :videos_count

        sig { returns(T.nilable(String)) }
        attr_reader :view

        sig { params(view: String).void }
        attr_writer :view

        sig { returns(T.nilable(String)) }
        attr_reader :website

        sig { params(website: String).void }
        attr_writer :website

        sig { returns(T.nilable(String)) }
        attr_accessor :wishlist

        sig do
          params(
            id: Integer,
            about: String,
            archived_posts_count: Integer,
            audios_count: Integer,
            avatar: String,
            avatar_header_converter_upload: T::Boolean,
            avatar_thumbs:
              Onlyfansapi::Models::ProfileRetrieveResponse::Data::AvatarThumbs::OrHash,
            can_add_subscriber: T::Boolean,
            can_chat: T::Boolean,
            can_comment_story: T::Boolean,
            can_create_promotion: T::Boolean,
            can_create_trial: T::Boolean,
            can_earn: T::Boolean,
            can_look_story: T::Boolean,
            can_pay_internal: T::Boolean,
            can_receive_chat_message: T::Boolean,
            can_report: T::Boolean,
            can_restrict: T::Boolean,
            can_trial_send: T::Boolean,
            current_subscribe_price: T.nilable(String),
            favorited_count: Integer,
            favorites_count: Integer,
            first_published_post_date: String,
            has_labels: T::Boolean,
            has_links: T::Boolean,
            has_not_viewed_story: T::Boolean,
            has_pinned_posts: T::Boolean,
            has_scheduled_stream: T::Boolean,
            has_stories: T::Boolean,
            has_stream: T::Boolean,
            header: String,
            header_size:
              Onlyfansapi::Models::ProfileRetrieveResponse::Data::HeaderSize::OrHash,
            header_thumbs:
              Onlyfansapi::Models::ProfileRetrieveResponse::Data::HeaderThumbs::OrHash,
            is_adult_content: T::Boolean,
            is_blocked: T::Boolean,
            is_friend: T::Boolean,
            is_markdown_disabled_for_about: T::Boolean,
            is_performer: T::Boolean,
            is_private_restriction: T::Boolean,
            is_real_performer: T::Boolean,
            is_referrer_allowed: T::Boolean,
            is_restricted: T::Boolean,
            is_spotify_connected: T::Boolean,
            is_spring_connected: T::Boolean,
            is_verified: T::Boolean,
            join_date: String,
            last_seen: String,
            location: T.nilable(String),
            medias_count: Integer,
            name: String,
            ofapi_gender: String,
            ofapi_gender_confidence: Float,
            photos_count: Integer,
            posts_count: Integer,
            private_archived_posts_count: Integer,
            referal_bonus_summ_for_referer: Integer,
            show_media_count: T::Boolean,
            show_posts_in_feed: T::Boolean,
            show_subscribers_count: T::Boolean,
            subscribed_by: T::Boolean,
            subscribed_by_autoprolong: T.nilable(String),
            subscribed_by_data: T.nilable(String),
            subscribed_by_expire: T.nilable(String),
            subscribed_by_expire_date: T.nilable(String),
            subscribed_is_expired_now: T.nilable(String),
            subscribed_on: T::Boolean,
            subscribed_on_data: T.nilable(String),
            subscribed_on_duration: T.nilable(String),
            subscribed_on_expired_now: T.nilable(String),
            subscribe_price: Integer,
            subscribers_count: T.nilable(String),
            tips_enabled: T::Boolean,
            tips_max: Integer,
            tips_min: Integer,
            tips_min_internal: Integer,
            tips_text_enabled: T::Boolean,
            username: String,
            videos_count: Integer,
            view: String,
            website: String,
            wishlist: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          id: nil,
          about: nil,
          archived_posts_count: nil,
          audios_count: nil,
          avatar: nil,
          avatar_header_converter_upload: nil,
          avatar_thumbs: nil,
          can_add_subscriber: nil,
          can_chat: nil,
          can_comment_story: nil,
          can_create_promotion: nil,
          can_create_trial: nil,
          can_earn: nil,
          can_look_story: nil,
          can_pay_internal: nil,
          can_receive_chat_message: nil,
          can_report: nil,
          can_restrict: nil,
          can_trial_send: nil,
          current_subscribe_price: nil,
          favorited_count: nil,
          favorites_count: nil,
          first_published_post_date: nil,
          has_labels: nil,
          has_links: nil,
          has_not_viewed_story: nil,
          has_pinned_posts: nil,
          has_scheduled_stream: nil,
          has_stories: nil,
          has_stream: nil,
          header: nil,
          header_size: nil,
          header_thumbs: nil,
          is_adult_content: nil,
          is_blocked: nil,
          is_friend: nil,
          is_markdown_disabled_for_about: nil,
          is_performer: nil,
          is_private_restriction: nil,
          is_real_performer: nil,
          is_referrer_allowed: nil,
          is_restricted: nil,
          is_spotify_connected: nil,
          is_spring_connected: nil,
          is_verified: nil,
          join_date: nil,
          last_seen: nil,
          location: nil,
          medias_count: nil,
          name: nil,
          ofapi_gender: nil,
          ofapi_gender_confidence: nil,
          photos_count: nil,
          posts_count: nil,
          private_archived_posts_count: nil,
          referal_bonus_summ_for_referer: nil,
          show_media_count: nil,
          show_posts_in_feed: nil,
          show_subscribers_count: nil,
          subscribed_by: nil,
          subscribed_by_autoprolong: nil,
          subscribed_by_data: nil,
          subscribed_by_expire: nil,
          subscribed_by_expire_date: nil,
          subscribed_is_expired_now: nil,
          subscribed_on: nil,
          subscribed_on_data: nil,
          subscribed_on_duration: nil,
          subscribed_on_expired_now: nil,
          subscribe_price: nil,
          subscribers_count: nil,
          tips_enabled: nil,
          tips_max: nil,
          tips_min: nil,
          tips_min_internal: nil,
          tips_text_enabled: nil,
          username: nil,
          videos_count: nil,
          view: nil,
          website: nil,
          wishlist: nil
        )
        end

        sig do
          override.returns(
            {
              id: Integer,
              about: String,
              archived_posts_count: Integer,
              audios_count: Integer,
              avatar: String,
              avatar_header_converter_upload: T::Boolean,
              avatar_thumbs:
                Onlyfansapi::Models::ProfileRetrieveResponse::Data::AvatarThumbs,
              can_add_subscriber: T::Boolean,
              can_chat: T::Boolean,
              can_comment_story: T::Boolean,
              can_create_promotion: T::Boolean,
              can_create_trial: T::Boolean,
              can_earn: T::Boolean,
              can_look_story: T::Boolean,
              can_pay_internal: T::Boolean,
              can_receive_chat_message: T::Boolean,
              can_report: T::Boolean,
              can_restrict: T::Boolean,
              can_trial_send: T::Boolean,
              current_subscribe_price: T.nilable(String),
              favorited_count: Integer,
              favorites_count: Integer,
              first_published_post_date: String,
              has_labels: T::Boolean,
              has_links: T::Boolean,
              has_not_viewed_story: T::Boolean,
              has_pinned_posts: T::Boolean,
              has_scheduled_stream: T::Boolean,
              has_stories: T::Boolean,
              has_stream: T::Boolean,
              header: String,
              header_size:
                Onlyfansapi::Models::ProfileRetrieveResponse::Data::HeaderSize,
              header_thumbs:
                Onlyfansapi::Models::ProfileRetrieveResponse::Data::HeaderThumbs,
              is_adult_content: T::Boolean,
              is_blocked: T::Boolean,
              is_friend: T::Boolean,
              is_markdown_disabled_for_about: T::Boolean,
              is_performer: T::Boolean,
              is_private_restriction: T::Boolean,
              is_real_performer: T::Boolean,
              is_referrer_allowed: T::Boolean,
              is_restricted: T::Boolean,
              is_spotify_connected: T::Boolean,
              is_spring_connected: T::Boolean,
              is_verified: T::Boolean,
              join_date: String,
              last_seen: String,
              location: T.nilable(String),
              medias_count: Integer,
              name: String,
              ofapi_gender: String,
              ofapi_gender_confidence: Float,
              photos_count: Integer,
              posts_count: Integer,
              private_archived_posts_count: Integer,
              referal_bonus_summ_for_referer: Integer,
              show_media_count: T::Boolean,
              show_posts_in_feed: T::Boolean,
              show_subscribers_count: T::Boolean,
              subscribed_by: T::Boolean,
              subscribed_by_autoprolong: T.nilable(String),
              subscribed_by_data: T.nilable(String),
              subscribed_by_expire: T.nilable(String),
              subscribed_by_expire_date: T.nilable(String),
              subscribed_is_expired_now: T.nilable(String),
              subscribed_on: T::Boolean,
              subscribed_on_data: T.nilable(String),
              subscribed_on_duration: T.nilable(String),
              subscribed_on_expired_now: T.nilable(String),
              subscribe_price: Integer,
              subscribers_count: T.nilable(String),
              tips_enabled: T::Boolean,
              tips_max: Integer,
              tips_min: Integer,
              tips_min_internal: Integer,
              tips_text_enabled: T::Boolean,
              username: String,
              videos_count: Integer,
              view: String,
              website: String,
              wishlist: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        class AvatarThumbs < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::ProfileRetrieveResponse::Data::AvatarThumbs,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :c144

          sig { params(c144: String).void }
          attr_writer :c144

          sig { returns(T.nilable(String)) }
          attr_reader :c50

          sig { params(c50: String).void }
          attr_writer :c50

          sig { params(c144: String, c50: String).returns(T.attached_class) }
          def self.new(c144: nil, c50: nil)
          end

          sig { override.returns({ c144: String, c50: String }) }
          def to_hash
          end
        end

        class HeaderSize < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::ProfileRetrieveResponse::Data::HeaderSize,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_reader :height

          sig { params(height: Integer).void }
          attr_writer :height

          sig { returns(T.nilable(Integer)) }
          attr_reader :width

          sig { params(width: Integer).void }
          attr_writer :width

          sig do
            params(height: Integer, width: Integer).returns(T.attached_class)
          end
          def self.new(height: nil, width: nil)
          end

          sig { override.returns({ height: Integer, width: Integer }) }
          def to_hash
          end
        end

        class HeaderThumbs < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::ProfileRetrieveResponse::Data::HeaderThumbs,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :w480

          sig { params(w480: String).void }
          attr_writer :w480

          sig { returns(T.nilable(String)) }
          attr_reader :w760

          sig { params(w760: String).void }
          attr_writer :w760

          sig { params(w480: String, w760: String).returns(T.attached_class) }
          def self.new(w480: nil, w760: nil)
          end

          sig { override.returns({ w480: String, w760: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
