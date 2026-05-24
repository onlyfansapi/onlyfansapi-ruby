# typed: strong

module Onlyfansapi
  module Models
    class AuthenticatePollStatusResponse < Onlyfansapi::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::Models::AuthenticatePollStatusResponse,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(
            Onlyfansapi::Models::AuthenticatePollStatusResponse::Account
          )
        )
      end
      attr_reader :account

      sig do
        params(
          account:
            Onlyfansapi::Models::AuthenticatePollStatusResponse::Account::OrHash
        ).void
      end
      attr_writer :account

      sig do
        returns(
          T.nilable(
            Onlyfansapi::Models::AuthenticatePollStatusResponse::LastAttempt
          )
        )
      end
      attr_reader :last_attempt

      sig do
        params(
          last_attempt:
            Onlyfansapi::Models::AuthenticatePollStatusResponse::LastAttempt::OrHash
        ).void
      end
      attr_writer :last_attempt

      sig { returns(T.nilable(String)) }
      attr_reader :progress

      sig { params(progress: String).void }
      attr_writer :progress

      sig { returns(T.nilable(String)) }
      attr_reader :state

      sig { params(state: String).void }
      attr_writer :state

      sig do
        params(
          account:
            Onlyfansapi::Models::AuthenticatePollStatusResponse::Account::OrHash,
          last_attempt:
            Onlyfansapi::Models::AuthenticatePollStatusResponse::LastAttempt::OrHash,
          progress: String,
          state: String
        ).returns(T.attached_class)
      end
      def self.new(account: nil, last_attempt: nil, progress: nil, state: nil)
      end

      sig do
        override.returns(
          {
            account:
              Onlyfansapi::Models::AuthenticatePollStatusResponse::Account,
            last_attempt:
              Onlyfansapi::Models::AuthenticatePollStatusResponse::LastAttempt,
            progress: String,
            state: String
          }
        )
      end
      def to_hash
      end

      class Account < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::AuthenticatePollStatusResponse::Account,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        sig { returns(T.nilable(String)) }
        attr_reader :display_name

        sig { params(display_name: String).void }
        attr_writer :display_name

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::AuthenticatePollStatusResponse::Account::OnlyfansData
            )
          )
        end
        attr_reader :onlyfans_data

        sig do
          params(
            onlyfans_data:
              Onlyfansapi::Models::AuthenticatePollStatusResponse::Account::OnlyfansData::OrHash
          ).void
        end
        attr_writer :onlyfans_data

        sig do
          params(
            id: String,
            display_name: String,
            onlyfans_data:
              Onlyfansapi::Models::AuthenticatePollStatusResponse::Account::OnlyfansData::OrHash
          ).returns(T.attached_class)
        end
        def self.new(id: nil, display_name: nil, onlyfans_data: nil)
        end

        sig do
          override.returns(
            {
              id: String,
              display_name: String,
              onlyfans_data:
                Onlyfansapi::Models::AuthenticatePollStatusResponse::Account::OnlyfansData
            }
          )
        end
        def to_hash
        end

        class OnlyfansData < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::AuthenticatePollStatusResponse::Account::OnlyfansData,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_reader :id

          sig { params(id: Integer).void }
          attr_writer :id

          sig { returns(T.nilable(String)) }
          attr_accessor :about

          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :adv_block

          sig { params(adv_block: T::Array[String]).void }
          attr_writer :adv_block

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :age_verification_required

          sig { params(age_verification_required: T::Boolean).void }
          attr_writer :age_verification_required

          sig do
            returns(
              T.nilable(
                Onlyfansapi::Models::AuthenticatePollStatusResponse::Account::OnlyfansData::AgeVerificationSession
              )
            )
          end
          attr_reader :age_verification_session

          sig do
            params(
              age_verification_session:
                Onlyfansapi::Models::AuthenticatePollStatusResponse::Account::OnlyfansData::AgeVerificationSession::OrHash
            ).void
          end
          attr_writer :age_verification_session

          sig { returns(T.nilable(Integer)) }
          attr_reader :archived_posts_count

          sig { params(archived_posts_count: Integer).void }
          attr_writer :archived_posts_count

          sig { returns(T.nilable(Integer)) }
          attr_reader :audios_count

          sig { params(audios_count: Integer).void }
          attr_writer :audios_count

          sig { returns(T.nilable(String)) }
          attr_accessor :avatar

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :avatar_header_converter_upload

          sig { params(avatar_header_converter_upload: T::Boolean).void }
          attr_writer :avatar_header_converter_upload

          sig { returns(T.nilable(String)) }
          attr_accessor :avatar_thumbs

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :can_add_card

          sig { params(can_add_card: T::Boolean).void }
          attr_writer :can_add_card

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :can_alternative_wallet_top_up

          sig { params(can_alternative_wallet_top_up: T::Boolean).void }
          attr_writer :can_alternative_wallet_top_up

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
          attr_reader :can_create_lists

          sig { params(can_create_lists: T::Boolean).void }
          attr_writer :can_create_lists

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :can_look_story

          sig { params(can_look_story: T::Boolean).void }
          attr_writer :can_look_story

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
          attr_reader :can_send_chat_to_all

          sig { params(can_send_chat_to_all: T::Boolean).void }
          attr_writer :can_send_chat_to_all

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

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :has_internal_payments

          sig { params(has_internal_payments: T::Boolean).void }
          attr_writer :has_internal_payments

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :has_labels

          sig { params(has_labels: T::Boolean).void }
          attr_writer :has_labels

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
                Onlyfansapi::Models::AuthenticatePollStatusResponse::Account::OnlyfansData::HasNewTicketReplies
              )
            )
          end
          attr_reader :has_new_ticket_replies

          sig do
            params(
              has_new_ticket_replies:
                Onlyfansapi::Models::AuthenticatePollStatusResponse::Account::OnlyfansData::HasNewTicketReplies::OrHash
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
          attr_accessor :header

          sig { returns(T.nilable(String)) }
          attr_accessor :header_size

          sig { returns(T.nilable(String)) }
          attr_accessor :header_thumbs

          sig { returns(T.nilable(String)) }
          attr_reader :ip

          sig { params(ip: String).void }
          attr_writer :ip

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
          attr_reader :is_spotify_connected

          sig { params(is_spotify_connected: T::Boolean).void }
          attr_writer :is_spotify_connected

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_twitter_connected

          sig { params(is_twitter_connected: T::Boolean).void }
          attr_writer :is_twitter_connected

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_verified

          sig { params(is_verified: T::Boolean).void }
          attr_writer :is_verified

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
          attr_accessor :iv_country

          sig { returns(T.nilable(String)) }
          attr_reader :iv_fail_reason

          sig { params(iv_fail_reason: String).void }
          attr_writer :iv_fail_reason

          sig { returns(T.nilable(String)) }
          attr_reader :iv_flow

          sig { params(iv_flow: String).void }
          attr_writer :iv_flow

          sig { returns(T.nilable(String)) }
          attr_accessor :iv_status

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
          attr_reader :max_pinned_posts_count

          sig { params(max_pinned_posts_count: Integer).void }
          attr_writer :max_pinned_posts_count

          sig { returns(T.nilable(Integer)) }
          attr_reader :medias_count

          sig { params(medias_count: Integer).void }
          attr_writer :medias_count

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

          sig { returns(T.nilable(Integer)) }
          attr_reader :photos_count

          sig { params(photos_count: Integer).void }
          attr_writer :photos_count

          sig { returns(T.nilable(Integer)) }
          attr_reader :pinned_posts_count

          sig { params(pinned_posts_count: Integer).void }
          attr_writer :pinned_posts_count

          sig { returns(T.nilable(Integer)) }
          attr_reader :posts_count

          sig { params(posts_count: Integer).void }
          attr_writer :posts_count

          sig { returns(T.nilable(Integer)) }
          attr_reader :private_archived_posts_count

          sig { params(private_archived_posts_count: Integer).void }
          attr_writer :private_archived_posts_count

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :show_posts_in_feed

          sig { params(show_posts_in_feed: T::Boolean).void }
          attr_writer :show_posts_in_feed

          sig { returns(T.nilable(Integer)) }
          attr_reader :subscribers_count

          sig { params(subscribers_count: Integer).void }
          attr_writer :subscribers_count

          sig { returns(T.nilable(Integer)) }
          attr_reader :subscribes_count

          sig { params(subscribes_count: Integer).void }
          attr_writer :subscribes_count

          sig { returns(T.nilable(String)) }
          attr_accessor :twitter_username

          sig do
            returns(
              T.nilable(
                Onlyfansapi::Models::AuthenticatePollStatusResponse::Account::OnlyfansData::Upload
              )
            )
          end
          attr_reader :upload

          sig do
            params(
              upload:
                Onlyfansapi::Models::AuthenticatePollStatusResponse::Account::OnlyfansData::Upload::OrHash
            ).void
          end
          attr_writer :upload

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
          attr_accessor :website

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
              about: T.nilable(String),
              adv_block: T::Array[String],
              age_verification_required: T::Boolean,
              age_verification_session:
                Onlyfansapi::Models::AuthenticatePollStatusResponse::Account::OnlyfansData::AgeVerificationSession::OrHash,
              archived_posts_count: Integer,
              audios_count: Integer,
              avatar: T.nilable(String),
              avatar_header_converter_upload: T::Boolean,
              avatar_thumbs: T.nilable(String),
              can_add_card: T::Boolean,
              can_alternative_wallet_top_up: T::Boolean,
              can_chat: T::Boolean,
              can_comment_story: T::Boolean,
              can_connect_of_account: T::Boolean,
              can_create_lists: T::Boolean,
              can_look_story: T::Boolean,
              can_pay_internal: T::Boolean,
              can_pin_post: T::Boolean,
              can_receive_chat_message: T::Boolean,
              can_send_chat_to_all: T::Boolean,
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
              has_internal_payments: T::Boolean,
              has_labels: T::Boolean,
              has_new_alerts: T::Boolean,
              has_new_changed_price_subscriptions: T::Boolean,
              has_new_hints: T::Boolean,
              has_new_ticket_replies:
                Onlyfansapi::Models::AuthenticatePollStatusResponse::Account::OnlyfansData::HasNewTicketReplies::OrHash,
              has_not_viewed_story: T::Boolean,
              has_pinned_posts: T::Boolean,
              has_purchased_posts: T::Boolean,
              has_scenario: T::Boolean,
              has_system_notifications: T::Boolean,
              has_tags: T::Boolean,
              has_watermark_photo: T::Boolean,
              has_watermark_video: T::Boolean,
              header: T.nilable(String),
              header_size: T.nilable(String),
              header_thumbs: T.nilable(String),
              ip: String,
              is_age_verified: T::Boolean,
              is_allow_tweets: T::Boolean,
              is_auth: T::Boolean,
              is_credits_enabled: T::Boolean,
              is_delete_initiated: T::Boolean,
              is_email_checked: T::Boolean,
              is_email_required: T::Boolean,
              is_legal_approved_allowed: T::Boolean,
              is_make_payment: T::Boolean,
              is_markdown_disabled_for_about: T::Boolean,
              is_otp_enabled: T::Boolean,
              is_payment_card_connected: T::Boolean,
              is_paywall_passed: T::Boolean,
              is_performer: T::Boolean,
              is_real_card_connected: T::Boolean,
              is_real_performer: T::Boolean,
              is_referrer_allowed: T::Boolean,
              is_spotify_connected: T::Boolean,
              is_twitter_connected: T::Boolean,
              is_verified: T::Boolean,
              is_visible_online: T::Boolean,
              is_wallet_autorecharge: T::Boolean,
              is_want_comments: T::Boolean,
              iv_country: T.nilable(String),
              iv_fail_reason: String,
              iv_flow: String,
              iv_status: T.nilable(String),
              join_date: String,
              last_seen: String,
              location: T.nilable(String),
              max_pinned_posts_count: Integer,
              medias_count: Integer,
              name: String,
              need_iv_approve: T::Boolean,
              new_tags_count: Integer,
              notifications_count: Integer,
              paid_feed: T::Boolean,
              payout_legal_approve_state: String,
              photos_count: Integer,
              pinned_posts_count: Integer,
              posts_count: Integer,
              private_archived_posts_count: Integer,
              show_posts_in_feed: T::Boolean,
              subscribers_count: Integer,
              subscribes_count: Integer,
              twitter_username: T.nilable(String),
              upload:
                Onlyfansapi::Models::AuthenticatePollStatusResponse::Account::OnlyfansData::Upload::OrHash,
              username: String,
              videos_count: Integer,
              view: String,
              wallet_autorecharge_amount: Integer,
              wallet_autorecharge_min: Integer,
              wallet_first_rebills: T::Boolean,
              watermark_position: String,
              watermark_text: String,
              website: T.nilable(String),
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
            age_verification_session: nil,
            archived_posts_count: nil,
            audios_count: nil,
            avatar: nil,
            avatar_header_converter_upload: nil,
            avatar_thumbs: nil,
            can_add_card: nil,
            can_alternative_wallet_top_up: nil,
            can_chat: nil,
            can_comment_story: nil,
            can_connect_of_account: nil,
            can_create_lists: nil,
            can_look_story: nil,
            can_pay_internal: nil,
            can_pin_post: nil,
            can_receive_chat_message: nil,
            can_send_chat_to_all: nil,
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
            has_internal_payments: nil,
            has_labels: nil,
            has_new_alerts: nil,
            has_new_changed_price_subscriptions: nil,
            has_new_hints: nil,
            has_new_ticket_replies: nil,
            has_not_viewed_story: nil,
            has_pinned_posts: nil,
            has_purchased_posts: nil,
            has_scenario: nil,
            has_system_notifications: nil,
            has_tags: nil,
            has_watermark_photo: nil,
            has_watermark_video: nil,
            header: nil,
            header_size: nil,
            header_thumbs: nil,
            ip: nil,
            is_age_verified: nil,
            is_allow_tweets: nil,
            is_auth: nil,
            is_credits_enabled: nil,
            is_delete_initiated: nil,
            is_email_checked: nil,
            is_email_required: nil,
            is_legal_approved_allowed: nil,
            is_make_payment: nil,
            is_markdown_disabled_for_about: nil,
            is_otp_enabled: nil,
            is_payment_card_connected: nil,
            is_paywall_passed: nil,
            is_performer: nil,
            is_real_card_connected: nil,
            is_real_performer: nil,
            is_referrer_allowed: nil,
            is_spotify_connected: nil,
            is_twitter_connected: nil,
            is_verified: nil,
            is_visible_online: nil,
            is_wallet_autorecharge: nil,
            is_want_comments: nil,
            iv_country: nil,
            iv_fail_reason: nil,
            iv_flow: nil,
            iv_status: nil,
            join_date: nil,
            last_seen: nil,
            location: nil,
            max_pinned_posts_count: nil,
            medias_count: nil,
            name: nil,
            need_iv_approve: nil,
            new_tags_count: nil,
            notifications_count: nil,
            paid_feed: nil,
            payout_legal_approve_state: nil,
            photos_count: nil,
            pinned_posts_count: nil,
            posts_count: nil,
            private_archived_posts_count: nil,
            show_posts_in_feed: nil,
            subscribers_count: nil,
            subscribes_count: nil,
            twitter_username: nil,
            upload: nil,
            username: nil,
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
                about: T.nilable(String),
                adv_block: T::Array[String],
                age_verification_required: T::Boolean,
                age_verification_session:
                  Onlyfansapi::Models::AuthenticatePollStatusResponse::Account::OnlyfansData::AgeVerificationSession,
                archived_posts_count: Integer,
                audios_count: Integer,
                avatar: T.nilable(String),
                avatar_header_converter_upload: T::Boolean,
                avatar_thumbs: T.nilable(String),
                can_add_card: T::Boolean,
                can_alternative_wallet_top_up: T::Boolean,
                can_chat: T::Boolean,
                can_comment_story: T::Boolean,
                can_connect_of_account: T::Boolean,
                can_create_lists: T::Boolean,
                can_look_story: T::Boolean,
                can_pay_internal: T::Boolean,
                can_pin_post: T::Boolean,
                can_receive_chat_message: T::Boolean,
                can_send_chat_to_all: T::Boolean,
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
                has_internal_payments: T::Boolean,
                has_labels: T::Boolean,
                has_new_alerts: T::Boolean,
                has_new_changed_price_subscriptions: T::Boolean,
                has_new_hints: T::Boolean,
                has_new_ticket_replies:
                  Onlyfansapi::Models::AuthenticatePollStatusResponse::Account::OnlyfansData::HasNewTicketReplies,
                has_not_viewed_story: T::Boolean,
                has_pinned_posts: T::Boolean,
                has_purchased_posts: T::Boolean,
                has_scenario: T::Boolean,
                has_system_notifications: T::Boolean,
                has_tags: T::Boolean,
                has_watermark_photo: T::Boolean,
                has_watermark_video: T::Boolean,
                header: T.nilable(String),
                header_size: T.nilable(String),
                header_thumbs: T.nilable(String),
                ip: String,
                is_age_verified: T::Boolean,
                is_allow_tweets: T::Boolean,
                is_auth: T::Boolean,
                is_credits_enabled: T::Boolean,
                is_delete_initiated: T::Boolean,
                is_email_checked: T::Boolean,
                is_email_required: T::Boolean,
                is_legal_approved_allowed: T::Boolean,
                is_make_payment: T::Boolean,
                is_markdown_disabled_for_about: T::Boolean,
                is_otp_enabled: T::Boolean,
                is_payment_card_connected: T::Boolean,
                is_paywall_passed: T::Boolean,
                is_performer: T::Boolean,
                is_real_card_connected: T::Boolean,
                is_real_performer: T::Boolean,
                is_referrer_allowed: T::Boolean,
                is_spotify_connected: T::Boolean,
                is_twitter_connected: T::Boolean,
                is_verified: T::Boolean,
                is_visible_online: T::Boolean,
                is_wallet_autorecharge: T::Boolean,
                is_want_comments: T::Boolean,
                iv_country: T.nilable(String),
                iv_fail_reason: String,
                iv_flow: String,
                iv_status: T.nilable(String),
                join_date: String,
                last_seen: String,
                location: T.nilable(String),
                max_pinned_posts_count: Integer,
                medias_count: Integer,
                name: String,
                need_iv_approve: T::Boolean,
                new_tags_count: Integer,
                notifications_count: Integer,
                paid_feed: T::Boolean,
                payout_legal_approve_state: String,
                photos_count: Integer,
                pinned_posts_count: Integer,
                posts_count: Integer,
                private_archived_posts_count: Integer,
                show_posts_in_feed: T::Boolean,
                subscribers_count: Integer,
                subscribes_count: Integer,
                twitter_username: T.nilable(String),
                upload:
                  Onlyfansapi::Models::AuthenticatePollStatusResponse::Account::OnlyfansData::Upload,
                username: String,
                videos_count: Integer,
                view: String,
                wallet_autorecharge_amount: Integer,
                wallet_autorecharge_min: Integer,
                wallet_first_rebills: T::Boolean,
                watermark_position: String,
                watermark_text: String,
                website: T.nilable(String),
                wishlist: T.nilable(String),
                ws_auth_token: String,
                ws_url: String
              }
            )
          end
          def to_hash
          end

          class AgeVerificationSession < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::AuthenticatePollStatusResponse::Account::OnlyfansData::AgeVerificationSession,
                  Onlyfansapi::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :api_flow

            sig { params(api_flow: String).void }
            attr_writer :api_flow

            sig { returns(T.nilable(String)) }
            attr_reader :expired_at

            sig { params(expired_at: String).void }
            attr_writer :expired_at

            sig { returns(T.nilable(String)) }
            attr_reader :status

            sig { params(status: String).void }
            attr_writer :status

            sig { returns(T.nilable(String)) }
            attr_reader :url

            sig { params(url: String).void }
            attr_writer :url

            sig do
              params(
                api_flow: String,
                expired_at: String,
                status: String,
                url: String
              ).returns(T.attached_class)
            end
            def self.new(api_flow: nil, expired_at: nil, status: nil, url: nil)
            end

            sig do
              override.returns(
                {
                  api_flow: String,
                  expired_at: String,
                  status: String,
                  url: String
                }
              )
            end
            def to_hash
            end
          end

          class HasNewTicketReplies < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::AuthenticatePollStatusResponse::Account::OnlyfansData::HasNewTicketReplies,
                  Onlyfansapi::Internal::AnyHash
                )
              end

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
                closed: T::Boolean,
                open_: T::Boolean,
                solved: T::Boolean
              ).returns(T.attached_class)
            end
            def self.new(closed: nil, open_: nil, solved: nil)
            end

            sig do
              override.returns(
                { closed: T::Boolean, open_: T::Boolean, solved: T::Boolean }
              )
            end
            def to_hash
            end
          end

          class Upload < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::AuthenticatePollStatusResponse::Account::OnlyfansData::Upload,
                  Onlyfansapi::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  Onlyfansapi::Models::AuthenticatePollStatusResponse::Account::OnlyfansData::Upload::GeoUploadArgs
                )
              )
            end
            attr_reader :geo_upload_args

            sig do
              params(
                geo_upload_args:
                  Onlyfansapi::Models::AuthenticatePollStatusResponse::Account::OnlyfansData::Upload::GeoUploadArgs::OrHash
              ).void
            end
            attr_writer :geo_upload_args

            sig do
              params(
                geo_upload_args:
                  Onlyfansapi::Models::AuthenticatePollStatusResponse::Account::OnlyfansData::Upload::GeoUploadArgs::OrHash
              ).returns(T.attached_class)
            end
            def self.new(geo_upload_args: nil)
            end

            sig do
              override.returns(
                {
                  geo_upload_args:
                    Onlyfansapi::Models::AuthenticatePollStatusResponse::Account::OnlyfansData::Upload::GeoUploadArgs
                }
              )
            end
            def to_hash
            end

            class GeoUploadArgs < Onlyfansapi::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfansapi::Models::AuthenticatePollStatusResponse::Account::OnlyfansData::Upload::GeoUploadArgs,
                    Onlyfansapi::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  T.nilable(
                    Onlyfansapi::Models::AuthenticatePollStatusResponse::Account::OnlyfansData::Upload::GeoUploadArgs::Additional
                  )
                )
              end
              attr_reader :additional

              sig do
                params(
                  additional:
                    Onlyfansapi::Models::AuthenticatePollStatusResponse::Account::OnlyfansData::Upload::GeoUploadArgs::Additional::OrHash
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
                    Onlyfansapi::Models::AuthenticatePollStatusResponse::Account::OnlyfansData::Upload::GeoUploadArgs::Additional::OrHash,
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
                      Onlyfansapi::Models::AuthenticatePollStatusResponse::Account::OnlyfansData::Upload::GeoUploadArgs::Additional,
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
                      Onlyfansapi::Models::AuthenticatePollStatusResponse::Account::OnlyfansData::Upload::GeoUploadArgs::Additional,
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

      class LastAttempt < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::AuthenticatePollStatusResponse::LastAttempt,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :completed_at

        sig { params(completed_at: String).void }
        attr_writer :completed_at

        sig { returns(T.nilable(String)) }
        attr_accessor :error_code

        sig { returns(T.nilable(String)) }
        attr_accessor :error_message

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :needs_otp

        sig { params(needs_otp: T::Boolean).void }
        attr_writer :needs_otp

        sig { returns(T.nilable(String)) }
        attr_accessor :otp_phone_ending

        sig { returns(T.nilable(String)) }
        attr_reader :started_at

        sig { params(started_at: String).void }
        attr_writer :started_at

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :success

        sig { params(success: T::Boolean).void }
        attr_writer :success

        sig do
          params(
            completed_at: String,
            error_code: T.nilable(String),
            error_message: T.nilable(String),
            needs_otp: T::Boolean,
            otp_phone_ending: T.nilable(String),
            started_at: String,
            success: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          completed_at: nil,
          error_code: nil,
          error_message: nil,
          needs_otp: nil,
          otp_phone_ending: nil,
          started_at: nil,
          success: nil
        )
        end

        sig do
          override.returns(
            {
              completed_at: String,
              error_code: T.nilable(String),
              error_message: T.nilable(String),
              needs_otp: T::Boolean,
              otp_phone_ending: T.nilable(String),
              started_at: String,
              success: T::Boolean
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
