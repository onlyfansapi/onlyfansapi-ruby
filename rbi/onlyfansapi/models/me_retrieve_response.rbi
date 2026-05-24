# typed: strong

module Onlyfansapi
  module Models
    class MeRetrieveResponse < Onlyfansapi::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::Models::MeRetrieveResponse,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Onlyfansapi::Models::MeRetrieveResponse::Meta)) }
      attr_reader :_meta

      sig do
        params(
          _meta: Onlyfansapi::Models::MeRetrieveResponse::Meta::OrHash
        ).void
      end
      attr_writer :_meta

      sig { returns(T.nilable(Onlyfansapi::Models::MeRetrieveResponse::Data)) }
      attr_reader :data

      sig do
        params(data: Onlyfansapi::Models::MeRetrieveResponse::Data::OrHash).void
      end
      attr_writer :data

      sig do
        params(
          _meta: Onlyfansapi::Models::MeRetrieveResponse::Meta::OrHash,
          data: Onlyfansapi::Models::MeRetrieveResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(_meta: nil, data: nil)
      end

      sig do
        override.returns(
          {
            _meta: Onlyfansapi::Models::MeRetrieveResponse::Meta,
            data: Onlyfansapi::Models::MeRetrieveResponse::Data
          }
        )
      end
      def to_hash
      end

      class Meta < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::MeRetrieveResponse::Meta,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(Onlyfansapi::Models::MeRetrieveResponse::Meta::Cache)
          )
        end
        attr_reader :_cache

        sig do
          params(
            _cache: Onlyfansapi::Models::MeRetrieveResponse::Meta::Cache::OrHash
          ).void
        end
        attr_writer :_cache

        sig do
          returns(
            T.nilable(Onlyfansapi::Models::MeRetrieveResponse::Meta::Credits)
          )
        end
        attr_reader :_credits

        sig do
          params(
            _credits:
              Onlyfansapi::Models::MeRetrieveResponse::Meta::Credits::OrHash
          ).void
        end
        attr_writer :_credits

        sig do
          returns(
            T.nilable(Onlyfansapi::Models::MeRetrieveResponse::Meta::RateLimits)
          )
        end
        attr_reader :_rate_limits

        sig do
          params(
            _rate_limits:
              Onlyfansapi::Models::MeRetrieveResponse::Meta::RateLimits::OrHash
          ).void
        end
        attr_writer :_rate_limits

        sig do
          params(
            _cache:
              Onlyfansapi::Models::MeRetrieveResponse::Meta::Cache::OrHash,
            _credits:
              Onlyfansapi::Models::MeRetrieveResponse::Meta::Credits::OrHash,
            _rate_limits:
              Onlyfansapi::Models::MeRetrieveResponse::Meta::RateLimits::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
        end

        sig do
          override.returns(
            {
              _cache: Onlyfansapi::Models::MeRetrieveResponse::Meta::Cache,
              _credits: Onlyfansapi::Models::MeRetrieveResponse::Meta::Credits,
              _rate_limits:
                Onlyfansapi::Models::MeRetrieveResponse::Meta::RateLimits
            }
          )
        end
        def to_hash
        end

        class Cache < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::MeRetrieveResponse::Meta::Cache,
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
                Onlyfansapi::Models::MeRetrieveResponse::Meta::Credits,
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
                Onlyfansapi::Models::MeRetrieveResponse::Meta::RateLimits,
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
              Onlyfansapi::Models::MeRetrieveResponse::Data,
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

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :adv_block

        sig { params(adv_block: T::Array[String]).void }
        attr_writer :adv_block

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :age_verification_required

        sig { params(age_verification_required: T::Boolean).void }
        attr_writer :age_verification_required

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
              Onlyfansapi::Models::MeRetrieveResponse::Data::AvatarThumbs
            )
          )
        end
        attr_reader :avatar_thumbs

        sig do
          params(
            avatar_thumbs:
              Onlyfansapi::Models::MeRetrieveResponse::Data::AvatarThumbs::OrHash
          ).void
        end
        attr_writer :avatar_thumbs

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :can_add_card

        sig { params(can_add_card: T::Boolean).void }
        attr_writer :can_add_card

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :can_add_story

        sig { params(can_add_story: T::Boolean).void }
        attr_writer :can_add_story

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :can_add_subscriber

        sig { params(can_add_subscriber: T::Boolean).void }
        attr_writer :can_add_subscriber

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :can_alternative_wallet_top_up

        sig { params(can_alternative_wallet_top_up: T::Boolean).void }
        attr_writer :can_alternative_wallet_top_up

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :can_change_content_price

        sig { params(can_change_content_price: T::Boolean).void }
        attr_writer :can_change_content_price

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :can_chat

        sig { params(can_chat: T::Boolean).void }
        attr_writer :can_chat

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :can_comment_story

        sig { params(can_comment_story: T::Boolean).void }
        attr_writer :can_comment_story

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :can_connect_of_account

        sig { params(can_connect_of_account: T::Boolean).void }
        attr_writer :can_connect_of_account

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :can_create_fund_raising

        sig { params(can_create_fund_raising: T::Boolean).void }
        attr_writer :can_create_fund_raising

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :can_create_lists

        sig { params(can_create_lists: T::Boolean).void }
        attr_writer :can_create_lists

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
        attr_reader :can_make_expire_posts

        sig { params(can_make_expire_posts: T::Boolean).void }
        attr_writer :can_make_expire_posts

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :can_pay_internal

        sig { params(can_pay_internal: T::Boolean).void }
        attr_writer :can_pay_internal

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :can_pin_post

        sig { params(can_pin_post: T::Boolean).void }
        attr_writer :can_pin_post

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :can_receive_chat_message

        sig { params(can_receive_chat_message: T::Boolean).void }
        attr_writer :can_receive_chat_message

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :can_receive_manual_payout

        sig { params(can_receive_manual_payout: T::Boolean).void }
        attr_writer :can_receive_manual_payout

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :can_receive_stripe_payout

        sig { params(can_receive_stripe_payout: T::Boolean).void }
        attr_writer :can_receive_stripe_payout

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :can_send_chat_to_all

        sig { params(can_send_chat_to_all: T::Boolean).void }
        attr_writer :can_send_chat_to_all

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :can_streaming

        sig { params(can_streaming: T::Boolean).void }
        attr_writer :can_streaming

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :can_trial_send

        sig { params(can_trial_send: T::Boolean).void }
        attr_writer :can_trial_send

        sig { returns(T.nilable(Integer)) }
        attr_reader :chat_messages_count

        sig { params(chat_messages_count: Integer).void }
        attr_writer :chat_messages_count

        sig { returns(T.nilable(T::Array[T.anything])) }
        attr_reader :connected_of_accounts

        sig { params(connected_of_accounts: T::Array[T.anything]).void }
        attr_writer :connected_of_accounts

        sig { returns(T.nilable(Integer)) }
        attr_reader :count_pinned_chat

        sig { params(count_pinned_chat: Integer).void }
        attr_writer :count_pinned_chat

        sig { returns(T.nilable(Integer)) }
        attr_reader :count_priority_chat

        sig { params(count_priority_chat: Integer).void }
        attr_writer :count_priority_chat

        sig { returns(T.nilable(Integer)) }
        attr_reader :credit_balance

        sig { params(credit_balance: Integer).void }
        attr_writer :credit_balance

        sig { returns(T.nilable(Integer)) }
        attr_reader :credits_max

        sig { params(credits_max: Integer).void }
        attr_writer :credits_max

        sig { returns(T.nilable(Integer)) }
        attr_reader :credits_min

        sig { params(credits_min: Integer).void }
        attr_writer :credits_min

        sig { returns(T.nilable(String)) }
        attr_reader :csrf

        sig { params(csrf: String).void }
        attr_writer :csrf

        sig { returns(T.nilable(String)) }
        attr_reader :email

        sig { params(email: String).void }
        attr_writer :email

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :enabled_image_editor_for_chat

        sig { params(enabled_image_editor_for_chat: T::Boolean).void }
        attr_writer :enabled_image_editor_for_chat

        sig { returns(T.nilable(T::Array[T.anything])) }
        attr_reader :face_id_regular

        sig { params(face_id_regular: T::Array[T.anything]).void }
        attr_writer :face_id_regular

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
        attr_reader :has_friends

        sig { params(has_friends: T::Boolean).void }
        attr_writer :has_friends

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :has_internal_payments

        sig { params(has_internal_payments: T::Boolean).void }
        attr_writer :has_internal_payments

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :has_labels

        sig { params(has_labels: T::Boolean).void }
        attr_writer :has_labels

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :has_links

        sig { params(has_links: T::Boolean).void }
        attr_writer :has_links

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :has_new_alerts

        sig { params(has_new_alerts: T::Boolean).void }
        attr_writer :has_new_alerts

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :has_new_changed_price_subscriptions

        sig { params(has_new_changed_price_subscriptions: T::Boolean).void }
        attr_writer :has_new_changed_price_subscriptions

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :has_new_hints

        sig { params(has_new_hints: T::Boolean).void }
        attr_writer :has_new_hints

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::MeRetrieveResponse::Data::HasNewTicketReplies
            )
          )
        end
        attr_reader :has_new_ticket_replies

        sig do
          params(
            has_new_ticket_replies:
              Onlyfansapi::Models::MeRetrieveResponse::Data::HasNewTicketReplies::OrHash
          ).void
        end
        attr_writer :has_new_ticket_replies

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :has_not_viewed_story

        sig { params(has_not_viewed_story: T::Boolean).void }
        attr_writer :has_not_viewed_story

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :has_pinned_posts

        sig { params(has_pinned_posts: T::Boolean).void }
        attr_writer :has_pinned_posts

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :has_purchased_posts

        sig { params(has_purchased_posts: T::Boolean).void }
        attr_writer :has_purchased_posts

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :has_scenario

        sig { params(has_scenario: T::Boolean).void }
        attr_writer :has_scenario

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

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :has_stripe

        sig { params(has_stripe: T::Boolean).void }
        attr_writer :has_stripe

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :has_system_notifications

        sig { params(has_system_notifications: T::Boolean).void }
        attr_writer :has_system_notifications

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :has_tags

        sig { params(has_tags: T::Boolean).void }
        attr_writer :has_tags

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :has_watermark_photo

        sig { params(has_watermark_photo: T::Boolean).void }
        attr_writer :has_watermark_photo

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :has_watermark_video

        sig { params(has_watermark_video: T::Boolean).void }
        attr_writer :has_watermark_video

        sig { returns(T.nilable(String)) }
        attr_reader :header

        sig { params(header: String).void }
        attr_writer :header

        sig do
          returns(
            T.nilable(Onlyfansapi::Models::MeRetrieveResponse::Data::HeaderSize)
          )
        end
        attr_reader :header_size

        sig do
          params(
            header_size:
              Onlyfansapi::Models::MeRetrieveResponse::Data::HeaderSize::OrHash
          ).void
        end
        attr_writer :header_size

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::MeRetrieveResponse::Data::HeaderThumbs
            )
          )
        end
        attr_reader :header_thumbs

        sig do
          params(
            header_thumbs:
              Onlyfansapi::Models::MeRetrieveResponse::Data::HeaderThumbs::OrHash
          ).void
        end
        attr_writer :header_thumbs

        sig { returns(T.nilable(String)) }
        attr_reader :ip

        sig { params(ip: String).void }
        attr_writer :ip

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_adult_content

        sig { params(is_adult_content: T::Boolean).void }
        attr_writer :is_adult_content

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_age_verified

        sig { params(is_age_verified: T::Boolean).void }
        attr_writer :is_age_verified

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_allow_tweets

        sig { params(is_allow_tweets: T::Boolean).void }
        attr_writer :is_allow_tweets

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_auth

        sig { params(is_auth: T::Boolean).void }
        attr_writer :is_auth

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_country_vat_number_collect

        sig { params(is_country_vat_number_collect: T::Boolean).void }
        attr_writer :is_country_vat_number_collect

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_country_vat_refundable

        sig { params(is_country_vat_refundable: T::Boolean).void }
        attr_writer :is_country_vat_refundable

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_country_with_vat

        sig { params(is_country_with_vat: T::Boolean).void }
        attr_writer :is_country_with_vat

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_credits_enabled

        sig { params(is_credits_enabled: T::Boolean).void }
        attr_writer :is_credits_enabled

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_delete_initiated

        sig { params(is_delete_initiated: T::Boolean).void }
        attr_writer :is_delete_initiated

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_email_checked

        sig { params(is_email_checked: T::Boolean).void }
        attr_writer :is_email_checked

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_email_required

        sig { params(is_email_required: T::Boolean).void }
        attr_writer :is_email_required

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_legal_approved_allowed

        sig { params(is_legal_approved_allowed: T::Boolean).void }
        attr_writer :is_legal_approved_allowed

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_make_payment

        sig { params(is_make_payment: T::Boolean).void }
        attr_writer :is_make_payment

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_markdown_disabled_for_about

        sig { params(is_markdown_disabled_for_about: T::Boolean).void }
        attr_writer :is_markdown_disabled_for_about

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_need_confirm_payout

        sig { params(is_need_confirm_payout: T::Boolean).void }
        attr_writer :is_need_confirm_payout

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_otp_enabled

        sig { params(is_otp_enabled: T::Boolean).void }
        attr_writer :is_otp_enabled

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_payment_card_connected

        sig { params(is_payment_card_connected: T::Boolean).void }
        attr_writer :is_payment_card_connected

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_paywall_passed

        sig { params(is_paywall_passed: T::Boolean).void }
        attr_writer :is_paywall_passed

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_performer

        sig { params(is_performer: T::Boolean).void }
        attr_writer :is_performer

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_private_restriction

        sig { params(is_private_restriction: T::Boolean).void }
        attr_writer :is_private_restriction

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_real_card_connected

        sig { params(is_real_card_connected: T::Boolean).void }
        attr_writer :is_real_card_connected

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_real_performer

        sig { params(is_real_performer: T::Boolean).void }
        attr_writer :is_real_performer

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_referrer_allowed

        sig { params(is_referrer_allowed: T::Boolean).void }
        attr_writer :is_referrer_allowed

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_scheduled_streams_allowed

        sig { params(is_scheduled_streams_allowed: T::Boolean).void }
        attr_writer :is_scheduled_streams_allowed

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_spotify_connected

        sig { params(is_spotify_connected: T::Boolean).void }
        attr_writer :is_spotify_connected

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_spring_connected

        sig { params(is_spring_connected: T::Boolean).void }
        attr_writer :is_spring_connected

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_stripe_exist

        sig { params(is_stripe_exist: T::Boolean).void }
        attr_writer :is_stripe_exist

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_twitter_connected

        sig { params(is_twitter_connected: T::Boolean).void }
        attr_writer :is_twitter_connected

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_vat_required

        sig { params(is_vat_required: T::Boolean).void }
        attr_writer :is_vat_required

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_verified

        sig { params(is_verified: T::Boolean).void }
        attr_writer :is_verified

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_verified_reason

        sig { params(is_verified_reason: T::Boolean).void }
        attr_writer :is_verified_reason

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_visible_online

        sig { params(is_visible_online: T::Boolean).void }
        attr_writer :is_visible_online

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_wallet_autorecharge

        sig { params(is_wallet_autorecharge: T::Boolean).void }
        attr_writer :is_wallet_autorecharge

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_want_comments

        sig { params(is_want_comments: T::Boolean).void }
        attr_writer :is_want_comments

        sig { returns(T.nilable(String)) }
        attr_reader :iv_country

        sig { params(iv_country: String).void }
        attr_writer :iv_country

        sig { returns(T.nilable(String)) }
        attr_accessor :iv_fail_reason

        sig { returns(T.nilable(String)) }
        attr_reader :iv_flow

        sig { params(iv_flow: String).void }
        attr_writer :iv_flow

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :iv_hide_for_performers

        sig { params(iv_hide_for_performers: T::Boolean).void }
        attr_writer :iv_hide_for_performers

        sig { returns(T.nilable(String)) }
        attr_reader :iv_status

        sig { params(iv_status: String).void }
        attr_writer :iv_status

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
        attr_reader :max_fund_raising_target

        sig { params(max_fund_raising_target: Integer).void }
        attr_writer :max_fund_raising_target

        sig { returns(T.nilable(Integer)) }
        attr_reader :max_pinned_posts_count

        sig { params(max_pinned_posts_count: Integer).void }
        attr_writer :max_pinned_posts_count

        sig { returns(T.nilable(Integer)) }
        attr_reader :medias_count

        sig { params(medias_count: Integer).void }
        attr_writer :medias_count

        sig { returns(T.nilable(Integer)) }
        attr_reader :message_max_price

        sig { params(message_max_price: Integer).void }
        attr_writer :message_max_price

        sig { returns(T.nilable(Integer)) }
        attr_reader :message_min_price

        sig { params(message_min_price: Integer).void }
        attr_writer :message_min_price

        sig { returns(T.nilable(Integer)) }
        attr_reader :min_fund_raising_target

        sig { params(min_fund_raising_target: Integer).void }
        attr_writer :min_fund_raising_target

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :need_iv_approve

        sig { params(need_iv_approve: T::Boolean).void }
        attr_writer :need_iv_approve

        sig { returns(T.nilable(Integer)) }
        attr_reader :new_tags_count

        sig { params(new_tags_count: Integer).void }
        attr_writer :new_tags_count

        sig { returns(T.nilable(Integer)) }
        attr_reader :notifications_count

        sig { params(notifications_count: Integer).void }
        attr_writer :notifications_count

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :paid_feed

        sig { params(paid_feed: T::Boolean).void }
        attr_writer :paid_feed

        sig { returns(T.nilable(String)) }
        attr_reader :payout_legal_approve_state

        sig { params(payout_legal_approve_state: String).void }
        attr_writer :payout_legal_approve_state

        sig { returns(T.nilable(String)) }
        attr_reader :payout_type

        sig { params(payout_type: String).void }
        attr_writer :payout_type

        sig { returns(T.nilable(Integer)) }
        attr_reader :photos_count

        sig { params(photos_count: Integer).void }
        attr_writer :photos_count

        sig { returns(T.nilable(Integer)) }
        attr_reader :pinned_posts_count

        sig { params(pinned_posts_count: Integer).void }
        attr_writer :pinned_posts_count

        sig { returns(T.nilable(Integer)) }
        attr_reader :post_max_price

        sig { params(post_max_price: Integer).void }
        attr_writer :post_max_price

        sig { returns(T.nilable(Integer)) }
        attr_reader :post_min_price

        sig { params(post_min_price: Integer).void }
        attr_writer :post_min_price

        sig { returns(T.nilable(Integer)) }
        attr_reader :posts_count

        sig { params(posts_count: Integer).void }
        attr_writer :posts_count

        sig { returns(T.nilable(Integer)) }
        attr_reader :private_archived_posts_count

        sig { params(private_archived_posts_count: Integer).void }
        attr_writer :private_archived_posts_count

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

        sig { returns(T.nilable(String)) }
        attr_accessor :subscribed_by_data

        sig { returns(T.nilable(String)) }
        attr_accessor :subscribed_on_data

        sig { returns(T.nilable(Integer)) }
        attr_reader :subscribe_max_price

        sig { params(subscribe_max_price: Integer).void }
        attr_writer :subscribe_max_price

        sig { returns(T.nilable(Float)) }
        attr_reader :subscribe_min_price

        sig { params(subscribe_min_price: Float).void }
        attr_writer :subscribe_min_price

        sig { returns(T.nilable(Integer)) }
        attr_reader :subscribe_price

        sig { params(subscribe_price: Integer).void }
        attr_writer :subscribe_price

        sig { returns(T.nilable(Integer)) }
        attr_reader :subscribers_count

        sig { params(subscribers_count: Integer).void }
        attr_writer :subscribers_count

        sig { returns(T.nilable(Integer)) }
        attr_reader :subscribes_count

        sig { params(subscribes_count: Integer).void }
        attr_writer :subscribes_count

        sig { returns(T.nilable(T::Array[T.anything])) }
        attr_reader :subscription_bundles

        sig { params(subscription_bundles: T::Array[T.anything]).void }
        attr_writer :subscription_bundles

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

        sig { returns(T.nilable(Integer)) }
        attr_reader :trial_max_days

        sig { params(trial_max_days: Integer).void }
        attr_writer :trial_max_days

        sig { returns(T.nilable(Integer)) }
        attr_reader :trial_max_expires_days

        sig { params(trial_max_expires_days: Integer).void }
        attr_writer :trial_max_expires_days

        sig { returns(T.nilable(String)) }
        attr_reader :twitter_username

        sig { params(twitter_username: String).void }
        attr_writer :twitter_username

        sig { returns(T.nilable(Integer)) }
        attr_reader :unread_tips

        sig { params(unread_tips: Integer).void }
        attr_writer :unread_tips

        sig do
          returns(
            T.nilable(Onlyfansapi::Models::MeRetrieveResponse::Data::Upload)
          )
        end
        attr_reader :upload

        sig do
          params(
            upload:
              Onlyfansapi::Models::MeRetrieveResponse::Data::Upload::OrHash
          ).void
        end
        attr_writer :upload

        sig { returns(T.nilable(String)) }
        attr_reader :username

        sig { params(username: String).void }
        attr_writer :username

        sig { returns(T.nilable(String)) }
        attr_reader :vat_number_name

        sig { params(vat_number_name: String).void }
        attr_writer :vat_number_name

        sig { returns(T.nilable(Integer)) }
        attr_reader :videos_count

        sig { params(videos_count: Integer).void }
        attr_writer :videos_count

        sig { returns(T.nilable(String)) }
        attr_reader :view

        sig { params(view: String).void }
        attr_writer :view

        sig { returns(T.nilable(Integer)) }
        attr_reader :wallet_autorecharge_amount

        sig { params(wallet_autorecharge_amount: Integer).void }
        attr_writer :wallet_autorecharge_amount

        sig { returns(T.nilable(Integer)) }
        attr_reader :wallet_autorecharge_min

        sig { params(wallet_autorecharge_min: Integer).void }
        attr_writer :wallet_autorecharge_min

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :wallet_first_rebills

        sig { params(wallet_first_rebills: T::Boolean).void }
        attr_writer :wallet_first_rebills

        sig { returns(T.nilable(String)) }
        attr_reader :watermark_position

        sig { params(watermark_position: String).void }
        attr_writer :watermark_position

        sig { returns(T.nilable(String)) }
        attr_reader :watermark_text

        sig { params(watermark_text: String).void }
        attr_writer :watermark_text

        sig { returns(T.nilable(String)) }
        attr_reader :website

        sig { params(website: String).void }
        attr_writer :website

        sig { returns(T.nilable(String)) }
        attr_accessor :wishlist

        sig { returns(T.nilable(String)) }
        attr_reader :ws_auth_token

        sig { params(ws_auth_token: String).void }
        attr_writer :ws_auth_token

        sig { returns(T.nilable(String)) }
        attr_reader :ws_url

        sig { params(ws_url: String).void }
        attr_writer :ws_url

        sig do
          params(
            id: Integer,
            about: String,
            adv_block: T::Array[String],
            age_verification_required: T::Boolean,
            archived_posts_count: Integer,
            audios_count: Integer,
            avatar: String,
            avatar_header_converter_upload: T::Boolean,
            avatar_thumbs:
              Onlyfansapi::Models::MeRetrieveResponse::Data::AvatarThumbs::OrHash,
            can_add_card: T::Boolean,
            can_add_story: T::Boolean,
            can_add_subscriber: T::Boolean,
            can_alternative_wallet_top_up: T::Boolean,
            can_change_content_price: T::Boolean,
            can_chat: T::Boolean,
            can_comment_story: T::Boolean,
            can_connect_of_account: T::Boolean,
            can_create_fund_raising: T::Boolean,
            can_create_lists: T::Boolean,
            can_create_promotion: T::Boolean,
            can_create_trial: T::Boolean,
            can_earn: T::Boolean,
            can_look_story: T::Boolean,
            can_make_expire_posts: T::Boolean,
            can_pay_internal: T::Boolean,
            can_pin_post: T::Boolean,
            can_receive_chat_message: T::Boolean,
            can_receive_manual_payout: T::Boolean,
            can_receive_stripe_payout: T::Boolean,
            can_send_chat_to_all: T::Boolean,
            can_streaming: T::Boolean,
            can_trial_send: T::Boolean,
            chat_messages_count: Integer,
            connected_of_accounts: T::Array[T.anything],
            count_pinned_chat: Integer,
            count_priority_chat: Integer,
            credit_balance: Integer,
            credits_max: Integer,
            credits_min: Integer,
            csrf: String,
            email: String,
            enabled_image_editor_for_chat: T::Boolean,
            face_id_regular: T::Array[T.anything],
            favorited_count: Integer,
            favorites_count: Integer,
            first_published_post_date: String,
            has_friends: T::Boolean,
            has_internal_payments: T::Boolean,
            has_labels: T::Boolean,
            has_links: T::Boolean,
            has_new_alerts: T::Boolean,
            has_new_changed_price_subscriptions: T::Boolean,
            has_new_hints: T::Boolean,
            has_new_ticket_replies:
              Onlyfansapi::Models::MeRetrieveResponse::Data::HasNewTicketReplies::OrHash,
            has_not_viewed_story: T::Boolean,
            has_pinned_posts: T::Boolean,
            has_purchased_posts: T::Boolean,
            has_scenario: T::Boolean,
            has_scheduled_stream: T::Boolean,
            has_stories: T::Boolean,
            has_stream: T::Boolean,
            has_stripe: T::Boolean,
            has_system_notifications: T::Boolean,
            has_tags: T::Boolean,
            has_watermark_photo: T::Boolean,
            has_watermark_video: T::Boolean,
            header: String,
            header_size:
              Onlyfansapi::Models::MeRetrieveResponse::Data::HeaderSize::OrHash,
            header_thumbs:
              Onlyfansapi::Models::MeRetrieveResponse::Data::HeaderThumbs::OrHash,
            ip: String,
            is_adult_content: T::Boolean,
            is_age_verified: T::Boolean,
            is_allow_tweets: T::Boolean,
            is_auth: T::Boolean,
            is_country_vat_number_collect: T::Boolean,
            is_country_vat_refundable: T::Boolean,
            is_country_with_vat: T::Boolean,
            is_credits_enabled: T::Boolean,
            is_delete_initiated: T::Boolean,
            is_email_checked: T::Boolean,
            is_email_required: T::Boolean,
            is_legal_approved_allowed: T::Boolean,
            is_make_payment: T::Boolean,
            is_markdown_disabled_for_about: T::Boolean,
            is_need_confirm_payout: T::Boolean,
            is_otp_enabled: T::Boolean,
            is_payment_card_connected: T::Boolean,
            is_paywall_passed: T::Boolean,
            is_performer: T::Boolean,
            is_private_restriction: T::Boolean,
            is_real_card_connected: T::Boolean,
            is_real_performer: T::Boolean,
            is_referrer_allowed: T::Boolean,
            is_scheduled_streams_allowed: T::Boolean,
            is_spotify_connected: T::Boolean,
            is_spring_connected: T::Boolean,
            is_stripe_exist: T::Boolean,
            is_twitter_connected: T::Boolean,
            is_vat_required: T::Boolean,
            is_verified: T::Boolean,
            is_verified_reason: T::Boolean,
            is_visible_online: T::Boolean,
            is_wallet_autorecharge: T::Boolean,
            is_want_comments: T::Boolean,
            iv_country: String,
            iv_fail_reason: T.nilable(String),
            iv_flow: String,
            iv_hide_for_performers: T::Boolean,
            iv_status: String,
            join_date: String,
            last_seen: String,
            location: T.nilable(String),
            max_fund_raising_target: Integer,
            max_pinned_posts_count: Integer,
            medias_count: Integer,
            message_max_price: Integer,
            message_min_price: Integer,
            min_fund_raising_target: Integer,
            name: String,
            need_iv_approve: T::Boolean,
            new_tags_count: Integer,
            notifications_count: Integer,
            paid_feed: T::Boolean,
            payout_legal_approve_state: String,
            payout_type: String,
            photos_count: Integer,
            pinned_posts_count: Integer,
            post_max_price: Integer,
            post_min_price: Integer,
            posts_count: Integer,
            private_archived_posts_count: Integer,
            show_media_count: T::Boolean,
            show_posts_in_feed: T::Boolean,
            show_subscribers_count: T::Boolean,
            subscribed_by_data: T.nilable(String),
            subscribed_on_data: T.nilable(String),
            subscribe_max_price: Integer,
            subscribe_min_price: Float,
            subscribe_price: Integer,
            subscribers_count: Integer,
            subscribes_count: Integer,
            subscription_bundles: T::Array[T.anything],
            tips_enabled: T::Boolean,
            tips_max: Integer,
            tips_min: Integer,
            tips_min_internal: Integer,
            tips_text_enabled: T::Boolean,
            trial_max_days: Integer,
            trial_max_expires_days: Integer,
            twitter_username: String,
            unread_tips: Integer,
            upload:
              Onlyfansapi::Models::MeRetrieveResponse::Data::Upload::OrHash,
            username: String,
            vat_number_name: String,
            videos_count: Integer,
            view: String,
            wallet_autorecharge_amount: Integer,
            wallet_autorecharge_min: Integer,
            wallet_first_rebills: T::Boolean,
            watermark_position: String,
            watermark_text: String,
            website: String,
            wishlist: T.nilable(String),
            ws_auth_token: String,
            ws_url: String
          ).returns(T.attached_class)
        end
        def self.new(
          id: nil,
          about: nil,
          adv_block: nil,
          age_verification_required: nil,
          archived_posts_count: nil,
          audios_count: nil,
          avatar: nil,
          avatar_header_converter_upload: nil,
          avatar_thumbs: nil,
          can_add_card: nil,
          can_add_story: nil,
          can_add_subscriber: nil,
          can_alternative_wallet_top_up: nil,
          can_change_content_price: nil,
          can_chat: nil,
          can_comment_story: nil,
          can_connect_of_account: nil,
          can_create_fund_raising: nil,
          can_create_lists: nil,
          can_create_promotion: nil,
          can_create_trial: nil,
          can_earn: nil,
          can_look_story: nil,
          can_make_expire_posts: nil,
          can_pay_internal: nil,
          can_pin_post: nil,
          can_receive_chat_message: nil,
          can_receive_manual_payout: nil,
          can_receive_stripe_payout: nil,
          can_send_chat_to_all: nil,
          can_streaming: nil,
          can_trial_send: nil,
          chat_messages_count: nil,
          connected_of_accounts: nil,
          count_pinned_chat: nil,
          count_priority_chat: nil,
          credit_balance: nil,
          credits_max: nil,
          credits_min: nil,
          csrf: nil,
          email: nil,
          enabled_image_editor_for_chat: nil,
          face_id_regular: nil,
          favorited_count: nil,
          favorites_count: nil,
          first_published_post_date: nil,
          has_friends: nil,
          has_internal_payments: nil,
          has_labels: nil,
          has_links: nil,
          has_new_alerts: nil,
          has_new_changed_price_subscriptions: nil,
          has_new_hints: nil,
          has_new_ticket_replies: nil,
          has_not_viewed_story: nil,
          has_pinned_posts: nil,
          has_purchased_posts: nil,
          has_scenario: nil,
          has_scheduled_stream: nil,
          has_stories: nil,
          has_stream: nil,
          has_stripe: nil,
          has_system_notifications: nil,
          has_tags: nil,
          has_watermark_photo: nil,
          has_watermark_video: nil,
          header: nil,
          header_size: nil,
          header_thumbs: nil,
          ip: nil,
          is_adult_content: nil,
          is_age_verified: nil,
          is_allow_tweets: nil,
          is_auth: nil,
          is_country_vat_number_collect: nil,
          is_country_vat_refundable: nil,
          is_country_with_vat: nil,
          is_credits_enabled: nil,
          is_delete_initiated: nil,
          is_email_checked: nil,
          is_email_required: nil,
          is_legal_approved_allowed: nil,
          is_make_payment: nil,
          is_markdown_disabled_for_about: nil,
          is_need_confirm_payout: nil,
          is_otp_enabled: nil,
          is_payment_card_connected: nil,
          is_paywall_passed: nil,
          is_performer: nil,
          is_private_restriction: nil,
          is_real_card_connected: nil,
          is_real_performer: nil,
          is_referrer_allowed: nil,
          is_scheduled_streams_allowed: nil,
          is_spotify_connected: nil,
          is_spring_connected: nil,
          is_stripe_exist: nil,
          is_twitter_connected: nil,
          is_vat_required: nil,
          is_verified: nil,
          is_verified_reason: nil,
          is_visible_online: nil,
          is_wallet_autorecharge: nil,
          is_want_comments: nil,
          iv_country: nil,
          iv_fail_reason: nil,
          iv_flow: nil,
          iv_hide_for_performers: nil,
          iv_status: nil,
          join_date: nil,
          last_seen: nil,
          location: nil,
          max_fund_raising_target: nil,
          max_pinned_posts_count: nil,
          medias_count: nil,
          message_max_price: nil,
          message_min_price: nil,
          min_fund_raising_target: nil,
          name: nil,
          need_iv_approve: nil,
          new_tags_count: nil,
          notifications_count: nil,
          paid_feed: nil,
          payout_legal_approve_state: nil,
          payout_type: nil,
          photos_count: nil,
          pinned_posts_count: nil,
          post_max_price: nil,
          post_min_price: nil,
          posts_count: nil,
          private_archived_posts_count: nil,
          show_media_count: nil,
          show_posts_in_feed: nil,
          show_subscribers_count: nil,
          subscribed_by_data: nil,
          subscribed_on_data: nil,
          subscribe_max_price: nil,
          subscribe_min_price: nil,
          subscribe_price: nil,
          subscribers_count: nil,
          subscribes_count: nil,
          subscription_bundles: nil,
          tips_enabled: nil,
          tips_max: nil,
          tips_min: nil,
          tips_min_internal: nil,
          tips_text_enabled: nil,
          trial_max_days: nil,
          trial_max_expires_days: nil,
          twitter_username: nil,
          unread_tips: nil,
          upload: nil,
          username: nil,
          vat_number_name: nil,
          videos_count: nil,
          view: nil,
          wallet_autorecharge_amount: nil,
          wallet_autorecharge_min: nil,
          wallet_first_rebills: nil,
          watermark_position: nil,
          watermark_text: nil,
          website: nil,
          wishlist: nil,
          ws_auth_token: nil,
          ws_url: nil
        )
        end

        sig do
          override.returns(
            {
              id: Integer,
              about: String,
              adv_block: T::Array[String],
              age_verification_required: T::Boolean,
              archived_posts_count: Integer,
              audios_count: Integer,
              avatar: String,
              avatar_header_converter_upload: T::Boolean,
              avatar_thumbs:
                Onlyfansapi::Models::MeRetrieveResponse::Data::AvatarThumbs,
              can_add_card: T::Boolean,
              can_add_story: T::Boolean,
              can_add_subscriber: T::Boolean,
              can_alternative_wallet_top_up: T::Boolean,
              can_change_content_price: T::Boolean,
              can_chat: T::Boolean,
              can_comment_story: T::Boolean,
              can_connect_of_account: T::Boolean,
              can_create_fund_raising: T::Boolean,
              can_create_lists: T::Boolean,
              can_create_promotion: T::Boolean,
              can_create_trial: T::Boolean,
              can_earn: T::Boolean,
              can_look_story: T::Boolean,
              can_make_expire_posts: T::Boolean,
              can_pay_internal: T::Boolean,
              can_pin_post: T::Boolean,
              can_receive_chat_message: T::Boolean,
              can_receive_manual_payout: T::Boolean,
              can_receive_stripe_payout: T::Boolean,
              can_send_chat_to_all: T::Boolean,
              can_streaming: T::Boolean,
              can_trial_send: T::Boolean,
              chat_messages_count: Integer,
              connected_of_accounts: T::Array[T.anything],
              count_pinned_chat: Integer,
              count_priority_chat: Integer,
              credit_balance: Integer,
              credits_max: Integer,
              credits_min: Integer,
              csrf: String,
              email: String,
              enabled_image_editor_for_chat: T::Boolean,
              face_id_regular: T::Array[T.anything],
              favorited_count: Integer,
              favorites_count: Integer,
              first_published_post_date: String,
              has_friends: T::Boolean,
              has_internal_payments: T::Boolean,
              has_labels: T::Boolean,
              has_links: T::Boolean,
              has_new_alerts: T::Boolean,
              has_new_changed_price_subscriptions: T::Boolean,
              has_new_hints: T::Boolean,
              has_new_ticket_replies:
                Onlyfansapi::Models::MeRetrieveResponse::Data::HasNewTicketReplies,
              has_not_viewed_story: T::Boolean,
              has_pinned_posts: T::Boolean,
              has_purchased_posts: T::Boolean,
              has_scenario: T::Boolean,
              has_scheduled_stream: T::Boolean,
              has_stories: T::Boolean,
              has_stream: T::Boolean,
              has_stripe: T::Boolean,
              has_system_notifications: T::Boolean,
              has_tags: T::Boolean,
              has_watermark_photo: T::Boolean,
              has_watermark_video: T::Boolean,
              header: String,
              header_size:
                Onlyfansapi::Models::MeRetrieveResponse::Data::HeaderSize,
              header_thumbs:
                Onlyfansapi::Models::MeRetrieveResponse::Data::HeaderThumbs,
              ip: String,
              is_adult_content: T::Boolean,
              is_age_verified: T::Boolean,
              is_allow_tweets: T::Boolean,
              is_auth: T::Boolean,
              is_country_vat_number_collect: T::Boolean,
              is_country_vat_refundable: T::Boolean,
              is_country_with_vat: T::Boolean,
              is_credits_enabled: T::Boolean,
              is_delete_initiated: T::Boolean,
              is_email_checked: T::Boolean,
              is_email_required: T::Boolean,
              is_legal_approved_allowed: T::Boolean,
              is_make_payment: T::Boolean,
              is_markdown_disabled_for_about: T::Boolean,
              is_need_confirm_payout: T::Boolean,
              is_otp_enabled: T::Boolean,
              is_payment_card_connected: T::Boolean,
              is_paywall_passed: T::Boolean,
              is_performer: T::Boolean,
              is_private_restriction: T::Boolean,
              is_real_card_connected: T::Boolean,
              is_real_performer: T::Boolean,
              is_referrer_allowed: T::Boolean,
              is_scheduled_streams_allowed: T::Boolean,
              is_spotify_connected: T::Boolean,
              is_spring_connected: T::Boolean,
              is_stripe_exist: T::Boolean,
              is_twitter_connected: T::Boolean,
              is_vat_required: T::Boolean,
              is_verified: T::Boolean,
              is_verified_reason: T::Boolean,
              is_visible_online: T::Boolean,
              is_wallet_autorecharge: T::Boolean,
              is_want_comments: T::Boolean,
              iv_country: String,
              iv_fail_reason: T.nilable(String),
              iv_flow: String,
              iv_hide_for_performers: T::Boolean,
              iv_status: String,
              join_date: String,
              last_seen: String,
              location: T.nilable(String),
              max_fund_raising_target: Integer,
              max_pinned_posts_count: Integer,
              medias_count: Integer,
              message_max_price: Integer,
              message_min_price: Integer,
              min_fund_raising_target: Integer,
              name: String,
              need_iv_approve: T::Boolean,
              new_tags_count: Integer,
              notifications_count: Integer,
              paid_feed: T::Boolean,
              payout_legal_approve_state: String,
              payout_type: String,
              photos_count: Integer,
              pinned_posts_count: Integer,
              post_max_price: Integer,
              post_min_price: Integer,
              posts_count: Integer,
              private_archived_posts_count: Integer,
              show_media_count: T::Boolean,
              show_posts_in_feed: T::Boolean,
              show_subscribers_count: T::Boolean,
              subscribed_by_data: T.nilable(String),
              subscribed_on_data: T.nilable(String),
              subscribe_max_price: Integer,
              subscribe_min_price: Float,
              subscribe_price: Integer,
              subscribers_count: Integer,
              subscribes_count: Integer,
              subscription_bundles: T::Array[T.anything],
              tips_enabled: T::Boolean,
              tips_max: Integer,
              tips_min: Integer,
              tips_min_internal: Integer,
              tips_text_enabled: T::Boolean,
              trial_max_days: Integer,
              trial_max_expires_days: Integer,
              twitter_username: String,
              unread_tips: Integer,
              upload: Onlyfansapi::Models::MeRetrieveResponse::Data::Upload,
              username: String,
              vat_number_name: String,
              videos_count: Integer,
              view: String,
              wallet_autorecharge_amount: Integer,
              wallet_autorecharge_min: Integer,
              wallet_first_rebills: T::Boolean,
              watermark_position: String,
              watermark_text: String,
              website: String,
              wishlist: T.nilable(String),
              ws_auth_token: String,
              ws_url: String
            }
          )
        end
        def to_hash
        end

        class AvatarThumbs < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::MeRetrieveResponse::Data::AvatarThumbs,
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

        class HasNewTicketReplies < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::MeRetrieveResponse::Data::HasNewTicketReplies,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :appeal_form

          sig { params(appeal_form: T::Boolean).void }
          attr_writer :appeal_form

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :closed

          sig { params(closed: T::Boolean).void }
          attr_writer :closed

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :open_

          sig { params(open_: T::Boolean).void }
          attr_writer :open_

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :solved

          sig { params(solved: T::Boolean).void }
          attr_writer :solved

          sig do
            params(
              appeal_form: T::Boolean,
              closed: T::Boolean,
              open_: T::Boolean,
              solved: T::Boolean
            ).returns(T.attached_class)
          end
          def self.new(appeal_form: nil, closed: nil, open_: nil, solved: nil)
          end

          sig do
            override.returns(
              {
                appeal_form: T::Boolean,
                closed: T::Boolean,
                open_: T::Boolean,
                solved: T::Boolean
              }
            )
          end
          def to_hash
          end
        end

        class HeaderSize < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::MeRetrieveResponse::Data::HeaderSize,
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
                Onlyfansapi::Models::MeRetrieveResponse::Data::HeaderThumbs,
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

        class Upload < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::MeRetrieveResponse::Data::Upload,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Onlyfansapi::Models::MeRetrieveResponse::Data::Upload::GeoUploadArgs
              )
            )
          end
          attr_reader :geo_upload_args

          sig do
            params(
              geo_upload_args:
                Onlyfansapi::Models::MeRetrieveResponse::Data::Upload::GeoUploadArgs::OrHash
            ).void
          end
          attr_writer :geo_upload_args

          sig do
            params(
              geo_upload_args:
                Onlyfansapi::Models::MeRetrieveResponse::Data::Upload::GeoUploadArgs::OrHash
            ).returns(T.attached_class)
          end
          def self.new(geo_upload_args: nil)
          end

          sig do
            override.returns(
              {
                geo_upload_args:
                  Onlyfansapi::Models::MeRetrieveResponse::Data::Upload::GeoUploadArgs
              }
            )
          end
          def to_hash
          end

          class GeoUploadArgs < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::MeRetrieveResponse::Data::Upload::GeoUploadArgs,
                  Onlyfansapi::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  Onlyfansapi::Models::MeRetrieveResponse::Data::Upload::GeoUploadArgs::Additional
                )
              )
            end
            attr_reader :additional

            sig do
              params(
                additional:
                  Onlyfansapi::Models::MeRetrieveResponse::Data::Upload::GeoUploadArgs::Additional::OrHash
              ).void
            end
            attr_writer :additional

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_delay

            sig { params(is_delay: T::Boolean).void }
            attr_writer :is_delay

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :need_thumbs

            sig { params(need_thumbs: T::Boolean).void }
            attr_writer :need_thumbs

            sig { returns(T.nilable(String)) }
            attr_reader :preset

            sig { params(preset: String).void }
            attr_writer :preset

            sig { returns(T.nilable(String)) }
            attr_reader :preset_png

            sig { params(preset_png: String).void }
            attr_writer :preset_png

            sig { returns(T.nilable(String)) }
            attr_reader :protected_preset

            sig { params(protected_preset: String).void }
            attr_writer :protected_preset

            sig do
              params(
                additional:
                  Onlyfansapi::Models::MeRetrieveResponse::Data::Upload::GeoUploadArgs::Additional::OrHash,
                is_delay: T::Boolean,
                need_thumbs: T::Boolean,
                preset: String,
                preset_png: String,
                protected_preset: String
              ).returns(T.attached_class)
            end
            def self.new(
              additional: nil,
              is_delay: nil,
              need_thumbs: nil,
              preset: nil,
              preset_png: nil,
              protected_preset: nil
            )
            end

            sig do
              override.returns(
                {
                  additional:
                    Onlyfansapi::Models::MeRetrieveResponse::Data::Upload::GeoUploadArgs::Additional,
                  is_delay: T::Boolean,
                  need_thumbs: T::Boolean,
                  preset: String,
                  preset_png: String,
                  protected_preset: String
                }
              )
            end
            def to_hash
            end

            class Additional < Onlyfansapi::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfansapi::Models::MeRetrieveResponse::Data::Upload::GeoUploadArgs::Additional,
                    Onlyfansapi::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(String)) }
              attr_reader :user

              sig { params(user: String).void }
              attr_writer :user

              sig { params(user: String).returns(T.attached_class) }
              def self.new(user: nil)
              end

              sig { override.returns({ user: String }) }
              def to_hash
              end
            end
          end
        end
      end
    end
  end
end
