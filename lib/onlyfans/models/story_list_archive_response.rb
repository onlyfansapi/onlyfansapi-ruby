# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Stories#list_archive
    class StoryListArchiveResponse < Onlyfans::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfans::Models::StoryListArchiveResponse::Meta, nil]
      optional :_meta, -> { Onlyfans::Models::StoryListArchiveResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfans::Models::StoryListArchiveResponse::Data, nil]
      optional :data, -> { Onlyfans::Models::StoryListArchiveResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfans::Models::StoryListArchiveResponse::Meta]
      #   @param data [Onlyfans::Models::StoryListArchiveResponse::Data]

      # @see Onlyfans::Models::StoryListArchiveResponse#_meta
      class Meta < Onlyfans::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfans::Models::StoryListArchiveResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfans::Models::StoryListArchiveResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfans::Models::StoryListArchiveResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfans::Models::StoryListArchiveResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfans::Models::StoryListArchiveResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfans::Models::StoryListArchiveResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfans::Models::StoryListArchiveResponse::Meta::Cache]
        #   @param _credits [Onlyfans::Models::StoryListArchiveResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfans::Models::StoryListArchiveResponse::Meta::RateLimits]

        # @see Onlyfans::Models::StoryListArchiveResponse::Meta#_cache
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

        # @see Onlyfans::Models::StoryListArchiveResponse::Meta#_credits
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

        # @see Onlyfans::Models::StoryListArchiveResponse::Meta#_rate_limits
        class RateLimits < Onlyfans::Internal::Type::BaseModel
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

      # @see Onlyfans::Models::StoryListArchiveResponse#data
      class Data < Onlyfans::Internal::Type::BaseModel
        # @!attribute has_more
        #
        #   @return [Boolean, nil]
        optional :has_more, Onlyfans::Internal::Type::Boolean, api_name: :hasMore

        # @!attribute list
        #
        #   @return [Array<Onlyfans::Models::StoryListArchiveResponse::Data::List>, nil]
        optional :list,
                 -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::StoryListArchiveResponse::Data::List] }

        # @!attribute marker
        #
        #   @return [Integer, nil]
        optional :marker, Integer

        # @!method initialize(has_more: nil, list: nil, marker: nil)
        #   @param has_more [Boolean]
        #   @param list [Array<Onlyfans::Models::StoryListArchiveResponse::Data::List>]
        #   @param marker [Integer]

        class List < Onlyfans::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [Integer, nil]
          optional :id, Integer

          # @!attribute created_at
          #
          #   @return [String, nil]
          optional :created_at, String, api_name: :createdAt

          # @!attribute media
          #
          #   @return [Array<Onlyfans::Models::StoryListArchiveResponse::Data::List::Media>, nil]
          optional :media,
                   -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::StoryListArchiveResponse::Data::List::Media] }

          # @!attribute question
          #
          #   @return [String, nil]
          optional :question, String, nil?: true

          # @!method initialize(id: nil, created_at: nil, media: nil, question: nil)
          #   @param id [Integer]
          #   @param created_at [String]
          #   @param media [Array<Onlyfans::Models::StoryListArchiveResponse::Data::List::Media>]
          #   @param question [String, nil]

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
            #   @return [Onlyfans::Models::StoryListArchiveResponse::Data::List::Media::Files, nil]
            optional :files, -> { Onlyfans::Models::StoryListArchiveResponse::Data::List::Media::Files }

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
            #   @return [Onlyfans::Models::StoryListArchiveResponse::Data::List::Media::VideoSources, nil]
            optional :video_sources,
                     -> { Onlyfans::Models::StoryListArchiveResponse::Data::List::Media::VideoSources },
                     api_name: :videoSources

            # @!method initialize(id: nil, can_view: nil, converted_to_video: nil, created_at: nil, duration: nil, files: nil, has_custom_preview: nil, has_error: nil, is_ready: nil, type: nil, video_sources: nil)
            #   @param id [Integer]
            #   @param can_view [Boolean]
            #   @param converted_to_video [Boolean]
            #   @param created_at [String]
            #   @param duration [Integer]
            #   @param files [Onlyfans::Models::StoryListArchiveResponse::Data::List::Media::Files]
            #   @param has_custom_preview [Boolean]
            #   @param has_error [Boolean]
            #   @param is_ready [Boolean]
            #   @param type [String]
            #   @param video_sources [Onlyfans::Models::StoryListArchiveResponse::Data::List::Media::VideoSources]

            # @see Onlyfans::Models::StoryListArchiveResponse::Data::List::Media#files
            class Files < Onlyfans::Internal::Type::BaseModel
              # @!attribute full
              #
              #   @return [Onlyfans::Models::StoryListArchiveResponse::Data::List::Media::Files::Full, nil]
              optional :full, -> { Onlyfans::Models::StoryListArchiveResponse::Data::List::Media::Files::Full }

              # @!attribute preview
              #
              #   @return [Onlyfans::Models::StoryListArchiveResponse::Data::List::Media::Files::Preview, nil]
              optional :preview, -> { Onlyfans::Models::StoryListArchiveResponse::Data::List::Media::Files::Preview }

              # @!attribute square_preview
              #
              #   @return [Onlyfans::Models::StoryListArchiveResponse::Data::List::Media::Files::SquarePreview, nil]
              optional :square_preview,
                       -> { Onlyfans::Models::StoryListArchiveResponse::Data::List::Media::Files::SquarePreview },
                       api_name: :squarePreview

              # @!attribute thumb
              #
              #   @return [Onlyfans::Models::StoryListArchiveResponse::Data::List::Media::Files::Thumb, nil]
              optional :thumb, -> { Onlyfans::Models::StoryListArchiveResponse::Data::List::Media::Files::Thumb }

              # @!method initialize(full: nil, preview: nil, square_preview: nil, thumb: nil)
              #   @param full [Onlyfans::Models::StoryListArchiveResponse::Data::List::Media::Files::Full]
              #   @param preview [Onlyfans::Models::StoryListArchiveResponse::Data::List::Media::Files::Preview]
              #   @param square_preview [Onlyfans::Models::StoryListArchiveResponse::Data::List::Media::Files::SquarePreview]
              #   @param thumb [Onlyfans::Models::StoryListArchiveResponse::Data::List::Media::Files::Thumb]

              # @see Onlyfans::Models::StoryListArchiveResponse::Data::List::Media::Files#full
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

              # @see Onlyfans::Models::StoryListArchiveResponse::Data::List::Media::Files#preview
              class Preview < Onlyfans::Internal::Type::BaseModel
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
                #   @return [Onlyfans::Models::StoryListArchiveResponse::Data::List::Media::Files::Preview::Sources, nil]
                optional :sources,
                         -> { Onlyfans::Models::StoryListArchiveResponse::Data::List::Media::Files::Preview::Sources }

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
                #   @param sources [Onlyfans::Models::StoryListArchiveResponse::Data::List::Media::Files::Preview::Sources]
                #   @param url [String]
                #   @param width [Integer]

                # @see Onlyfans::Models::StoryListArchiveResponse::Data::List::Media::Files::Preview#sources
                class Sources < Onlyfans::Internal::Type::BaseModel
                  # @!attribute w150
                  #
                  #   @return [String, nil]
                  optional :w150, String

                  # @!method initialize(w150: nil)
                  #   @param w150 [String]
                end
              end

              # @see Onlyfans::Models::StoryListArchiveResponse::Data::List::Media::Files#square_preview
              class SquarePreview < Onlyfans::Internal::Type::BaseModel
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
                #   @return [Onlyfans::Models::StoryListArchiveResponse::Data::List::Media::Files::SquarePreview::Sources, nil]
                optional :sources,
                         -> { Onlyfans::Models::StoryListArchiveResponse::Data::List::Media::Files::SquarePreview::Sources }

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
                #   @param sources [Onlyfans::Models::StoryListArchiveResponse::Data::List::Media::Files::SquarePreview::Sources]
                #   @param url [String]
                #   @param width [Integer]

                # @see Onlyfans::Models::StoryListArchiveResponse::Data::List::Media::Files::SquarePreview#sources
                class Sources < Onlyfans::Internal::Type::BaseModel
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

              # @see Onlyfans::Models::StoryListArchiveResponse::Data::List::Media::Files#thumb
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

            # @see Onlyfans::Models::StoryListArchiveResponse::Data::List::Media#video_sources
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
