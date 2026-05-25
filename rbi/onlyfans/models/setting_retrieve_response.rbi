# typed: strong

module Onlyfans
  module Models
    class SettingRetrieveResponse < Onlyfans::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfans::Models::SettingRetrieveResponse,
            Onlyfans::Internal::AnyHash
          )
        end

      sig do
        returns(T.nilable(Onlyfans::Models::SettingRetrieveResponse::Meta))
      end
      attr_reader :_meta

      sig do
        params(
          _meta: Onlyfans::Models::SettingRetrieveResponse::Meta::OrHash
        ).void
      end
      attr_writer :_meta

      sig do
        returns(T.nilable(Onlyfans::Models::SettingRetrieveResponse::Data))
      end
      attr_reader :data

      sig do
        params(
          data: Onlyfans::Models::SettingRetrieveResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          _meta: Onlyfans::Models::SettingRetrieveResponse::Meta::OrHash,
          data: Onlyfans::Models::SettingRetrieveResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(_meta: nil, data: nil)
      end

      sig do
        override.returns(
          {
            _meta: Onlyfans::Models::SettingRetrieveResponse::Meta,
            data: Onlyfans::Models::SettingRetrieveResponse::Data
          }
        )
      end
      def to_hash
      end

      class Meta < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Models::SettingRetrieveResponse::Meta,
              Onlyfans::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(Onlyfans::Models::SettingRetrieveResponse::Meta::Cache)
          )
        end
        attr_reader :_cache

        sig do
          params(
            _cache:
              Onlyfans::Models::SettingRetrieveResponse::Meta::Cache::OrHash
          ).void
        end
        attr_writer :_cache

        sig do
          returns(
            T.nilable(Onlyfans::Models::SettingRetrieveResponse::Meta::Credits)
          )
        end
        attr_reader :_credits

        sig do
          params(
            _credits:
              Onlyfans::Models::SettingRetrieveResponse::Meta::Credits::OrHash
          ).void
        end
        attr_writer :_credits

        sig do
          returns(
            T.nilable(
              Onlyfans::Models::SettingRetrieveResponse::Meta::RateLimits
            )
          )
        end
        attr_reader :_rate_limits

        sig do
          params(
            _rate_limits:
              Onlyfans::Models::SettingRetrieveResponse::Meta::RateLimits::OrHash
          ).void
        end
        attr_writer :_rate_limits

        sig do
          params(
            _cache:
              Onlyfans::Models::SettingRetrieveResponse::Meta::Cache::OrHash,
            _credits:
              Onlyfans::Models::SettingRetrieveResponse::Meta::Credits::OrHash,
            _rate_limits:
              Onlyfans::Models::SettingRetrieveResponse::Meta::RateLimits::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
        end

        sig do
          override.returns(
            {
              _cache: Onlyfans::Models::SettingRetrieveResponse::Meta::Cache,
              _credits:
                Onlyfans::Models::SettingRetrieveResponse::Meta::Credits,
              _rate_limits:
                Onlyfans::Models::SettingRetrieveResponse::Meta::RateLimits
            }
          )
        end
        def to_hash
        end

        class Cache < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::SettingRetrieveResponse::Meta::Cache,
                Onlyfans::Internal::AnyHash
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

        class Credits < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::SettingRetrieveResponse::Meta::Credits,
                Onlyfans::Internal::AnyHash
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

        class RateLimits < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::SettingRetrieveResponse::Meta::RateLimits,
                Onlyfans::Internal::AnyHash
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

      class Data < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Models::SettingRetrieveResponse::Data,
              Onlyfans::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :activity_hub_allowed

        sig { params(activity_hub_allowed: T::Boolean).void }
        attr_writer :activity_hub_allowed

        sig { returns(T.nilable(T::Array[T.anything])) }
        attr_reader :activity_hub_tokens

        sig { params(activity_hub_tokens: T::Array[T.anything]).void }
        attr_writer :activity_hub_tokens

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :app_otp

        sig { params(app_otp: T::Boolean).void }
        attr_writer :app_otp

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :avatar_header_converter_upload

        sig { params(avatar_header_converter_upload: T::Boolean).void }
        attr_writer :avatar_header_converter_upload

        sig { returns(T.nilable(T::Array[T.anything])) }
        attr_reader :blocked_countries

        sig { params(blocked_countries: T::Array[T.anything]).void }
        attr_writer :blocked_countries

        sig { returns(T.nilable(T::Array[T.anything])) }
        attr_reader :blocked_ips

        sig { params(blocked_ips: T::Array[T.anything]).void }
        attr_writer :blocked_ips

        sig { returns(T.nilable(T::Array[T.anything])) }
        attr_reader :blocked_states

        sig { params(blocked_states: T::Array[T.anything]).void }
        attr_writer :blocked_states

        sig { returns(T.nilable(Integer)) }
        attr_reader :bundle_max_price

        sig { params(bundle_max_price: Integer).void }
        attr_writer :bundle_max_price

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :can_accept_message_only_from_friends

        sig { params(can_accept_message_only_from_friends: T::Boolean).void }
        attr_writer :can_accept_message_only_from_friends

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :can_add_phone

        sig { params(can_add_phone: T::Boolean).void }
        attr_writer :can_add_phone

        sig do
          returns(
            T.nilable(
              Onlyfans::Models::SettingRetrieveResponse::Data::CanAddSubscriberByBundle
            )
          )
        end
        attr_reader :can_add_subscriber_by_bundle

        sig do
          params(
            can_add_subscriber_by_bundle:
              Onlyfans::Models::SettingRetrieveResponse::Data::CanAddSubscriberByBundle::OrHash
          ).void
        end
        attr_writer :can_add_subscriber_by_bundle

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :can_make_profile_links

        sig { params(can_make_profile_links: T::Boolean).void }
        attr_writer :can_make_profile_links

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :can_socials_connect

        sig { params(can_socials_connect: T::Boolean).void }
        attr_writer :can_socials_connect

        sig { returns(T.nilable(String)) }
        attr_accessor :change_email_step

        sig { returns(T.nilable(Integer)) }
        attr_reader :changelog_updates

        sig { params(changelog_updates: Integer).void }
        attr_writer :changelog_updates

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :comments_only_for_payers

        sig { params(comments_only_for_payers: T::Boolean).void }
        attr_writer :comments_only_for_payers

        sig { returns(T.nilable(String)) }
        attr_reader :confirm_email_sent_at

        sig { params(confirm_email_sent_at: String).void }
        attr_writer :confirm_email_sent_at

        sig { returns(T.nilable(String)) }
        attr_reader :co_streaming_request_from

        sig { params(co_streaming_request_from: String).void }
        attr_writer :co_streaming_request_from

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :creators_comments_only_for_friends

        sig { params(creators_comments_only_for_friends: T::Boolean).void }
        attr_writer :creators_comments_only_for_friends

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :disable_subscribes_offers

        sig { params(disable_subscribes_offers: T::Boolean).void }
        attr_writer :disable_subscribes_offers

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :face_otp

        sig { params(face_otp: T::Boolean).void }
        attr_writer :face_otp

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :force_face_otp

        sig { params(force_face_otp: T::Boolean).void }
        attr_writer :force_face_otp

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :has_paid_posts

        sig { params(has_paid_posts: T::Boolean).void }
        attr_writer :has_paid_posts

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :has_password

        sig { params(has_password: T::Boolean).void }
        attr_writer :has_password

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :hide_after_mass_messages

        sig { params(hide_after_mass_messages: T::Boolean).void }
        attr_writer :hide_after_mass_messages

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :important_subscription_notifications

        sig { params(important_subscription_notifications: T::Boolean).void }
        attr_writer :important_subscription_notifications

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_auto_follow_back

        sig { params(is_auto_follow_back: T::Boolean).void }
        attr_writer :is_auto_follow_back

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_co_streaming_allowed

        sig { params(is_co_streaming_allowed: T::Boolean).void }
        attr_writer :is_co_streaming_allowed

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_delete_initiated

        sig { params(is_delete_initiated: T::Boolean).void }
        attr_writer :is_delete_initiated

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_drm_enabled

        sig { params(is_drm_enabled: T::Boolean).void }
        attr_writer :is_drm_enabled

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_email_notifications_enabled

        sig { params(is_email_notifications_enabled: T::Boolean).void }
        attr_writer :is_email_notifications_enabled

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_monthly_newsletters

        sig { params(is_monthly_newsletters: T::Boolean).void }
        attr_writer :is_monthly_newsletters

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_old_login_redirect

        sig { params(is_old_login_redirect: T::Boolean).void }
        attr_writer :is_old_login_redirect

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_opensea_connected

        sig { params(is_opensea_connected: T::Boolean).void }
        attr_writer :is_opensea_connected

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_otp_app_connected

        sig { params(is_otp_app_connected: T::Boolean).void }
        attr_writer :is_otp_app_connected

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_private

        sig { params(is_private: T::Boolean).void }
        attr_writer :is_private

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_suggestions_opt_out

        sig { params(is_suggestions_opt_out: T::Boolean).void }
        attr_writer :is_suggestions_opt_out

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_telegram_connected

        sig { params(is_telegram_connected: T::Boolean).void }
        attr_writer :is_telegram_connected

        sig { returns(T.nilable(String)) }
        attr_accessor :last_subscription_expired_at

        sig { returns(T.nilable(String)) }
        attr_accessor :life_time_email_code

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :mute_tags_in_chats

        sig { params(mute_tags_in_chats: T::Boolean).void }
        attr_writer :mute_tags_in_chats

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :mute_tags_in_posts

        sig { params(mute_tags_in_posts: T::Boolean).void }
        attr_writer :mute_tags_in_posts

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :mute_tags_in_stories

        sig { params(mute_tags_in_stories: T::Boolean).void }
        attr_writer :mute_tags_in_stories

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :mute_tags_in_streams

        sig { params(mute_tags_in_streams: T::Boolean).void }
        attr_writer :mute_tags_in_streams

        sig { returns(T.nilable(String)) }
        attr_accessor :new_email

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :notify_on_all_mentions

        sig { params(notify_on_all_mentions: T::Boolean).void }
        attr_writer :notify_on_all_mentions

        sig { returns(T.nilable(String)) }
        attr_accessor :phone_last4

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :phone_otp

        sig { params(phone_otp: T::Boolean).void }
        attr_writer :phone_otp

        sig { returns(T.nilable(String)) }
        attr_accessor :recommender_reward

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :reply_on_subscribe

        sig { params(reply_on_subscribe: T::Boolean).void }
        attr_writer :reply_on_subscribe

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :send_awards_top1

        sig { params(send_awards_top1: T::Boolean).void }
        attr_writer :send_awards_top1

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :send_awards_top5

        sig { params(send_awards_top5: T::Boolean).void }
        attr_writer :send_awards_top5

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :should_receive_less_notifications

        sig { params(should_receive_less_notifications: T::Boolean).void }
        attr_writer :should_receive_less_notifications

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :show_friends_to_subscribers

        sig { params(show_friends_to_subscribers: T::Boolean).void }
        attr_writer :show_friends_to_subscribers

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :show_full_text_in_email_notify

        sig { params(show_full_text_in_email_notify: T::Boolean).void }
        attr_writer :show_full_text_in_email_notify

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :show_posts_tips

        sig { params(show_posts_tips: T::Boolean).void }
        attr_writer :show_posts_tips

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :show_subscribes_offers

        sig { params(show_subscribes_offers: T::Boolean).void }
        attr_writer :show_subscribes_offers

        sig { returns(T.nilable(T::Array[T.anything])) }
        attr_reader :socials_connects

        sig { params(socials_connects: T::Array[T.anything]).void }
        attr_writer :socials_connects

        sig { returns(T.nilable(String)) }
        attr_accessor :streaming_mux_key

        sig { returns(T.nilable(String)) }
        attr_accessor :streaming_mux_key_expired_at

        sig { returns(T.nilable(String)) }
        attr_reader :streaming_mux_server

        sig { params(streaming_mux_server: String).void }
        attr_writer :streaming_mux_server

        sig { returns(T.nilable(String)) }
        attr_reader :streaming_obs_key

        sig { params(streaming_obs_key: String).void }
        attr_writer :streaming_obs_key

        sig { returns(T.nilable(String)) }
        attr_reader :streaming_obs_server

        sig { params(streaming_obs_server: String).void }
        attr_writer :streaming_obs_server

        sig { returns(T.nilable(String)) }
        attr_reader :streaming_rtmp_key

        sig { params(streaming_rtmp_key: String).void }
        attr_writer :streaming_rtmp_key

        sig { returns(T.nilable(String)) }
        attr_reader :streaming_rtmp_server

        sig { params(streaming_rtmp_server: String).void }
        attr_writer :streaming_rtmp_server

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :strong_otp

        sig { params(strong_otp: T::Boolean).void }
        attr_writer :strong_otp

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :unfollow_auto_follow_back

        sig { params(unfollow_auto_follow_back: T::Boolean).void }
        attr_writer :unfollow_auto_follow_back

        sig do
          params(
            activity_hub_allowed: T::Boolean,
            activity_hub_tokens: T::Array[T.anything],
            app_otp: T::Boolean,
            avatar_header_converter_upload: T::Boolean,
            blocked_countries: T::Array[T.anything],
            blocked_ips: T::Array[T.anything],
            blocked_states: T::Array[T.anything],
            bundle_max_price: Integer,
            can_accept_message_only_from_friends: T::Boolean,
            can_add_phone: T::Boolean,
            can_add_subscriber_by_bundle:
              Onlyfans::Models::SettingRetrieveResponse::Data::CanAddSubscriberByBundle::OrHash,
            can_make_profile_links: T::Boolean,
            can_socials_connect: T::Boolean,
            change_email_step: T.nilable(String),
            changelog_updates: Integer,
            comments_only_for_payers: T::Boolean,
            confirm_email_sent_at: String,
            co_streaming_request_from: String,
            creators_comments_only_for_friends: T::Boolean,
            disable_subscribes_offers: T::Boolean,
            face_otp: T::Boolean,
            force_face_otp: T::Boolean,
            has_paid_posts: T::Boolean,
            has_password: T::Boolean,
            hide_after_mass_messages: T::Boolean,
            important_subscription_notifications: T::Boolean,
            is_auto_follow_back: T::Boolean,
            is_co_streaming_allowed: T::Boolean,
            is_delete_initiated: T::Boolean,
            is_drm_enabled: T::Boolean,
            is_email_notifications_enabled: T::Boolean,
            is_monthly_newsletters: T::Boolean,
            is_old_login_redirect: T::Boolean,
            is_opensea_connected: T::Boolean,
            is_otp_app_connected: T::Boolean,
            is_private: T::Boolean,
            is_suggestions_opt_out: T::Boolean,
            is_telegram_connected: T::Boolean,
            last_subscription_expired_at: T.nilable(String),
            life_time_email_code: T.nilable(String),
            mute_tags_in_chats: T::Boolean,
            mute_tags_in_posts: T::Boolean,
            mute_tags_in_stories: T::Boolean,
            mute_tags_in_streams: T::Boolean,
            new_email: T.nilable(String),
            notify_on_all_mentions: T::Boolean,
            phone_last4: T.nilable(String),
            phone_otp: T::Boolean,
            recommender_reward: T.nilable(String),
            reply_on_subscribe: T::Boolean,
            send_awards_top1: T::Boolean,
            send_awards_top5: T::Boolean,
            should_receive_less_notifications: T::Boolean,
            show_friends_to_subscribers: T::Boolean,
            show_full_text_in_email_notify: T::Boolean,
            show_posts_tips: T::Boolean,
            show_subscribes_offers: T::Boolean,
            socials_connects: T::Array[T.anything],
            streaming_mux_key: T.nilable(String),
            streaming_mux_key_expired_at: T.nilable(String),
            streaming_mux_server: String,
            streaming_obs_key: String,
            streaming_obs_server: String,
            streaming_rtmp_key: String,
            streaming_rtmp_server: String,
            strong_otp: T::Boolean,
            unfollow_auto_follow_back: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          activity_hub_allowed: nil,
          activity_hub_tokens: nil,
          app_otp: nil,
          avatar_header_converter_upload: nil,
          blocked_countries: nil,
          blocked_ips: nil,
          blocked_states: nil,
          bundle_max_price: nil,
          can_accept_message_only_from_friends: nil,
          can_add_phone: nil,
          can_add_subscriber_by_bundle: nil,
          can_make_profile_links: nil,
          can_socials_connect: nil,
          change_email_step: nil,
          changelog_updates: nil,
          comments_only_for_payers: nil,
          confirm_email_sent_at: nil,
          co_streaming_request_from: nil,
          creators_comments_only_for_friends: nil,
          disable_subscribes_offers: nil,
          face_otp: nil,
          force_face_otp: nil,
          has_paid_posts: nil,
          has_password: nil,
          hide_after_mass_messages: nil,
          important_subscription_notifications: nil,
          is_auto_follow_back: nil,
          is_co_streaming_allowed: nil,
          is_delete_initiated: nil,
          is_drm_enabled: nil,
          is_email_notifications_enabled: nil,
          is_monthly_newsletters: nil,
          is_old_login_redirect: nil,
          is_opensea_connected: nil,
          is_otp_app_connected: nil,
          is_private: nil,
          is_suggestions_opt_out: nil,
          is_telegram_connected: nil,
          last_subscription_expired_at: nil,
          life_time_email_code: nil,
          mute_tags_in_chats: nil,
          mute_tags_in_posts: nil,
          mute_tags_in_stories: nil,
          mute_tags_in_streams: nil,
          new_email: nil,
          notify_on_all_mentions: nil,
          phone_last4: nil,
          phone_otp: nil,
          recommender_reward: nil,
          reply_on_subscribe: nil,
          send_awards_top1: nil,
          send_awards_top5: nil,
          should_receive_less_notifications: nil,
          show_friends_to_subscribers: nil,
          show_full_text_in_email_notify: nil,
          show_posts_tips: nil,
          show_subscribes_offers: nil,
          socials_connects: nil,
          streaming_mux_key: nil,
          streaming_mux_key_expired_at: nil,
          streaming_mux_server: nil,
          streaming_obs_key: nil,
          streaming_obs_server: nil,
          streaming_rtmp_key: nil,
          streaming_rtmp_server: nil,
          strong_otp: nil,
          unfollow_auto_follow_back: nil
        )
        end

        sig do
          override.returns(
            {
              activity_hub_allowed: T::Boolean,
              activity_hub_tokens: T::Array[T.anything],
              app_otp: T::Boolean,
              avatar_header_converter_upload: T::Boolean,
              blocked_countries: T::Array[T.anything],
              blocked_ips: T::Array[T.anything],
              blocked_states: T::Array[T.anything],
              bundle_max_price: Integer,
              can_accept_message_only_from_friends: T::Boolean,
              can_add_phone: T::Boolean,
              can_add_subscriber_by_bundle:
                Onlyfans::Models::SettingRetrieveResponse::Data::CanAddSubscriberByBundle,
              can_make_profile_links: T::Boolean,
              can_socials_connect: T::Boolean,
              change_email_step: T.nilable(String),
              changelog_updates: Integer,
              comments_only_for_payers: T::Boolean,
              confirm_email_sent_at: String,
              co_streaming_request_from: String,
              creators_comments_only_for_friends: T::Boolean,
              disable_subscribes_offers: T::Boolean,
              face_otp: T::Boolean,
              force_face_otp: T::Boolean,
              has_paid_posts: T::Boolean,
              has_password: T::Boolean,
              hide_after_mass_messages: T::Boolean,
              important_subscription_notifications: T::Boolean,
              is_auto_follow_back: T::Boolean,
              is_co_streaming_allowed: T::Boolean,
              is_delete_initiated: T::Boolean,
              is_drm_enabled: T::Boolean,
              is_email_notifications_enabled: T::Boolean,
              is_monthly_newsletters: T::Boolean,
              is_old_login_redirect: T::Boolean,
              is_opensea_connected: T::Boolean,
              is_otp_app_connected: T::Boolean,
              is_private: T::Boolean,
              is_suggestions_opt_out: T::Boolean,
              is_telegram_connected: T::Boolean,
              last_subscription_expired_at: T.nilable(String),
              life_time_email_code: T.nilable(String),
              mute_tags_in_chats: T::Boolean,
              mute_tags_in_posts: T::Boolean,
              mute_tags_in_stories: T::Boolean,
              mute_tags_in_streams: T::Boolean,
              new_email: T.nilable(String),
              notify_on_all_mentions: T::Boolean,
              phone_last4: T.nilable(String),
              phone_otp: T::Boolean,
              recommender_reward: T.nilable(String),
              reply_on_subscribe: T::Boolean,
              send_awards_top1: T::Boolean,
              send_awards_top5: T::Boolean,
              should_receive_less_notifications: T::Boolean,
              show_friends_to_subscribers: T::Boolean,
              show_full_text_in_email_notify: T::Boolean,
              show_posts_tips: T::Boolean,
              show_subscribes_offers: T::Boolean,
              socials_connects: T::Array[T.anything],
              streaming_mux_key: T.nilable(String),
              streaming_mux_key_expired_at: T.nilable(String),
              streaming_mux_server: String,
              streaming_obs_key: String,
              streaming_obs_server: String,
              streaming_rtmp_key: String,
              streaming_rtmp_server: String,
              strong_otp: T::Boolean,
              unfollow_auto_follow_back: T::Boolean
            }
          )
        end
        def to_hash
        end

        class CanAddSubscriberByBundle < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::SettingRetrieveResponse::Data::CanAddSubscriberByBundle,
                Onlyfans::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::SettingRetrieveResponse::Data::CanAddSubscriberByBundle::Discounts
              )
            )
          end
          attr_reader :discounts

          sig do
            params(
              discounts:
                Onlyfans::Models::SettingRetrieveResponse::Data::CanAddSubscriberByBundle::Discounts::OrHash
            ).void
          end
          attr_writer :discounts

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::SettingRetrieveResponse::Data::CanAddSubscriberByBundle::Durations
              )
            )
          end
          attr_reader :durations

          sig do
            params(
              durations:
                Onlyfans::Models::SettingRetrieveResponse::Data::CanAddSubscriberByBundle::Durations::OrHash
            ).void
          end
          attr_writer :durations

          sig do
            params(
              discounts:
                Onlyfans::Models::SettingRetrieveResponse::Data::CanAddSubscriberByBundle::Discounts::OrHash,
              durations:
                Onlyfans::Models::SettingRetrieveResponse::Data::CanAddSubscriberByBundle::Durations::OrHash
            ).returns(T.attached_class)
          end
          def self.new(discounts: nil, durations: nil)
          end

          sig do
            override.returns(
              {
                discounts:
                  Onlyfans::Models::SettingRetrieveResponse::Data::CanAddSubscriberByBundle::Discounts,
                durations:
                  Onlyfans::Models::SettingRetrieveResponse::Data::CanAddSubscriberByBundle::Durations
              }
            )
          end
          def to_hash
          end

          class Discounts < Onlyfans::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Models::SettingRetrieveResponse::Data::CanAddSubscriberByBundle::Discounts,
                  Onlyfans::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :number_0

            sig { params(number_0: String).void }
            attr_writer :number_0

            sig { returns(T.nilable(String)) }
            attr_reader :number_10

            sig { params(number_10: String).void }
            attr_writer :number_10

            sig { returns(T.nilable(String)) }
            attr_reader :number_15

            sig { params(number_15: String).void }
            attr_writer :number_15

            sig { returns(T.nilable(String)) }
            attr_reader :number_20

            sig { params(number_20: String).void }
            attr_writer :number_20

            sig { returns(T.nilable(String)) }
            attr_reader :number_25

            sig { params(number_25: String).void }
            attr_writer :number_25

            sig { returns(T.nilable(String)) }
            attr_reader :number_30

            sig { params(number_30: String).void }
            attr_writer :number_30

            sig { returns(T.nilable(String)) }
            attr_reader :number_35

            sig { params(number_35: String).void }
            attr_writer :number_35

            sig { returns(T.nilable(String)) }
            attr_reader :number_40

            sig { params(number_40: String).void }
            attr_writer :number_40

            sig { returns(T.nilable(String)) }
            attr_reader :number_45

            sig { params(number_45: String).void }
            attr_writer :number_45

            sig { returns(T.nilable(String)) }
            attr_reader :number_5

            sig { params(number_5: String).void }
            attr_writer :number_5

            sig { returns(T.nilable(String)) }
            attr_reader :number_50

            sig { params(number_50: String).void }
            attr_writer :number_50

            sig do
              params(
                number_0: String,
                number_10: String,
                number_15: String,
                number_20: String,
                number_25: String,
                number_30: String,
                number_35: String,
                number_40: String,
                number_45: String,
                number_5: String,
                number_50: String
              ).returns(T.attached_class)
            end
            def self.new(
              number_0: nil,
              number_10: nil,
              number_15: nil,
              number_20: nil,
              number_25: nil,
              number_30: nil,
              number_35: nil,
              number_40: nil,
              number_45: nil,
              number_5: nil,
              number_50: nil
            )
            end

            sig do
              override.returns(
                {
                  number_0: String,
                  number_10: String,
                  number_15: String,
                  number_20: String,
                  number_25: String,
                  number_30: String,
                  number_35: String,
                  number_40: String,
                  number_45: String,
                  number_5: String,
                  number_50: String
                }
              )
            end
            def to_hash
            end
          end

          class Durations < Onlyfans::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Models::SettingRetrieveResponse::Data::CanAddSubscriberByBundle::Durations,
                  Onlyfans::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :number_12

            sig { params(number_12: String).void }
            attr_writer :number_12

            sig { returns(T.nilable(String)) }
            attr_reader :number_3

            sig { params(number_3: String).void }
            attr_writer :number_3

            sig { returns(T.nilable(String)) }
            attr_reader :number_6

            sig { params(number_6: String).void }
            attr_writer :number_6

            sig do
              params(
                number_12: String,
                number_3: String,
                number_6: String
              ).returns(T.attached_class)
            end
            def self.new(number_12: nil, number_3: nil, number_6: nil)
            end

            sig do
              override.returns(
                { number_12: String, number_3: String, number_6: String }
              )
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
