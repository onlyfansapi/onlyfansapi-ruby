# frozen_string_literal: true

module Onlyfansapi
  module Models
    module Media
      # Upload still processing
      #
      # @see Onlyfansapi::Resources::Media::Uploads#get_status
      module UploadGetStatusResponse
        extend Onlyfansapi::Internal::Type::Union

        # Upload still processing
        variant -> { Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember0 }

        # Upload failed
        variant -> { Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember1 }

        # Completed POST /media/vault upload
        variant -> { Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember2 }

        # Completed POST /media/upload upload
        variant -> { Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember3 }

        class UnionMember0 < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute prefixed_id
          #
          #   @return [String, nil]
          optional :prefixed_id, String

          # @!attribute status
          #
          #   @return [String, nil]
          optional :status, String

          # @!method initialize(prefixed_id: nil, status: nil)
          #   Upload still processing
          #
          #   @param prefixed_id [String]
          #   @param status [String]
        end

        class UnionMember1 < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute error
          #
          #   @return [String, nil]
          optional :error, String

          # @!attribute prefixed_id
          #
          #   @return [String, nil]
          optional :prefixed_id, String

          # @!attribute status
          #
          #   @return [String, nil]
          optional :status, String

          # @!method initialize(error: nil, prefixed_id: nil, status: nil)
          #   Upload failed
          #
          #   @param error [String]
          #   @param prefixed_id [String]
          #   @param status [String]
        end

        class UnionMember2 < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute credits_used
          #
          #   @return [Integer, nil]
          optional :credits_used, Integer

          # @!attribute media
          #
          #   @return [Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember2::Media, nil]
          optional :media, -> { Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember2::Media }

          # @!attribute prefixed_id
          #
          #   @return [String, nil]
          optional :prefixed_id, String

          # @!attribute status
          #
          #   @return [String, nil]
          optional :status, String

          # @!method initialize(credits_used: nil, media: nil, prefixed_id: nil, status: nil)
          #   Completed POST /media/vault upload
          #
          #   @param credits_used [Integer]
          #   @param media [Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember2::Media]
          #   @param prefixed_id [String]
          #   @param status [String]

          # @see Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember2#media
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
            #   @return [Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember2::Media::Files, nil]
            optional :files, -> { Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember2::Media::Files }

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
            #   @param files [Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember2::Media::Files]
            #   @param has_custom_preview [Boolean]
            #   @param has_error [Boolean]
            #   @param is_ready [Boolean]
            #   @param release_forms [Array<Object>]
            #   @param type [String]

            # @see Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember2::Media#files
            class Files < Onlyfansapi::Internal::Type::BaseModel
              # @!attribute full
              #
              #   @return [Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember2::Media::Files::Full, nil]
              optional :full,
                       -> { Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember2::Media::Files::Full }

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
              #   @param full [Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember2::Media::Files::Full]
              #   @param preview [String, nil]
              #   @param square_preview [String, nil]
              #   @param thumb [String, nil]

              # @see Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember2::Media::Files#full
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

        class UnionMember3 < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute credits_used
          #
          #   @return [Integer, nil]
          optional :credits_used, Integer

          # @!attribute media
          #
          #   @return [Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember3::Media, nil]
          optional :media, -> { Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember3::Media }

          # @!attribute prefixed_id
          #
          #   @return [String, nil]
          optional :prefixed_id, String

          # @!attribute status
          #
          #   @return [String, nil]
          optional :status, String

          # @!method initialize(credits_used: nil, media: nil, prefixed_id: nil, status: nil)
          #   Completed POST /media/upload upload
          #
          #   @param credits_used [Integer]
          #   @param media [Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember3::Media]
          #   @param prefixed_id [String]
          #   @param status [String]

          # @see Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember3#media
          class Media < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute additional
            #
            #   @return [Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember3::Media::Additional, nil]
            optional :additional,
                     -> { Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember3::Media::Additional }

            # @!attribute extra
            #
            #   @return [String, nil]
            optional :extra, String

            # @!attribute file_name
            #
            #   @return [String, nil]
            optional :file_name, String

            # @!attribute host
            #
            #   @return [String, nil]
            optional :host, String

            # @!attribute prefixed_id
            #
            #   @return [String, nil]
            optional :prefixed_id, String

            # @!attribute process_id
            #
            #   @return [String, nil]
            optional :process_id, String, api_name: :processId

            # @!attribute source_url
            #
            #   @return [String, nil]
            optional :source_url, String, api_name: :sourceUrl

            # @!attribute thumbs
            #
            #   @return [Array<Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember3::Media::Thumb>, nil]
            optional :thumbs,
                     -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember3::Media::Thumb] }

            # @!method initialize(additional: nil, extra: nil, file_name: nil, host: nil, prefixed_id: nil, process_id: nil, source_url: nil, thumbs: nil)
            #   @param additional [Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember3::Media::Additional]
            #   @param extra [String]
            #   @param file_name [String]
            #   @param host [String]
            #   @param prefixed_id [String]
            #   @param process_id [String]
            #   @param source_url [String]
            #   @param thumbs [Array<Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember3::Media::Thumb>]

            # @see Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember3::Media#additional
            class Additional < Onlyfansapi::Internal::Type::BaseModel
              # @!attribute user
              #
              #   @return [String, nil]
              optional :user, String

              # @!method initialize(user: nil)
              #   @param user [String]
            end

            class Thumb < Onlyfansapi::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [Integer, nil]
              optional :id, Integer

              # @!attribute url
              #
              #   @return [String, nil]
              optional :url, String

              # @!method initialize(id: nil, url: nil)
              #   @param id [Integer]
              #   @param url [String]
            end
          end
        end

        # @!method self.variants
        #   @return [Array(Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember0, Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember1, Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember2, Onlyfansapi::Models::Media::UploadGetStatusResponse::UnionMember3)]
      end
    end
  end
end
