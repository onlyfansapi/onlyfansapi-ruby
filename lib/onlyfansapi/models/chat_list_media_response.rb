# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Chats#list_media
    class ChatListMediaResponse < Onlyfansapi::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfansapi::Models::ChatListMediaResponse::Meta, nil]
      optional :_meta, -> { Onlyfansapi::Models::ChatListMediaResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfansapi::Models::ChatListMediaResponse::Data, nil]
      optional :data, -> { Onlyfansapi::Models::ChatListMediaResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfansapi::Models::ChatListMediaResponse::Meta]
      #   @param data [Onlyfansapi::Models::ChatListMediaResponse::Data]

      # @see Onlyfansapi::Models::ChatListMediaResponse#_meta
      class Meta < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfansapi::Models::ChatListMediaResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfansapi::Models::ChatListMediaResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfansapi::Models::ChatListMediaResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfansapi::Models::ChatListMediaResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfansapi::Models::ChatListMediaResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfansapi::Models::ChatListMediaResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfansapi::Models::ChatListMediaResponse::Meta::Cache]
        #   @param _credits [Onlyfansapi::Models::ChatListMediaResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfansapi::Models::ChatListMediaResponse::Meta::RateLimits]

        # @see Onlyfansapi::Models::ChatListMediaResponse::Meta#_cache
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

        # @see Onlyfansapi::Models::ChatListMediaResponse::Meta#_credits
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

        # @see Onlyfansapi::Models::ChatListMediaResponse::Meta#_rate_limits
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

      # @see Onlyfansapi::Models::ChatListMediaResponse#data
      class Data < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute has_more
        #
        #   @return [Boolean, nil]
        optional :has_more, Onlyfansapi::Internal::Type::Boolean, api_name: :hasMore

        # @!attribute list
        #
        #   @return [Array<Onlyfansapi::Models::ChatListMediaResponse::Data::List>, nil]
        optional :list,
                 -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::ChatListMediaResponse::Data::List] }

        # @!attribute next_last_id
        #
        #   @return [String, nil]
        optional :next_last_id, String, api_name: :nextLastId

        # @!method initialize(has_more: nil, list: nil, next_last_id: nil)
        #   @param has_more [Boolean]
        #   @param list [Array<Onlyfansapi::Models::ChatListMediaResponse::Data::List>]
        #   @param next_last_id [String]

        class List < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [Integer, nil]
          optional :id, Integer

          # @!attribute can_be_pinned
          #
          #   @return [Boolean, nil]
          optional :can_be_pinned, Onlyfansapi::Internal::Type::Boolean, api_name: :canBePinned

          # @!attribute cancel_seconds
          #
          #   @return [Integer, nil]
          optional :cancel_seconds, Integer, api_name: :cancelSeconds

          # @!attribute can_purchase
          #
          #   @return [Boolean, nil]
          optional :can_purchase, Onlyfansapi::Internal::Type::Boolean, api_name: :canPurchase

          # @!attribute can_purchase_reason
          #
          #   @return [String, nil]
          optional :can_purchase_reason, String, api_name: :canPurchaseReason

          # @!attribute can_report
          #
          #   @return [Boolean, nil]
          optional :can_report, Onlyfansapi::Internal::Type::Boolean, api_name: :canReport

          # @!attribute changed_at
          #
          #   @return [String, nil]
          optional :changed_at, String, api_name: :changedAt

          # @!attribute created_at
          #
          #   @return [String, nil]
          optional :created_at, String, api_name: :createdAt

          # @!attribute from_user
          #
          #   @return [Onlyfansapi::Models::ChatListMediaResponse::Data::List::FromUser, nil]
          optional :from_user,
                   -> { Onlyfansapi::Models::ChatListMediaResponse::Data::List::FromUser },
                   api_name: :fromUser

          # @!attribute giphy_id
          #
          #   @return [String, nil]
          optional :giphy_id, String, api_name: :giphyId, nil?: true

          # @!attribute is_couple_people_media
          #
          #   @return [Boolean, nil]
          optional :is_couple_people_media,
                   Onlyfansapi::Internal::Type::Boolean,
                   api_name: :isCouplePeopleMedia

          # @!attribute is_free
          #
          #   @return [Boolean, nil]
          optional :is_free, Onlyfansapi::Internal::Type::Boolean, api_name: :isFree

          # @!attribute is_from_queue
          #
          #   @return [Boolean, nil]
          optional :is_from_queue, Onlyfansapi::Internal::Type::Boolean, api_name: :isFromQueue

          # @!attribute is_liked
          #
          #   @return [Boolean, nil]
          optional :is_liked, Onlyfansapi::Internal::Type::Boolean, api_name: :isLiked

          # @!attribute is_markdown_disabled
          #
          #   @return [Boolean, nil]
          optional :is_markdown_disabled, Onlyfansapi::Internal::Type::Boolean, api_name: :isMarkdownDisabled

          # @!attribute is_media_ready
          #
          #   @return [Boolean, nil]
          optional :is_media_ready, Onlyfansapi::Internal::Type::Boolean, api_name: :isMediaReady

          # @!attribute is_new
          #
          #   @return [Boolean, nil]
          optional :is_new, Onlyfansapi::Internal::Type::Boolean, api_name: :isNew

          # @!attribute is_opened
          #
          #   @return [Boolean, nil]
          optional :is_opened, Onlyfansapi::Internal::Type::Boolean, api_name: :isOpened

          # @!attribute is_pinned
          #
          #   @return [Boolean, nil]
          optional :is_pinned, Onlyfansapi::Internal::Type::Boolean, api_name: :isPinned

          # @!attribute is_reported_by_me
          #
          #   @return [Boolean, nil]
          optional :is_reported_by_me, Onlyfansapi::Internal::Type::Boolean, api_name: :isReportedByMe

          # @!attribute is_tip
          #
          #   @return [Boolean, nil]
          optional :is_tip, Onlyfansapi::Internal::Type::Boolean, api_name: :isTip

          # @!attribute locked_text
          #
          #   @return [Boolean, nil]
          optional :locked_text, Onlyfansapi::Internal::Type::Boolean, api_name: :lockedText

          # @!attribute media
          #
          #   @return [Array<Onlyfansapi::Models::ChatListMediaResponse::Data::List::Media>, nil]
          optional :media,
                   -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::ChatListMediaResponse::Data::List::Media] }

          # @!attribute media_count
          #
          #   @return [Integer, nil]
          optional :media_count, Integer, api_name: :mediaCount

          # @!attribute previews
          #
          #   @return [Array<Object>, nil]
          optional :previews, Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Internal::Type::Unknown]

          # @!attribute price
          #
          #   @return [Integer, nil]
          optional :price, Integer

          # @!attribute queue_id
          #
          #   @return [Integer, nil]
          optional :queue_id, Integer, api_name: :queueId

          # @!attribute release_forms
          #
          #   @return [Array<Object>, nil]
          optional :release_forms,
                   Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Internal::Type::Unknown],
                   api_name: :releaseForms

          # @!attribute response_type
          #
          #   @return [String, nil]
          optional :response_type, String, api_name: :responseType

          # @!attribute text
          #
          #   @return [String, nil]
          optional :text, String

          # @!method initialize(id: nil, can_be_pinned: nil, cancel_seconds: nil, can_purchase: nil, can_purchase_reason: nil, can_report: nil, changed_at: nil, created_at: nil, from_user: nil, giphy_id: nil, is_couple_people_media: nil, is_free: nil, is_from_queue: nil, is_liked: nil, is_markdown_disabled: nil, is_media_ready: nil, is_new: nil, is_opened: nil, is_pinned: nil, is_reported_by_me: nil, is_tip: nil, locked_text: nil, media: nil, media_count: nil, previews: nil, price: nil, queue_id: nil, release_forms: nil, response_type: nil, text: nil)
          #   @param id [Integer]
          #   @param can_be_pinned [Boolean]
          #   @param cancel_seconds [Integer]
          #   @param can_purchase [Boolean]
          #   @param can_purchase_reason [String]
          #   @param can_report [Boolean]
          #   @param changed_at [String]
          #   @param created_at [String]
          #   @param from_user [Onlyfansapi::Models::ChatListMediaResponse::Data::List::FromUser]
          #   @param giphy_id [String, nil]
          #   @param is_couple_people_media [Boolean]
          #   @param is_free [Boolean]
          #   @param is_from_queue [Boolean]
          #   @param is_liked [Boolean]
          #   @param is_markdown_disabled [Boolean]
          #   @param is_media_ready [Boolean]
          #   @param is_new [Boolean]
          #   @param is_opened [Boolean]
          #   @param is_pinned [Boolean]
          #   @param is_reported_by_me [Boolean]
          #   @param is_tip [Boolean]
          #   @param locked_text [Boolean]
          #   @param media [Array<Onlyfansapi::Models::ChatListMediaResponse::Data::List::Media>]
          #   @param media_count [Integer]
          #   @param previews [Array<Object>]
          #   @param price [Integer]
          #   @param queue_id [Integer]
          #   @param release_forms [Array<Object>]
          #   @param response_type [String]
          #   @param text [String]

          # @see Onlyfansapi::Models::ChatListMediaResponse::Data::List#from_user
          class FromUser < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [Integer, nil]
            optional :id, Integer

            # @!attribute _view
            #
            #   @return [String, nil]
            optional :_view, String

            # @!method initialize(id: nil, _view: nil)
            #   @param id [Integer]
            #   @param _view [String]
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
            #   @return [Onlyfansapi::Models::ChatListMediaResponse::Data::List::Media::Files, nil]
            optional :files, -> { Onlyfansapi::Models::ChatListMediaResponse::Data::List::Media::Files }

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

            # @!attribute type
            #
            #   @return [String, nil]
            optional :type, String

            # @!attribute video_sources
            #
            #   @return [Onlyfansapi::Models::ChatListMediaResponse::Data::List::Media::VideoSources, nil]
            optional :video_sources,
                     -> { Onlyfansapi::Models::ChatListMediaResponse::Data::List::Media::VideoSources },
                     api_name: :videoSources

            # @!method initialize(id: nil, can_view: nil, converted_to_video: nil, created_at: nil, duration: nil, files: nil, has_custom_preview: nil, has_error: nil, is_ready: nil, type: nil, video_sources: nil)
            #   @param id [Integer]
            #   @param can_view [Boolean]
            #   @param converted_to_video [Boolean]
            #   @param created_at [String]
            #   @param duration [Integer]
            #   @param files [Onlyfansapi::Models::ChatListMediaResponse::Data::List::Media::Files]
            #   @param has_custom_preview [Boolean]
            #   @param has_error [Boolean]
            #   @param is_ready [Boolean]
            #   @param type [String]
            #   @param video_sources [Onlyfansapi::Models::ChatListMediaResponse::Data::List::Media::VideoSources]

            # @see Onlyfansapi::Models::ChatListMediaResponse::Data::List::Media#files
            class Files < Onlyfansapi::Internal::Type::BaseModel
              # @!attribute full
              #
              #   @return [Onlyfansapi::Models::ChatListMediaResponse::Data::List::Media::Files::Full, nil]
              optional :full, -> { Onlyfansapi::Models::ChatListMediaResponse::Data::List::Media::Files::Full }

              # @!attribute preview
              #
              #   @return [Onlyfansapi::Models::ChatListMediaResponse::Data::List::Media::Files::Preview, nil]
              optional :preview, -> { Onlyfansapi::Models::ChatListMediaResponse::Data::List::Media::Files::Preview }

              # @!attribute square_preview
              #
              #   @return [Onlyfansapi::Models::ChatListMediaResponse::Data::List::Media::Files::SquarePreview, nil]
              optional :square_preview,
                       -> { Onlyfansapi::Models::ChatListMediaResponse::Data::List::Media::Files::SquarePreview },
                       api_name: :squarePreview

              # @!attribute thumb
              #
              #   @return [Onlyfansapi::Models::ChatListMediaResponse::Data::List::Media::Files::Thumb, nil]
              optional :thumb, -> { Onlyfansapi::Models::ChatListMediaResponse::Data::List::Media::Files::Thumb }

              # @!method initialize(full: nil, preview: nil, square_preview: nil, thumb: nil)
              #   @param full [Onlyfansapi::Models::ChatListMediaResponse::Data::List::Media::Files::Full]
              #   @param preview [Onlyfansapi::Models::ChatListMediaResponse::Data::List::Media::Files::Preview]
              #   @param square_preview [Onlyfansapi::Models::ChatListMediaResponse::Data::List::Media::Files::SquarePreview]
              #   @param thumb [Onlyfansapi::Models::ChatListMediaResponse::Data::List::Media::Files::Thumb]

              # @see Onlyfansapi::Models::ChatListMediaResponse::Data::List::Media::Files#full
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
                optional :url, String

                # @!attribute width
                #
                #   @return [Integer, nil]
                optional :width, Integer

                # @!method initialize(height: nil, size: nil, sources: nil, url: nil, width: nil)
                #   @param height [Integer]
                #   @param size [Integer]
                #   @param sources [Array<Object>]
                #   @param url [String]
                #   @param width [Integer]
              end

              # @see Onlyfansapi::Models::ChatListMediaResponse::Data::List::Media::Files#preview
              class Preview < Onlyfansapi::Internal::Type::BaseModel
                # @!attribute height
                #
                #   @return [Integer, nil]
                optional :height, Integer

                # @!attribute size
                #
                #   @return [Integer, nil]
                optional :size, Integer

                # @!attribute url
                #
                #   @return [String, nil]
                optional :url, String

                # @!attribute width
                #
                #   @return [Integer, nil]
                optional :width, Integer

                # @!method initialize(height: nil, size: nil, url: nil, width: nil)
                #   @param height [Integer]
                #   @param size [Integer]
                #   @param url [String]
                #   @param width [Integer]
              end

              # @see Onlyfansapi::Models::ChatListMediaResponse::Data::List::Media::Files#square_preview
              class SquarePreview < Onlyfansapi::Internal::Type::BaseModel
                # @!attribute height
                #
                #   @return [Integer, nil]
                optional :height, Integer

                # @!attribute size
                #
                #   @return [Integer, nil]
                optional :size, Integer

                # @!attribute url
                #
                #   @return [String, nil]
                optional :url, String

                # @!attribute width
                #
                #   @return [Integer, nil]
                optional :width, Integer

                # @!method initialize(height: nil, size: nil, url: nil, width: nil)
                #   @param height [Integer]
                #   @param size [Integer]
                #   @param url [String]
                #   @param width [Integer]
              end

              # @see Onlyfansapi::Models::ChatListMediaResponse::Data::List::Media::Files#thumb
              class Thumb < Onlyfansapi::Internal::Type::BaseModel
                # @!attribute height
                #
                #   @return [Integer, nil]
                optional :height, Integer

                # @!attribute size
                #
                #   @return [Integer, nil]
                optional :size, Integer

                # @!attribute url
                #
                #   @return [String, nil]
                optional :url, String

                # @!attribute width
                #
                #   @return [Integer, nil]
                optional :width, Integer

                # @!method initialize(height: nil, size: nil, url: nil, width: nil)
                #   @param height [Integer]
                #   @param size [Integer]
                #   @param url [String]
                #   @param width [Integer]
              end
            end

            # @see Onlyfansapi::Models::ChatListMediaResponse::Data::List::Media#video_sources
            class VideoSources < Onlyfansapi::Internal::Type::BaseModel
              # @!attribute number_240
              #
              #   @return [String, nil]
              optional :number_240, String, api_name: :"240", nil?: true

              # @!attribute number_720
              #
              #   @return [String, nil]
              optional :number_720, String, api_name: :"720", nil?: true

              # @!method initialize(number_240: nil, number_720: nil)
              #   @param number_240 [String, nil]
              #   @param number_720 [String, nil]
            end
          end
        end
      end
    end
  end
end
