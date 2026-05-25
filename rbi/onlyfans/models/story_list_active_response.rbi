# typed: strong

module Onlyfans
  module Models
    class StoryListActiveResponse < Onlyfans::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfans::Models::StoryListActiveResponse,
            Onlyfans::Internal::AnyHash
          )
        end

      sig do
        returns(T.nilable(Onlyfans::Models::StoryListActiveResponse::Meta))
      end
      attr_reader :_meta

      sig do
        params(
          _meta: Onlyfans::Models::StoryListActiveResponse::Meta::OrHash
        ).void
      end
      attr_writer :_meta

      sig do
        returns(
          T.nilable(T::Array[Onlyfans::Models::StoryListActiveResponse::Data])
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            T::Array[Onlyfans::Models::StoryListActiveResponse::Data::OrHash]
        ).void
      end
      attr_writer :data

      sig do
        params(
          _meta: Onlyfans::Models::StoryListActiveResponse::Meta::OrHash,
          data:
            T::Array[Onlyfans::Models::StoryListActiveResponse::Data::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(_meta: nil, data: nil)
      end

      sig do
        override.returns(
          {
            _meta: Onlyfans::Models::StoryListActiveResponse::Meta,
            data: T::Array[Onlyfans::Models::StoryListActiveResponse::Data]
          }
        )
      end
      def to_hash
      end

      class Meta < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Models::StoryListActiveResponse::Meta,
              Onlyfans::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(Onlyfans::Models::StoryListActiveResponse::Meta::Cache)
          )
        end
        attr_reader :_cache

        sig do
          params(
            _cache:
              Onlyfans::Models::StoryListActiveResponse::Meta::Cache::OrHash
          ).void
        end
        attr_writer :_cache

        sig do
          returns(
            T.nilable(Onlyfans::Models::StoryListActiveResponse::Meta::Credits)
          )
        end
        attr_reader :_credits

        sig do
          params(
            _credits:
              Onlyfans::Models::StoryListActiveResponse::Meta::Credits::OrHash
          ).void
        end
        attr_writer :_credits

        sig do
          returns(
            T.nilable(
              Onlyfans::Models::StoryListActiveResponse::Meta::RateLimits
            )
          )
        end
        attr_reader :_rate_limits

        sig do
          params(
            _rate_limits:
              Onlyfans::Models::StoryListActiveResponse::Meta::RateLimits::OrHash
          ).void
        end
        attr_writer :_rate_limits

        sig do
          params(
            _cache:
              Onlyfans::Models::StoryListActiveResponse::Meta::Cache::OrHash,
            _credits:
              Onlyfans::Models::StoryListActiveResponse::Meta::Credits::OrHash,
            _rate_limits:
              Onlyfans::Models::StoryListActiveResponse::Meta::RateLimits::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
        end

        sig do
          override.returns(
            {
              _cache: Onlyfans::Models::StoryListActiveResponse::Meta::Cache,
              _credits:
                Onlyfans::Models::StoryListActiveResponse::Meta::Credits,
              _rate_limits:
                Onlyfans::Models::StoryListActiveResponse::Meta::RateLimits
            }
          )
        end
        def to_hash
        end

        class Cache < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::StoryListActiveResponse::Meta::Cache,
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
                Onlyfans::Models::StoryListActiveResponse::Meta::Credits,
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
                Onlyfans::Models::StoryListActiveResponse::Meta::RateLimits,
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
              Onlyfans::Models::StoryListActiveResponse::Data,
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
              T::Array[Onlyfans::Models::StoryListActiveResponse::Data::Media]
            )
          )
        end
        attr_reader :media

        sig do
          params(
            media:
              T::Array[
                Onlyfans::Models::StoryListActiveResponse::Data::Media::OrHash
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
                Onlyfans::Models::StoryListActiveResponse::Data::Media::OrHash
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
                T::Array[
                  Onlyfans::Models::StoryListActiveResponse::Data::Media
                ],
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
                Onlyfans::Models::StoryListActiveResponse::Data::Media,
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
                Onlyfans::Models::StoryListActiveResponse::Data::Media::Files
              )
            )
          end
          attr_reader :files

          sig do
            params(
              files:
                Onlyfans::Models::StoryListActiveResponse::Data::Media::Files::OrHash
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
            returns(
              T.nilable(
                Onlyfans::Models::StoryListActiveResponse::Data::Media::VideoSources
              )
            )
          end
          attr_reader :video_sources

          sig do
            params(
              video_sources:
                Onlyfans::Models::StoryListActiveResponse::Data::Media::VideoSources::OrHash
            ).void
          end
          attr_writer :video_sources

          sig do
            params(
              id: Integer,
              can_view: T::Boolean,
              converted_to_video: T::Boolean,
              created_at: String,
              duration: Integer,
              files:
                Onlyfans::Models::StoryListActiveResponse::Data::Media::Files::OrHash,
              has_custom_preview: T::Boolean,
              has_error: T::Boolean,
              is_ready: T::Boolean,
              type: String,
              video_sources:
                Onlyfans::Models::StoryListActiveResponse::Data::Media::VideoSources::OrHash
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
            type: nil,
            video_sources: nil
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
                  Onlyfans::Models::StoryListActiveResponse::Data::Media::Files,
                has_custom_preview: T::Boolean,
                has_error: T::Boolean,
                is_ready: T::Boolean,
                type: String,
                video_sources:
                  Onlyfans::Models::StoryListActiveResponse::Data::Media::VideoSources
              }
            )
          end
          def to_hash
          end

          class Files < Onlyfans::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Models::StoryListActiveResponse::Data::Media::Files,
                  Onlyfans::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  Onlyfans::Models::StoryListActiveResponse::Data::Media::Files::Full
                )
              )
            end
            attr_reader :full

            sig do
              params(
                full:
                  Onlyfans::Models::StoryListActiveResponse::Data::Media::Files::Full::OrHash
              ).void
            end
            attr_writer :full

            sig do
              returns(
                T.nilable(
                  Onlyfans::Models::StoryListActiveResponse::Data::Media::Files::Preview
                )
              )
            end
            attr_reader :preview

            sig do
              params(
                preview:
                  Onlyfans::Models::StoryListActiveResponse::Data::Media::Files::Preview::OrHash
              ).void
            end
            attr_writer :preview

            sig do
              returns(
                T.nilable(
                  Onlyfans::Models::StoryListActiveResponse::Data::Media::Files::SquarePreview
                )
              )
            end
            attr_reader :square_preview

            sig do
              params(
                square_preview:
                  Onlyfans::Models::StoryListActiveResponse::Data::Media::Files::SquarePreview::OrHash
              ).void
            end
            attr_writer :square_preview

            sig do
              returns(
                T.nilable(
                  Onlyfans::Models::StoryListActiveResponse::Data::Media::Files::Thumb
                )
              )
            end
            attr_reader :thumb

            sig do
              params(
                thumb:
                  Onlyfans::Models::StoryListActiveResponse::Data::Media::Files::Thumb::OrHash
              ).void
            end
            attr_writer :thumb

            sig do
              params(
                full:
                  Onlyfans::Models::StoryListActiveResponse::Data::Media::Files::Full::OrHash,
                preview:
                  Onlyfans::Models::StoryListActiveResponse::Data::Media::Files::Preview::OrHash,
                square_preview:
                  Onlyfans::Models::StoryListActiveResponse::Data::Media::Files::SquarePreview::OrHash,
                thumb:
                  Onlyfans::Models::StoryListActiveResponse::Data::Media::Files::Thumb::OrHash
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
                    Onlyfans::Models::StoryListActiveResponse::Data::Media::Files::Full,
                  preview:
                    Onlyfans::Models::StoryListActiveResponse::Data::Media::Files::Preview,
                  square_preview:
                    Onlyfans::Models::StoryListActiveResponse::Data::Media::Files::SquarePreview,
                  thumb:
                    Onlyfans::Models::StoryListActiveResponse::Data::Media::Files::Thumb
                }
              )
            end
            def to_hash
            end

            class Full < Onlyfans::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfans::Models::StoryListActiveResponse::Data::Media::Files::Full,
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
              attr_reader :url

              sig { params(url: String).void }
              attr_writer :url

              sig { returns(T.nilable(Integer)) }
              attr_reader :width

              sig { params(width: Integer).void }
              attr_writer :width

              sig do
                params(
                  height: Integer,
                  size: Integer,
                  sources: T::Array[T.anything],
                  url: String,
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
                    url: String,
                    width: Integer
                  }
                )
              end
              def to_hash
              end
            end

            class Preview < Onlyfans::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfans::Models::StoryListActiveResponse::Data::Media::Files::Preview,
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

              sig do
                returns(
                  T.nilable(
                    Onlyfans::Models::StoryListActiveResponse::Data::Media::Files::Preview::Sources
                  )
                )
              end
              attr_reader :sources

              sig do
                params(
                  sources:
                    Onlyfans::Models::StoryListActiveResponse::Data::Media::Files::Preview::Sources::OrHash
                ).void
              end
              attr_writer :sources

              sig { returns(T.nilable(String)) }
              attr_reader :url

              sig { params(url: String).void }
              attr_writer :url

              sig { returns(T.nilable(Integer)) }
              attr_reader :width

              sig { params(width: Integer).void }
              attr_writer :width

              sig do
                params(
                  height: Integer,
                  size: Integer,
                  sources:
                    Onlyfans::Models::StoryListActiveResponse::Data::Media::Files::Preview::Sources::OrHash,
                  url: String,
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
                    sources:
                      Onlyfans::Models::StoryListActiveResponse::Data::Media::Files::Preview::Sources,
                    url: String,
                    width: Integer
                  }
                )
              end
              def to_hash
              end

              class Sources < Onlyfans::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Onlyfans::Models::StoryListActiveResponse::Data::Media::Files::Preview::Sources,
                      Onlyfans::Internal::AnyHash
                    )
                  end

                sig { returns(T.nilable(String)) }
                attr_reader :w150

                sig { params(w150: String).void }
                attr_writer :w150

                sig { params(w150: String).returns(T.attached_class) }
                def self.new(w150: nil)
                end

                sig { override.returns({ w150: String }) }
                def to_hash
                end
              end
            end

            class SquarePreview < Onlyfans::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfans::Models::StoryListActiveResponse::Data::Media::Files::SquarePreview,
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

              sig do
                returns(
                  T.nilable(
                    Onlyfans::Models::StoryListActiveResponse::Data::Media::Files::SquarePreview::Sources
                  )
                )
              end
              attr_reader :sources

              sig do
                params(
                  sources:
                    Onlyfans::Models::StoryListActiveResponse::Data::Media::Files::SquarePreview::Sources::OrHash
                ).void
              end
              attr_writer :sources

              sig { returns(T.nilable(String)) }
              attr_reader :url

              sig { params(url: String).void }
              attr_writer :url

              sig { returns(T.nilable(Integer)) }
              attr_reader :width

              sig { params(width: Integer).void }
              attr_writer :width

              sig do
                params(
                  height: Integer,
                  size: Integer,
                  sources:
                    Onlyfans::Models::StoryListActiveResponse::Data::Media::Files::SquarePreview::Sources::OrHash,
                  url: String,
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
                    sources:
                      Onlyfans::Models::StoryListActiveResponse::Data::Media::Files::SquarePreview::Sources,
                    url: String,
                    width: Integer
                  }
                )
              end
              def to_hash
              end

              class Sources < Onlyfans::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Onlyfans::Models::StoryListActiveResponse::Data::Media::Files::SquarePreview::Sources,
                      Onlyfans::Internal::AnyHash
                    )
                  end

                sig { returns(T.nilable(String)) }
                attr_reader :w150

                sig { params(w150: String).void }
                attr_writer :w150

                sig { returns(T.nilable(String)) }
                attr_reader :w480

                sig { params(w480: String).void }
                attr_writer :w480

                sig do
                  params(w150: String, w480: String).returns(T.attached_class)
                end
                def self.new(w150: nil, w480: nil)
                end

                sig { override.returns({ w150: String, w480: String }) }
                def to_hash
                end
              end
            end

            class Thumb < Onlyfans::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfans::Models::StoryListActiveResponse::Data::Media::Files::Thumb,
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

              sig { returns(T.nilable(String)) }
              attr_reader :url

              sig { params(url: String).void }
              attr_writer :url

              sig { returns(T.nilable(Integer)) }
              attr_reader :width

              sig { params(width: Integer).void }
              attr_writer :width

              sig do
                params(
                  height: Integer,
                  size: Integer,
                  url: String,
                  width: Integer
                ).returns(T.attached_class)
              end
              def self.new(height: nil, size: nil, url: nil, width: nil)
              end

              sig do
                override.returns(
                  {
                    height: Integer,
                    size: Integer,
                    url: String,
                    width: Integer
                  }
                )
              end
              def to_hash
              end
            end
          end

          class VideoSources < Onlyfans::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Models::StoryListActiveResponse::Data::Media::VideoSources,
                  Onlyfans::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_accessor :number_240

            sig { returns(T.nilable(String)) }
            attr_accessor :number_720

            sig do
              params(
                number_240: T.nilable(String),
                number_720: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(number_240: nil, number_720: nil)
            end

            sig do
              override.returns(
                { number_240: T.nilable(String), number_720: T.nilable(String) }
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
