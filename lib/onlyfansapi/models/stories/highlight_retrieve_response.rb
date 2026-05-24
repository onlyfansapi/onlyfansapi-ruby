# frozen_string_literal: true

module Onlyfansapi
  module Models
    module Stories
      # @see Onlyfansapi::Resources::Stories::Highlights#retrieve
      class HighlightRetrieveResponse < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute _meta
        #
        #   @return [Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Meta, nil]
        optional :_meta, -> { Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Meta }

        # @!attribute data
        #
        #   @return [Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data, nil]
        optional :data, -> { Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data }

        # @!method initialize(_meta: nil, data: nil)
        #   @param _meta [Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Meta]
        #   @param data [Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data]

        # @see Onlyfansapi::Models::Stories::HighlightRetrieveResponse#_meta
        class Meta < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute _cache
          #
          #   @return [Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Meta::Cache, nil]
          optional :_cache, -> { Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Meta::Cache }

          # @!attribute _credits
          #
          #   @return [Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Meta::Credits, nil]
          optional :_credits, -> { Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Meta::Credits }

          # @!attribute _rate_limits
          #
          #   @return [Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Meta::RateLimits, nil]
          optional :_rate_limits, -> { Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Meta::RateLimits }

          # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
          #   @param _cache [Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Meta::Cache]
          #   @param _credits [Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Meta::Credits]
          #   @param _rate_limits [Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Meta::RateLimits]

          # @see Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Meta#_cache
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

          # @see Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Meta#_credits
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

          # @see Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Meta#_rate_limits
          class RateLimits < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute limit_day
            #
            #   @return [String, nil]
            optional :limit_day, String, nil?: true

            # @!attribute limit_minute
            #
            #   @return [Integer, nil]
            optional :limit_minute, Integer

            # @!attribute notice
            #
            #   @return [String, nil]
            optional :notice, String

            # @!attribute remaining_day
            #
            #   @return [String, nil]
            optional :remaining_day, String, nil?: true

            # @!attribute remaining_minute
            #
            #   @return [Integer, nil]
            optional :remaining_minute, Integer

            # @!method initialize(limit_day: nil, limit_minute: nil, notice: nil, remaining_day: nil, remaining_minute: nil)
            #   @param limit_day [String, nil]
            #   @param limit_minute [Integer]
            #   @param notice [String]
            #   @param remaining_day [String, nil]
            #   @param remaining_minute [Integer]
          end
        end

        # @see Onlyfansapi::Models::Stories::HighlightRetrieveResponse#data
        class Data < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [Integer, nil]
          optional :id, Integer

          # @!attribute cover
          #
          #   @return [String, nil]
          optional :cover, String

          # @!attribute cover_story_id
          #
          #   @return [Integer, nil]
          optional :cover_story_id, Integer, api_name: :coverStoryId

          # @!attribute created_at
          #
          #   @return [String, nil]
          optional :created_at, String, api_name: :createdAt

          # @!attribute stories
          #
          #   @return [Array<Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story>, nil]
          optional :stories,
                   -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story] }

          # @!attribute stories_count
          #
          #   @return [Integer, nil]
          optional :stories_count, Integer, api_name: :storiesCount

          # @!attribute title
          #
          #   @return [String, nil]
          optional :title, String

          # @!attribute user_id
          #
          #   @return [Integer, nil]
          optional :user_id, Integer, api_name: :userId

          # @!method initialize(id: nil, cover: nil, cover_story_id: nil, created_at: nil, stories: nil, stories_count: nil, title: nil, user_id: nil)
          #   @param id [Integer]
          #   @param cover [String]
          #   @param cover_story_id [Integer]
          #   @param created_at [String]
          #   @param stories [Array<Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story>]
          #   @param stories_count [Integer]
          #   @param title [String]
          #   @param user_id [Integer]

          class Story < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [Integer, nil]
            optional :id, Integer

            # @!attribute can_delete
            #
            #   @return [Boolean, nil]
            optional :can_delete, Onlyfansapi::Internal::Type::Boolean, api_name: :canDelete

            # @!attribute canvas_height
            #
            #   @return [Integer, nil]
            optional :canvas_height, Integer, api_name: :canvasHeight

            # @!attribute canvas_width
            #
            #   @return [Integer, nil]
            optional :canvas_width, Integer, api_name: :canvasWidth

            # @!attribute comments_count
            #
            #   @return [Integer, nil]
            optional :comments_count, Integer, api_name: :commentsCount

            # @!attribute created_at
            #
            #   @return [String, nil]
            optional :created_at, String, api_name: :createdAt

            # @!attribute has_post
            #
            #   @return [Boolean, nil]
            optional :has_post, Onlyfansapi::Internal::Type::Boolean, api_name: :hasPost

            # @!attribute is_highlight_cover
            #
            #   @return [Boolean, nil]
            optional :is_highlight_cover, Onlyfansapi::Internal::Type::Boolean, api_name: :isHighlightCover

            # @!attribute is_last_in_highlight
            #
            #   @return [Boolean, nil]
            optional :is_last_in_highlight, Onlyfansapi::Internal::Type::Boolean, api_name: :isLastInHighlight

            # @!attribute is_ready
            #
            #   @return [Boolean, nil]
            optional :is_ready, Onlyfansapi::Internal::Type::Boolean, api_name: :isReady

            # @!attribute is_watched
            #
            #   @return [Boolean, nil]
            optional :is_watched, Onlyfansapi::Internal::Type::Boolean, api_name: :isWatched

            # @!attribute likes_count
            #
            #   @return [Integer, nil]
            optional :likes_count, Integer, api_name: :likesCount

            # @!attribute media
            #
            #   @return [Array<Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media>, nil]
            optional :media,
                     -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media] }

            # @!attribute question
            #
            #   @return [String, nil]
            optional :question, String, nil?: true

            # @!attribute release_forms
            #
            #   @return [Array<Object>, nil]
            optional :release_forms,
                     Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Internal::Type::Unknown],
                     api_name: :releaseForms

            # @!attribute texts
            #
            #   @return [Array<Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Text>, nil]
            optional :texts,
                     -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Text] }

            # @!attribute tips_amount
            #
            #   @return [String, nil]
            optional :tips_amount, String, api_name: :tipsAmount

            # @!attribute tips_amount_raw
            #
            #   @return [Integer, nil]
            optional :tips_amount_raw, Integer, api_name: :tipsAmountRaw

            # @!attribute tips_count
            #
            #   @return [Integer, nil]
            optional :tips_count, Integer, api_name: :tipsCount

            # @!attribute user_id
            #
            #   @return [Integer, nil]
            optional :user_id, Integer, api_name: :userId

            # @!attribute viewers
            #
            #   @return [Array<Object>, nil]
            optional :viewers, Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Internal::Type::Unknown]

            # @!attribute viewers_count
            #
            #   @return [Integer, nil]
            optional :viewers_count, Integer, api_name: :viewersCount

            # @!method initialize(id: nil, can_delete: nil, canvas_height: nil, canvas_width: nil, comments_count: nil, created_at: nil, has_post: nil, is_highlight_cover: nil, is_last_in_highlight: nil, is_ready: nil, is_watched: nil, likes_count: nil, media: nil, question: nil, release_forms: nil, texts: nil, tips_amount: nil, tips_amount_raw: nil, tips_count: nil, user_id: nil, viewers: nil, viewers_count: nil)
            #   @param id [Integer]
            #   @param can_delete [Boolean]
            #   @param canvas_height [Integer]
            #   @param canvas_width [Integer]
            #   @param comments_count [Integer]
            #   @param created_at [String]
            #   @param has_post [Boolean]
            #   @param is_highlight_cover [Boolean]
            #   @param is_last_in_highlight [Boolean]
            #   @param is_ready [Boolean]
            #   @param is_watched [Boolean]
            #   @param likes_count [Integer]
            #   @param media [Array<Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media>]
            #   @param question [String, nil]
            #   @param release_forms [Array<Object>]
            #   @param texts [Array<Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Text>]
            #   @param tips_amount [String]
            #   @param tips_amount_raw [Integer]
            #   @param tips_count [Integer]
            #   @param user_id [Integer]
            #   @param viewers [Array<Object>]
            #   @param viewers_count [Integer]

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
              #   @return [Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::Files, nil]
              optional :files, -> { Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::Files }

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
              #   @return [Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::VideoSources, nil]
              optional :video_sources,
                       -> { Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::VideoSources },
                       api_name: :videoSources

              # @!method initialize(id: nil, can_view: nil, converted_to_video: nil, created_at: nil, duration: nil, files: nil, has_custom_preview: nil, has_error: nil, is_ready: nil, type: nil, video_sources: nil)
              #   @param id [Integer]
              #   @param can_view [Boolean]
              #   @param converted_to_video [Boolean]
              #   @param created_at [String]
              #   @param duration [Integer]
              #   @param files [Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::Files]
              #   @param has_custom_preview [Boolean]
              #   @param has_error [Boolean]
              #   @param is_ready [Boolean]
              #   @param type [String]
              #   @param video_sources [Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::VideoSources]

              # @see Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media#files
              class Files < Onlyfansapi::Internal::Type::BaseModel
                # @!attribute full
                #
                #   @return [Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::Files::Full, nil]
                optional :full,
                         -> { Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::Files::Full }

                # @!attribute preview
                #
                #   @return [Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::Files::Preview, nil]
                optional :preview,
                         -> { Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::Files::Preview }

                # @!attribute square_preview
                #
                #   @return [Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::Files::SquarePreview, nil]
                optional :square_preview,
                         -> { Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::Files::SquarePreview },
                         api_name: :squarePreview

                # @!attribute thumb
                #
                #   @return [Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::Files::Thumb, nil]
                optional :thumb,
                         -> { Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::Files::Thumb }

                # @!method initialize(full: nil, preview: nil, square_preview: nil, thumb: nil)
                #   @param full [Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::Files::Full]
                #   @param preview [Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::Files::Preview]
                #   @param square_preview [Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::Files::SquarePreview]
                #   @param thumb [Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::Files::Thumb]

                # @see Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::Files#full
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

                # @see Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::Files#preview
                class Preview < Onlyfansapi::Internal::Type::BaseModel
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
                  #   @return [Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::Files::Preview::Sources, nil]
                  optional :sources,
                           -> { Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::Files::Preview::Sources }

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
                  #   @param sources [Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::Files::Preview::Sources]
                  #   @param url [String]
                  #   @param width [Integer]

                  # @see Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::Files::Preview#sources
                  class Sources < Onlyfansapi::Internal::Type::BaseModel
                    # @!attribute w150
                    #
                    #   @return [String, nil]
                    optional :w150, String

                    # @!method initialize(w150: nil)
                    #   @param w150 [String]
                  end
                end

                # @see Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::Files#square_preview
                class SquarePreview < Onlyfansapi::Internal::Type::BaseModel
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
                  #   @return [Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::Files::SquarePreview::Sources, nil]
                  optional :sources,
                           -> { Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::Files::SquarePreview::Sources }

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
                  #   @param sources [Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::Files::SquarePreview::Sources]
                  #   @param url [String]
                  #   @param width [Integer]

                  # @see Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::Files::SquarePreview#sources
                  class Sources < Onlyfansapi::Internal::Type::BaseModel
                    # @!attribute w150
                    #
                    #   @return [String, nil]
                    optional :w150, String

                    # @!attribute w480
                    #
                    #   @return [String, nil]
                    optional :w480, String

                    # @!method initialize(w150: nil, w480: nil)
                    #   @param w150 [String]
                    #   @param w480 [String]
                  end
                end

                # @see Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media::Files#thumb
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

              # @see Onlyfansapi::Models::Stories::HighlightRetrieveResponse::Data::Story::Media#video_sources
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

            class Text < Onlyfansapi::Internal::Type::BaseModel
              # @!attribute angle
              #
              #   @return [Integer, nil]
              optional :angle, Integer

              # @!attribute bg_color
              #
              #   @return [String, nil]
              optional :bg_color, String, api_name: :bgColor

              # @!attribute color
              #
              #   @return [String, nil]
              optional :color, String

              # @!attribute font_family
              #
              #   @return [String, nil]
              optional :font_family, String, api_name: :fontFamily

              # @!attribute font_size
              #
              #   @return [String, nil]
              optional :font_size, String, api_name: :fontSize

              # @!attribute font_style
              #
              #   @return [String, nil]
              optional :font_style, String, api_name: :fontStyle, nil?: true

              # @!attribute font_weight
              #
              #   @return [Integer, nil]
              optional :font_weight, Integer, api_name: :fontWeight

              # @!attribute left
              #
              #   @return [Float, nil]
              optional :left, Float

              # @!attribute scale
              #
              #   @return [Float, nil]
              optional :scale, Float

              # @!attribute text
              #
              #   @return [String, nil]
              optional :text, String

              # @!attribute text_align
              #
              #   @return [String, nil]
              optional :text_align, String, api_name: :textAlign

              # @!attribute text_height
              #
              #   @return [Float, nil]
              optional :text_height, Float, api_name: :textHeight

              # @!attribute text_width
              #
              #   @return [Float, nil]
              optional :text_width, Float, api_name: :textWidth

              # @!attribute top
              #
              #   @return [Float, nil]
              optional :top, Float

              # @!attribute type
              #
              #   @return [String, nil]
              optional :type, String

              # @!attribute users
              #
              #   @return [Array<Object>, nil]
              optional :users, Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Internal::Type::Unknown]

              # @!attribute z_index
              #
              #   @return [Integer, nil]
              optional :z_index, Integer, api_name: :zIndex

              # @!method initialize(angle: nil, bg_color: nil, color: nil, font_family: nil, font_size: nil, font_style: nil, font_weight: nil, left: nil, scale: nil, text: nil, text_align: nil, text_height: nil, text_width: nil, top: nil, type: nil, users: nil, z_index: nil)
              #   @param angle [Integer]
              #   @param bg_color [String]
              #   @param color [String]
              #   @param font_family [String]
              #   @param font_size [String]
              #   @param font_style [String, nil]
              #   @param font_weight [Integer]
              #   @param left [Float]
              #   @param scale [Float]
              #   @param text [String]
              #   @param text_align [String]
              #   @param text_height [Float]
              #   @param text_width [Float]
              #   @param top [Float]
              #   @param type [String]
              #   @param users [Array<Object>]
              #   @param z_index [Integer]
            end
          end
        end
      end
    end
  end
end
