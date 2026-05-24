# typed: strong

module Onlyfansapi
  module Models
    class ChatListResponse < Onlyfansapi::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::Models::ChatListResponse,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Onlyfansapi::Models::ChatListResponse::Meta)) }
      attr_reader :_meta

      sig do
        params(_meta: Onlyfansapi::Models::ChatListResponse::Meta::OrHash).void
      end
      attr_writer :_meta

      sig do
        returns(T.nilable(Onlyfansapi::Models::ChatListResponse::Pagination))
      end
      attr_reader :_pagination

      sig do
        params(
          _pagination: Onlyfansapi::Models::ChatListResponse::Pagination::OrHash
        ).void
      end
      attr_writer :_pagination

      sig do
        returns(
          T.nilable(T::Array[Onlyfansapi::Models::ChatListResponse::Data])
        )
      end
      attr_reader :data

      sig do
        params(
          data: T::Array[Onlyfansapi::Models::ChatListResponse::Data::OrHash]
        ).void
      end
      attr_writer :data

      sig do
        params(
          _meta: Onlyfansapi::Models::ChatListResponse::Meta::OrHash,
          _pagination:
            Onlyfansapi::Models::ChatListResponse::Pagination::OrHash,
          data: T::Array[Onlyfansapi::Models::ChatListResponse::Data::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(_meta: nil, _pagination: nil, data: nil)
      end

      sig do
        override.returns(
          {
            _meta: Onlyfansapi::Models::ChatListResponse::Meta,
            _pagination: Onlyfansapi::Models::ChatListResponse::Pagination,
            data: T::Array[Onlyfansapi::Models::ChatListResponse::Data]
          }
        )
      end
      def to_hash
      end

      class Meta < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::ChatListResponse::Meta,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig do
          returns(T.nilable(Onlyfansapi::Models::ChatListResponse::Meta::Cache))
        end
        attr_reader :_cache

        sig do
          params(
            _cache: Onlyfansapi::Models::ChatListResponse::Meta::Cache::OrHash
          ).void
        end
        attr_writer :_cache

        sig do
          returns(
            T.nilable(Onlyfansapi::Models::ChatListResponse::Meta::Credits)
          )
        end
        attr_reader :_credits

        sig do
          params(
            _credits:
              Onlyfansapi::Models::ChatListResponse::Meta::Credits::OrHash
          ).void
        end
        attr_writer :_credits

        sig do
          returns(
            T.nilable(Onlyfansapi::Models::ChatListResponse::Meta::RateLimits)
          )
        end
        attr_reader :_rate_limits

        sig do
          params(
            _rate_limits:
              Onlyfansapi::Models::ChatListResponse::Meta::RateLimits::OrHash
          ).void
        end
        attr_writer :_rate_limits

        sig do
          params(
            _cache: Onlyfansapi::Models::ChatListResponse::Meta::Cache::OrHash,
            _credits:
              Onlyfansapi::Models::ChatListResponse::Meta::Credits::OrHash,
            _rate_limits:
              Onlyfansapi::Models::ChatListResponse::Meta::RateLimits::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
        end

        sig do
          override.returns(
            {
              _cache: Onlyfansapi::Models::ChatListResponse::Meta::Cache,
              _credits: Onlyfansapi::Models::ChatListResponse::Meta::Credits,
              _rate_limits:
                Onlyfansapi::Models::ChatListResponse::Meta::RateLimits
            }
          )
        end
        def to_hash
        end

        class Cache < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::ChatListResponse::Meta::Cache,
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
                Onlyfansapi::Models::ChatListResponse::Meta::Credits,
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
                Onlyfansapi::Models::ChatListResponse::Meta::RateLimits,
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

      class Pagination < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::ChatListResponse::Pagination,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :next_page

        sig { params(next_page: String).void }
        attr_writer :next_page

        sig { params(next_page: String).returns(T.attached_class) }
        def self.new(next_page: nil)
        end

        sig { override.returns({ next_page: String }) }
        def to_hash
        end
      end

      class Data < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::ChatListResponse::Data,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :can_go_to_profile

        sig { params(can_go_to_profile: T::Boolean).void }
        attr_writer :can_go_to_profile

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :can_not_send_reason

        sig { params(can_not_send_reason: T::Boolean).void }
        attr_writer :can_not_send_reason

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :can_send_message

        sig { params(can_send_message: T::Boolean).void }
        attr_writer :can_send_message

        sig { returns(T.nilable(Integer)) }
        attr_reader :count_pinned_messages

        sig { params(count_pinned_messages: Integer).void }
        attr_writer :count_pinned_messages

        sig do
          returns(T.nilable(Onlyfansapi::Models::ChatListResponse::Data::Fan))
        end
        attr_reader :fan

        sig do
          params(
            fan: Onlyfansapi::Models::ChatListResponse::Data::Fan::OrHash
          ).void
        end
        attr_writer :fan

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :has_purchased_feed

        sig { params(has_purchased_feed: T::Boolean).void }
        attr_writer :has_purchased_feed

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :has_unread_tips

        sig { params(has_unread_tips: T::Boolean).void }
        attr_writer :has_unread_tips

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_muted_notifications

        sig { params(is_muted_notifications: T::Boolean).void }
        attr_writer :is_muted_notifications

        sig do
          returns(
            T.nilable(Onlyfansapi::Models::ChatListResponse::Data::LastMessage)
          )
        end
        attr_reader :last_message

        sig do
          params(
            last_message:
              Onlyfansapi::Models::ChatListResponse::Data::LastMessage::OrHash
          ).void
        end
        attr_writer :last_message

        sig { returns(T.nilable(Integer)) }
        attr_reader :last_read_message_id

        sig { params(last_read_message_id: Integer).void }
        attr_writer :last_read_message_id

        sig { returns(T.nilable(Integer)) }
        attr_reader :unread_messages_count

        sig { params(unread_messages_count: Integer).void }
        attr_writer :unread_messages_count

        sig do
          params(
            can_go_to_profile: T::Boolean,
            can_not_send_reason: T::Boolean,
            can_send_message: T::Boolean,
            count_pinned_messages: Integer,
            fan: Onlyfansapi::Models::ChatListResponse::Data::Fan::OrHash,
            has_purchased_feed: T::Boolean,
            has_unread_tips: T::Boolean,
            is_muted_notifications: T::Boolean,
            last_message:
              Onlyfansapi::Models::ChatListResponse::Data::LastMessage::OrHash,
            last_read_message_id: Integer,
            unread_messages_count: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          can_go_to_profile: nil,
          can_not_send_reason: nil,
          can_send_message: nil,
          count_pinned_messages: nil,
          fan: nil,
          has_purchased_feed: nil,
          has_unread_tips: nil,
          is_muted_notifications: nil,
          last_message: nil,
          last_read_message_id: nil,
          unread_messages_count: nil
        )
        end

        sig do
          override.returns(
            {
              can_go_to_profile: T::Boolean,
              can_not_send_reason: T::Boolean,
              can_send_message: T::Boolean,
              count_pinned_messages: Integer,
              fan: Onlyfansapi::Models::ChatListResponse::Data::Fan,
              has_purchased_feed: T::Boolean,
              has_unread_tips: T::Boolean,
              is_muted_notifications: T::Boolean,
              last_message:
                Onlyfansapi::Models::ChatListResponse::Data::LastMessage,
              last_read_message_id: Integer,
              unread_messages_count: Integer
            }
          )
        end
        def to_hash
        end

        class Fan < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::ChatListResponse::Data::Fan,
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
                Onlyfansapi::Models::ChatListResponse::Data::Fan::AvatarThumbs
              )
            )
          end
          attr_reader :avatar_thumbs

          sig do
            params(
              avatar_thumbs:
                Onlyfansapi::Models::ChatListResponse::Data::Fan::AvatarThumbs::OrHash
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

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :can_unsubscribe

          sig { params(can_unsubscribe: T::Boolean).void }
          attr_writer :can_unsubscribe

          sig { returns(T.nilable(Integer)) }
          attr_reader :current_subscribe_price

          sig { params(current_subscribe_price: Integer).void }
          attr_writer :current_subscribe_price

          sig { returns(T.nilable(String)) }
          attr_reader :display_name

          sig { params(display_name: String).void }
          attr_writer :display_name

          sig { returns(T.nilable(Integer)) }
          attr_reader :favorited_count

          sig { params(favorited_count: Integer).void }
          attr_writer :favorited_count

          sig { returns(T.nilable(Integer)) }
          attr_reader :favorites_count

          sig { params(favorites_count: Integer).void }
          attr_writer :favorites_count

          sig { returns(T.nilable(Integer)) }
          attr_reader :finished_streams_count

          sig { params(finished_streams_count: Integer).void }
          attr_writer :finished_streams_count

          sig { returns(T.nilable(String)) }
          attr_reader :first_published_post_date

          sig { params(first_published_post_date: String).void }
          attr_writer :first_published_post_date

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :has_friends

          sig { params(has_friends: T::Boolean).void }
          attr_writer :has_friends

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
          attr_reader :has_saved_streams

          sig { params(has_saved_streams: T::Boolean).void }
          attr_writer :has_saved_streams

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
                Onlyfansapi::Models::ChatListResponse::Data::Fan::HeaderSize
              )
            )
          end
          attr_reader :header_size

          sig do
            params(
              header_size:
                Onlyfansapi::Models::ChatListResponse::Data::Fan::HeaderSize::OrHash
            ).void
          end
          attr_writer :header_size

          sig do
            returns(
              T.nilable(
                Onlyfansapi::Models::ChatListResponse::Data::Fan::HeaderThumbs
              )
            )
          end
          attr_reader :header_thumbs

          sig do
            params(
              header_thumbs:
                Onlyfansapi::Models::ChatListResponse::Data::Fan::HeaderThumbs::OrHash
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
          attr_reader :is_paywall_required

          sig { params(is_paywall_required: T::Boolean).void }
          attr_writer :is_paywall_required

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_pending_autoprolong

          sig { params(is_pending_autoprolong: T::Boolean).void }
          attr_writer :is_pending_autoprolong

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

          sig do
            returns(
              T.nilable(
                T::Array[
                  Onlyfansapi::Models::ChatListResponse::Data::Fan::ListsState
                ]
              )
            )
          end
          attr_reader :lists_states

          sig do
            params(
              lists_states:
                T::Array[
                  Onlyfansapi::Models::ChatListResponse::Data::Fan::ListsState::OrHash
                ]
            ).void
          end
          attr_writer :lists_states

          sig { returns(T.nilable(String)) }
          attr_reader :location

          sig { params(location: String).void }
          attr_writer :location

          sig { returns(T.nilable(Integer)) }
          attr_reader :medias_count

          sig { params(medias_count: Integer).void }
          attr_writer :medias_count

          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig { returns(T.nilable(String)) }
          attr_reader :notice

          sig { params(notice: String).void }
          attr_writer :notice

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

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :should_show_finished_streams

          sig { params(should_show_finished_streams: T::Boolean).void }
          attr_writer :should_show_finished_streams

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

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :subscribed_by_autoprolong

          sig { params(subscribed_by_autoprolong: T::Boolean).void }
          attr_writer :subscribed_by_autoprolong

          sig do
            returns(
              T.nilable(
                Onlyfansapi::Models::ChatListResponse::Data::Fan::SubscribedByData
              )
            )
          end
          attr_reader :subscribed_by_data

          sig do
            params(
              subscribed_by_data:
                Onlyfansapi::Models::ChatListResponse::Data::Fan::SubscribedByData::OrHash
            ).void
          end
          attr_writer :subscribed_by_data

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :subscribed_by_expire

          sig { params(subscribed_by_expire: T::Boolean).void }
          attr_writer :subscribed_by_expire

          sig { returns(T.nilable(String)) }
          attr_reader :subscribed_by_expire_date

          sig { params(subscribed_by_expire_date: String).void }
          attr_writer :subscribed_by_expire_date

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :subscribed_is_expired_now

          sig { params(subscribed_is_expired_now: T::Boolean).void }
          attr_writer :subscribed_is_expired_now

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :subscribed_on

          sig { params(subscribed_on: T::Boolean).void }
          attr_writer :subscribed_on

          sig do
            returns(
              T.nilable(
                Onlyfansapi::Models::ChatListResponse::Data::Fan::SubscribedOnData
              )
            )
          end
          attr_reader :subscribed_on_data

          sig do
            params(
              subscribed_on_data:
                Onlyfansapi::Models::ChatListResponse::Data::Fan::SubscribedOnData::OrHash
            ).void
          end
          attr_writer :subscribed_on_data

          sig { returns(T.nilable(String)) }
          attr_reader :subscribed_on_duration

          sig { params(subscribed_on_duration: String).void }
          attr_writer :subscribed_on_duration

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :subscribed_on_expired_now

          sig { params(subscribed_on_expired_now: T::Boolean).void }
          attr_writer :subscribed_on_expired_now

          sig { returns(T.nilable(Integer)) }
          attr_reader :subscribe_price

          sig { params(subscribe_price: Integer).void }
          attr_writer :subscribe_price

          sig { returns(T.nilable(String)) }
          attr_reader :subscribers_count

          sig { params(subscribers_count: String).void }
          attr_writer :subscribers_count

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
          attr_reader :wishlist

          sig { params(wishlist: String).void }
          attr_writer :wishlist

          sig do
            params(
              id: Integer,
              about: String,
              archived_posts_count: Integer,
              audios_count: Integer,
              avatar: String,
              avatar_header_converter_upload: T::Boolean,
              avatar_thumbs:
                Onlyfansapi::Models::ChatListResponse::Data::Fan::AvatarThumbs::OrHash,
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
              can_unsubscribe: T::Boolean,
              current_subscribe_price: Integer,
              display_name: String,
              favorited_count: Integer,
              favorites_count: Integer,
              finished_streams_count: Integer,
              first_published_post_date: String,
              has_friends: T::Boolean,
              has_labels: T::Boolean,
              has_links: T::Boolean,
              has_not_viewed_story: T::Boolean,
              has_pinned_posts: T::Boolean,
              has_saved_streams: T::Boolean,
              has_scheduled_stream: T::Boolean,
              has_stories: T::Boolean,
              has_stream: T::Boolean,
              header: String,
              header_size:
                Onlyfansapi::Models::ChatListResponse::Data::Fan::HeaderSize::OrHash,
              header_thumbs:
                Onlyfansapi::Models::ChatListResponse::Data::Fan::HeaderThumbs::OrHash,
              is_adult_content: T::Boolean,
              is_blocked: T::Boolean,
              is_friend: T::Boolean,
              is_markdown_disabled_for_about: T::Boolean,
              is_paywall_required: T::Boolean,
              is_pending_autoprolong: T::Boolean,
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
              lists_states:
                T::Array[
                  Onlyfansapi::Models::ChatListResponse::Data::Fan::ListsState::OrHash
                ],
              location: String,
              medias_count: Integer,
              name: String,
              notice: String,
              photos_count: Integer,
              posts_count: Integer,
              private_archived_posts_count: Integer,
              should_show_finished_streams: T::Boolean,
              show_media_count: T::Boolean,
              show_posts_in_feed: T::Boolean,
              show_subscribers_count: T::Boolean,
              subscribed_by: T::Boolean,
              subscribed_by_autoprolong: T::Boolean,
              subscribed_by_data:
                Onlyfansapi::Models::ChatListResponse::Data::Fan::SubscribedByData::OrHash,
              subscribed_by_expire: T::Boolean,
              subscribed_by_expire_date: String,
              subscribed_is_expired_now: T::Boolean,
              subscribed_on: T::Boolean,
              subscribed_on_data:
                Onlyfansapi::Models::ChatListResponse::Data::Fan::SubscribedOnData::OrHash,
              subscribed_on_duration: String,
              subscribed_on_expired_now: T::Boolean,
              subscribe_price: Integer,
              subscribers_count: String,
              tips_enabled: T::Boolean,
              tips_max: Integer,
              tips_min: Integer,
              tips_min_internal: Integer,
              tips_text_enabled: T::Boolean,
              username: String,
              videos_count: Integer,
              view: String,
              website: String,
              wishlist: String
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
            can_unsubscribe: nil,
            current_subscribe_price: nil,
            display_name: nil,
            favorited_count: nil,
            favorites_count: nil,
            finished_streams_count: nil,
            first_published_post_date: nil,
            has_friends: nil,
            has_labels: nil,
            has_links: nil,
            has_not_viewed_story: nil,
            has_pinned_posts: nil,
            has_saved_streams: nil,
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
            is_paywall_required: nil,
            is_pending_autoprolong: nil,
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
            lists_states: nil,
            location: nil,
            medias_count: nil,
            name: nil,
            notice: nil,
            photos_count: nil,
            posts_count: nil,
            private_archived_posts_count: nil,
            should_show_finished_streams: nil,
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
                  Onlyfansapi::Models::ChatListResponse::Data::Fan::AvatarThumbs,
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
                can_unsubscribe: T::Boolean,
                current_subscribe_price: Integer,
                display_name: String,
                favorited_count: Integer,
                favorites_count: Integer,
                finished_streams_count: Integer,
                first_published_post_date: String,
                has_friends: T::Boolean,
                has_labels: T::Boolean,
                has_links: T::Boolean,
                has_not_viewed_story: T::Boolean,
                has_pinned_posts: T::Boolean,
                has_saved_streams: T::Boolean,
                has_scheduled_stream: T::Boolean,
                has_stories: T::Boolean,
                has_stream: T::Boolean,
                header: String,
                header_size:
                  Onlyfansapi::Models::ChatListResponse::Data::Fan::HeaderSize,
                header_thumbs:
                  Onlyfansapi::Models::ChatListResponse::Data::Fan::HeaderThumbs,
                is_adult_content: T::Boolean,
                is_blocked: T::Boolean,
                is_friend: T::Boolean,
                is_markdown_disabled_for_about: T::Boolean,
                is_paywall_required: T::Boolean,
                is_pending_autoprolong: T::Boolean,
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
                lists_states:
                  T::Array[
                    Onlyfansapi::Models::ChatListResponse::Data::Fan::ListsState
                  ],
                location: String,
                medias_count: Integer,
                name: String,
                notice: String,
                photos_count: Integer,
                posts_count: Integer,
                private_archived_posts_count: Integer,
                should_show_finished_streams: T::Boolean,
                show_media_count: T::Boolean,
                show_posts_in_feed: T::Boolean,
                show_subscribers_count: T::Boolean,
                subscribed_by: T::Boolean,
                subscribed_by_autoprolong: T::Boolean,
                subscribed_by_data:
                  Onlyfansapi::Models::ChatListResponse::Data::Fan::SubscribedByData,
                subscribed_by_expire: T::Boolean,
                subscribed_by_expire_date: String,
                subscribed_is_expired_now: T::Boolean,
                subscribed_on: T::Boolean,
                subscribed_on_data:
                  Onlyfansapi::Models::ChatListResponse::Data::Fan::SubscribedOnData,
                subscribed_on_duration: String,
                subscribed_on_expired_now: T::Boolean,
                subscribe_price: Integer,
                subscribers_count: String,
                tips_enabled: T::Boolean,
                tips_max: Integer,
                tips_min: Integer,
                tips_min_internal: Integer,
                tips_text_enabled: T::Boolean,
                username: String,
                videos_count: Integer,
                view: String,
                website: String,
                wishlist: String
              }
            )
          end
          def to_hash
          end

          class AvatarThumbs < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::ChatListResponse::Data::Fan::AvatarThumbs,
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
                  Onlyfansapi::Models::ChatListResponse::Data::Fan::HeaderSize,
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
                  Onlyfansapi::Models::ChatListResponse::Data::Fan::HeaderThumbs,
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

          class ListsState < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::ChatListResponse::Data::Fan::ListsState,
                  Onlyfansapi::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :id

            sig { params(id: String).void }
            attr_writer :id

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :can_add_user

            sig { params(can_add_user: T::Boolean).void }
            attr_writer :can_add_user

            sig { returns(T.nilable(String)) }
            attr_reader :cannot_add_user_reason

            sig { params(cannot_add_user_reason: String).void }
            attr_writer :cannot_add_user_reason

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :has_user

            sig { params(has_user: T::Boolean).void }
            attr_writer :has_user

            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            sig { returns(T.nilable(String)) }
            attr_reader :type

            sig { params(type: String).void }
            attr_writer :type

            sig do
              params(
                id: String,
                can_add_user: T::Boolean,
                cannot_add_user_reason: String,
                has_user: T::Boolean,
                name: String,
                type: String
              ).returns(T.attached_class)
            end
            def self.new(
              id: nil,
              can_add_user: nil,
              cannot_add_user_reason: nil,
              has_user: nil,
              name: nil,
              type: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  can_add_user: T::Boolean,
                  cannot_add_user_reason: String,
                  has_user: T::Boolean,
                  name: String,
                  type: String
                }
              )
            end
            def to_hash
            end
          end

          class SubscribedByData < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::ChatListResponse::Data::Fan::SubscribedByData,
                  Onlyfansapi::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :discount_finished_at

            sig { params(discount_finished_at: String).void }
            attr_writer :discount_finished_at

            sig { returns(T.nilable(Integer)) }
            attr_reader :discount_percent

            sig { params(discount_percent: Integer).void }
            attr_writer :discount_percent

            sig { returns(T.nilable(Integer)) }
            attr_reader :discount_period

            sig { params(discount_period: Integer).void }
            attr_writer :discount_period

            sig { returns(T.nilable(String)) }
            attr_reader :discount_started_at

            sig { params(discount_started_at: String).void }
            attr_writer :discount_started_at

            sig { returns(T.nilable(String)) }
            attr_reader :duration

            sig { params(duration: String).void }
            attr_writer :duration

            sig { returns(T.nilable(String)) }
            attr_reader :expired_at

            sig { params(expired_at: String).void }
            attr_writer :expired_at

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :has_active_paid_subscriptions

            sig { params(has_active_paid_subscriptions: T::Boolean).void }
            attr_writer :has_active_paid_subscriptions

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_muted

            sig { params(is_muted: T::Boolean).void }
            attr_writer :is_muted

            sig { returns(T.nilable(Integer)) }
            attr_reader :new_price

            sig { params(new_price: Integer).void }
            attr_writer :new_price

            sig { returns(T.nilable(Integer)) }
            attr_reader :price

            sig { params(price: Integer).void }
            attr_writer :price

            sig { returns(T.nilable(Integer)) }
            attr_reader :regular_price

            sig { params(regular_price: Integer).void }
            attr_writer :regular_price

            sig { returns(T.nilable(String)) }
            attr_reader :renewed_at

            sig { params(renewed_at: String).void }
            attr_writer :renewed_at

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :show_posts_in_feed

            sig { params(show_posts_in_feed: T::Boolean).void }
            attr_writer :show_posts_in_feed

            sig { returns(T.nilable(String)) }
            attr_reader :status

            sig { params(status: String).void }
            attr_writer :status

            sig { returns(T.nilable(String)) }
            attr_reader :subscribe_at

            sig { params(subscribe_at: String).void }
            attr_writer :subscribe_at

            sig { returns(T.nilable(Integer)) }
            attr_reader :subscribe_price

            sig { params(subscribe_price: Integer).void }
            attr_writer :subscribe_price

            sig do
              returns(
                T.nilable(
                  T::Array[
                    Onlyfansapi::Models::ChatListResponse::Data::Fan::SubscribedByData::Subscribe
                  ]
                )
              )
            end
            attr_reader :subscribes

            sig do
              params(
                subscribes:
                  T::Array[
                    Onlyfansapi::Models::ChatListResponse::Data::Fan::SubscribedByData::Subscribe::OrHash
                  ]
              ).void
            end
            attr_writer :subscribes

            sig { returns(T.nilable(String)) }
            attr_reader :unsubscribe_reason

            sig { params(unsubscribe_reason: String).void }
            attr_writer :unsubscribe_reason

            sig do
              params(
                discount_finished_at: String,
                discount_percent: Integer,
                discount_period: Integer,
                discount_started_at: String,
                duration: String,
                expired_at: String,
                has_active_paid_subscriptions: T::Boolean,
                is_muted: T::Boolean,
                new_price: Integer,
                price: Integer,
                regular_price: Integer,
                renewed_at: String,
                show_posts_in_feed: T::Boolean,
                status: String,
                subscribe_at: String,
                subscribe_price: Integer,
                subscribes:
                  T::Array[
                    Onlyfansapi::Models::ChatListResponse::Data::Fan::SubscribedByData::Subscribe::OrHash
                  ],
                unsubscribe_reason: String
              ).returns(T.attached_class)
            end
            def self.new(
              discount_finished_at: nil,
              discount_percent: nil,
              discount_period: nil,
              discount_started_at: nil,
              duration: nil,
              expired_at: nil,
              has_active_paid_subscriptions: nil,
              is_muted: nil,
              new_price: nil,
              price: nil,
              regular_price: nil,
              renewed_at: nil,
              show_posts_in_feed: nil,
              status: nil,
              subscribe_at: nil,
              subscribe_price: nil,
              subscribes: nil,
              unsubscribe_reason: nil
            )
            end

            sig do
              override.returns(
                {
                  discount_finished_at: String,
                  discount_percent: Integer,
                  discount_period: Integer,
                  discount_started_at: String,
                  duration: String,
                  expired_at: String,
                  has_active_paid_subscriptions: T::Boolean,
                  is_muted: T::Boolean,
                  new_price: Integer,
                  price: Integer,
                  regular_price: Integer,
                  renewed_at: String,
                  show_posts_in_feed: T::Boolean,
                  status: String,
                  subscribe_at: String,
                  subscribe_price: Integer,
                  subscribes:
                    T::Array[
                      Onlyfansapi::Models::ChatListResponse::Data::Fan::SubscribedByData::Subscribe
                    ],
                  unsubscribe_reason: String
                }
              )
            end
            def to_hash
            end

            class Subscribe < Onlyfansapi::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfansapi::Models::ChatListResponse::Data::Fan::SubscribedByData::Subscribe,
                    Onlyfansapi::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(Integer)) }
              attr_reader :id

              sig { params(id: Integer).void }
              attr_writer :id

              sig { returns(T.nilable(String)) }
              attr_reader :action

              sig { params(action: String).void }
              attr_writer :action

              sig { returns(T.nilable(String)) }
              attr_reader :cancel_date

              sig { params(cancel_date: String).void }
              attr_writer :cancel_date

              sig { returns(T.nilable(String)) }
              attr_reader :date

              sig { params(date: String).void }
              attr_writer :date

              sig { returns(T.nilable(Integer)) }
              attr_reader :discount

              sig { params(discount: Integer).void }
              attr_writer :discount

              sig { returns(T.nilable(Integer)) }
              attr_reader :duration

              sig { params(duration: Integer).void }
              attr_writer :duration

              sig { returns(T.nilable(Integer)) }
              attr_reader :earning_id

              sig { params(earning_id: Integer).void }
              attr_writer :earning_id

              sig { returns(T.nilable(String)) }
              attr_reader :expire_date

              sig { params(expire_date: String).void }
              attr_writer :expire_date

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :is_current

              sig { params(is_current: T::Boolean).void }
              attr_writer :is_current

              sig { returns(T.nilable(String)) }
              attr_reader :offer_end

              sig { params(offer_end: String).void }
              attr_writer :offer_end

              sig { returns(T.nilable(String)) }
              attr_reader :offer_start

              sig { params(offer_start: String).void }
              attr_writer :offer_start

              sig { returns(T.nilable(Integer)) }
              attr_reader :price

              sig { params(price: Integer).void }
              attr_writer :price

              sig { returns(T.nilable(Integer)) }
              attr_reader :regular_price

              sig { params(regular_price: Integer).void }
              attr_writer :regular_price

              sig { returns(T.nilable(String)) }
              attr_reader :start_date

              sig { params(start_date: String).void }
              attr_writer :start_date

              sig { returns(T.nilable(Integer)) }
              attr_reader :subscriber_id

              sig { params(subscriber_id: Integer).void }
              attr_writer :subscriber_id

              sig { returns(T.nilable(String)) }
              attr_reader :type

              sig { params(type: String).void }
              attr_writer :type

              sig { returns(T.nilable(Integer)) }
              attr_reader :user_id

              sig { params(user_id: Integer).void }
              attr_writer :user_id

              sig do
                params(
                  id: Integer,
                  action: String,
                  cancel_date: String,
                  date: String,
                  discount: Integer,
                  duration: Integer,
                  earning_id: Integer,
                  expire_date: String,
                  is_current: T::Boolean,
                  offer_end: String,
                  offer_start: String,
                  price: Integer,
                  regular_price: Integer,
                  start_date: String,
                  subscriber_id: Integer,
                  type: String,
                  user_id: Integer
                ).returns(T.attached_class)
              end
              def self.new(
                id: nil,
                action: nil,
                cancel_date: nil,
                date: nil,
                discount: nil,
                duration: nil,
                earning_id: nil,
                expire_date: nil,
                is_current: nil,
                offer_end: nil,
                offer_start: nil,
                price: nil,
                regular_price: nil,
                start_date: nil,
                subscriber_id: nil,
                type: nil,
                user_id: nil
              )
              end

              sig do
                override.returns(
                  {
                    id: Integer,
                    action: String,
                    cancel_date: String,
                    date: String,
                    discount: Integer,
                    duration: Integer,
                    earning_id: Integer,
                    expire_date: String,
                    is_current: T::Boolean,
                    offer_end: String,
                    offer_start: String,
                    price: Integer,
                    regular_price: Integer,
                    start_date: String,
                    subscriber_id: Integer,
                    type: String,
                    user_id: Integer
                  }
                )
              end
              def to_hash
              end
            end
          end

          class SubscribedOnData < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::ChatListResponse::Data::Fan::SubscribedOnData,
                  Onlyfansapi::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :discount_finished_at

            sig { params(discount_finished_at: String).void }
            attr_writer :discount_finished_at

            sig { returns(T.nilable(Integer)) }
            attr_reader :discount_percent

            sig { params(discount_percent: Integer).void }
            attr_writer :discount_percent

            sig { returns(T.nilable(Integer)) }
            attr_reader :discount_period

            sig { params(discount_period: Integer).void }
            attr_writer :discount_period

            sig { returns(T.nilable(String)) }
            attr_reader :discount_started_at

            sig { params(discount_started_at: String).void }
            attr_writer :discount_started_at

            sig { returns(T.nilable(String)) }
            attr_reader :duration

            sig { params(duration: String).void }
            attr_writer :duration

            sig { returns(T.nilable(String)) }
            attr_reader :expired_at

            sig { params(expired_at: String).void }
            attr_writer :expired_at

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :has_active_paid_subscriptions

            sig { params(has_active_paid_subscriptions: T::Boolean).void }
            attr_writer :has_active_paid_subscriptions

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_muted

            sig { params(is_muted: T::Boolean).void }
            attr_writer :is_muted

            sig { returns(T.nilable(Integer)) }
            attr_reader :messages_summ

            sig { params(messages_summ: Integer).void }
            attr_writer :messages_summ

            sig { returns(T.nilable(Integer)) }
            attr_reader :new_price

            sig { params(new_price: Integer).void }
            attr_writer :new_price

            sig { returns(T.nilable(Integer)) }
            attr_reader :posts_summ

            sig { params(posts_summ: Integer).void }
            attr_writer :posts_summ

            sig { returns(T.nilable(Integer)) }
            attr_reader :price

            sig { params(price: Integer).void }
            attr_writer :price

            sig { returns(T.nilable(Float)) }
            attr_reader :regular_price

            sig { params(regular_price: Float).void }
            attr_writer :regular_price

            sig { returns(T.nilable(String)) }
            attr_reader :renewed_at

            sig { params(renewed_at: String).void }
            attr_writer :renewed_at

            sig { returns(T.nilable(String)) }
            attr_reader :status

            sig { params(status: String).void }
            attr_writer :status

            sig { returns(T.nilable(Integer)) }
            attr_reader :streams_summ

            sig { params(streams_summ: Integer).void }
            attr_writer :streams_summ

            sig { returns(T.nilable(String)) }
            attr_reader :subscribe_at

            sig { params(subscribe_at: String).void }
            attr_writer :subscribe_at

            sig { returns(T.nilable(Float)) }
            attr_reader :subscribe_price

            sig { params(subscribe_price: Float).void }
            attr_writer :subscribe_price

            sig do
              returns(
                T.nilable(
                  T::Array[
                    Onlyfansapi::Models::ChatListResponse::Data::Fan::SubscribedOnData::Subscribe
                  ]
                )
              )
            end
            attr_reader :subscribes

            sig do
              params(
                subscribes:
                  T::Array[
                    Onlyfansapi::Models::ChatListResponse::Data::Fan::SubscribedOnData::Subscribe::OrHash
                  ]
              ).void
            end
            attr_writer :subscribes

            sig { returns(T.nilable(Integer)) }
            attr_reader :subscribes_summ

            sig { params(subscribes_summ: Integer).void }
            attr_writer :subscribes_summ

            sig { returns(T.nilable(Integer)) }
            attr_reader :tips_summ

            sig { params(tips_summ: Integer).void }
            attr_writer :tips_summ

            sig { returns(T.nilable(Integer)) }
            attr_reader :total_summ

            sig { params(total_summ: Integer).void }
            attr_writer :total_summ

            sig { returns(T.nilable(String)) }
            attr_reader :unsubscribe_reason

            sig { params(unsubscribe_reason: String).void }
            attr_writer :unsubscribe_reason

            sig do
              params(
                discount_finished_at: String,
                discount_percent: Integer,
                discount_period: Integer,
                discount_started_at: String,
                duration: String,
                expired_at: String,
                has_active_paid_subscriptions: T::Boolean,
                is_muted: T::Boolean,
                messages_summ: Integer,
                new_price: Integer,
                posts_summ: Integer,
                price: Integer,
                regular_price: Float,
                renewed_at: String,
                status: String,
                streams_summ: Integer,
                subscribe_at: String,
                subscribe_price: Float,
                subscribes:
                  T::Array[
                    Onlyfansapi::Models::ChatListResponse::Data::Fan::SubscribedOnData::Subscribe::OrHash
                  ],
                subscribes_summ: Integer,
                tips_summ: Integer,
                total_summ: Integer,
                unsubscribe_reason: String
              ).returns(T.attached_class)
            end
            def self.new(
              discount_finished_at: nil,
              discount_percent: nil,
              discount_period: nil,
              discount_started_at: nil,
              duration: nil,
              expired_at: nil,
              has_active_paid_subscriptions: nil,
              is_muted: nil,
              messages_summ: nil,
              new_price: nil,
              posts_summ: nil,
              price: nil,
              regular_price: nil,
              renewed_at: nil,
              status: nil,
              streams_summ: nil,
              subscribe_at: nil,
              subscribe_price: nil,
              subscribes: nil,
              subscribes_summ: nil,
              tips_summ: nil,
              total_summ: nil,
              unsubscribe_reason: nil
            )
            end

            sig do
              override.returns(
                {
                  discount_finished_at: String,
                  discount_percent: Integer,
                  discount_period: Integer,
                  discount_started_at: String,
                  duration: String,
                  expired_at: String,
                  has_active_paid_subscriptions: T::Boolean,
                  is_muted: T::Boolean,
                  messages_summ: Integer,
                  new_price: Integer,
                  posts_summ: Integer,
                  price: Integer,
                  regular_price: Float,
                  renewed_at: String,
                  status: String,
                  streams_summ: Integer,
                  subscribe_at: String,
                  subscribe_price: Float,
                  subscribes:
                    T::Array[
                      Onlyfansapi::Models::ChatListResponse::Data::Fan::SubscribedOnData::Subscribe
                    ],
                  subscribes_summ: Integer,
                  tips_summ: Integer,
                  total_summ: Integer,
                  unsubscribe_reason: String
                }
              )
            end
            def to_hash
            end

            class Subscribe < Onlyfansapi::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfansapi::Models::ChatListResponse::Data::Fan::SubscribedOnData::Subscribe,
                    Onlyfansapi::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(Integer)) }
              attr_reader :id

              sig { params(id: Integer).void }
              attr_writer :id

              sig { returns(T.nilable(String)) }
              attr_reader :action

              sig { params(action: String).void }
              attr_writer :action

              sig { returns(T.nilable(String)) }
              attr_reader :cancel_date

              sig { params(cancel_date: String).void }
              attr_writer :cancel_date

              sig { returns(T.nilable(String)) }
              attr_reader :date

              sig { params(date: String).void }
              attr_writer :date

              sig { returns(T.nilable(Integer)) }
              attr_reader :discount

              sig { params(discount: Integer).void }
              attr_writer :discount

              sig { returns(T.nilable(Integer)) }
              attr_reader :duration

              sig { params(duration: Integer).void }
              attr_writer :duration

              sig { returns(T.nilable(Integer)) }
              attr_reader :earning_id

              sig { params(earning_id: Integer).void }
              attr_writer :earning_id

              sig { returns(T.nilable(String)) }
              attr_reader :expire_date

              sig { params(expire_date: String).void }
              attr_writer :expire_date

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :is_current

              sig { params(is_current: T::Boolean).void }
              attr_writer :is_current

              sig { returns(T.nilable(String)) }
              attr_reader :offer_end

              sig { params(offer_end: String).void }
              attr_writer :offer_end

              sig { returns(T.nilable(String)) }
              attr_reader :offer_start

              sig { params(offer_start: String).void }
              attr_writer :offer_start

              sig { returns(T.nilable(Integer)) }
              attr_reader :price

              sig { params(price: Integer).void }
              attr_writer :price

              sig { returns(T.nilable(Integer)) }
              attr_reader :regular_price

              sig { params(regular_price: Integer).void }
              attr_writer :regular_price

              sig { returns(T.nilable(String)) }
              attr_reader :start_date

              sig { params(start_date: String).void }
              attr_writer :start_date

              sig { returns(T.nilable(Integer)) }
              attr_reader :subscriber_id

              sig { params(subscriber_id: Integer).void }
              attr_writer :subscriber_id

              sig { returns(T.nilable(String)) }
              attr_reader :type

              sig { params(type: String).void }
              attr_writer :type

              sig { returns(T.nilable(Integer)) }
              attr_reader :user_id

              sig { params(user_id: Integer).void }
              attr_writer :user_id

              sig do
                params(
                  id: Integer,
                  action: String,
                  cancel_date: String,
                  date: String,
                  discount: Integer,
                  duration: Integer,
                  earning_id: Integer,
                  expire_date: String,
                  is_current: T::Boolean,
                  offer_end: String,
                  offer_start: String,
                  price: Integer,
                  regular_price: Integer,
                  start_date: String,
                  subscriber_id: Integer,
                  type: String,
                  user_id: Integer
                ).returns(T.attached_class)
              end
              def self.new(
                id: nil,
                action: nil,
                cancel_date: nil,
                date: nil,
                discount: nil,
                duration: nil,
                earning_id: nil,
                expire_date: nil,
                is_current: nil,
                offer_end: nil,
                offer_start: nil,
                price: nil,
                regular_price: nil,
                start_date: nil,
                subscriber_id: nil,
                type: nil,
                user_id: nil
              )
              end

              sig do
                override.returns(
                  {
                    id: Integer,
                    action: String,
                    cancel_date: String,
                    date: String,
                    discount: Integer,
                    duration: Integer,
                    earning_id: Integer,
                    expire_date: String,
                    is_current: T::Boolean,
                    offer_end: String,
                    offer_start: String,
                    price: Integer,
                    regular_price: Integer,
                    start_date: String,
                    subscriber_id: Integer,
                    type: String,
                    user_id: Integer
                  }
                )
              end
              def to_hash
              end
            end
          end
        end

        class LastMessage < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::ChatListResponse::Data::LastMessage,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_reader :id

          sig { params(id: Integer).void }
          attr_writer :id

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :can_be_pinned

          sig { params(can_be_pinned: T::Boolean).void }
          attr_writer :can_be_pinned

          sig { returns(T.nilable(Integer)) }
          attr_reader :cancel_seconds

          sig { params(cancel_seconds: Integer).void }
          attr_writer :cancel_seconds

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :can_purchase

          sig { params(can_purchase: T::Boolean).void }
          attr_writer :can_purchase

          sig { returns(T.nilable(String)) }
          attr_reader :can_purchase_reason

          sig { params(can_purchase_reason: String).void }
          attr_writer :can_purchase_reason

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :can_report

          sig { params(can_report: T::Boolean).void }
          attr_writer :can_report

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :can_unsend_queue

          sig { params(can_unsend_queue: T::Boolean).void }
          attr_writer :can_unsend_queue

          sig { returns(T.nilable(String)) }
          attr_reader :changed_at

          sig { params(changed_at: String).void }
          attr_writer :changed_at

          sig { returns(T.nilable(String)) }
          attr_reader :created_at

          sig { params(created_at: String).void }
          attr_writer :created_at

          sig do
            returns(
              T.nilable(
                Onlyfansapi::Models::ChatListResponse::Data::LastMessage::FromUser
              )
            )
          end
          attr_reader :from_user

          sig do
            params(
              from_user:
                Onlyfansapi::Models::ChatListResponse::Data::LastMessage::FromUser::OrHash
            ).void
          end
          attr_writer :from_user

          sig { returns(T.nilable(String)) }
          attr_reader :giphy_id

          sig { params(giphy_id: String).void }
          attr_writer :giphy_id

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_couple_people_media

          sig { params(is_couple_people_media: T::Boolean).void }
          attr_writer :is_couple_people_media

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_free

          sig { params(is_free: T::Boolean).void }
          attr_writer :is_free

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_from_queue

          sig { params(is_from_queue: T::Boolean).void }
          attr_writer :is_from_queue

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_liked

          sig { params(is_liked: T::Boolean).void }
          attr_writer :is_liked

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_markdown_disabled

          sig { params(is_markdown_disabled: T::Boolean).void }
          attr_writer :is_markdown_disabled

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_media_ready

          sig { params(is_media_ready: T::Boolean).void }
          attr_writer :is_media_ready

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_new

          sig { params(is_new: T::Boolean).void }
          attr_writer :is_new

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_opened

          sig { params(is_opened: T::Boolean).void }
          attr_writer :is_opened

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_pinned

          sig { params(is_pinned: T::Boolean).void }
          attr_writer :is_pinned

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_reported_by_me

          sig { params(is_reported_by_me: T::Boolean).void }
          attr_writer :is_reported_by_me

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_tip

          sig { params(is_tip: T::Boolean).void }
          attr_writer :is_tip

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :locked_text

          sig { params(locked_text: T::Boolean).void }
          attr_writer :locked_text

          sig { returns(T.nilable(T::Array[T.anything])) }
          attr_reader :media

          sig { params(media: T::Array[T.anything]).void }
          attr_writer :media

          sig { returns(T.nilable(Integer)) }
          attr_reader :media_count

          sig { params(media_count: Integer).void }
          attr_writer :media_count

          sig { returns(T.nilable(T::Array[T.anything])) }
          attr_reader :previews

          sig { params(previews: T::Array[T.anything]).void }
          attr_writer :previews

          sig { returns(T.nilable(Integer)) }
          attr_reader :price

          sig { params(price: Integer).void }
          attr_writer :price

          sig { returns(T.nilable(Integer)) }
          attr_reader :queue_id

          sig { params(queue_id: Integer).void }
          attr_writer :queue_id

          sig { returns(T.nilable(String)) }
          attr_reader :response_type

          sig { params(response_type: String).void }
          attr_writer :response_type

          sig { returns(T.nilable(String)) }
          attr_reader :text

          sig { params(text: String).void }
          attr_writer :text

          sig { returns(T.nilable(Integer)) }
          attr_reader :unsend_seconds_queue

          sig { params(unsend_seconds_queue: Integer).void }
          attr_writer :unsend_seconds_queue

          sig do
            params(
              id: Integer,
              can_be_pinned: T::Boolean,
              cancel_seconds: Integer,
              can_purchase: T::Boolean,
              can_purchase_reason: String,
              can_report: T::Boolean,
              can_unsend_queue: T::Boolean,
              changed_at: String,
              created_at: String,
              from_user:
                Onlyfansapi::Models::ChatListResponse::Data::LastMessage::FromUser::OrHash,
              giphy_id: String,
              is_couple_people_media: T::Boolean,
              is_free: T::Boolean,
              is_from_queue: T::Boolean,
              is_liked: T::Boolean,
              is_markdown_disabled: T::Boolean,
              is_media_ready: T::Boolean,
              is_new: T::Boolean,
              is_opened: T::Boolean,
              is_pinned: T::Boolean,
              is_reported_by_me: T::Boolean,
              is_tip: T::Boolean,
              locked_text: T::Boolean,
              media: T::Array[T.anything],
              media_count: Integer,
              previews: T::Array[T.anything],
              price: Integer,
              queue_id: Integer,
              response_type: String,
              text: String,
              unsend_seconds_queue: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            id: nil,
            can_be_pinned: nil,
            cancel_seconds: nil,
            can_purchase: nil,
            can_purchase_reason: nil,
            can_report: nil,
            can_unsend_queue: nil,
            changed_at: nil,
            created_at: nil,
            from_user: nil,
            giphy_id: nil,
            is_couple_people_media: nil,
            is_free: nil,
            is_from_queue: nil,
            is_liked: nil,
            is_markdown_disabled: nil,
            is_media_ready: nil,
            is_new: nil,
            is_opened: nil,
            is_pinned: nil,
            is_reported_by_me: nil,
            is_tip: nil,
            locked_text: nil,
            media: nil,
            media_count: nil,
            previews: nil,
            price: nil,
            queue_id: nil,
            response_type: nil,
            text: nil,
            unsend_seconds_queue: nil
          )
          end

          sig do
            override.returns(
              {
                id: Integer,
                can_be_pinned: T::Boolean,
                cancel_seconds: Integer,
                can_purchase: T::Boolean,
                can_purchase_reason: String,
                can_report: T::Boolean,
                can_unsend_queue: T::Boolean,
                changed_at: String,
                created_at: String,
                from_user:
                  Onlyfansapi::Models::ChatListResponse::Data::LastMessage::FromUser,
                giphy_id: String,
                is_couple_people_media: T::Boolean,
                is_free: T::Boolean,
                is_from_queue: T::Boolean,
                is_liked: T::Boolean,
                is_markdown_disabled: T::Boolean,
                is_media_ready: T::Boolean,
                is_new: T::Boolean,
                is_opened: T::Boolean,
                is_pinned: T::Boolean,
                is_reported_by_me: T::Boolean,
                is_tip: T::Boolean,
                locked_text: T::Boolean,
                media: T::Array[T.anything],
                media_count: Integer,
                previews: T::Array[T.anything],
                price: Integer,
                queue_id: Integer,
                response_type: String,
                text: String,
                unsend_seconds_queue: Integer
              }
            )
          end
          def to_hash
          end

          class FromUser < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::ChatListResponse::Data::LastMessage::FromUser,
                  Onlyfansapi::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Integer)) }
            attr_reader :id

            sig { params(id: Integer).void }
            attr_writer :id

            sig { returns(T.nilable(String)) }
            attr_reader :_view

            sig { params(_view: String).void }
            attr_writer :_view

            sig { params(id: Integer, _view: String).returns(T.attached_class) }
            def self.new(id: nil, _view: nil)
            end

            sig { override.returns({ id: Integer, _view: String }) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
