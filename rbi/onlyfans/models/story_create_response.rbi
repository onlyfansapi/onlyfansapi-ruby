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

        sig { returns(T.nilable(String)) }
        attr_accessor :question

        sig { returns(T.nilable(T::Array[T.anything])) }
        attr_reader :release_forms

        sig { params(release_forms: T::Array[T.anything]).void }
        attr_writer :release_forms

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
            question: T.nilable(String),
            release_forms: T::Array[T.anything],
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
              question: T.nilable(String),
              release_forms: T::Array[T.anything],
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
      end
    end
  end
end
