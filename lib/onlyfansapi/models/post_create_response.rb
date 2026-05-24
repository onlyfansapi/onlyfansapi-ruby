# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Posts#create
    class PostCreateResponse < Onlyfansapi::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfansapi::Models::PostCreateResponse::Meta, nil]
      optional :_meta, -> { Onlyfansapi::Models::PostCreateResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfansapi::Models::PostCreateResponse::Data, nil]
      optional :data, -> { Onlyfansapi::Models::PostCreateResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfansapi::Models::PostCreateResponse::Meta]
      #   @param data [Onlyfansapi::Models::PostCreateResponse::Data]

      # @see Onlyfansapi::Models::PostCreateResponse#_meta
      class Meta < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfansapi::Models::PostCreateResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfansapi::Models::PostCreateResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfansapi::Models::PostCreateResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfansapi::Models::PostCreateResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfansapi::Models::PostCreateResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfansapi::Models::PostCreateResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfansapi::Models::PostCreateResponse::Meta::Cache]
        #   @param _credits [Onlyfansapi::Models::PostCreateResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfansapi::Models::PostCreateResponse::Meta::RateLimits]

        # @see Onlyfansapi::Models::PostCreateResponse::Meta#_cache
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

        # @see Onlyfansapi::Models::PostCreateResponse::Meta#_credits
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

        # @see Onlyfansapi::Models::PostCreateResponse::Meta#_rate_limits
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

      # @see Onlyfansapi::Models::PostCreateResponse#data
      class Data < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [Integer, nil]
        optional :id, Integer

        # @!attribute author
        #
        #   @return [Onlyfansapi::Models::PostCreateResponse::Data::Author, nil]
        optional :author, -> { Onlyfansapi::Models::PostCreateResponse::Data::Author }

        # @!attribute can_comment
        #
        #   @return [Boolean, nil]
        optional :can_comment, Onlyfansapi::Internal::Type::Boolean, api_name: :canComment

        # @!attribute can_delete
        #
        #   @return [Boolean, nil]
        optional :can_delete, Onlyfansapi::Internal::Type::Boolean, api_name: :canDelete

        # @!attribute can_edit
        #
        #   @return [Boolean, nil]
        optional :can_edit, Onlyfansapi::Internal::Type::Boolean, api_name: :canEdit

        # @!attribute can_toggle_favorite
        #
        #   @return [Boolean, nil]
        optional :can_toggle_favorite, Onlyfansapi::Internal::Type::Boolean, api_name: :canToggleFavorite

        # @!attribute can_view_media
        #
        #   @return [Boolean, nil]
        optional :can_view_media, Onlyfansapi::Internal::Type::Boolean, api_name: :canViewMedia

        # @!attribute is_markdown_disabled
        #
        #   @return [Boolean, nil]
        optional :is_markdown_disabled, Onlyfansapi::Internal::Type::Boolean, api_name: :isMarkdownDisabled

        # @!attribute is_opened
        #
        #   @return [Boolean, nil]
        optional :is_opened, Onlyfansapi::Internal::Type::Boolean, api_name: :isOpened

        # @!attribute media
        #
        #   @return [Array<Onlyfansapi::Models::PostCreateResponse::Data::Media>, nil]
        optional :media,
                 -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::PostCreateResponse::Data::Media] }

        # @!attribute media_count
        #
        #   @return [Integer, nil]
        optional :media_count, Integer, api_name: :mediaCount

        # @!attribute posted_at
        #
        #   @return [String, nil]
        optional :posted_at, String, api_name: :postedAt

        # @!attribute posted_at_precise
        #
        #   @return [String, nil]
        optional :posted_at_precise, String, api_name: :postedAtPrecise

        # @!attribute raw_text
        #
        #   @return [String, nil]
        optional :raw_text, String, api_name: :rawText

        # @!attribute response_type
        #
        #   @return [String, nil]
        optional :response_type, String, api_name: :responseType

        # @!attribute text
        #
        #   @return [String, nil]
        optional :text, String

        # @!attribute tips_amount
        #
        #   @return [String, nil]
        optional :tips_amount, String, api_name: :tipsAmount

        # @!method initialize(id: nil, author: nil, can_comment: nil, can_delete: nil, can_edit: nil, can_toggle_favorite: nil, can_view_media: nil, is_markdown_disabled: nil, is_opened: nil, media: nil, media_count: nil, posted_at: nil, posted_at_precise: nil, raw_text: nil, response_type: nil, text: nil, tips_amount: nil)
        #   @param id [Integer]
        #   @param author [Onlyfansapi::Models::PostCreateResponse::Data::Author]
        #   @param can_comment [Boolean]
        #   @param can_delete [Boolean]
        #   @param can_edit [Boolean]
        #   @param can_toggle_favorite [Boolean]
        #   @param can_view_media [Boolean]
        #   @param is_markdown_disabled [Boolean]
        #   @param is_opened [Boolean]
        #   @param media [Array<Onlyfansapi::Models::PostCreateResponse::Data::Media>]
        #   @param media_count [Integer]
        #   @param posted_at [String]
        #   @param posted_at_precise [String]
        #   @param raw_text [String]
        #   @param response_type [String]
        #   @param text [String]
        #   @param tips_amount [String]

        # @see Onlyfansapi::Models::PostCreateResponse::Data#author
        class Author < Onlyfansapi::Internal::Type::BaseModel
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
          #   @return [Onlyfansapi::Models::PostCreateResponse::Data::Author::AvatarThumbs, nil]
          optional :avatar_thumbs,
                   -> { Onlyfansapi::Models::PostCreateResponse::Data::Author::AvatarThumbs },
                   api_name: :avatarThumbs

          # @!attribute can_add_subscriber
          #
          #   @return [Boolean, nil]
          optional :can_add_subscriber, Onlyfansapi::Internal::Type::Boolean, api_name: :canAddSubscriber

          # @!attribute can_comment_story
          #
          #   @return [Boolean, nil]
          optional :can_comment_story, Onlyfansapi::Internal::Type::Boolean, api_name: :canCommentStory

          # @!attribute can_create_lists
          #
          #   @return [Boolean, nil]
          optional :can_create_lists, Onlyfansapi::Internal::Type::Boolean, api_name: :canCreateLists

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

          # @!attribute can_send_chat_to_all
          #
          #   @return [Boolean, nil]
          optional :can_send_chat_to_all, Onlyfansapi::Internal::Type::Boolean, api_name: :canSendChatToAll

          # @!attribute can_trial_send
          #
          #   @return [Boolean, nil]
          optional :can_trial_send, Onlyfansapi::Internal::Type::Boolean, api_name: :canTrialSend

          # @!attribute credits_max
          #
          #   @return [Integer, nil]
          optional :credits_max, Integer, api_name: :creditsMax

          # @!attribute credits_min
          #
          #   @return [Integer, nil]
          optional :credits_min, Integer, api_name: :creditsMin

          # @!attribute has_not_viewed_story
          #
          #   @return [Boolean, nil]
          optional :has_not_viewed_story, Onlyfansapi::Internal::Type::Boolean, api_name: :hasNotViewedStory

          # @!attribute has_scheduled_stream
          #
          #   @return [Boolean, nil]
          optional :has_scheduled_stream, Onlyfansapi::Internal::Type::Boolean, api_name: :hasScheduledStream

          # @!attribute has_stories
          #
          #   @return [Boolean, nil]
          optional :has_stories, Onlyfansapi::Internal::Type::Boolean, api_name: :hasStories

          # @!attribute has_stream
          #
          #   @return [Boolean, nil]
          optional :has_stream, Onlyfansapi::Internal::Type::Boolean, api_name: :hasStream

          # @!attribute has_stripe
          #
          #   @return [Boolean, nil]
          optional :has_stripe, Onlyfansapi::Internal::Type::Boolean, api_name: :hasStripe

          # @!attribute header
          #
          #   @return [String, nil]
          optional :header, String

          # @!attribute header_size
          #
          #   @return [Onlyfansapi::Models::PostCreateResponse::Data::Author::HeaderSize, nil]
          optional :header_size,
                   -> { Onlyfansapi::Models::PostCreateResponse::Data::Author::HeaderSize },
                   api_name: :headerSize

          # @!attribute header_thumbs
          #
          #   @return [Onlyfansapi::Models::PostCreateResponse::Data::Author::HeaderThumbs, nil]
          optional :header_thumbs,
                   -> { Onlyfansapi::Models::PostCreateResponse::Data::Author::HeaderThumbs },
                   api_name: :headerThumbs

          # @!attribute is_paywall_passed
          #
          #   @return [Boolean, nil]
          optional :is_paywall_passed, Onlyfansapi::Internal::Type::Boolean, api_name: :isPaywallPassed

          # @!attribute is_stripe_exist
          #
          #   @return [Boolean, nil]
          optional :is_stripe_exist, Onlyfansapi::Internal::Type::Boolean, api_name: :isStripeExist

          # @!attribute is_verified
          #
          #   @return [Boolean, nil]
          optional :is_verified, Onlyfansapi::Internal::Type::Boolean, api_name: :isVerified

          # @!attribute name
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute show_media_count
          #
          #   @return [Boolean, nil]
          optional :show_media_count, Onlyfansapi::Internal::Type::Boolean, api_name: :showMediaCount

          # @!attribute show_posts_in_feed
          #
          #   @return [Boolean, nil]
          optional :show_posts_in_feed, Onlyfansapi::Internal::Type::Boolean, api_name: :showPostsInFeed

          # @!attribute subscribed_by
          #
          #   @return [Boolean, nil]
          optional :subscribed_by, Onlyfansapi::Internal::Type::Boolean, api_name: :subscribedBy

          # @!attribute subscribe_price
          #
          #   @return [Float, nil]
          optional :subscribe_price, Float, api_name: :subscribePrice

          # @!attribute subscription_bundles
          #
          #   @return [Array<Object>, nil]
          optional :subscription_bundles,
                   Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Internal::Type::Unknown],
                   api_name: :subscriptionBundles

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

          # @!method initialize(id: nil, avatar: nil, avatar_thumbs: nil, can_add_subscriber: nil, can_comment_story: nil, can_create_lists: nil, can_earn: nil, can_look_story: nil, can_pay_internal: nil, can_send_chat_to_all: nil, can_trial_send: nil, credits_max: nil, credits_min: nil, has_not_viewed_story: nil, has_scheduled_stream: nil, has_stories: nil, has_stream: nil, has_stripe: nil, header: nil, header_size: nil, header_thumbs: nil, is_paywall_passed: nil, is_stripe_exist: nil, is_verified: nil, name: nil, show_media_count: nil, show_posts_in_feed: nil, subscribed_by: nil, subscribe_price: nil, subscription_bundles: nil, tips_enabled: nil, tips_max: nil, tips_min: nil, tips_min_internal: nil, tips_text_enabled: nil, username: nil, view: nil)
          #   @param id [Integer]
          #   @param avatar [String]
          #   @param avatar_thumbs [Onlyfansapi::Models::PostCreateResponse::Data::Author::AvatarThumbs]
          #   @param can_add_subscriber [Boolean]
          #   @param can_comment_story [Boolean]
          #   @param can_create_lists [Boolean]
          #   @param can_earn [Boolean]
          #   @param can_look_story [Boolean]
          #   @param can_pay_internal [Boolean]
          #   @param can_send_chat_to_all [Boolean]
          #   @param can_trial_send [Boolean]
          #   @param credits_max [Integer]
          #   @param credits_min [Integer]
          #   @param has_not_viewed_story [Boolean]
          #   @param has_scheduled_stream [Boolean]
          #   @param has_stories [Boolean]
          #   @param has_stream [Boolean]
          #   @param has_stripe [Boolean]
          #   @param header [String]
          #   @param header_size [Onlyfansapi::Models::PostCreateResponse::Data::Author::HeaderSize]
          #   @param header_thumbs [Onlyfansapi::Models::PostCreateResponse::Data::Author::HeaderThumbs]
          #   @param is_paywall_passed [Boolean]
          #   @param is_stripe_exist [Boolean]
          #   @param is_verified [Boolean]
          #   @param name [String]
          #   @param show_media_count [Boolean]
          #   @param show_posts_in_feed [Boolean]
          #   @param subscribed_by [Boolean]
          #   @param subscribe_price [Float]
          #   @param subscription_bundles [Array<Object>]
          #   @param tips_enabled [Boolean]
          #   @param tips_max [Integer]
          #   @param tips_min [Integer]
          #   @param tips_min_internal [Integer]
          #   @param tips_text_enabled [Boolean]
          #   @param username [String]
          #   @param view [String]

          # @see Onlyfansapi::Models::PostCreateResponse::Data::Author#avatar_thumbs
          class AvatarThumbs < Onlyfansapi::Internal::Type::BaseModel
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

          # @see Onlyfansapi::Models::PostCreateResponse::Data::Author#header_size
          class HeaderSize < Onlyfansapi::Internal::Type::BaseModel
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

          # @see Onlyfansapi::Models::PostCreateResponse::Data::Author#header_thumbs
          class HeaderThumbs < Onlyfansapi::Internal::Type::BaseModel
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

        class Media < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [Integer, nil]
          optional :id, Integer

          # @!attribute can_view
          #
          #   @return [Boolean, nil]
          optional :can_view, Onlyfansapi::Internal::Type::Boolean, api_name: :canView

          # @!attribute converted_to_video
          #
          #   @return [Boolean, nil]
          optional :converted_to_video, Onlyfansapi::Internal::Type::Boolean, api_name: :convertedToVideo

          # @!attribute created_at
          #
          #   @return [String, nil]
          optional :created_at, String, api_name: :createdAt

          # @!attribute duration
          #
          #   @return [Integer, nil]
          optional :duration, Integer

          # @!attribute files
          #
          #   @return [Onlyfansapi::Models::PostCreateResponse::Data::Media::Files, nil]
          optional :files, -> { Onlyfansapi::Models::PostCreateResponse::Data::Media::Files }

          # @!attribute has_custom_preview
          #
          #   @return [Boolean, nil]
          optional :has_custom_preview, Onlyfansapi::Internal::Type::Boolean, api_name: :hasCustomPreview

          # @!attribute has_error
          #
          #   @return [Boolean, nil]
          optional :has_error, Onlyfansapi::Internal::Type::Boolean, api_name: :hasError

          # @!attribute is_ready
          #
          #   @return [Boolean, nil]
          optional :is_ready, Onlyfansapi::Internal::Type::Boolean, api_name: :isReady

          # @!attribute release_forms
          #
          #   @return [Array<Object>, nil]
          optional :release_forms,
                   Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Internal::Type::Unknown],
                   api_name: :releaseForms

          # @!attribute type
          #
          #   @return [String, nil]
          optional :type, String

          # @!method initialize(id: nil, can_view: nil, converted_to_video: nil, created_at: nil, duration: nil, files: nil, has_custom_preview: nil, has_error: nil, is_ready: nil, release_forms: nil, type: nil)
          #   @param id [Integer]
          #   @param can_view [Boolean]
          #   @param converted_to_video [Boolean]
          #   @param created_at [String]
          #   @param duration [Integer]
          #   @param files [Onlyfansapi::Models::PostCreateResponse::Data::Media::Files]
          #   @param has_custom_preview [Boolean]
          #   @param has_error [Boolean]
          #   @param is_ready [Boolean]
          #   @param release_forms [Array<Object>]
          #   @param type [String]

          # @see Onlyfansapi::Models::PostCreateResponse::Data::Media#files
          class Files < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute full
            #
            #   @return [Onlyfansapi::Models::PostCreateResponse::Data::Media::Files::Full, nil]
            optional :full, -> { Onlyfansapi::Models::PostCreateResponse::Data::Media::Files::Full }

            # @!attribute preview
            #
            #   @return [String, nil]
            optional :preview, String, nil?: true

            # @!attribute square_preview
            #
            #   @return [String, nil]
            optional :square_preview, String, api_name: :squarePreview, nil?: true

            # @!attribute thumb
            #
            #   @return [String, nil]
            optional :thumb, String, nil?: true

            # @!method initialize(full: nil, preview: nil, square_preview: nil, thumb: nil)
            #   @param full [Onlyfansapi::Models::PostCreateResponse::Data::Media::Files::Full]
            #   @param preview [String, nil]
            #   @param square_preview [String, nil]
            #   @param thumb [String, nil]

            # @see Onlyfansapi::Models::PostCreateResponse::Data::Media::Files#full
            class Full < Onlyfansapi::Internal::Type::BaseModel
              # @!attribute height
              #
              #   @return [Integer, nil]
              optional :height, Integer

              # @!attribute size
              #
              #   @return [Integer, nil]
              optional :size, Integer

              # @!attribute sources
              #
              #   @return [Array<Object>, nil]
              optional :sources, Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Internal::Type::Unknown]

              # @!attribute url
              #
              #   @return [String, nil]
              optional :url, String, nil?: true

              # @!attribute width
              #
              #   @return [Integer, nil]
              optional :width, Integer

              # @!method initialize(height: nil, size: nil, sources: nil, url: nil, width: nil)
              #   @param height [Integer]
              #   @param size [Integer]
              #   @param sources [Array<Object>]
              #   @param url [String, nil]
              #   @param width [Integer]
            end
          end
        end
      end
    end
  end
end
