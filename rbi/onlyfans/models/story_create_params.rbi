# typed: strong

module Onlyfans
  module Models
    class StoryCreateParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Onlyfans::StoryCreateParams, Onlyfans::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :account

      # Array of media file upload prefixed_ids, or OF vault media IDs.
      sig { returns(T::Array[String]) }
      attr_accessor :media_files

      # Canvas height overlay positions are relative to. Default `1920`.
      sig { returns(T.nilable(Integer)) }
      attr_reader :canvas_height

      sig { params(canvas_height: Integer).void }
      attr_writer :canvas_height

      # Canvas width overlay positions are relative to. Default `1080`.
      sig { returns(T.nilable(Integer)) }
      attr_reader :canvas_width

      sig { params(canvas_width: Integer).void }
      attr_writer :canvas_width

      # Interactive question sticker viewers can answer.
      sig { returns(T.nilable(Onlyfans::StoryCreateParams::Question)) }
      attr_reader :question

      sig do
        params(question: Onlyfans::StoryCreateParams::Question::OrHash).void
      end
      attr_writer :question

      # Text and @mention overlays.
      sig { returns(T.nilable(T::Array[Onlyfans::StoryCreateParams::Text])) }
      attr_reader :texts

      sig do
        params(texts: T::Array[Onlyfans::StoryCreateParams::Text::OrHash]).void
      end
      attr_writer :texts

      sig do
        params(
          account: String,
          media_files: T::Array[String],
          canvas_height: Integer,
          canvas_width: Integer,
          question: Onlyfans::StoryCreateParams::Question::OrHash,
          texts: T::Array[Onlyfans::StoryCreateParams::Text::OrHash],
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        # Array of media file upload prefixed_ids, or OF vault media IDs.
        media_files:,
        # Canvas height overlay positions are relative to. Default `1920`.
        canvas_height: nil,
        # Canvas width overlay positions are relative to. Default `1080`.
        canvas_width: nil,
        # Interactive question sticker viewers can answer.
        question: nil,
        # Text and @mention overlays.
        texts: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            media_files: T::Array[String],
            canvas_height: Integer,
            canvas_width: Integer,
            question: Onlyfans::StoryCreateParams::Question,
            texts: T::Array[Onlyfans::StoryCreateParams::Text],
            request_options: Onlyfans::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Question < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::StoryCreateParams::Question,
              Onlyfans::Internal::AnyHash
            )
          end

        # Sticker accent color (hex). Default `#FF51DC`.
        sig { returns(T.nilable(String)) }
        attr_reader :color

        sig { params(color: String).void }
        attr_writer :color

        # Sticker height in canvas px. Default `160`.
        sig { returns(T.nilable(Float)) }
        attr_reader :height

        sig { params(height: Float).void }
        attr_writer :height

        # Horizontal position as a percentage of the canvas width (0-100). Default `25`.
        sig { returns(T.nilable(Float)) }
        attr_reader :left

        sig { params(left: Float).void }
        attr_writer :left

        # The question to ask.
        sig { returns(T.nilable(String)) }
        attr_reader :text

        sig { params(text: String).void }
        attr_writer :text

        # Vertical position as a percentage of the canvas height (0-100). Default `30`.
        sig { returns(T.nilable(Float)) }
        attr_reader :top

        sig { params(top: Float).void }
        attr_writer :top

        # Sticker width in canvas px. Default `257`.
        sig { returns(T.nilable(Float)) }
        attr_reader :width

        sig { params(width: Float).void }
        attr_writer :width

        # Interactive question sticker viewers can answer.
        sig do
          params(
            color: String,
            height: Float,
            left: Float,
            text: String,
            top: Float,
            width: Float
          ).returns(T.attached_class)
        end
        def self.new(
          # Sticker accent color (hex). Default `#FF51DC`.
          color: nil,
          # Sticker height in canvas px. Default `160`.
          height: nil,
          # Horizontal position as a percentage of the canvas width (0-100). Default `25`.
          left: nil,
          # The question to ask.
          text: nil,
          # Vertical position as a percentage of the canvas height (0-100). Default `30`.
          top: nil,
          # Sticker width in canvas px. Default `257`.
          width: nil
        )
        end

        sig do
          override.returns(
            {
              color: String,
              height: Float,
              left: Float,
              text: String,
              top: Float,
              width: Float
            }
          )
        end
        def to_hash
        end
      end

      class Text < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::StoryCreateParams::Text,
              Onlyfans::Internal::AnyHash
            )
          end

        # The overlay text. For mentions this must be the `@username` to mention (OnlyFans
        # resolves the user and adds them to the story's release forms).
        sig { returns(String) }
        attr_accessor :text

        # Rotation in degrees. Default `0`.
        sig { returns(T.nilable(Float)) }
        attr_reader :angle

        sig { params(angle: Float).void }
        attr_writer :angle

        # Background color (hex, `#00000000` = transparent). Native editor palette:
        # #FFFFFF #000000 #69818C #FF51DC #FF4081 #FA3240 #FF8040 #FCA800 #70CF27 #00C864
        # #00B1CC #2196F3 #7953F5 #A832BF. Default: transparent for texts, white for
        # mentions.
        sig { returns(T.nilable(String)) }
        attr_reader :bg_color

        sig { params(bg_color: String).void }
        attr_writer :bg_color

        # Text color (hex). Defaults to the native editor behavior: white on a colored
        # background, black on a white background (mentions: OnlyFans blue `#0091EA` on
        # white).
        sig { returns(T.nilable(String)) }
        attr_reader :color

        sig { params(color: String).void }
        attr_writer :color

        # Font family. Families support specific weights only: Roboto (400/500/700),
        # PTMono (400), ShantellSans (400), SofiaSans (400, renders uppercase),
        # YanoneKaffeesatz (700), RubikMedium (500), RubikBlack (700). Default `Roboto`.
        # Ignored for mentions (always Roboto 500).
        sig do
          returns(
            T.nilable(Onlyfans::StoryCreateParams::Text::FontFamily::OrSymbol)
          )
        end
        attr_reader :font_family

        sig do
          params(
            font_family: Onlyfans::StoryCreateParams::Text::FontFamily::OrSymbol
          ).void
        end
        attr_writer :font_family

        # Font size in canvas px (8-100). The native editor uses 9-36. Default `20`.
        sig { returns(T.nilable(Float)) }
        attr_reader :font_size

        sig { params(font_size: Float).void }
        attr_writer :font_size

        # Font weight; must match the chosen family (see `fontFamily`).
        sig do
          returns(
            T.nilable(Onlyfans::StoryCreateParams::Text::FontWeight::OrInteger)
          )
        end
        attr_reader :font_weight

        sig do
          params(
            font_weight:
              Onlyfans::StoryCreateParams::Text::FontWeight::OrInteger
          ).void
        end
        attr_writer :font_weight

        # Horizontal position as a percentage of the canvas width (0-100). Default `25`.
        sig { returns(T.nilable(Float)) }
        attr_reader :left

        sig { params(left: Float).void }
        attr_writer :left

        # Scale factor. Default `1`.
        sig { returns(T.nilable(Float)) }
        attr_reader :scale

        sig { params(scale: Float).void }
        attr_writer :scale

        # Text alignment. Default `left`.
        sig do
          returns(
            T.nilable(Onlyfans::StoryCreateParams::Text::TextAlign::OrSymbol)
          )
        end
        attr_reader :text_align

        sig do
          params(
            text_align: Onlyfans::StoryCreateParams::Text::TextAlign::OrSymbol
          ).void
        end
        attr_writer :text_align

        # Rendered text box height in canvas px. Estimated automatically when omitted.
        sig { returns(T.nilable(Float)) }
        attr_reader :text_height

        sig { params(text_height: Float).void }
        attr_writer :text_height

        # Rendered text box width in canvas px. Estimated automatically when omitted.
        sig { returns(T.nilable(Float)) }
        attr_reader :text_width

        sig { params(text_width: Float).void }
        attr_writer :text_width

        # Vertical position as a percentage of the canvas height (0-100). Defaults stagger
        # each overlay below the previous one.
        sig { returns(T.nilable(Float)) }
        attr_reader :top

        sig { params(top: Float).void }
        attr_writer :top

        # Overlay type. Default `text`.
        sig do
          returns(T.nilable(Onlyfans::StoryCreateParams::Text::Type::OrSymbol))
        end
        attr_reader :type

        sig do
          params(type: Onlyfans::StoryCreateParams::Text::Type::OrSymbol).void
        end
        attr_writer :type

        # Stacking order. Defaults to placement order.
        sig { returns(T.nilable(Integer)) }
        attr_reader :z_index

        sig { params(z_index: Integer).void }
        attr_writer :z_index

        sig do
          params(
            text: String,
            angle: Float,
            bg_color: String,
            color: String,
            font_family:
              Onlyfans::StoryCreateParams::Text::FontFamily::OrSymbol,
            font_size: Float,
            font_weight:
              Onlyfans::StoryCreateParams::Text::FontWeight::OrInteger,
            left: Float,
            scale: Float,
            text_align: Onlyfans::StoryCreateParams::Text::TextAlign::OrSymbol,
            text_height: Float,
            text_width: Float,
            top: Float,
            type: Onlyfans::StoryCreateParams::Text::Type::OrSymbol,
            z_index: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # The overlay text. For mentions this must be the `@username` to mention (OnlyFans
          # resolves the user and adds them to the story's release forms).
          text:,
          # Rotation in degrees. Default `0`.
          angle: nil,
          # Background color (hex, `#00000000` = transparent). Native editor palette:
          # #FFFFFF #000000 #69818C #FF51DC #FF4081 #FA3240 #FF8040 #FCA800 #70CF27 #00C864
          # #00B1CC #2196F3 #7953F5 #A832BF. Default: transparent for texts, white for
          # mentions.
          bg_color: nil,
          # Text color (hex). Defaults to the native editor behavior: white on a colored
          # background, black on a white background (mentions: OnlyFans blue `#0091EA` on
          # white).
          color: nil,
          # Font family. Families support specific weights only: Roboto (400/500/700),
          # PTMono (400), ShantellSans (400), SofiaSans (400, renders uppercase),
          # YanoneKaffeesatz (700), RubikMedium (500), RubikBlack (700). Default `Roboto`.
          # Ignored for mentions (always Roboto 500).
          font_family: nil,
          # Font size in canvas px (8-100). The native editor uses 9-36. Default `20`.
          font_size: nil,
          # Font weight; must match the chosen family (see `fontFamily`).
          font_weight: nil,
          # Horizontal position as a percentage of the canvas width (0-100). Default `25`.
          left: nil,
          # Scale factor. Default `1`.
          scale: nil,
          # Text alignment. Default `left`.
          text_align: nil,
          # Rendered text box height in canvas px. Estimated automatically when omitted.
          text_height: nil,
          # Rendered text box width in canvas px. Estimated automatically when omitted.
          text_width: nil,
          # Vertical position as a percentage of the canvas height (0-100). Defaults stagger
          # each overlay below the previous one.
          top: nil,
          # Overlay type. Default `text`.
          type: nil,
          # Stacking order. Defaults to placement order.
          z_index: nil
        )
        end

        sig do
          override.returns(
            {
              text: String,
              angle: Float,
              bg_color: String,
              color: String,
              font_family:
                Onlyfans::StoryCreateParams::Text::FontFamily::OrSymbol,
              font_size: Float,
              font_weight:
                Onlyfans::StoryCreateParams::Text::FontWeight::OrInteger,
              left: Float,
              scale: Float,
              text_align:
                Onlyfans::StoryCreateParams::Text::TextAlign::OrSymbol,
              text_height: Float,
              text_width: Float,
              top: Float,
              type: Onlyfans::StoryCreateParams::Text::Type::OrSymbol,
              z_index: Integer
            }
          )
        end
        def to_hash
        end

        # Font family. Families support specific weights only: Roboto (400/500/700),
        # PTMono (400), ShantellSans (400), SofiaSans (400, renders uppercase),
        # YanoneKaffeesatz (700), RubikMedium (500), RubikBlack (700). Default `Roboto`.
        # Ignored for mentions (always Roboto 500).
        module FontFamily
          extend Onlyfans::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Onlyfans::StoryCreateParams::Text::FontFamily)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ROBOTO =
            T.let(
              :Roboto,
              Onlyfans::StoryCreateParams::Text::FontFamily::TaggedSymbol
            )
          PT_MONO =
            T.let(
              :PTMono,
              Onlyfans::StoryCreateParams::Text::FontFamily::TaggedSymbol
            )
          SHANTELL_SANS =
            T.let(
              :ShantellSans,
              Onlyfans::StoryCreateParams::Text::FontFamily::TaggedSymbol
            )
          SOFIA_SANS =
            T.let(
              :SofiaSans,
              Onlyfans::StoryCreateParams::Text::FontFamily::TaggedSymbol
            )
          YANONE_KAFFEESATZ =
            T.let(
              :YanoneKaffeesatz,
              Onlyfans::StoryCreateParams::Text::FontFamily::TaggedSymbol
            )
          RUBIK_MEDIUM =
            T.let(
              :RubikMedium,
              Onlyfans::StoryCreateParams::Text::FontFamily::TaggedSymbol
            )
          RUBIK_BLACK =
            T.let(
              :RubikBlack,
              Onlyfans::StoryCreateParams::Text::FontFamily::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Onlyfans::StoryCreateParams::Text::FontFamily::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Font weight; must match the chosen family (see `fontFamily`).
        module FontWeight
          extend Onlyfans::Internal::Type::Enum

          TaggedInteger =
            T.type_alias do
              T.all(Integer, Onlyfans::StoryCreateParams::Text::FontWeight)
            end
          OrInteger = T.type_alias { Integer }

          FONT_WEIGHT_400 =
            T.let(
              400,
              Onlyfans::StoryCreateParams::Text::FontWeight::TaggedInteger
            )
          FONT_WEIGHT_500 =
            T.let(
              500,
              Onlyfans::StoryCreateParams::Text::FontWeight::TaggedInteger
            )
          FONT_WEIGHT_700 =
            T.let(
              700,
              Onlyfans::StoryCreateParams::Text::FontWeight::TaggedInteger
            )

          sig do
            override.returns(
              T::Array[
                Onlyfans::StoryCreateParams::Text::FontWeight::TaggedInteger
              ]
            )
          end
          def self.values
          end
        end

        # Text alignment. Default `left`.
        module TextAlign
          extend Onlyfans::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Onlyfans::StoryCreateParams::Text::TextAlign)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LEFT =
            T.let(
              :left,
              Onlyfans::StoryCreateParams::Text::TextAlign::TaggedSymbol
            )
          CENTER =
            T.let(
              :center,
              Onlyfans::StoryCreateParams::Text::TextAlign::TaggedSymbol
            )
          RIGHT =
            T.let(
              :right,
              Onlyfans::StoryCreateParams::Text::TextAlign::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Onlyfans::StoryCreateParams::Text::TextAlign::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Overlay type. Default `text`.
        module Type
          extend Onlyfans::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Onlyfans::StoryCreateParams::Text::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TEXT =
            T.let(:text, Onlyfans::StoryCreateParams::Text::Type::TaggedSymbol)
          MENTION =
            T.let(
              :mention,
              Onlyfans::StoryCreateParams::Text::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Onlyfans::StoryCreateParams::Text::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
