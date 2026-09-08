# typed: strong

module Onlyfans
  module Models
    class StoryCreateResponse < Onlyfans::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfans::Models::StoryCreateResponse,
            Onlyfans::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Onlyfans::Models::StoryCreateResponse::Meta)) }
      attr_reader :_meta

      sig do
        params(_meta: Onlyfans::Models::StoryCreateResponse::Meta::OrHash).void
      end
      attr_writer :_meta

      sig { returns(T.nilable(Onlyfans::Models::StoryCreateResponse::Data)) }
      attr_reader :data

      sig do
        params(data: Onlyfans::Models::StoryCreateResponse::Data::OrHash).void
      end
      attr_writer :data

      sig do
        params(
          _meta: Onlyfans::Models::StoryCreateResponse::Meta::OrHash,
          data: Onlyfans::Models::StoryCreateResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(_meta: nil, data: nil)
      end

      sig do
        override.returns(
          {
            _meta: Onlyfans::Models::StoryCreateResponse::Meta,
            data: Onlyfans::Models::StoryCreateResponse::Data
          }
        )
      end
      def to_hash
      end

      class Meta < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Models::StoryCreateResponse::Meta,
              Onlyfans::Internal::AnyHash
            )
          end

        sig do
          returns(T.nilable(Onlyfans::Models::StoryCreateResponse::Meta::Cache))
        end
        attr_reader :_cache

        sig do
          params(
            _cache: Onlyfans::Models::StoryCreateResponse::Meta::Cache::OrHash
          ).void
        end
        attr_writer :_cache

        sig do
          returns(
            T.nilable(Onlyfans::Models::StoryCreateResponse::Meta::Credits)
          )
        end
        attr_reader :_credits

        sig do
          params(
            _credits:
              Onlyfans::Models::StoryCreateResponse::Meta::Credits::OrHash
          ).void
        end
        attr_writer :_credits

        sig do
          returns(
            T.nilable(Onlyfans::Models::StoryCreateResponse::Meta::RateLimits)
          )
        end
        attr_reader :_rate_limits

        sig do
          params(
            _rate_limits:
              Onlyfans::Models::StoryCreateResponse::Meta::RateLimits::OrHash
          ).void
        end
        attr_writer :_rate_limits

        sig do
          params(
            _cache: Onlyfans::Models::StoryCreateResponse::Meta::Cache::OrHash,
            _credits:
              Onlyfans::Models::StoryCreateResponse::Meta::Credits::OrHash,
            _rate_limits:
              Onlyfans::Models::StoryCreateResponse::Meta::RateLimits::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
        end

        sig do
          override.returns(
            {
              _cache: Onlyfans::Models::StoryCreateResponse::Meta::Cache,
              _credits: Onlyfans::Models::StoryCreateResponse::Meta::Credits,
              _rate_limits:
                Onlyfans::Models::StoryCreateResponse::Meta::RateLimits
            }
          )
        end
        def to_hash
        end

        class Cache < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::StoryCreateResponse::Meta::Cache,
                Onlyfans::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_cached

          sig { params(is_cached: T::Boolean).void }
          attr_writer :is_cached

          sig { returns(T.nilable(String)) }
          attr_reader :note

          sig { params(note: String).void }
          attr_writer :note

          sig do
            params(is_cached: T::Boolean, note: String).returns(
              T.attached_class
            )
          end
          def self.new(is_cached: nil, note: nil)
          end

          sig { override.returns({ is_cached: T::Boolean, note: String }) }
          def to_hash
          end
        end

        class Credits < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::StoryCreateResponse::Meta::Credits,
                Onlyfans::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_reader :balance

          sig { params(balance: Integer).void }
          attr_writer :balance

          sig { returns(T.nilable(String)) }
          attr_reader :note

          sig { params(note: String).void }
          attr_writer :note

          sig { returns(T.nilable(Integer)) }
          attr_reader :used

          sig { params(used: Integer).void }
          attr_writer :used

          sig do
            params(balance: Integer, note: String, used: Integer).returns(
              T.attached_class
            )
          end
          def self.new(balance: nil, note: nil, used: nil)
          end

          sig do
            override.returns({ balance: Integer, note: String, used: Integer })
          end
          def to_hash
          end
        end

        class RateLimits < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::StoryCreateResponse::Meta::RateLimits,
                Onlyfans::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_accessor :limit_day

          sig { returns(T.nilable(Integer)) }
          attr_reader :limit_minute

          sig { params(limit_minute: Integer).void }
          attr_writer :limit_minute

          sig { returns(T.nilable(String)) }
          attr_reader :notice

          sig { params(notice: String).void }
          attr_writer :notice

          sig { returns(T.nilable(String)) }
          attr_accessor :remaining_day

          sig { returns(T.nilable(Integer)) }
          attr_reader :remaining_minute

          sig { params(remaining_minute: Integer).void }
          attr_writer :remaining_minute

          sig do
            params(
              limit_day: T.nilable(String),
              limit_minute: Integer,
              notice: String,
              remaining_day: T.nilable(String),
              remaining_minute: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            limit_day: nil,
            limit_minute: nil,
            notice: nil,
            remaining_day: nil,
            remaining_minute: nil
          )
          end

          sig do
            override.returns(
              {
                limit_day: T.nilable(String),
                limit_minute: Integer,
                notice: String,
                remaining_day: T.nilable(String),
                remaining_minute: Integer
              }
            )
          end
          def to_hash
          end
        end
      end

      class Data < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Models::StoryCreateResponse::Data,
              Onlyfans::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Integer)) }
        attr_reader :id

        sig { params(id: Integer).void }
        attr_writer :id

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :can_delete

        sig { params(can_delete: T::Boolean).void }
        attr_writer :can_delete

        sig { returns(T.nilable(Integer)) }
        attr_reader :canvas_height

        sig { params(canvas_height: Integer).void }
        attr_writer :canvas_height

        sig { returns(T.nilable(Integer)) }
        attr_reader :canvas_width

        sig { params(canvas_width: Integer).void }
        attr_writer :canvas_width

        sig { returns(T.nilable(Integer)) }
        attr_reader :comments_count

        sig { params(comments_count: Integer).void }
        attr_writer :comments_count

        sig { returns(T.nilable(String)) }
        attr_reader :created_at

        sig { params(created_at: String).void }
        attr_writer :created_at

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :has_post

        sig { params(has_post: T::Boolean).void }
        attr_writer :has_post

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_highlight_cover

        sig { params(is_highlight_cover: T::Boolean).void }
        attr_writer :is_highlight_cover

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_last_in_highlight

        sig { params(is_last_in_highlight: T::Boolean).void }
        attr_writer :is_last_in_highlight

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_ready

        sig { params(is_ready: T::Boolean).void }
        attr_writer :is_ready

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_watched

        sig { params(is_watched: T::Boolean).void }
        attr_writer :is_watched

        sig { returns(T.nilable(Integer)) }
        attr_reader :likes_count

        sig { params(likes_count: Integer).void }
        attr_writer :likes_count

        sig do
          returns(
            T.nilable(
              T::Array[Onlyfans::Models::StoryCreateResponse::Data::Media]
            )
          )
        end
        attr_reader :media

        sig do
          params(
            media:
              T::Array[
                Onlyfans::Models::StoryCreateResponse::Data::Media::OrHash
              ]
          ).void
        end
        attr_writer :media

        sig do
          returns(
            T.nilable(Onlyfans::Models::StoryCreateResponse::Data::Question)
          )
        end
        attr_reader :question

        sig do
          params(
            question:
              Onlyfans::Models::StoryCreateResponse::Data::Question::OrHash
          ).void
        end
        attr_writer :question

        sig do
          returns(
            T.nilable(
              T::Array[Onlyfans::Models::StoryCreateResponse::Data::ReleaseForm]
            )
          )
        end
        attr_reader :release_forms

        sig do
          params(
            release_forms:
              T::Array[
                Onlyfans::Models::StoryCreateResponse::Data::ReleaseForm::OrHash
              ]
          ).void
        end
        attr_writer :release_forms

        sig do
          returns(
            T.nilable(
              T::Array[Onlyfans::Models::StoryCreateResponse::Data::Text]
            )
          )
        end
        attr_reader :texts

        sig do
          params(
            texts:
              T::Array[
                Onlyfans::Models::StoryCreateResponse::Data::Text::OrHash
              ]
          ).void
        end
        attr_writer :texts

        sig { returns(T.nilable(String)) }
        attr_reader :tips_amount

        sig { params(tips_amount: String).void }
        attr_writer :tips_amount

        sig { returns(T.nilable(Integer)) }
        attr_reader :tips_amount_raw

        sig { params(tips_amount_raw: Integer).void }
        attr_writer :tips_amount_raw

        sig { returns(T.nilable(Integer)) }
        attr_reader :tips_count

        sig { params(tips_count: Integer).void }
        attr_writer :tips_count

        sig { returns(T.nilable(Integer)) }
        attr_reader :user_id

        sig { params(user_id: Integer).void }
        attr_writer :user_id

        sig { returns(T.nilable(T::Array[T.anything])) }
        attr_reader :viewers

        sig { params(viewers: T::Array[T.anything]).void }
        attr_writer :viewers

        sig { returns(T.nilable(Integer)) }
        attr_reader :viewers_count

        sig { params(viewers_count: Integer).void }
        attr_writer :viewers_count

        sig do
          params(
            id: Integer,
            can_delete: T::Boolean,
            canvas_height: Integer,
            canvas_width: Integer,
            comments_count: Integer,
            created_at: String,
            has_post: T::Boolean,
            is_highlight_cover: T::Boolean,
            is_last_in_highlight: T::Boolean,
            is_ready: T::Boolean,
            is_watched: T::Boolean,
            likes_count: Integer,
            media:
              T::Array[
                Onlyfans::Models::StoryCreateResponse::Data::Media::OrHash
              ],
            question:
              Onlyfans::Models::StoryCreateResponse::Data::Question::OrHash,
            release_forms:
              T::Array[
                Onlyfans::Models::StoryCreateResponse::Data::ReleaseForm::OrHash
              ],
            texts:
              T::Array[
                Onlyfans::Models::StoryCreateResponse::Data::Text::OrHash
              ],
            tips_amount: String,
            tips_amount_raw: Integer,
            tips_count: Integer,
            user_id: Integer,
            viewers: T::Array[T.anything],
            viewers_count: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          id: nil,
          can_delete: nil,
          canvas_height: nil,
          canvas_width: nil,
          comments_count: nil,
          created_at: nil,
          has_post: nil,
          is_highlight_cover: nil,
          is_last_in_highlight: nil,
          is_ready: nil,
          is_watched: nil,
          likes_count: nil,
          media: nil,
          question: nil,
          release_forms: nil,
          texts: nil,
          tips_amount: nil,
          tips_amount_raw: nil,
          tips_count: nil,
          user_id: nil,
          viewers: nil,
          viewers_count: nil
        )
        end

        sig do
          override.returns(
            {
              id: Integer,
              can_delete: T::Boolean,
              canvas_height: Integer,
              canvas_width: Integer,
              comments_count: Integer,
              created_at: String,
              has_post: T::Boolean,
              is_highlight_cover: T::Boolean,
              is_last_in_highlight: T::Boolean,
              is_ready: T::Boolean,
              is_watched: T::Boolean,
              likes_count: Integer,
              media:
                T::Array[Onlyfans::Models::StoryCreateResponse::Data::Media],
              question: Onlyfans::Models::StoryCreateResponse::Data::Question,
              release_forms:
                T::Array[
                  Onlyfans::Models::StoryCreateResponse::Data::ReleaseForm
                ],
              texts:
                T::Array[Onlyfans::Models::StoryCreateResponse::Data::Text],
              tips_amount: String,
              tips_amount_raw: Integer,
              tips_count: Integer,
              user_id: Integer,
              viewers: T::Array[T.anything],
              viewers_count: Integer
            }
          )
        end
        def to_hash
        end

        class Media < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::StoryCreateResponse::Data::Media,
                Onlyfans::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_reader :id

          sig { params(id: Integer).void }
          attr_writer :id

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :can_view

          sig { params(can_view: T::Boolean).void }
          attr_writer :can_view

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :converted_to_video

          sig { params(converted_to_video: T::Boolean).void }
          attr_writer :converted_to_video

          sig { returns(T.nilable(String)) }
          attr_reader :created_at

          sig { params(created_at: String).void }
          attr_writer :created_at

          sig { returns(T.nilable(Integer)) }
          attr_reader :duration

          sig { params(duration: Integer).void }
          attr_writer :duration

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::StoryCreateResponse::Data::Media::Files
              )
            )
          end
          attr_reader :files

          sig do
            params(
              files:
                Onlyfans::Models::StoryCreateResponse::Data::Media::Files::OrHash
            ).void
          end
          attr_writer :files

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :has_custom_preview

          sig { params(has_custom_preview: T::Boolean).void }
          attr_writer :has_custom_preview

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :has_error

          sig { params(has_error: T::Boolean).void }
          attr_writer :has_error

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_ready

          sig { params(is_ready: T::Boolean).void }
          attr_writer :is_ready

          sig { returns(T.nilable(String)) }
          attr_reader :type

          sig { params(type: String).void }
          attr_writer :type

          sig do
            params(
              id: Integer,
              can_view: T::Boolean,
              converted_to_video: T::Boolean,
              created_at: String,
              duration: Integer,
              files:
                Onlyfans::Models::StoryCreateResponse::Data::Media::Files::OrHash,
              has_custom_preview: T::Boolean,
              has_error: T::Boolean,
              is_ready: T::Boolean,
              type: String
            ).returns(T.attached_class)
          end
          def self.new(
            id: nil,
            can_view: nil,
            converted_to_video: nil,
            created_at: nil,
            duration: nil,
            files: nil,
            has_custom_preview: nil,
            has_error: nil,
            is_ready: nil,
            type: nil
          )
          end

          sig do
            override.returns(
              {
                id: Integer,
                can_view: T::Boolean,
                converted_to_video: T::Boolean,
                created_at: String,
                duration: Integer,
                files:
                  Onlyfans::Models::StoryCreateResponse::Data::Media::Files,
                has_custom_preview: T::Boolean,
                has_error: T::Boolean,
                is_ready: T::Boolean,
                type: String
              }
            )
          end
          def to_hash
          end

          class Files < Onlyfans::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Models::StoryCreateResponse::Data::Media::Files,
                  Onlyfans::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  Onlyfans::Models::StoryCreateResponse::Data::Media::Files::Full
                )
              )
            end
            attr_reader :full

            sig do
              params(
                full:
                  Onlyfans::Models::StoryCreateResponse::Data::Media::Files::Full::OrHash
              ).void
            end
            attr_writer :full

            sig { returns(T.nilable(String)) }
            attr_accessor :preview

            sig { returns(T.nilable(String)) }
            attr_accessor :square_preview

            sig { returns(T.nilable(String)) }
            attr_accessor :thumb

            sig do
              params(
                full:
                  Onlyfans::Models::StoryCreateResponse::Data::Media::Files::Full::OrHash,
                preview: T.nilable(String),
                square_preview: T.nilable(String),
                thumb: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              full: nil,
              preview: nil,
              square_preview: nil,
              thumb: nil
            )
            end

            sig do
              override.returns(
                {
                  full:
                    Onlyfans::Models::StoryCreateResponse::Data::Media::Files::Full,
                  preview: T.nilable(String),
                  square_preview: T.nilable(String),
                  thumb: T.nilable(String)
                }
              )
            end
            def to_hash
            end

            class Full < Onlyfans::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfans::Models::StoryCreateResponse::Data::Media::Files::Full,
                    Onlyfans::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(Integer)) }
              attr_reader :height

              sig { params(height: Integer).void }
              attr_writer :height

              sig { returns(T.nilable(Integer)) }
              attr_reader :size

              sig { params(size: Integer).void }
              attr_writer :size

              sig { returns(T.nilable(T::Array[T.anything])) }
              attr_reader :sources

              sig { params(sources: T::Array[T.anything]).void }
              attr_writer :sources

              sig { returns(T.nilable(String)) }
              attr_accessor :url

              sig { returns(T.nilable(Integer)) }
              attr_reader :width

              sig { params(width: Integer).void }
              attr_writer :width

              sig do
                params(
                  height: Integer,
                  size: Integer,
                  sources: T::Array[T.anything],
                  url: T.nilable(String),
                  width: Integer
                ).returns(T.attached_class)
              end
              def self.new(
                height: nil,
                size: nil,
                sources: nil,
                url: nil,
                width: nil
              )
              end

              sig do
                override.returns(
                  {
                    height: Integer,
                    size: Integer,
                    sources: T::Array[T.anything],
                    url: T.nilable(String),
                    width: Integer
                  }
                )
              end
              def to_hash
              end
            end
          end
        end

        class Question < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::StoryCreateResponse::Data::Question,
                Onlyfans::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::StoryCreateResponse::Data::Question::Entity
              )
            )
          end
          attr_reader :entity

          sig do
            params(
              entity:
                Onlyfans::Models::StoryCreateResponse::Data::Question::Entity::OrHash
            ).void
          end
          attr_writer :entity

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::StoryCreateResponse::Data::Question::Positions
              )
            )
          end
          attr_reader :positions

          sig do
            params(
              positions:
                Onlyfans::Models::StoryCreateResponse::Data::Question::Positions::OrHash
            ).void
          end
          attr_writer :positions

          sig { returns(T.nilable(String)) }
          attr_reader :type

          sig { params(type: String).void }
          attr_writer :type

          sig do
            params(
              entity:
                Onlyfans::Models::StoryCreateResponse::Data::Question::Entity::OrHash,
              positions:
                Onlyfans::Models::StoryCreateResponse::Data::Question::Positions::OrHash,
              type: String
            ).returns(T.attached_class)
          end
          def self.new(entity: nil, positions: nil, type: nil)
          end

          sig do
            override.returns(
              {
                entity:
                  Onlyfans::Models::StoryCreateResponse::Data::Question::Entity,
                positions:
                  Onlyfans::Models::StoryCreateResponse::Data::Question::Positions,
                type: String
              }
            )
          end
          def to_hash
          end

          class Entity < Onlyfans::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Models::StoryCreateResponse::Data::Question::Entity,
                  Onlyfans::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Integer)) }
            attr_reader :id

            sig { params(id: Integer).void }
            attr_writer :id

            sig { returns(T.nilable(String)) }
            attr_reader :created_at

            sig { params(created_at: String).void }
            attr_writer :created_at

            sig { returns(T.nilable(String)) }
            attr_reader :text

            sig { params(text: String).void }
            attr_writer :text

            sig do
              params(id: Integer, created_at: String, text: String).returns(
                T.attached_class
              )
            end
            def self.new(id: nil, created_at: nil, text: nil)
            end

            sig do
              override.returns(
                { id: Integer, created_at: String, text: String }
              )
            end
            def to_hash
            end
          end

          class Positions < Onlyfans::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Models::StoryCreateResponse::Data::Question::Positions,
                  Onlyfans::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Integer)) }
            attr_reader :angle

            sig { params(angle: Integer).void }
            attr_writer :angle

            sig { returns(T.nilable(String)) }
            attr_reader :color

            sig { params(color: String).void }
            attr_writer :color

            sig { returns(T.nilable(Integer)) }
            attr_reader :height

            sig { params(height: Integer).void }
            attr_writer :height

            sig { returns(T.nilable(Integer)) }
            attr_reader :left

            sig { params(left: Integer).void }
            attr_writer :left

            sig { returns(T.nilable(Integer)) }
            attr_reader :top

            sig { params(top: Integer).void }
            attr_writer :top

            sig { returns(T.nilable(Integer)) }
            attr_reader :width

            sig { params(width: Integer).void }
            attr_writer :width

            sig { returns(T.nilable(String)) }
            attr_accessor :x

            sig { returns(T.nilable(String)) }
            attr_accessor :y_

            sig { returns(T.nilable(Integer)) }
            attr_reader :z_index

            sig { params(z_index: Integer).void }
            attr_writer :z_index

            sig do
              params(
                angle: Integer,
                color: String,
                height: Integer,
                left: Integer,
                top: Integer,
                width: Integer,
                x: T.nilable(String),
                y_: T.nilable(String),
                z_index: Integer
              ).returns(T.attached_class)
            end
            def self.new(
              angle: nil,
              color: nil,
              height: nil,
              left: nil,
              top: nil,
              width: nil,
              x: nil,
              y_: nil,
              z_index: nil
            )
            end

            sig do
              override.returns(
                {
                  angle: Integer,
                  color: String,
                  height: Integer,
                  left: Integer,
                  top: Integer,
                  width: Integer,
                  x: T.nilable(String),
                  y_: T.nilable(String),
                  z_index: Integer
                }
              )
            end
            def to_hash
            end
          end
        end

        class ReleaseForm < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::StoryCreateResponse::Data::ReleaseForm,
                Onlyfans::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_reader :id

          sig { params(id: Integer).void }
          attr_writer :id

          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig { returns(T.nilable(String)) }
          attr_reader :partner_source

          sig { params(partner_source: String).void }
          attr_writer :partner_source

          sig { returns(T.nilable(String)) }
          attr_reader :type

          sig { params(type: String).void }
          attr_writer :type

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::StoryCreateResponse::Data::ReleaseForm::User
              )
            )
          end
          attr_reader :user

          sig do
            params(
              user:
                Onlyfans::Models::StoryCreateResponse::Data::ReleaseForm::User::OrHash
            ).void
          end
          attr_writer :user

          sig do
            params(
              id: Integer,
              name: String,
              partner_source: String,
              type: String,
              user:
                Onlyfans::Models::StoryCreateResponse::Data::ReleaseForm::User::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            id: nil,
            name: nil,
            partner_source: nil,
            type: nil,
            user: nil
          )
          end

          sig do
            override.returns(
              {
                id: Integer,
                name: String,
                partner_source: String,
                type: String,
                user:
                  Onlyfans::Models::StoryCreateResponse::Data::ReleaseForm::User
              }
            )
          end
          def to_hash
          end

          class User < Onlyfans::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Models::StoryCreateResponse::Data::ReleaseForm::User,
                  Onlyfans::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Integer)) }
            attr_reader :id

            sig { params(id: Integer).void }
            attr_writer :id

            sig { returns(T.nilable(String)) }
            attr_accessor :avatar

            sig { returns(T.nilable(String)) }
            attr_accessor :avatar_thumbs

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_from_guest

            sig { params(is_from_guest: T::Boolean).void }
            attr_writer :is_from_guest

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_identity_verified

            sig { params(is_identity_verified: T::Boolean).void }
            attr_writer :is_identity_verified

            sig { returns(T.nilable(String)) }
            attr_reader :iv_status

            sig { params(iv_status: String).void }
            attr_writer :iv_status

            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            sig { returns(T.nilable(String)) }
            attr_reader :username

            sig { params(username: String).void }
            attr_writer :username

            sig { returns(T.nilable(String)) }
            attr_reader :view

            sig { params(view: String).void }
            attr_writer :view

            sig do
              params(
                id: Integer,
                avatar: T.nilable(String),
                avatar_thumbs: T.nilable(String),
                is_from_guest: T::Boolean,
                is_identity_verified: T::Boolean,
                iv_status: String,
                name: String,
                username: String,
                view: String
              ).returns(T.attached_class)
            end
            def self.new(
              id: nil,
              avatar: nil,
              avatar_thumbs: nil,
              is_from_guest: nil,
              is_identity_verified: nil,
              iv_status: nil,
              name: nil,
              username: nil,
              view: nil
            )
            end

            sig do
              override.returns(
                {
                  id: Integer,
                  avatar: T.nilable(String),
                  avatar_thumbs: T.nilable(String),
                  is_from_guest: T::Boolean,
                  is_identity_verified: T::Boolean,
                  iv_status: String,
                  name: String,
                  username: String,
                  view: String
                }
              )
            end
            def to_hash
            end
          end
        end

        class Text < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::StoryCreateResponse::Data::Text,
                Onlyfans::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_reader :angle

          sig { params(angle: Integer).void }
          attr_writer :angle

          sig { returns(T.nilable(String)) }
          attr_reader :bg_color

          sig { params(bg_color: String).void }
          attr_writer :bg_color

          sig { returns(T.nilable(String)) }
          attr_reader :color

          sig { params(color: String).void }
          attr_writer :color

          sig { returns(T.nilable(String)) }
          attr_reader :font_family

          sig { params(font_family: String).void }
          attr_writer :font_family

          sig { returns(T.nilable(String)) }
          attr_reader :font_size

          sig { params(font_size: String).void }
          attr_writer :font_size

          sig { returns(T.nilable(String)) }
          attr_accessor :font_style

          sig { returns(T.nilable(Integer)) }
          attr_reader :font_weight

          sig { params(font_weight: Integer).void }
          attr_writer :font_weight

          sig { returns(T.nilable(Integer)) }
          attr_reader :left

          sig { params(left: Integer).void }
          attr_writer :left

          sig { returns(T.nilable(Integer)) }
          attr_reader :scale

          sig { params(scale: Integer).void }
          attr_writer :scale

          sig { returns(T.nilable(String)) }
          attr_reader :text

          sig { params(text: String).void }
          attr_writer :text

          sig { returns(T.nilable(String)) }
          attr_reader :text_align

          sig { params(text_align: String).void }
          attr_writer :text_align

          sig { returns(T.nilable(Float)) }
          attr_reader :text_height

          sig { params(text_height: Float).void }
          attr_writer :text_height

          sig { returns(T.nilable(Integer)) }
          attr_reader :text_width

          sig { params(text_width: Integer).void }
          attr_writer :text_width

          sig { returns(T.nilable(Integer)) }
          attr_reader :top

          sig { params(top: Integer).void }
          attr_writer :top

          sig { returns(T.nilable(String)) }
          attr_reader :type

          sig { params(type: String).void }
          attr_writer :type

          sig { returns(T.nilable(T::Array[T.anything])) }
          attr_reader :users

          sig { params(users: T::Array[T.anything]).void }
          attr_writer :users

          sig { returns(T.nilable(Integer)) }
          attr_reader :z_index

          sig { params(z_index: Integer).void }
          attr_writer :z_index

          sig do
            params(
              angle: Integer,
              bg_color: String,
              color: String,
              font_family: String,
              font_size: String,
              font_style: T.nilable(String),
              font_weight: Integer,
              left: Integer,
              scale: Integer,
              text: String,
              text_align: String,
              text_height: Float,
              text_width: Integer,
              top: Integer,
              type: String,
              users: T::Array[T.anything],
              z_index: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            angle: nil,
            bg_color: nil,
            color: nil,
            font_family: nil,
            font_size: nil,
            font_style: nil,
            font_weight: nil,
            left: nil,
            scale: nil,
            text: nil,
            text_align: nil,
            text_height: nil,
            text_width: nil,
            top: nil,
            type: nil,
            users: nil,
            z_index: nil
          )
          end

          sig do
            override.returns(
              {
                angle: Integer,
                bg_color: String,
                color: String,
                font_family: String,
                font_size: String,
                font_style: T.nilable(String),
                font_weight: Integer,
                left: Integer,
                scale: Integer,
                text: String,
                text_align: String,
                text_height: Float,
                text_width: Integer,
                top: Integer,
                type: String,
                users: T::Array[T.anything],
                z_index: Integer
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
