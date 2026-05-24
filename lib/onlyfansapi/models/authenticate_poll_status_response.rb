# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Authenticate#poll_status
    class AuthenticatePollStatusResponse < Onlyfansapi::Internal::Type::BaseModel
      # @!attribute account
      #
      #   @return [Onlyfansapi::Models::AuthenticatePollStatusResponse::Account, nil]
      optional :account, -> { Onlyfansapi::Models::AuthenticatePollStatusResponse::Account }

      # @!attribute last_attempt
      #
      #   @return [Onlyfansapi::Models::AuthenticatePollStatusResponse::LastAttempt, nil]
      optional :last_attempt,
               -> { Onlyfansapi::Models::AuthenticatePollStatusResponse::LastAttempt },
               api_name: :lastAttempt

      # @!attribute progress
      #
      #   @return [String, nil]
      optional :progress, String

      # @!attribute state
      #
      #   @return [String, nil]
      optional :state, String

      # @!method initialize(account: nil, last_attempt: nil, progress: nil, state: nil)
      #   @param account [Onlyfansapi::Models::AuthenticatePollStatusResponse::Account]
      #   @param last_attempt [Onlyfansapi::Models::AuthenticatePollStatusResponse::LastAttempt]
      #   @param progress [String]
      #   @param state [String]

      # @see Onlyfansapi::Models::AuthenticatePollStatusResponse#account
      class Account < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute display_name
        #
        #   @return [String, nil]
        optional :display_name, String

        # @!attribute onlyfans_data
        #
        #   @return [Onlyfansapi::Models::AuthenticatePollStatusResponse::Account::OnlyfansData, nil]
        optional :onlyfans_data, -> { Onlyfansapi::Models::AuthenticatePollStatusResponse::Account::OnlyfansData }

        # @!method initialize(id: nil, display_name: nil, onlyfans_data: nil)
        #   @param id [String]
        #   @param display_name [String]
        #   @param onlyfans_data [Onlyfansapi::Models::AuthenticatePollStatusResponse::Account::OnlyfansData]

        # @see Onlyfansapi::Models::AuthenticatePollStatusResponse::Account#onlyfans_data
        class OnlyfansData < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [Integer, nil]
          optional :id, Integer

          # @!attribute about
          #
          #   @return [String, nil]
          optional :about, String, nil?: true

          # @!attribute adv_block
          #
          #   @return [Array<String>, nil]
          optional :adv_block, Onlyfansapi::Internal::Type::ArrayOf[String], api_name: :advBlock

          # @!attribute age_verification_required
          #
          #   @return [Boolean, nil]
          optional :age_verification_required,
                   Onlyfansapi::Internal::Type::Boolean,
                   api_name: :ageVerificationRequired

          # @!attribute age_verification_session
          #
          #   @return [Onlyfansapi::Models::AuthenticatePollStatusResponse::Account::OnlyfansData::AgeVerificationSession, nil]
          optional :age_verification_session,
                   -> { Onlyfansapi::Models::AuthenticatePollStatusResponse::Account::OnlyfansData::AgeVerificationSession },
                   api_name: :ageVerificationSession

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
          optional :avatar, String, nil?: true

          # @!attribute avatar_header_converter_upload
          #
          #   @return [Boolean, nil]
          optional :avatar_header_converter_upload,
                   Onlyfansapi::Internal::Type::Boolean,
                   api_name: :avatarHeaderConverterUpload

          # @!attribute avatar_thumbs
          #
          #   @return [String, nil]
          optional :avatar_thumbs, String, api_name: :avatarThumbs, nil?: true

          # @!attribute can_add_card
          #
          #   @return [Boolean, nil]
          optional :can_add_card, Onlyfansapi::Internal::Type::Boolean, api_name: :canAddCard

          # @!attribute can_alternative_wallet_top_up
          #
          #   @return [Boolean, nil]
          optional :can_alternative_wallet_top_up,
                   Onlyfansapi::Internal::Type::Boolean,
                   api_name: :canAlternativeWalletTopUp

          # @!attribute can_chat
          #
          #   @return [Boolean, nil]
          optional :can_chat, Onlyfansapi::Internal::Type::Boolean, api_name: :canChat

          # @!attribute can_comment_story
          #
          #   @return [Boolean, nil]
          optional :can_comment_story, Onlyfansapi::Internal::Type::Boolean, api_name: :canCommentStory

          # @!attribute can_connect_of_account
          #
          #   @return [Boolean, nil]
          optional :can_connect_of_account,
                   Onlyfansapi::Internal::Type::Boolean,
                   api_name: :canConnectOfAccount

          # @!attribute can_create_lists
          #
          #   @return [Boolean, nil]
          optional :can_create_lists, Onlyfansapi::Internal::Type::Boolean, api_name: :canCreateLists

          # @!attribute can_look_story
          #
          #   @return [Boolean, nil]
          optional :can_look_story, Onlyfansapi::Internal::Type::Boolean, api_name: :canLookStory

          # @!attribute can_pay_internal
          #
          #   @return [Boolean, nil]
          optional :can_pay_internal, Onlyfansapi::Internal::Type::Boolean, api_name: :canPayInternal

          # @!attribute can_pin_post
          #
          #   @return [Boolean, nil]
          optional :can_pin_post, Onlyfansapi::Internal::Type::Boolean, api_name: :canPinPost

          # @!attribute can_receive_chat_message
          #
          #   @return [Boolean, nil]
          optional :can_receive_chat_message,
                   Onlyfansapi::Internal::Type::Boolean,
                   api_name: :canReceiveChatMessage

          # @!attribute can_send_chat_to_all
          #
          #   @return [Boolean, nil]
          optional :can_send_chat_to_all, Onlyfansapi::Internal::Type::Boolean, api_name: :canSendChatToAll

          # @!attribute chat_messages_count
          #
          #   @return [Integer, nil]
          optional :chat_messages_count, Integer, api_name: :chatMessagesCount

          # @!attribute connected_of_accounts
          #
          #   @return [Array<Object>, nil]
          optional :connected_of_accounts,
                   Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Internal::Type::Unknown],
                   api_name: :connectedOfAccounts

          # @!attribute count_pinned_chat
          #
          #   @return [Integer, nil]
          optional :count_pinned_chat, Integer, api_name: :countPinnedChat

          # @!attribute count_priority_chat
          #
          #   @return [Integer, nil]
          optional :count_priority_chat, Integer, api_name: :countPriorityChat

          # @!attribute credit_balance
          #
          #   @return [Integer, nil]
          optional :credit_balance, Integer, api_name: :creditBalance

          # @!attribute credits_max
          #
          #   @return [Integer, nil]
          optional :credits_max, Integer, api_name: :creditsMax

          # @!attribute credits_min
          #
          #   @return [Integer, nil]
          optional :credits_min, Integer, api_name: :creditsMin

          # @!attribute csrf
          #
          #   @return [String, nil]
          optional :csrf, String

          # @!attribute email
          #
          #   @return [String, nil]
          optional :email, String

          # @!attribute enabled_image_editor_for_chat
          #
          #   @return [Boolean, nil]
          optional :enabled_image_editor_for_chat,
                   Onlyfansapi::Internal::Type::Boolean,
                   api_name: :enabledImageEditorForChat

          # @!attribute face_id_regular
          #
          #   @return [Array<Object>, nil]
          optional :face_id_regular,
                   Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Internal::Type::Unknown],
                   api_name: :faceIdRegular

          # @!attribute favorited_count
          #
          #   @return [Integer, nil]
          optional :favorited_count, Integer, api_name: :favoritedCount

          # @!attribute favorites_count
          #
          #   @return [Integer, nil]
          optional :favorites_count, Integer, api_name: :favoritesCount

          # @!attribute has_internal_payments
          #
          #   @return [Boolean, nil]
          optional :has_internal_payments,
                   Onlyfansapi::Internal::Type::Boolean,
                   api_name: :hasInternalPayments

          # @!attribute has_labels
          #
          #   @return [Boolean, nil]
          optional :has_labels, Onlyfansapi::Internal::Type::Boolean, api_name: :hasLabels

          # @!attribute has_new_alerts
          #
          #   @return [Boolean, nil]
          optional :has_new_alerts, Onlyfansapi::Internal::Type::Boolean, api_name: :hasNewAlerts

          # @!attribute has_new_changed_price_subscriptions
          #
          #   @return [Boolean, nil]
          optional :has_new_changed_price_subscriptions,
                   Onlyfansapi::Internal::Type::Boolean,
                   api_name: :hasNewChangedPriceSubscriptions

          # @!attribute has_new_hints
          #
          #   @return [Boolean, nil]
          optional :has_new_hints, Onlyfansapi::Internal::Type::Boolean, api_name: :hasNewHints

          # @!attribute has_new_ticket_replies
          #
          #   @return [Onlyfansapi::Models::AuthenticatePollStatusResponse::Account::OnlyfansData::HasNewTicketReplies, nil]
          optional :has_new_ticket_replies,
                   -> { Onlyfansapi::Models::AuthenticatePollStatusResponse::Account::OnlyfansData::HasNewTicketReplies },
                   api_name: :hasNewTicketReplies

          # @!attribute has_not_viewed_story
          #
          #   @return [Boolean, nil]
          optional :has_not_viewed_story, Onlyfansapi::Internal::Type::Boolean, api_name: :hasNotViewedStory

          # @!attribute has_pinned_posts
          #
          #   @return [Boolean, nil]
          optional :has_pinned_posts, Onlyfansapi::Internal::Type::Boolean, api_name: :hasPinnedPosts

          # @!attribute has_purchased_posts
          #
          #   @return [Boolean, nil]
          optional :has_purchased_posts, Onlyfansapi::Internal::Type::Boolean, api_name: :hasPurchasedPosts

          # @!attribute has_scenario
          #
          #   @return [Boolean, nil]
          optional :has_scenario, Onlyfansapi::Internal::Type::Boolean, api_name: :hasScenario

          # @!attribute has_system_notifications
          #
          #   @return [Boolean, nil]
          optional :has_system_notifications,
                   Onlyfansapi::Internal::Type::Boolean,
                   api_name: :hasSystemNotifications

          # @!attribute has_tags
          #
          #   @return [Boolean, nil]
          optional :has_tags, Onlyfansapi::Internal::Type::Boolean, api_name: :hasTags

          # @!attribute has_watermark_photo
          #
          #   @return [Boolean, nil]
          optional :has_watermark_photo, Onlyfansapi::Internal::Type::Boolean, api_name: :hasWatermarkPhoto

          # @!attribute has_watermark_video
          #
          #   @return [Boolean, nil]
          optional :has_watermark_video, Onlyfansapi::Internal::Type::Boolean, api_name: :hasWatermarkVideo

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

          # @!attribute ip
          #
          #   @return [String, nil]
          optional :ip, String

          # @!attribute is_age_verified
          #
          #   @return [Boolean, nil]
          optional :is_age_verified, Onlyfansapi::Internal::Type::Boolean, api_name: :isAgeVerified

          # @!attribute is_allow_tweets
          #
          #   @return [Boolean, nil]
          optional :is_allow_tweets, Onlyfansapi::Internal::Type::Boolean, api_name: :isAllowTweets

          # @!attribute is_auth
          #
          #   @return [Boolean, nil]
          optional :is_auth, Onlyfansapi::Internal::Type::Boolean, api_name: :isAuth

          # @!attribute is_credits_enabled
          #
          #   @return [Boolean, nil]
          optional :is_credits_enabled, Onlyfansapi::Internal::Type::Boolean, api_name: :isCreditsEnabled

          # @!attribute is_delete_initiated
          #
          #   @return [Boolean, nil]
          optional :is_delete_initiated, Onlyfansapi::Internal::Type::Boolean, api_name: :isDeleteInitiated

          # @!attribute is_email_checked
          #
          #   @return [Boolean, nil]
          optional :is_email_checked, Onlyfansapi::Internal::Type::Boolean, api_name: :isEmailChecked

          # @!attribute is_email_required
          #
          #   @return [Boolean, nil]
          optional :is_email_required, Onlyfansapi::Internal::Type::Boolean, api_name: :isEmailRequired

          # @!attribute is_legal_approved_allowed
          #
          #   @return [Boolean, nil]
          optional :is_legal_approved_allowed,
                   Onlyfansapi::Internal::Type::Boolean,
                   api_name: :isLegalApprovedAllowed

          # @!attribute is_make_payment
          #
          #   @return [Boolean, nil]
          optional :is_make_payment, Onlyfansapi::Internal::Type::Boolean, api_name: :isMakePayment

          # @!attribute is_markdown_disabled_for_about
          #
          #   @return [Boolean, nil]
          optional :is_markdown_disabled_for_about,
                   Onlyfansapi::Internal::Type::Boolean,
                   api_name: :isMarkdownDisabledForAbout

          # @!attribute is_otp_enabled
          #
          #   @return [Boolean, nil]
          optional :is_otp_enabled, Onlyfansapi::Internal::Type::Boolean, api_name: :isOtpEnabled

          # @!attribute is_payment_card_connected
          #
          #   @return [Boolean, nil]
          optional :is_payment_card_connected,
                   Onlyfansapi::Internal::Type::Boolean,
                   api_name: :isPaymentCardConnected

          # @!attribute is_paywall_passed
          #
          #   @return [Boolean, nil]
          optional :is_paywall_passed, Onlyfansapi::Internal::Type::Boolean, api_name: :isPaywallPassed

          # @!attribute is_performer
          #
          #   @return [Boolean, nil]
          optional :is_performer, Onlyfansapi::Internal::Type::Boolean, api_name: :isPerformer

          # @!attribute is_real_card_connected
          #
          #   @return [Boolean, nil]
          optional :is_real_card_connected,
                   Onlyfansapi::Internal::Type::Boolean,
                   api_name: :isRealCardConnected

          # @!attribute is_real_performer
          #
          #   @return [Boolean, nil]
          optional :is_real_performer, Onlyfansapi::Internal::Type::Boolean, api_name: :isRealPerformer

          # @!attribute is_referrer_allowed
          #
          #   @return [Boolean, nil]
          optional :is_referrer_allowed, Onlyfansapi::Internal::Type::Boolean, api_name: :isReferrerAllowed

          # @!attribute is_spotify_connected
          #
          #   @return [Boolean, nil]
          optional :is_spotify_connected, Onlyfansapi::Internal::Type::Boolean, api_name: :isSpotifyConnected

          # @!attribute is_twitter_connected
          #
          #   @return [Boolean, nil]
          optional :is_twitter_connected, Onlyfansapi::Internal::Type::Boolean, api_name: :isTwitterConnected

          # @!attribute is_verified
          #
          #   @return [Boolean, nil]
          optional :is_verified, Onlyfansapi::Internal::Type::Boolean, api_name: :isVerified

          # @!attribute is_visible_online
          #
          #   @return [Boolean, nil]
          optional :is_visible_online, Onlyfansapi::Internal::Type::Boolean, api_name: :isVisibleOnline

          # @!attribute is_wallet_autorecharge
          #
          #   @return [Boolean, nil]
          optional :is_wallet_autorecharge,
                   Onlyfansapi::Internal::Type::Boolean,
                   api_name: :isWalletAutorecharge

          # @!attribute is_want_comments
          #
          #   @return [Boolean, nil]
          optional :is_want_comments, Onlyfansapi::Internal::Type::Boolean, api_name: :isWantComments

          # @!attribute iv_country
          #
          #   @return [String, nil]
          optional :iv_country, String, api_name: :ivCountry, nil?: true

          # @!attribute iv_fail_reason
          #
          #   @return [String, nil]
          optional :iv_fail_reason, String, api_name: :ivFailReason

          # @!attribute iv_flow
          #
          #   @return [String, nil]
          optional :iv_flow, String, api_name: :ivFlow

          # @!attribute iv_status
          #
          #   @return [String, nil]
          optional :iv_status, String, api_name: :ivStatus, nil?: true

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

          # @!attribute max_pinned_posts_count
          #
          #   @return [Integer, nil]
          optional :max_pinned_posts_count, Integer, api_name: :maxPinnedPostsCount

          # @!attribute medias_count
          #
          #   @return [Integer, nil]
          optional :medias_count, Integer, api_name: :mediasCount

          # @!attribute name
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute need_iv_approve
          #
          #   @return [Boolean, nil]
          optional :need_iv_approve, Onlyfansapi::Internal::Type::Boolean, api_name: :needIVApprove

          # @!attribute new_tags_count
          #
          #   @return [Integer, nil]
          optional :new_tags_count, Integer, api_name: :newTagsCount

          # @!attribute notifications_count
          #
          #   @return [Integer, nil]
          optional :notifications_count, Integer, api_name: :notificationsCount

          # @!attribute paid_feed
          #
          #   @return [Boolean, nil]
          optional :paid_feed, Onlyfansapi::Internal::Type::Boolean, api_name: :paidFeed

          # @!attribute payout_legal_approve_state
          #
          #   @return [String, nil]
          optional :payout_legal_approve_state, String, api_name: :payoutLegalApproveState

          # @!attribute photos_count
          #
          #   @return [Integer, nil]
          optional :photos_count, Integer, api_name: :photosCount

          # @!attribute pinned_posts_count
          #
          #   @return [Integer, nil]
          optional :pinned_posts_count, Integer, api_name: :pinnedPostsCount

          # @!attribute posts_count
          #
          #   @return [Integer, nil]
          optional :posts_count, Integer, api_name: :postsCount

          # @!attribute private_archived_posts_count
          #
          #   @return [Integer, nil]
          optional :private_archived_posts_count, Integer, api_name: :privateArchivedPostsCount

          # @!attribute show_posts_in_feed
          #
          #   @return [Boolean, nil]
          optional :show_posts_in_feed, Onlyfansapi::Internal::Type::Boolean, api_name: :showPostsInFeed

          # @!attribute subscribers_count
          #
          #   @return [Integer, nil]
          optional :subscribers_count, Integer, api_name: :subscribersCount

          # @!attribute subscribes_count
          #
          #   @return [Integer, nil]
          optional :subscribes_count, Integer, api_name: :subscribesCount

          # @!attribute twitter_username
          #
          #   @return [String, nil]
          optional :twitter_username, String, api_name: :twitterUsername, nil?: true

          # @!attribute upload
          #
          #   @return [Onlyfansapi::Models::AuthenticatePollStatusResponse::Account::OnlyfansData::Upload, nil]
          optional :upload,
                   -> { Onlyfansapi::Models::AuthenticatePollStatusResponse::Account::OnlyfansData::Upload }

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

          # @!attribute wallet_autorecharge_amount
          #
          #   @return [Integer, nil]
          optional :wallet_autorecharge_amount, Integer, api_name: :walletAutorechargeAmount

          # @!attribute wallet_autorecharge_min
          #
          #   @return [Integer, nil]
          optional :wallet_autorecharge_min, Integer, api_name: :walletAutorechargeMin

          # @!attribute wallet_first_rebills
          #
          #   @return [Boolean, nil]
          optional :wallet_first_rebills, Onlyfansapi::Internal::Type::Boolean, api_name: :walletFirstRebills

          # @!attribute watermark_position
          #
          #   @return [String, nil]
          optional :watermark_position, String, api_name: :watermarkPosition

          # @!attribute watermark_text
          #
          #   @return [String, nil]
          optional :watermark_text, String, api_name: :watermarkText

          # @!attribute website
          #
          #   @return [String, nil]
          optional :website, String, nil?: true

          # @!attribute wishlist
          #
          #   @return [String, nil]
          optional :wishlist, String, nil?: true

          # @!attribute ws_auth_token
          #
          #   @return [String, nil]
          optional :ws_auth_token, String, api_name: :wsAuthToken

          # @!attribute ws_url
          #
          #   @return [String, nil]
          optional :ws_url, String, api_name: :wsUrl

          # @!method initialize(id: nil, about: nil, adv_block: nil, age_verification_required: nil, age_verification_session: nil, archived_posts_count: nil, audios_count: nil, avatar: nil, avatar_header_converter_upload: nil, avatar_thumbs: nil, can_add_card: nil, can_alternative_wallet_top_up: nil, can_chat: nil, can_comment_story: nil, can_connect_of_account: nil, can_create_lists: nil, can_look_story: nil, can_pay_internal: nil, can_pin_post: nil, can_receive_chat_message: nil, can_send_chat_to_all: nil, chat_messages_count: nil, connected_of_accounts: nil, count_pinned_chat: nil, count_priority_chat: nil, credit_balance: nil, credits_max: nil, credits_min: nil, csrf: nil, email: nil, enabled_image_editor_for_chat: nil, face_id_regular: nil, favorited_count: nil, favorites_count: nil, has_internal_payments: nil, has_labels: nil, has_new_alerts: nil, has_new_changed_price_subscriptions: nil, has_new_hints: nil, has_new_ticket_replies: nil, has_not_viewed_story: nil, has_pinned_posts: nil, has_purchased_posts: nil, has_scenario: nil, has_system_notifications: nil, has_tags: nil, has_watermark_photo: nil, has_watermark_video: nil, header: nil, header_size: nil, header_thumbs: nil, ip: nil, is_age_verified: nil, is_allow_tweets: nil, is_auth: nil, is_credits_enabled: nil, is_delete_initiated: nil, is_email_checked: nil, is_email_required: nil, is_legal_approved_allowed: nil, is_make_payment: nil, is_markdown_disabled_for_about: nil, is_otp_enabled: nil, is_payment_card_connected: nil, is_paywall_passed: nil, is_performer: nil, is_real_card_connected: nil, is_real_performer: nil, is_referrer_allowed: nil, is_spotify_connected: nil, is_twitter_connected: nil, is_verified: nil, is_visible_online: nil, is_wallet_autorecharge: nil, is_want_comments: nil, iv_country: nil, iv_fail_reason: nil, iv_flow: nil, iv_status: nil, join_date: nil, last_seen: nil, location: nil, max_pinned_posts_count: nil, medias_count: nil, name: nil, need_iv_approve: nil, new_tags_count: nil, notifications_count: nil, paid_feed: nil, payout_legal_approve_state: nil, photos_count: nil, pinned_posts_count: nil, posts_count: nil, private_archived_posts_count: nil, show_posts_in_feed: nil, subscribers_count: nil, subscribes_count: nil, twitter_username: nil, upload: nil, username: nil, videos_count: nil, view: nil, wallet_autorecharge_amount: nil, wallet_autorecharge_min: nil, wallet_first_rebills: nil, watermark_position: nil, watermark_text: nil, website: nil, wishlist: nil, ws_auth_token: nil, ws_url: nil)
          #   @param id [Integer]
          #   @param about [String, nil]
          #   @param adv_block [Array<String>]
          #   @param age_verification_required [Boolean]
          #   @param age_verification_session [Onlyfansapi::Models::AuthenticatePollStatusResponse::Account::OnlyfansData::AgeVerificationSession]
          #   @param archived_posts_count [Integer]
          #   @param audios_count [Integer]
          #   @param avatar [String, nil]
          #   @param avatar_header_converter_upload [Boolean]
          #   @param avatar_thumbs [String, nil]
          #   @param can_add_card [Boolean]
          #   @param can_alternative_wallet_top_up [Boolean]
          #   @param can_chat [Boolean]
          #   @param can_comment_story [Boolean]
          #   @param can_connect_of_account [Boolean]
          #   @param can_create_lists [Boolean]
          #   @param can_look_story [Boolean]
          #   @param can_pay_internal [Boolean]
          #   @param can_pin_post [Boolean]
          #   @param can_receive_chat_message [Boolean]
          #   @param can_send_chat_to_all [Boolean]
          #   @param chat_messages_count [Integer]
          #   @param connected_of_accounts [Array<Object>]
          #   @param count_pinned_chat [Integer]
          #   @param count_priority_chat [Integer]
          #   @param credit_balance [Integer]
          #   @param credits_max [Integer]
          #   @param credits_min [Integer]
          #   @param csrf [String]
          #   @param email [String]
          #   @param enabled_image_editor_for_chat [Boolean]
          #   @param face_id_regular [Array<Object>]
          #   @param favorited_count [Integer]
          #   @param favorites_count [Integer]
          #   @param has_internal_payments [Boolean]
          #   @param has_labels [Boolean]
          #   @param has_new_alerts [Boolean]
          #   @param has_new_changed_price_subscriptions [Boolean]
          #   @param has_new_hints [Boolean]
          #   @param has_new_ticket_replies [Onlyfansapi::Models::AuthenticatePollStatusResponse::Account::OnlyfansData::HasNewTicketReplies]
          #   @param has_not_viewed_story [Boolean]
          #   @param has_pinned_posts [Boolean]
          #   @param has_purchased_posts [Boolean]
          #   @param has_scenario [Boolean]
          #   @param has_system_notifications [Boolean]
          #   @param has_tags [Boolean]
          #   @param has_watermark_photo [Boolean]
          #   @param has_watermark_video [Boolean]
          #   @param header [String, nil]
          #   @param header_size [String, nil]
          #   @param header_thumbs [String, nil]
          #   @param ip [String]
          #   @param is_age_verified [Boolean]
          #   @param is_allow_tweets [Boolean]
          #   @param is_auth [Boolean]
          #   @param is_credits_enabled [Boolean]
          #   @param is_delete_initiated [Boolean]
          #   @param is_email_checked [Boolean]
          #   @param is_email_required [Boolean]
          #   @param is_legal_approved_allowed [Boolean]
          #   @param is_make_payment [Boolean]
          #   @param is_markdown_disabled_for_about [Boolean]
          #   @param is_otp_enabled [Boolean]
          #   @param is_payment_card_connected [Boolean]
          #   @param is_paywall_passed [Boolean]
          #   @param is_performer [Boolean]
          #   @param is_real_card_connected [Boolean]
          #   @param is_real_performer [Boolean]
          #   @param is_referrer_allowed [Boolean]
          #   @param is_spotify_connected [Boolean]
          #   @param is_twitter_connected [Boolean]
          #   @param is_verified [Boolean]
          #   @param is_visible_online [Boolean]
          #   @param is_wallet_autorecharge [Boolean]
          #   @param is_want_comments [Boolean]
          #   @param iv_country [String, nil]
          #   @param iv_fail_reason [String]
          #   @param iv_flow [String]
          #   @param iv_status [String, nil]
          #   @param join_date [String]
          #   @param last_seen [String]
          #   @param location [String, nil]
          #   @param max_pinned_posts_count [Integer]
          #   @param medias_count [Integer]
          #   @param name [String]
          #   @param need_iv_approve [Boolean]
          #   @param new_tags_count [Integer]
          #   @param notifications_count [Integer]
          #   @param paid_feed [Boolean]
          #   @param payout_legal_approve_state [String]
          #   @param photos_count [Integer]
          #   @param pinned_posts_count [Integer]
          #   @param posts_count [Integer]
          #   @param private_archived_posts_count [Integer]
          #   @param show_posts_in_feed [Boolean]
          #   @param subscribers_count [Integer]
          #   @param subscribes_count [Integer]
          #   @param twitter_username [String, nil]
          #   @param upload [Onlyfansapi::Models::AuthenticatePollStatusResponse::Account::OnlyfansData::Upload]
          #   @param username [String]
          #   @param videos_count [Integer]
          #   @param view [String]
          #   @param wallet_autorecharge_amount [Integer]
          #   @param wallet_autorecharge_min [Integer]
          #   @param wallet_first_rebills [Boolean]
          #   @param watermark_position [String]
          #   @param watermark_text [String]
          #   @param website [String, nil]
          #   @param wishlist [String, nil]
          #   @param ws_auth_token [String]
          #   @param ws_url [String]

          # @see Onlyfansapi::Models::AuthenticatePollStatusResponse::Account::OnlyfansData#age_verification_session
          class AgeVerificationSession < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute api_flow
            #
            #   @return [String, nil]
            optional :api_flow, String, api_name: :apiFlow

            # @!attribute expired_at
            #
            #   @return [String, nil]
            optional :expired_at, String, api_name: :expiredAt

            # @!attribute status
            #
            #   @return [String, nil]
            optional :status, String

            # @!attribute url
            #
            #   @return [String, nil]
            optional :url, String

            # @!method initialize(api_flow: nil, expired_at: nil, status: nil, url: nil)
            #   @param api_flow [String]
            #   @param expired_at [String]
            #   @param status [String]
            #   @param url [String]
          end

          # @see Onlyfansapi::Models::AuthenticatePollStatusResponse::Account::OnlyfansData#has_new_ticket_replies
          class HasNewTicketReplies < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute closed
            #
            #   @return [Boolean, nil]
            optional :closed, Onlyfansapi::Internal::Type::Boolean

            # @!attribute open_
            #
            #   @return [Boolean, nil]
            optional :open_, Onlyfansapi::Internal::Type::Boolean, api_name: :open

            # @!attribute solved
            #
            #   @return [Boolean, nil]
            optional :solved, Onlyfansapi::Internal::Type::Boolean

            # @!method initialize(closed: nil, open_: nil, solved: nil)
            #   @param closed [Boolean]
            #   @param open_ [Boolean]
            #   @param solved [Boolean]
          end

          # @see Onlyfansapi::Models::AuthenticatePollStatusResponse::Account::OnlyfansData#upload
          class Upload < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute geo_upload_args
            #
            #   @return [Onlyfansapi::Models::AuthenticatePollStatusResponse::Account::OnlyfansData::Upload::GeoUploadArgs, nil]
            optional :geo_upload_args,
                     -> { Onlyfansapi::Models::AuthenticatePollStatusResponse::Account::OnlyfansData::Upload::GeoUploadArgs },
                     api_name: :geoUploadArgs

            # @!method initialize(geo_upload_args: nil)
            #   @param geo_upload_args [Onlyfansapi::Models::AuthenticatePollStatusResponse::Account::OnlyfansData::Upload::GeoUploadArgs]

            # @see Onlyfansapi::Models::AuthenticatePollStatusResponse::Account::OnlyfansData::Upload#geo_upload_args
            class GeoUploadArgs < Onlyfansapi::Internal::Type::BaseModel
              # @!attribute additional
              #
              #   @return [Onlyfansapi::Models::AuthenticatePollStatusResponse::Account::OnlyfansData::Upload::GeoUploadArgs::Additional, nil]
              optional :additional,
                       -> { Onlyfansapi::Models::AuthenticatePollStatusResponse::Account::OnlyfansData::Upload::GeoUploadArgs::Additional }

              # @!attribute is_delay
              #
              #   @return [Boolean, nil]
              optional :is_delay, Onlyfansapi::Internal::Type::Boolean, api_name: :isDelay

              # @!attribute need_thumbs
              #
              #   @return [Boolean, nil]
              optional :need_thumbs, Onlyfansapi::Internal::Type::Boolean, api_name: :needThumbs

              # @!attribute preset
              #
              #   @return [String, nil]
              optional :preset, String

              # @!attribute preset_png
              #
              #   @return [String, nil]
              optional :preset_png, String

              # @!attribute protected_preset
              #
              #   @return [String, nil]
              optional :protected_preset, String

              # @!method initialize(additional: nil, is_delay: nil, need_thumbs: nil, preset: nil, preset_png: nil, protected_preset: nil)
              #   @param additional [Onlyfansapi::Models::AuthenticatePollStatusResponse::Account::OnlyfansData::Upload::GeoUploadArgs::Additional]
              #   @param is_delay [Boolean]
              #   @param need_thumbs [Boolean]
              #   @param preset [String]
              #   @param preset_png [String]
              #   @param protected_preset [String]

              # @see Onlyfansapi::Models::AuthenticatePollStatusResponse::Account::OnlyfansData::Upload::GeoUploadArgs#additional
              class Additional < Onlyfansapi::Internal::Type::BaseModel
                # @!attribute user
                #
                #   @return [String, nil]
                optional :user, String

                # @!method initialize(user: nil)
                #   @param user [String]
              end
            end
          end
        end
      end

      # @see Onlyfansapi::Models::AuthenticatePollStatusResponse#last_attempt
      class LastAttempt < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute completed_at
        #
        #   @return [String, nil]
        optional :completed_at, String

        # @!attribute error_code
        #
        #   @return [String, nil]
        optional :error_code, String, nil?: true

        # @!attribute error_message
        #
        #   @return [String, nil]
        optional :error_message, String, nil?: true

        # @!attribute needs_otp
        #
        #   @return [Boolean, nil]
        optional :needs_otp, Onlyfansapi::Internal::Type::Boolean

        # @!attribute otp_phone_ending
        #
        #   @return [String, nil]
        optional :otp_phone_ending, String, nil?: true

        # @!attribute started_at
        #
        #   @return [String, nil]
        optional :started_at, String

        # @!attribute success
        #
        #   @return [Boolean, nil]
        optional :success, Onlyfansapi::Internal::Type::Boolean

        # @!method initialize(completed_at: nil, error_code: nil, error_message: nil, needs_otp: nil, otp_phone_ending: nil, started_at: nil, success: nil)
        #   @param completed_at [String]
        #   @param error_code [String, nil]
        #   @param error_message [String, nil]
        #   @param needs_otp [Boolean]
        #   @param otp_phone_ending [String, nil]
        #   @param started_at [String]
        #   @param success [Boolean]
      end
    end
  end
end
