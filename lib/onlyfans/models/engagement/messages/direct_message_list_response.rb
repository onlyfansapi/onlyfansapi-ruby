# frozen_string_literal: true

module Onlyfans
  module Models
    module Engagement
      module Messages
        # @see Onlyfans::Resources::Engagement::Messages::DirectMessages#list
        class DirectMessageListResponse < Onlyfans::Internal::Type::BaseModel
          # @!attribute _meta
          #
          #   @return [Onlyfans::Models::Engagement::Messages::DirectMessageListResponse::Meta, nil]
          optional :_meta, -> { Onlyfans::Models::Engagement::Messages::DirectMessageListResponse::Meta }

          # @!attribute _pagination
          #
          #   @return [Onlyfans::Models::Engagement::Messages::DirectMessageListResponse::Pagination, nil]
          optional :_pagination,
                   -> { Onlyfans::Models::Engagement::Messages::DirectMessageListResponse::Pagination }

          # @!attribute data
          #
          #   @return [Onlyfans::Models::Engagement::Messages::DirectMessageListResponse::Data, nil]
          optional :data, -> { Onlyfans::Models::Engagement::Messages::DirectMessageListResponse::Data }

          # @!method initialize(_meta: nil, _pagination: nil, data: nil)
          #   @param _meta [Onlyfans::Models::Engagement::Messages::DirectMessageListResponse::Meta]
          #   @param _pagination [Onlyfans::Models::Engagement::Messages::DirectMessageListResponse::Pagination]
          #   @param data [Onlyfans::Models::Engagement::Messages::DirectMessageListResponse::Data]

          # @see Onlyfans::Models::Engagement::Messages::DirectMessageListResponse#_meta
          class Meta < Onlyfans::Internal::Type::BaseModel
            # @!attribute _cache
            #
            #   @return [Onlyfans::Models::Engagement::Messages::DirectMessageListResponse::Meta::Cache, nil]
            optional :_cache, -> { Onlyfans::Models::Engagement::Messages::DirectMessageListResponse::Meta::Cache }

            # @!attribute _credits
            #
            #   @return [Onlyfans::Models::Engagement::Messages::DirectMessageListResponse::Meta::Credits, nil]
            optional :_credits,
                     -> { Onlyfans::Models::Engagement::Messages::DirectMessageListResponse::Meta::Credits }

            # @!attribute _rate_limits
            #
            #   @return [Onlyfans::Models::Engagement::Messages::DirectMessageListResponse::Meta::RateLimits, nil]
            optional :_rate_limits,
                     -> { Onlyfans::Models::Engagement::Messages::DirectMessageListResponse::Meta::RateLimits }

            # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
            #   @param _cache [Onlyfans::Models::Engagement::Messages::DirectMessageListResponse::Meta::Cache]
            #   @param _credits [Onlyfans::Models::Engagement::Messages::DirectMessageListResponse::Meta::Credits]
            #   @param _rate_limits [Onlyfans::Models::Engagement::Messages::DirectMessageListResponse::Meta::RateLimits]

            # @see Onlyfans::Models::Engagement::Messages::DirectMessageListResponse::Meta#_cache
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

            # @see Onlyfans::Models::Engagement::Messages::DirectMessageListResponse::Meta#_credits
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

            # @see Onlyfans::Models::Engagement::Messages::DirectMessageListResponse::Meta#_rate_limits
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

          # @see Onlyfans::Models::Engagement::Messages::DirectMessageListResponse#_pagination
          class Pagination < Onlyfans::Internal::Type::BaseModel
            # @!attribute next_page
            #
            #   @return [String, nil]
            optional :next_page, String

            # @!method initialize(next_page: nil)
            #   @param next_page [String]
          end

          # @see Onlyfans::Models::Engagement::Messages::DirectMessageListResponse#data
          class Data < Onlyfans::Internal::Type::BaseModel
            # @!attribute has_more
            #
            #   @return [Boolean, nil]
            optional :has_more, Onlyfans::Internal::Type::Boolean, api_name: :hasMore

            # @!attribute items
            #
            #   @return [Array<Onlyfans::Models::Engagement::Messages::DirectMessageListResponse::Data::Item>, nil]
            optional :items,
                     -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::Engagement::Messages::DirectMessageListResponse::Data::Item] }

            # @!method initialize(has_more: nil, items: nil)
            #   @param has_more [Boolean]
            #   @param items [Array<Onlyfans::Models::Engagement::Messages::DirectMessageListResponse::Data::Item>]

            class Item < Onlyfans::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [Integer, nil]
              optional :id, Integer

              # @!attribute can_send_message_to_buyers
              #
              #   @return [Boolean, nil]
              optional :can_send_message_to_buyers,
                       Onlyfans::Internal::Type::Boolean,
                       api_name: :canSendMessageToBuyers

              # @!attribute can_unsend
              #
              #   @return [Boolean, nil]
              optional :can_unsend, Onlyfans::Internal::Type::Boolean, api_name: :canUnsend

              # @!attribute date
              #
              #   @return [String, nil]
              optional :date, String

              # @!attribute giphy_id
              #
              #   @return [String, nil]
              optional :giphy_id, String, api_name: :giphyId, nil?: true

              # @!attribute is_canceled
              #
              #   @return [Boolean, nil]
              optional :is_canceled, Onlyfans::Internal::Type::Boolean, api_name: :isCanceled

              # @!attribute is_free
              #
              #   @return [Boolean, nil]
              optional :is_free, Onlyfans::Internal::Type::Boolean, api_name: :isFree

              # @!attribute is_media_ready
              #
              #   @return [Boolean, nil]
              optional :is_media_ready, Onlyfans::Internal::Type::Boolean, api_name: :isMediaReady

              # @!attribute is_reported_by_me
              #
              #   @return [Boolean, nil]
              optional :is_reported_by_me, Onlyfans::Internal::Type::Boolean, api_name: :isReportedByMe

              # @!attribute is_tip
              #
              #   @return [Boolean, nil]
              optional :is_tip, Onlyfans::Internal::Type::Boolean, api_name: :isTip

              # @!attribute media
              #
              #   @return [Array<Onlyfans::Models::Engagement::Messages::DirectMessageListResponse::Data::Item::Media>, nil]
              optional :media,
                       -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::Engagement::Messages::DirectMessageListResponse::Data::Item::Media] }

              # @!attribute media_count
              #
              #   @return [Integer, nil]
              optional :media_count, Integer, api_name: :mediaCount

              # @!attribute message_id
              #
              #   @return [Integer, nil]
              optional :message_id, Integer, api_name: :messageId

              # @!attribute previews
              #
              #   @return [Array<Object>, nil]
              optional :previews, Onlyfans::Internal::Type::ArrayOf[Onlyfans::Internal::Type::Unknown]

              # @!attribute price
              #
              #   @return [String, nil]
              optional :price, String

              # @!attribute purchased_count
              #
              #   @return [Integer, nil]
              optional :purchased_count, Integer, api_name: :purchasedCount

              # @!attribute raw_text
              #
              #   @return [String, nil]
              optional :raw_text, String, api_name: :rawText

              # @!attribute response_type
              #
              #   @return [String, nil]
              optional :response_type, String, api_name: :responseType

              # @!attribute sent_count
              #
              #   @return [Integer, nil]
              optional :sent_count, Integer, api_name: :sentCount

              # @!attribute template
              #
              #   @return [String, nil]
              optional :template, String

              # @!attribute text
              #
              #   @return [String, nil]
              optional :text, String

              # @!attribute to_user_id
              #
              #   @return [Integer, nil]
              optional :to_user_id, Integer, api_name: :toUserId

              # @!attribute unsend_seconds
              #
              #   @return [Integer, nil]
              optional :unsend_seconds, Integer, api_name: :unsendSeconds

              # @!attribute viewed_count
              #
              #   @return [Integer, nil]
              optional :viewed_count, Integer, api_name: :viewedCount

              # @!method initialize(id: nil, can_send_message_to_buyers: nil, can_unsend: nil, date: nil, giphy_id: nil, is_canceled: nil, is_free: nil, is_media_ready: nil, is_reported_by_me: nil, is_tip: nil, media: nil, media_count: nil, message_id: nil, previews: nil, price: nil, purchased_count: nil, raw_text: nil, response_type: nil, sent_count: nil, template: nil, text: nil, to_user_id: nil, unsend_seconds: nil, viewed_count: nil)
              #   @param id [Integer]
              #   @param can_send_message_to_buyers [Boolean]
              #   @param can_unsend [Boolean]
              #   @param date [String]
              #   @param giphy_id [String, nil]
              #   @param is_canceled [Boolean]
              #   @param is_free [Boolean]
              #   @param is_media_ready [Boolean]
              #   @param is_reported_by_me [Boolean]
              #   @param is_tip [Boolean]
              #   @param media [Array<Onlyfans::Models::Engagement::Messages::DirectMessageListResponse::Data::Item::Media>]
              #   @param media_count [Integer]
              #   @param message_id [Integer]
              #   @param previews [Array<Object>]
              #   @param price [String]
              #   @param purchased_count [Integer]
              #   @param raw_text [String]
              #   @param response_type [String]
              #   @param sent_count [Integer]
              #   @param template [String]
              #   @param text [String]
              #   @param to_user_id [Integer]
              #   @param unsend_seconds [Integer]
              #   @param viewed_count [Integer]

              class Media < Onlyfans::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [Integer, nil]
                optional :id, Integer

                # @!attribute can_view
                #
                #   @return [Boolean, nil]
                optional :can_view, Onlyfans::Internal::Type::Boolean, api_name: :canView

                # @!attribute converted_to_video
                #
                #   @return [Boolean, nil]
                optional :converted_to_video, Onlyfans::Internal::Type::Boolean, api_name: :convertedToVideo

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
                #   @return [Onlyfans::Models::Engagement::Messages::DirectMessageListResponse::Data::Item::Media::Files, nil]
                optional :files,
                         -> { Onlyfans::Models::Engagement::Messages::DirectMessageListResponse::Data::Item::Media::Files }

                # @!attribute has_custom_preview
                #
                #   @return [Boolean, nil]
                optional :has_custom_preview, Onlyfans::Internal::Type::Boolean, api_name: :hasCustomPreview

                # @!attribute has_error
                #
                #   @return [Boolean, nil]
                optional :has_error, Onlyfans::Internal::Type::Boolean, api_name: :hasError

                # @!attribute is_ready
                #
                #   @return [Boolean, nil]
                optional :is_ready, Onlyfans::Internal::Type::Boolean, api_name: :isReady

                # @!attribute type
                #
                #   @return [String, nil]
                optional :type, String

                # @!attribute video_sources
                #
                #   @return [Onlyfans::Models::Engagement::Messages::DirectMessageListResponse::Data::Item::Media::VideoSources, nil]
                optional :video_sources,
                         -> { Onlyfans::Models::Engagement::Messages::DirectMessageListResponse::Data::Item::Media::VideoSources },
                         api_name: :videoSources

                # @!method initialize(id: nil, can_view: nil, converted_to_video: nil, created_at: nil, duration: nil, files: nil, has_custom_preview: nil, has_error: nil, is_ready: nil, type: nil, video_sources: nil)
                #   @param id [Integer]
                #   @param can_view [Boolean]
                #   @param converted_to_video [Boolean]
                #   @param created_at [String]
                #   @param duration [Integer]
                #   @param files [Onlyfans::Models::Engagement::Messages::DirectMessageListResponse::Data::Item::Media::Files]
                #   @param has_custom_preview [Boolean]
                #   @param has_error [Boolean]
                #   @param is_ready [Boolean]
                #   @param type [String]
                #   @param video_sources [Onlyfans::Models::Engagement::Messages::DirectMessageListResponse::Data::Item::Media::VideoSources]

                # @see Onlyfans::Models::Engagement::Messages::DirectMessageListResponse::Data::Item::Media#files
                class Files < Onlyfans::Internal::Type::BaseModel
                  # @!attribute full
                  #
                  #   @return [Onlyfans::Models::Engagement::Messages::DirectMessageListResponse::Data::Item::Media::Files::Full, nil]
                  optional :full,
                           -> { Onlyfans::Models::Engagement::Messages::DirectMessageListResponse::Data::Item::Media::Files::Full }

                  # @!attribute preview
                  #
                  #   @return [Onlyfans::Models::Engagement::Messages::DirectMessageListResponse::Data::Item::Media::Files::Preview, nil]
                  optional :preview,
                           -> { Onlyfans::Models::Engagement::Messages::DirectMessageListResponse::Data::Item::Media::Files::Preview }

                  # @!attribute square_preview
                  #
                  #   @return [Onlyfans::Models::Engagement::Messages::DirectMessageListResponse::Data::Item::Media::Files::SquarePreview, nil]
                  optional :square_preview,
                           -> { Onlyfans::Models::Engagement::Messages::DirectMessageListResponse::Data::Item::Media::Files::SquarePreview },
                           api_name: :squarePreview

                  # @!attribute thumb
                  #
                  #   @return [Onlyfans::Models::Engagement::Messages::DirectMessageListResponse::Data::Item::Media::Files::Thumb, nil]
                  optional :thumb,
                           -> { Onlyfans::Models::Engagement::Messages::DirectMessageListResponse::Data::Item::Media::Files::Thumb }

                  # @!method initialize(full: nil, preview: nil, square_preview: nil, thumb: nil)
                  #   @param full [Onlyfans::Models::Engagement::Messages::DirectMessageListResponse::Data::Item::Media::Files::Full]
                  #   @param preview [Onlyfans::Models::Engagement::Messages::DirectMessageListResponse::Data::Item::Media::Files::Preview]
                  #   @param square_preview [Onlyfans::Models::Engagement::Messages::DirectMessageListResponse::Data::Item::Media::Files::SquarePreview]
                  #   @param thumb [Onlyfans::Models::Engagement::Messages::DirectMessageListResponse::Data::Item::Media::Files::Thumb]

                  # @see Onlyfans::Models::Engagement::Messages::DirectMessageListResponse::Data::Item::Media::Files#full
                  class Full < Onlyfans::Internal::Type::BaseModel
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
                    optional :sources, Onlyfans::Internal::Type::ArrayOf[Onlyfans::Internal::Type::Unknown]

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

                  # @see Onlyfans::Models::Engagement::Messages::DirectMessageListResponse::Data::Item::Media::Files#preview
                  class Preview < Onlyfans::Internal::Type::BaseModel
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

                  # @see Onlyfans::Models::Engagement::Messages::DirectMessageListResponse::Data::Item::Media::Files#square_preview
                  class SquarePreview < Onlyfans::Internal::Type::BaseModel
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

                  # @see Onlyfans::Models::Engagement::Messages::DirectMessageListResponse::Data::Item::Media::Files#thumb
                  class Thumb < Onlyfans::Internal::Type::BaseModel
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

                # @see Onlyfans::Models::Engagement::Messages::DirectMessageListResponse::Data::Item::Media#video_sources
                class VideoSources < Onlyfans::Internal::Type::BaseModel
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
  end
end
