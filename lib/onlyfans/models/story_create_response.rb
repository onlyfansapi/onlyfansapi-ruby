# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Stories#create
    class StoryCreateResponse < Onlyfans::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfans::Models::StoryCreateResponse::Meta, nil]
      optional :_meta, -> { Onlyfans::Models::StoryCreateResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfans::Models::StoryCreateResponse::Data, nil]
      optional :data, -> { Onlyfans::Models::StoryCreateResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfans::Models::StoryCreateResponse::Meta]
      #   @param data [Onlyfans::Models::StoryCreateResponse::Data]

      # @see Onlyfans::Models::StoryCreateResponse#_meta
      class Meta < Onlyfans::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfans::Models::StoryCreateResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfans::Models::StoryCreateResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfans::Models::StoryCreateResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfans::Models::StoryCreateResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfans::Models::StoryCreateResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfans::Models::StoryCreateResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfans::Models::StoryCreateResponse::Meta::Cache]
        #   @param _credits [Onlyfans::Models::StoryCreateResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfans::Models::StoryCreateResponse::Meta::RateLimits]

        # @see Onlyfans::Models::StoryCreateResponse::Meta#_cache
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

        # @see Onlyfans::Models::StoryCreateResponse::Meta#_credits
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

        # @see Onlyfans::Models::StoryCreateResponse::Meta#_rate_limits
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

      # @see Onlyfans::Models::StoryCreateResponse#data
      class Data < Onlyfans::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [Integer, nil]
        optional :id, Integer

        # @!attribute can_delete
        #
        #   @return [Boolean, nil]
        optional :can_delete, Onlyfans::Internal::Type::Boolean, api_name: :canDelete

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
        optional :has_post, Onlyfans::Internal::Type::Boolean, api_name: :hasPost

        # @!attribute is_highlight_cover
        #
        #   @return [Boolean, nil]
        optional :is_highlight_cover, Onlyfans::Internal::Type::Boolean, api_name: :isHighlightCover

        # @!attribute is_last_in_highlight
        #
        #   @return [Boolean, nil]
        optional :is_last_in_highlight, Onlyfans::Internal::Type::Boolean, api_name: :isLastInHighlight

        # @!attribute is_ready
        #
        #   @return [Boolean, nil]
        optional :is_ready, Onlyfans::Internal::Type::Boolean, api_name: :isReady

        # @!attribute is_watched
        #
        #   @return [Boolean, nil]
        optional :is_watched, Onlyfans::Internal::Type::Boolean, api_name: :isWatched

        # @!attribute likes_count
        #
        #   @return [Integer, nil]
        optional :likes_count, Integer, api_name: :likesCount

        # @!attribute media
        #
        #   @return [Array<Onlyfans::Models::StoryCreateResponse::Data::Media>, nil]
        optional :media,
                 -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::StoryCreateResponse::Data::Media] }

        # @!attribute question
        #
        #   @return [Onlyfans::Models::StoryCreateResponse::Data::Question, nil]
        optional :question, -> { Onlyfans::Models::StoryCreateResponse::Data::Question }

        # @!attribute release_forms
        #
        #   @return [Array<Onlyfans::Models::StoryCreateResponse::Data::ReleaseForm>, nil]
        optional :release_forms,
                 -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::StoryCreateResponse::Data::ReleaseForm] },
                 api_name: :releaseForms

        # @!attribute texts
        #
        #   @return [Array<Onlyfans::Models::StoryCreateResponse::Data::Text>, nil]
        optional :texts,
                 -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::StoryCreateResponse::Data::Text] }

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
        optional :viewers, Onlyfans::Internal::Type::ArrayOf[Onlyfans::Internal::Type::Unknown]

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
        #   @param media [Array<Onlyfans::Models::StoryCreateResponse::Data::Media>]
        #   @param question [Onlyfans::Models::StoryCreateResponse::Data::Question]
        #   @param release_forms [Array<Onlyfans::Models::StoryCreateResponse::Data::ReleaseForm>]
        #   @param texts [Array<Onlyfans::Models::StoryCreateResponse::Data::Text>]
        #   @param tips_amount [String]
        #   @param tips_amount_raw [Integer]
        #   @param tips_count [Integer]
        #   @param user_id [Integer]
        #   @param viewers [Array<Object>]
        #   @param viewers_count [Integer]

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
          #   @return [Onlyfans::Models::StoryCreateResponse::Data::Media::Files, nil]
          optional :files, -> { Onlyfans::Models::StoryCreateResponse::Data::Media::Files }

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

          # @!method initialize(id: nil, can_view: nil, converted_to_video: nil, created_at: nil, duration: nil, files: nil, has_custom_preview: nil, has_error: nil, is_ready: nil, type: nil)
          #   @param id [Integer]
          #   @param can_view [Boolean]
          #   @param converted_to_video [Boolean]
          #   @param created_at [String]
          #   @param duration [Integer]
          #   @param files [Onlyfans::Models::StoryCreateResponse::Data::Media::Files]
          #   @param has_custom_preview [Boolean]
          #   @param has_error [Boolean]
          #   @param is_ready [Boolean]
          #   @param type [String]

          # @see Onlyfans::Models::StoryCreateResponse::Data::Media#files
          class Files < Onlyfans::Internal::Type::BaseModel
            # @!attribute full
            #
            #   @return [Onlyfans::Models::StoryCreateResponse::Data::Media::Files::Full, nil]
            optional :full, -> { Onlyfans::Models::StoryCreateResponse::Data::Media::Files::Full }

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
            #   @param full [Onlyfans::Models::StoryCreateResponse::Data::Media::Files::Full]
            #   @param preview [String, nil]
            #   @param square_preview [String, nil]
            #   @param thumb [String, nil]

            # @see Onlyfans::Models::StoryCreateResponse::Data::Media::Files#full
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

        # @see Onlyfans::Models::StoryCreateResponse::Data#question
        class Question < Onlyfans::Internal::Type::BaseModel
          # @!attribute entity
          #
          #   @return [Onlyfans::Models::StoryCreateResponse::Data::Question::Entity, nil]
          optional :entity, -> { Onlyfans::Models::StoryCreateResponse::Data::Question::Entity }

          # @!attribute positions
          #
          #   @return [Onlyfans::Models::StoryCreateResponse::Data::Question::Positions, nil]
          optional :positions, -> { Onlyfans::Models::StoryCreateResponse::Data::Question::Positions }

          # @!attribute type
          #
          #   @return [String, nil]
          optional :type, String

          # @!method initialize(entity: nil, positions: nil, type: nil)
          #   @param entity [Onlyfans::Models::StoryCreateResponse::Data::Question::Entity]
          #   @param positions [Onlyfans::Models::StoryCreateResponse::Data::Question::Positions]
          #   @param type [String]

          # @see Onlyfans::Models::StoryCreateResponse::Data::Question#entity
          class Entity < Onlyfans::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [Integer, nil]
            optional :id, Integer

            # @!attribute created_at
            #
            #   @return [String, nil]
            optional :created_at, String, api_name: :createdAt

            # @!attribute text
            #
            #   @return [String, nil]
            optional :text, String

            # @!method initialize(id: nil, created_at: nil, text: nil)
            #   @param id [Integer]
            #   @param created_at [String]
            #   @param text [String]
          end

          # @see Onlyfans::Models::StoryCreateResponse::Data::Question#positions
          class Positions < Onlyfans::Internal::Type::BaseModel
            # @!attribute angle
            #
            #   @return [Integer, nil]
            optional :angle, Integer

            # @!attribute color
            #
            #   @return [String, nil]
            optional :color, String

            # @!attribute height
            #
            #   @return [Integer, nil]
            optional :height, Integer

            # @!attribute left
            #
            #   @return [Integer, nil]
            optional :left, Integer

            # @!attribute top
            #
            #   @return [Integer, nil]
            optional :top, Integer

            # @!attribute width
            #
            #   @return [Integer, nil]
            optional :width, Integer

            # @!attribute x
            #
            #   @return [String, nil]
            optional :x, String, nil?: true

            # @!attribute y_
            #
            #   @return [String, nil]
            optional :y_, String, api_name: :y, nil?: true

            # @!attribute z_index
            #
            #   @return [Integer, nil]
            optional :z_index, Integer, api_name: :zIndex

            # @!method initialize(angle: nil, color: nil, height: nil, left: nil, top: nil, width: nil, x: nil, y_: nil, z_index: nil)
            #   @param angle [Integer]
            #   @param color [String]
            #   @param height [Integer]
            #   @param left [Integer]
            #   @param top [Integer]
            #   @param width [Integer]
            #   @param x [String, nil]
            #   @param y_ [String, nil]
            #   @param z_index [Integer]
          end
        end

        class ReleaseForm < Onlyfans::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [Integer, nil]
          optional :id, Integer

          # @!attribute name
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute partner_source
          #
          #   @return [String, nil]
          optional :partner_source, String, api_name: :partnerSource

          # @!attribute type
          #
          #   @return [String, nil]
          optional :type, String

          # @!attribute user
          #
          #   @return [Onlyfans::Models::StoryCreateResponse::Data::ReleaseForm::User, nil]
          optional :user, -> { Onlyfans::Models::StoryCreateResponse::Data::ReleaseForm::User }

          # @!method initialize(id: nil, name: nil, partner_source: nil, type: nil, user: nil)
          #   @param id [Integer]
          #   @param name [String]
          #   @param partner_source [String]
          #   @param type [String]
          #   @param user [Onlyfans::Models::StoryCreateResponse::Data::ReleaseForm::User]

          # @see Onlyfans::Models::StoryCreateResponse::Data::ReleaseForm#user
          class User < Onlyfans::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [Integer, nil]
            optional :id, Integer

            # @!attribute avatar
            #
            #   @return [String, nil]
            optional :avatar, String, nil?: true

            # @!attribute avatar_thumbs
            #
            #   @return [String, nil]
            optional :avatar_thumbs, String, api_name: :avatarThumbs, nil?: true

            # @!attribute is_from_guest
            #
            #   @return [Boolean, nil]
            optional :is_from_guest, Onlyfans::Internal::Type::Boolean, api_name: :isFromGuest

            # @!attribute is_identity_verified
            #
            #   @return [Boolean, nil]
            optional :is_identity_verified, Onlyfans::Internal::Type::Boolean, api_name: :isIdentityVerified

            # @!attribute iv_status
            #
            #   @return [String, nil]
            optional :iv_status, String, api_name: :ivStatus

            # @!attribute name
            #
            #   @return [String, nil]
            optional :name, String

            # @!attribute username
            #
            #   @return [String, nil]
            optional :username, String

            # @!attribute view
            #
            #   @return [String, nil]
            optional :view, String

            # @!method initialize(id: nil, avatar: nil, avatar_thumbs: nil, is_from_guest: nil, is_identity_verified: nil, iv_status: nil, name: nil, username: nil, view: nil)
            #   @param id [Integer]
            #   @param avatar [String, nil]
            #   @param avatar_thumbs [String, nil]
            #   @param is_from_guest [Boolean]
            #   @param is_identity_verified [Boolean]
            #   @param iv_status [String]
            #   @param name [String]
            #   @param username [String]
            #   @param view [String]
          end
        end

        class Text < Onlyfans::Internal::Type::BaseModel
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
          #   @return [Integer, nil]
          optional :left, Integer

          # @!attribute scale
          #
          #   @return [Integer, nil]
          optional :scale, Integer

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
          #   @return [Integer, nil]
          optional :text_width, Integer, api_name: :textWidth

          # @!attribute top
          #
          #   @return [Integer, nil]
          optional :top, Integer

          # @!attribute type
          #
          #   @return [String, nil]
          optional :type, String

          # @!attribute users
          #
          #   @return [Array<Object>, nil]
          optional :users, Onlyfans::Internal::Type::ArrayOf[Onlyfans::Internal::Type::Unknown]

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
          #   @param left [Integer]
          #   @param scale [Integer]
          #   @param text [String]
          #   @param text_align [String]
          #   @param text_height [Float]
          #   @param text_width [Integer]
          #   @param top [Integer]
          #   @param type [String]
          #   @param users [Array<Object>]
          #   @param z_index [Integer]
        end
      end
    end
  end
end
