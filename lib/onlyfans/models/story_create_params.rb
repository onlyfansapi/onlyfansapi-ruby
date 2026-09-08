# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Stories#create
    class StoryCreateParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute media_files
      #   Array of media file upload prefixed_ids, or OF vault media IDs.
      #
      #   @return [Array<String>]
      required :media_files, Onlyfans::Internal::Type::ArrayOf[String], api_name: :mediaFiles

      # @!attribute canvas_height
      #   Canvas height overlay positions are relative to. Default `1920`.
      #
      #   @return [Integer, nil]
      optional :canvas_height, Integer, api_name: :canvasHeight

      # @!attribute canvas_width
      #   Canvas width overlay positions are relative to. Default `1080`.
      #
      #   @return [Integer, nil]
      optional :canvas_width, Integer, api_name: :canvasWidth

      # @!attribute question
      #   Interactive question sticker viewers can answer.
      #
      #   @return [Onlyfans::Models::StoryCreateParams::Question, nil]
      optional :question, -> { Onlyfans::StoryCreateParams::Question }

      # @!attribute texts
      #   Text and @mention overlays.
      #
      #   @return [Array<Onlyfans::Models::StoryCreateParams::Text>, nil]
      optional :texts, -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::StoryCreateParams::Text] }

      # @!method initialize(account:, media_files:, canvas_height: nil, canvas_width: nil, question: nil, texts: nil, request_options: {})
      #   @param account [String]
      #
      #   @param media_files [Array<String>] Array of media file upload prefixed_ids, or OF vault media IDs.
      #
      #   @param canvas_height [Integer] Canvas height overlay positions are relative to. Default `1920`.
      #
      #   @param canvas_width [Integer] Canvas width overlay positions are relative to. Default `1080`.
      #
      #   @param question [Onlyfans::Models::StoryCreateParams::Question] Interactive question sticker viewers can answer.
      #
      #   @param texts [Array<Onlyfans::Models::StoryCreateParams::Text>] Text and @mention overlays.
      #
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]

      class Question < Onlyfans::Internal::Type::BaseModel
        # @!attribute color
        #   Sticker accent color (hex). Default `#FF51DC`.
        #
        #   @return [String, nil]
        optional :color, String

        # @!attribute height
        #   Sticker height in canvas px. Default `160`.
        #
        #   @return [Float, nil]
        optional :height, Float

        # @!attribute left
        #   Horizontal position as a percentage of the canvas width (0-100). Default `25`.
        #
        #   @return [Float, nil]
        optional :left, Float

        # @!attribute text
        #   The question to ask.
        #
        #   @return [String, nil]
        optional :text, String

        # @!attribute top
        #   Vertical position as a percentage of the canvas height (0-100). Default `30`.
        #
        #   @return [Float, nil]
        optional :top, Float

        # @!attribute width
        #   Sticker width in canvas px. Default `257`.
        #
        #   @return [Float, nil]
        optional :width, Float

        # @!method initialize(color: nil, height: nil, left: nil, text: nil, top: nil, width: nil)
        #   Interactive question sticker viewers can answer.
        #
        #   @param color [String] Sticker accent color (hex). Default `#FF51DC`.
        #
        #   @param height [Float] Sticker height in canvas px. Default `160`.
        #
        #   @param left [Float] Horizontal position as a percentage of the canvas width (0-100). Default `25`.
        #
        #   @param text [String] The question to ask.
        #
        #   @param top [Float] Vertical position as a percentage of the canvas height (0-100). Default `30`.
        #
        #   @param width [Float] Sticker width in canvas px. Default `257`.
      end

      class Text < Onlyfans::Internal::Type::BaseModel
        # @!attribute text
        #   The overlay text. For mentions this must be the `@username` to mention (OnlyFans
        #   resolves the user and adds them to the story's release forms).
        #
        #   @return [String]
        required :text, String

        # @!attribute angle
        #   Rotation in degrees. Default `0`.
        #
        #   @return [Float, nil]
        optional :angle, Float

        # @!attribute bg_color
        #   Background color (hex, `#00000000` = transparent). Native editor palette:
        #   #FFFFFF #000000 #69818C #FF51DC #FF4081 #FA3240 #FF8040 #FCA800 #70CF27 #00C864
        #   #00B1CC #2196F3 #7953F5 #A832BF. Default: transparent for texts, white for
        #   mentions.
        #
        #   @return [String, nil]
        optional :bg_color, String, api_name: :bgColor

        # @!attribute color
        #   Text color (hex). Defaults to the native editor behavior: white on a colored
        #   background, black on a white background (mentions: OnlyFans blue `#0091EA` on
        #   white).
        #
        #   @return [String, nil]
        optional :color, String

        # @!attribute font_family
        #   Font family. Families support specific weights only: Roboto (400/500/700),
        #   PTMono (400), ShantellSans (400), SofiaSans (400, renders uppercase),
        #   YanoneKaffeesatz (700), RubikMedium (500), RubikBlack (700). Default `Roboto`.
        #   Ignored for mentions (always Roboto 500).
        #
        #   @return [Symbol, Onlyfans::Models::StoryCreateParams::Text::FontFamily, nil]
        optional :font_family,
                 enum: -> {
                   Onlyfans::StoryCreateParams::Text::FontFamily
                 },
                 api_name: :fontFamily

        # @!attribute font_size
        #   Font size in canvas px (8-100). The native editor uses 9-36. Default `20`.
        #
        #   @return [Float, nil]
        optional :font_size, Float, api_name: :fontSize

        # @!attribute font_weight
        #   Font weight; must match the chosen family (see `fontFamily`).
        #
        #   @return [Integer, Onlyfans::Models::StoryCreateParams::Text::FontWeight, nil]
        optional :font_weight,
                 enum: -> {
                   Onlyfans::StoryCreateParams::Text::FontWeight
                 },
                 api_name: :fontWeight

        # @!attribute left
        #   Horizontal position as a percentage of the canvas width (0-100). Default `25`.
        #
        #   @return [Float, nil]
        optional :left, Float

        # @!attribute scale
        #   Scale factor. Default `1`.
        #
        #   @return [Float, nil]
        optional :scale, Float

        # @!attribute text_align
        #   Text alignment. Default `left`.
        #
        #   @return [Symbol, Onlyfans::Models::StoryCreateParams::Text::TextAlign, nil]
        optional :text_align, enum: -> { Onlyfans::StoryCreateParams::Text::TextAlign }, api_name: :textAlign

        # @!attribute text_height
        #   Rendered text box height in canvas px. Estimated automatically when omitted.
        #
        #   @return [Float, nil]
        optional :text_height, Float, api_name: :textHeight

        # @!attribute text_width
        #   Rendered text box width in canvas px. Estimated automatically when omitted.
        #
        #   @return [Float, nil]
        optional :text_width, Float, api_name: :textWidth

        # @!attribute top
        #   Vertical position as a percentage of the canvas height (0-100). Defaults stagger
        #   each overlay below the previous one.
        #
        #   @return [Float, nil]
        optional :top, Float

        # @!attribute type
        #   Overlay type. Default `text`.
        #
        #   @return [Symbol, Onlyfans::Models::StoryCreateParams::Text::Type, nil]
        optional :type, enum: -> { Onlyfans::StoryCreateParams::Text::Type }

        # @!attribute z_index
        #   Stacking order. Defaults to placement order.
        #
        #   @return [Integer, nil]
        optional :z_index, Integer, api_name: :zIndex

        # @!method initialize(text:, angle: nil, bg_color: nil, color: nil, font_family: nil, font_size: nil, font_weight: nil, left: nil, scale: nil, text_align: nil, text_height: nil, text_width: nil, top: nil, type: nil, z_index: nil)
        #   Some parameter documentations has been truncated, see
        #   {Onlyfans::Models::StoryCreateParams::Text} for more details.
        #
        #   @param text [String] The overlay text. For mentions this must be the `@username` to mention (OnlyFans
        #
        #   @param angle [Float] Rotation in degrees. Default `0`.
        #
        #   @param bg_color [String] Background color (hex, `#00000000` = transparent). Native editor palette: #FFFFF
        #
        #   @param color [String] Text color (hex). Defaults to the native editor behavior: white on a colored bac
        #
        #   @param font_family [Symbol, Onlyfans::Models::StoryCreateParams::Text::FontFamily] Font family. Families support specific weights only: Roboto (400/500/700), PTMon
        #
        #   @param font_size [Float] Font size in canvas px (8-100). The native editor uses 9-36. Default `20`.
        #
        #   @param font_weight [Integer, Onlyfans::Models::StoryCreateParams::Text::FontWeight] Font weight; must match the chosen family (see `fontFamily`).
        #
        #   @param left [Float] Horizontal position as a percentage of the canvas width (0-100). Default `25`.
        #
        #   @param scale [Float] Scale factor. Default `1`.
        #
        #   @param text_align [Symbol, Onlyfans::Models::StoryCreateParams::Text::TextAlign] Text alignment. Default `left`.
        #
        #   @param text_height [Float] Rendered text box height in canvas px. Estimated automatically when omitted.
        #
        #   @param text_width [Float] Rendered text box width in canvas px. Estimated automatically when omitted.
        #
        #   @param top [Float] Vertical position as a percentage of the canvas height (0-100). Defaults stagger
        #
        #   @param type [Symbol, Onlyfans::Models::StoryCreateParams::Text::Type] Overlay type. Default `text`.
        #
        #   @param z_index [Integer] Stacking order. Defaults to placement order.

        # Font family. Families support specific weights only: Roboto (400/500/700),
        # PTMono (400), ShantellSans (400), SofiaSans (400, renders uppercase),
        # YanoneKaffeesatz (700), RubikMedium (500), RubikBlack (700). Default `Roboto`.
        # Ignored for mentions (always Roboto 500).
        #
        # @see Onlyfans::Models::StoryCreateParams::Text#font_family
        module FontFamily
          extend Onlyfans::Internal::Type::Enum

          ROBOTO = :Roboto
          PT_MONO = :PTMono
          SHANTELL_SANS = :ShantellSans
          SOFIA_SANS = :SofiaSans
          YANONE_KAFFEESATZ = :YanoneKaffeesatz
          RUBIK_MEDIUM = :RubikMedium
          RUBIK_BLACK = :RubikBlack

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Font weight; must match the chosen family (see `fontFamily`).
        #
        # @see Onlyfans::Models::StoryCreateParams::Text#font_weight
        module FontWeight
          extend Onlyfans::Internal::Type::Enum

          FONT_WEIGHT_400 = 400
          FONT_WEIGHT_500 = 500
          FONT_WEIGHT_700 = 700

          # @!method self.values
          #   @return [Array<Integer>]
        end

        # Text alignment. Default `left`.
        #
        # @see Onlyfans::Models::StoryCreateParams::Text#text_align
        module TextAlign
          extend Onlyfans::Internal::Type::Enum

          LEFT = :left
          CENTER = :center
          RIGHT = :right

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Overlay type. Default `text`.
        #
        # @see Onlyfans::Models::StoryCreateParams::Text#type
        module Type
          extend Onlyfans::Internal::Type::Enum

          TEXT = :text
          MENTION = :mention

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
