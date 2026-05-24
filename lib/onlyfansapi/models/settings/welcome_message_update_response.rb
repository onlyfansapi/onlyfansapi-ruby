# frozen_string_literal: true

module Onlyfansapi
  module Models
    module Settings
      # @see Onlyfansapi::Resources::Settings::WelcomeMessage#update
      class WelcomeMessageUpdateResponse < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute _meta
        #
        #   @return [Onlyfansapi::Models::Settings::WelcomeMessageUpdateResponse::Meta, nil]
        optional :_meta, -> { Onlyfansapi::Models::Settings::WelcomeMessageUpdateResponse::Meta }

        # @!attribute data
        #
        #   @return [Onlyfansapi::Models::Settings::WelcomeMessageUpdateResponse::Data, nil]
        optional :data, -> { Onlyfansapi::Models::Settings::WelcomeMessageUpdateResponse::Data }

        # @!method initialize(_meta: nil, data: nil)
        #   @param _meta [Onlyfansapi::Models::Settings::WelcomeMessageUpdateResponse::Meta]
        #   @param data [Onlyfansapi::Models::Settings::WelcomeMessageUpdateResponse::Data]

        # @see Onlyfansapi::Models::Settings::WelcomeMessageUpdateResponse#_meta
        class Meta < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute _cache
          #
          #   @return [Onlyfansapi::Models::Settings::WelcomeMessageUpdateResponse::Meta::Cache, nil]
          optional :_cache, -> { Onlyfansapi::Models::Settings::WelcomeMessageUpdateResponse::Meta::Cache }

          # @!attribute _credits
          #
          #   @return [Onlyfansapi::Models::Settings::WelcomeMessageUpdateResponse::Meta::Credits, nil]
          optional :_credits, -> { Onlyfansapi::Models::Settings::WelcomeMessageUpdateResponse::Meta::Credits }

          # @!attribute _rate_limits
          #
          #   @return [Onlyfansapi::Models::Settings::WelcomeMessageUpdateResponse::Meta::RateLimits, nil]
          optional :_rate_limits,
                   -> { Onlyfansapi::Models::Settings::WelcomeMessageUpdateResponse::Meta::RateLimits }

          # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
          #   @param _cache [Onlyfansapi::Models::Settings::WelcomeMessageUpdateResponse::Meta::Cache]
          #   @param _credits [Onlyfansapi::Models::Settings::WelcomeMessageUpdateResponse::Meta::Credits]
          #   @param _rate_limits [Onlyfansapi::Models::Settings::WelcomeMessageUpdateResponse::Meta::RateLimits]

          # @see Onlyfansapi::Models::Settings::WelcomeMessageUpdateResponse::Meta#_cache
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

          # @see Onlyfansapi::Models::Settings::WelcomeMessageUpdateResponse::Meta#_credits
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

          # @see Onlyfansapi::Models::Settings::WelcomeMessageUpdateResponse::Meta#_rate_limits
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

        # @see Onlyfansapi::Models::Settings::WelcomeMessageUpdateResponse#data
        class Data < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute created_at
          #
          #   @return [String, nil]
          optional :created_at, String, api_name: :createdAt

          # @!attribute display_text
          #
          #   @return [String, nil]
          optional :display_text, String, api_name: :displayText

          # @!attribute giphy_id
          #
          #   @return [String, nil]
          optional :giphy_id, String, api_name: :giphyId, nil?: true

          # @!attribute is_active
          #
          #   @return [Boolean, nil]
          optional :is_active, Onlyfansapi::Internal::Type::Boolean, api_name: :isActive

          # @!attribute is_couple_people_media
          #
          #   @return [Boolean, nil]
          optional :is_couple_people_media,
                   Onlyfansapi::Internal::Type::Boolean,
                   api_name: :isCouplePeopleMedia

          # @!attribute is_markdown_disabled
          #
          #   @return [Boolean, nil]
          optional :is_markdown_disabled, Onlyfansapi::Internal::Type::Boolean, api_name: :isMarkdownDisabled

          # @!attribute is_media_ready
          #
          #   @return [Boolean, nil]
          optional :is_media_ready, Onlyfansapi::Internal::Type::Boolean, api_name: :isMediaReady

          # @!attribute locked_text
          #
          #   @return [Boolean, nil]
          optional :locked_text, Onlyfansapi::Internal::Type::Boolean, api_name: :lockedText

          # @!attribute media
          #
          #   @return [Array<Onlyfansapi::Models::Settings::WelcomeMessageUpdateResponse::Data::Media>, nil]
          optional :media,
                   -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::Settings::WelcomeMessageUpdateResponse::Data::Media] }

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

          # @!attribute release_forms
          #
          #   @return [Array<Object>, nil]
          optional :release_forms,
                   Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Internal::Type::Unknown],
                   api_name: :releaseForms

          # @!attribute template
          #
          #   @return [String, nil]
          optional :template, String

          # @!attribute text
          #
          #   @return [String, nil]
          optional :text, String

          # @!method initialize(id: nil, created_at: nil, display_text: nil, giphy_id: nil, is_active: nil, is_couple_people_media: nil, is_markdown_disabled: nil, is_media_ready: nil, locked_text: nil, media: nil, media_count: nil, previews: nil, price: nil, release_forms: nil, template: nil, text: nil)
          #   @param id [String]
          #   @param created_at [String]
          #   @param display_text [String]
          #   @param giphy_id [String, nil]
          #   @param is_active [Boolean]
          #   @param is_couple_people_media [Boolean]
          #   @param is_markdown_disabled [Boolean]
          #   @param is_media_ready [Boolean]
          #   @param locked_text [Boolean]
          #   @param media [Array<Onlyfansapi::Models::Settings::WelcomeMessageUpdateResponse::Data::Media>]
          #   @param media_count [Integer]
          #   @param previews [Array<Object>]
          #   @param price [Integer]
          #   @param release_forms [Array<Object>]
          #   @param template [String]
          #   @param text [String]

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
            #   @return [Onlyfansapi::Models::Settings::WelcomeMessageUpdateResponse::Data::Media::Files, nil]
            optional :files, -> { Onlyfansapi::Models::Settings::WelcomeMessageUpdateResponse::Data::Media::Files }

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

            # @!attribute video_sources
            #
            #   @return [Onlyfansapi::Models::Settings::WelcomeMessageUpdateResponse::Data::Media::VideoSources, nil]
            optional :video_sources,
                     -> { Onlyfansapi::Models::Settings::WelcomeMessageUpdateResponse::Data::Media::VideoSources },
                     api_name: :videoSources

            # @!method initialize(id: nil, can_view: nil, converted_to_video: nil, created_at: nil, duration: nil, files: nil, has_custom_preview: nil, has_error: nil, is_ready: nil, release_forms: nil, type: nil, video_sources: nil)
            #   @param id [Integer]
            #   @param can_view [Boolean]
            #   @param converted_to_video [Boolean]
            #   @param created_at [String]
            #   @param duration [Integer]
            #   @param files [Onlyfansapi::Models::Settings::WelcomeMessageUpdateResponse::Data::Media::Files]
            #   @param has_custom_preview [Boolean]
            #   @param has_error [Boolean]
            #   @param is_ready [Boolean]
            #   @param release_forms [Array<Object>]
            #   @param type [String]
            #   @param video_sources [Onlyfansapi::Models::Settings::WelcomeMessageUpdateResponse::Data::Media::VideoSources]

            # @see Onlyfansapi::Models::Settings::WelcomeMessageUpdateResponse::Data::Media#files
            class Files < Onlyfansapi::Internal::Type::BaseModel
              # @!attribute full
              #
              #   @return [Onlyfansapi::Models::Settings::WelcomeMessageUpdateResponse::Data::Media::Files::Full, nil]
              optional :full,
                       -> { Onlyfansapi::Models::Settings::WelcomeMessageUpdateResponse::Data::Media::Files::Full }

              # @!attribute preview
              #
              #   @return [Onlyfansapi::Models::Settings::WelcomeMessageUpdateResponse::Data::Media::Files::Preview, nil]
              optional :preview,
                       -> { Onlyfansapi::Models::Settings::WelcomeMessageUpdateResponse::Data::Media::Files::Preview }

              # @!attribute square_preview
              #
              #   @return [Onlyfansapi::Models::Settings::WelcomeMessageUpdateResponse::Data::Media::Files::SquarePreview, nil]
              optional :square_preview,
                       -> { Onlyfansapi::Models::Settings::WelcomeMessageUpdateResponse::Data::Media::Files::SquarePreview },
                       api_name: :squarePreview

              # @!attribute thumb
              #
              #   @return [Onlyfansapi::Models::Settings::WelcomeMessageUpdateResponse::Data::Media::Files::Thumb, nil]
              optional :thumb,
                       -> { Onlyfansapi::Models::Settings::WelcomeMessageUpdateResponse::Data::Media::Files::Thumb }

              # @!method initialize(full: nil, preview: nil, square_preview: nil, thumb: nil)
              #   @param full [Onlyfansapi::Models::Settings::WelcomeMessageUpdateResponse::Data::Media::Files::Full]
              #   @param preview [Onlyfansapi::Models::Settings::WelcomeMessageUpdateResponse::Data::Media::Files::Preview]
              #   @param square_preview [Onlyfansapi::Models::Settings::WelcomeMessageUpdateResponse::Data::Media::Files::SquarePreview]
              #   @param thumb [Onlyfansapi::Models::Settings::WelcomeMessageUpdateResponse::Data::Media::Files::Thumb]

              # @see Onlyfansapi::Models::Settings::WelcomeMessageUpdateResponse::Data::Media::Files#full
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

              # @see Onlyfansapi::Models::Settings::WelcomeMessageUpdateResponse::Data::Media::Files#preview
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

              # @see Onlyfansapi::Models::Settings::WelcomeMessageUpdateResponse::Data::Media::Files#square_preview
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

              # @see Onlyfansapi::Models::Settings::WelcomeMessageUpdateResponse::Data::Media::Files#thumb
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

            # @see Onlyfansapi::Models::Settings::WelcomeMessageUpdateResponse::Data::Media#video_sources
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
