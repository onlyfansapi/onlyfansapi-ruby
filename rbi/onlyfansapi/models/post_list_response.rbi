# typed: strong

module Onlyfansapi
  module Models
    class PostListResponse < Onlyfansapi::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::Models::PostListResponse,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Onlyfansapi::Models::PostListResponse::Meta)) }
      attr_reader :_meta

      sig do
        params(_meta: Onlyfansapi::Models::PostListResponse::Meta::OrHash).void
      end
      attr_writer :_meta

      sig { returns(T.nilable(Onlyfansapi::Models::PostListResponse::Data)) }
      attr_reader :data

      sig do
        params(data: Onlyfansapi::Models::PostListResponse::Data::OrHash).void
      end
      attr_writer :data

      sig do
        params(
          _meta: Onlyfansapi::Models::PostListResponse::Meta::OrHash,
          data: Onlyfansapi::Models::PostListResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(_meta: nil, data: nil)
      end

      sig do
        override.returns(
          {
            _meta: Onlyfansapi::Models::PostListResponse::Meta,
            data: Onlyfansapi::Models::PostListResponse::Data
          }
        )
      end
      def to_hash
      end

      class Meta < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::PostListResponse::Meta,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig do
          returns(T.nilable(Onlyfansapi::Models::PostListResponse::Meta::Cache))
        end
        attr_reader :_cache

        sig do
          params(
            _cache: Onlyfansapi::Models::PostListResponse::Meta::Cache::OrHash
          ).void
        end
        attr_writer :_cache

        sig do
          returns(
            T.nilable(Onlyfansapi::Models::PostListResponse::Meta::Credits)
          )
        end
        attr_reader :_credits

        sig do
          params(
            _credits:
              Onlyfansapi::Models::PostListResponse::Meta::Credits::OrHash
          ).void
        end
        attr_writer :_credits

        sig do
          returns(
            T.nilable(Onlyfansapi::Models::PostListResponse::Meta::RateLimits)
          )
        end
        attr_reader :_rate_limits

        sig do
          params(
            _rate_limits:
              Onlyfansapi::Models::PostListResponse::Meta::RateLimits::OrHash
          ).void
        end
        attr_writer :_rate_limits

        sig do
          params(
            _cache: Onlyfansapi::Models::PostListResponse::Meta::Cache::OrHash,
            _credits:
              Onlyfansapi::Models::PostListResponse::Meta::Credits::OrHash,
            _rate_limits:
              Onlyfansapi::Models::PostListResponse::Meta::RateLimits::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
        end

        sig do
          override.returns(
            {
              _cache: Onlyfansapi::Models::PostListResponse::Meta::Cache,
              _credits: Onlyfansapi::Models::PostListResponse::Meta::Credits,
              _rate_limits:
                Onlyfansapi::Models::PostListResponse::Meta::RateLimits
            }
          )
        end
        def to_hash
        end

        class Cache < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::PostListResponse::Meta::Cache,
                Onlyfansapi::Internal::AnyHash
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

        class Credits < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::PostListResponse::Meta::Credits,
                Onlyfansapi::Internal::AnyHash
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

        class RateLimits < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::PostListResponse::Meta::RateLimits,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_reader :limit_day

          sig { params(limit_day: Integer).void }
          attr_writer :limit_day

          sig { returns(T.nilable(Integer)) }
          attr_reader :limit_minute

          sig { params(limit_minute: Integer).void }
          attr_writer :limit_minute

          sig { returns(T.nilable(Integer)) }
          attr_reader :remaining_day

          sig { params(remaining_day: Integer).void }
          attr_writer :remaining_day

          sig { returns(T.nilable(Integer)) }
          attr_reader :remaining_minute

          sig { params(remaining_minute: Integer).void }
          attr_writer :remaining_minute

          sig do
            params(
              limit_day: Integer,
              limit_minute: Integer,
              remaining_day: Integer,
              remaining_minute: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            limit_day: nil,
            limit_minute: nil,
            remaining_day: nil,
            remaining_minute: nil
          )
          end

          sig do
            override.returns(
              {
                limit_day: Integer,
                limit_minute: Integer,
                remaining_day: Integer,
                remaining_minute: Integer
              }
            )
          end
          def to_hash
          end
        end
      end

      class Data < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::PostListResponse::Data,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(Onlyfansapi::Models::PostListResponse::Data::Counters)
          )
        end
        attr_reader :counters

        sig do
          params(
            counters:
              Onlyfansapi::Models::PostListResponse::Data::Counters::OrHash
          ).void
        end
        attr_writer :counters

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :has_more

        sig { params(has_more: T::Boolean).void }
        attr_writer :has_more

        sig { returns(T.nilable(String)) }
        attr_reader :head_marker

        sig { params(head_marker: String).void }
        attr_writer :head_marker

        sig do
          returns(
            T.nilable(
              T::Array[Onlyfansapi::Models::PostListResponse::Data::List]
            )
          )
        end
        attr_reader :list

        sig do
          params(
            list:
              T::Array[
                Onlyfansapi::Models::PostListResponse::Data::List::OrHash
              ]
          ).void
        end
        attr_writer :list

        sig { returns(T.nilable(String)) }
        attr_reader :tail_marker

        sig { params(tail_marker: String).void }
        attr_writer :tail_marker

        sig do
          params(
            counters:
              Onlyfansapi::Models::PostListResponse::Data::Counters::OrHash,
            has_more: T::Boolean,
            head_marker: String,
            list:
              T::Array[
                Onlyfansapi::Models::PostListResponse::Data::List::OrHash
              ],
            tail_marker: String
          ).returns(T.attached_class)
        end
        def self.new(
          counters: nil,
          has_more: nil,
          head_marker: nil,
          list: nil,
          tail_marker: nil
        )
        end

        sig do
          override.returns(
            {
              counters: Onlyfansapi::Models::PostListResponse::Data::Counters,
              has_more: T::Boolean,
              head_marker: String,
              list: T::Array[Onlyfansapi::Models::PostListResponse::Data::List],
              tail_marker: String
            }
          )
        end
        def to_hash
        end

        class Counters < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::PostListResponse::Data::Counters,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_reader :archived_posts_count

          sig { params(archived_posts_count: Integer).void }
          attr_writer :archived_posts_count

          sig { returns(T.nilable(Integer)) }
          attr_reader :audios_count

          sig { params(audios_count: Integer).void }
          attr_writer :audios_count

          sig { returns(T.nilable(Integer)) }
          attr_reader :medias_count

          sig { params(medias_count: Integer).void }
          attr_writer :medias_count

          sig { returns(T.nilable(Integer)) }
          attr_reader :photos_count

          sig { params(photos_count: Integer).void }
          attr_writer :photos_count

          sig { returns(T.nilable(Integer)) }
          attr_reader :posts_count

          sig { params(posts_count: Integer).void }
          attr_writer :posts_count

          sig { returns(T.nilable(Integer)) }
          attr_reader :private_archived_posts_count

          sig { params(private_archived_posts_count: Integer).void }
          attr_writer :private_archived_posts_count

          sig { returns(T.nilable(Integer)) }
          attr_reader :streams_count

          sig { params(streams_count: Integer).void }
          attr_writer :streams_count

          sig { returns(T.nilable(Integer)) }
          attr_reader :videos_count

          sig { params(videos_count: Integer).void }
          attr_writer :videos_count

          sig do
            params(
              archived_posts_count: Integer,
              audios_count: Integer,
              medias_count: Integer,
              photos_count: Integer,
              posts_count: Integer,
              private_archived_posts_count: Integer,
              streams_count: Integer,
              videos_count: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            archived_posts_count: nil,
            audios_count: nil,
            medias_count: nil,
            photos_count: nil,
            posts_count: nil,
            private_archived_posts_count: nil,
            streams_count: nil,
            videos_count: nil
          )
          end

          sig do
            override.returns(
              {
                archived_posts_count: Integer,
                audios_count: Integer,
                medias_count: Integer,
                photos_count: Integer,
                posts_count: Integer,
                private_archived_posts_count: Integer,
                streams_count: Integer,
                videos_count: Integer
              }
            )
          end
          def to_hash
          end
        end

        class List < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::PostListResponse::Data::List,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_reader :id

          sig { params(id: Integer).void }
          attr_writer :id

          sig do
            returns(
              T.nilable(
                Onlyfansapi::Models::PostListResponse::Data::List::Author
              )
            )
          end
          attr_reader :author

          sig do
            params(
              author:
                Onlyfansapi::Models::PostListResponse::Data::List::Author::OrHash
            ).void
          end
          attr_writer :author

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :can_comment

          sig { params(can_comment: T::Boolean).void }
          attr_writer :can_comment

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :can_delete

          sig { params(can_delete: T::Boolean).void }
          attr_writer :can_delete

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :can_edit

          sig { params(can_edit: T::Boolean).void }
          attr_writer :can_edit

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :can_toggle_favorite

          sig { params(can_toggle_favorite: T::Boolean).void }
          attr_writer :can_toggle_favorite

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :can_view_media

          sig { params(can_view_media: T::Boolean).void }
          attr_writer :can_view_media

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_markdown_disabled

          sig { params(is_markdown_disabled: T::Boolean).void }
          attr_writer :is_markdown_disabled

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_media_ready

          sig { params(is_media_ready: T::Boolean).void }
          attr_writer :is_media_ready

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_opened

          sig { params(is_opened: T::Boolean).void }
          attr_writer :is_opened

          sig { returns(T.nilable(String)) }
          attr_reader :posted_at

          sig { params(posted_at: String).void }
          attr_writer :posted_at

          sig { returns(T.nilable(String)) }
          attr_reader :posted_at_precise

          sig { params(posted_at_precise: String).void }
          attr_writer :posted_at_precise

          sig { returns(T.nilable(String)) }
          attr_reader :raw_text

          sig { params(raw_text: String).void }
          attr_writer :raw_text

          sig { returns(T.nilable(String)) }
          attr_reader :response_type

          sig { params(response_type: String).void }
          attr_writer :response_type

          sig { returns(T.nilable(String)) }
          attr_reader :text

          sig { params(text: String).void }
          attr_writer :text

          sig { returns(T.nilable(String)) }
          attr_reader :tips_amount

          sig { params(tips_amount: String).void }
          attr_writer :tips_amount

          sig do
            params(
              id: Integer,
              author:
                Onlyfansapi::Models::PostListResponse::Data::List::Author::OrHash,
              can_comment: T::Boolean,
              can_delete: T::Boolean,
              can_edit: T::Boolean,
              can_toggle_favorite: T::Boolean,
              can_view_media: T::Boolean,
              is_markdown_disabled: T::Boolean,
              is_media_ready: T::Boolean,
              is_opened: T::Boolean,
              posted_at: String,
              posted_at_precise: String,
              raw_text: String,
              response_type: String,
              text: String,
              tips_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            id: nil,
            author: nil,
            can_comment: nil,
            can_delete: nil,
            can_edit: nil,
            can_toggle_favorite: nil,
            can_view_media: nil,
            is_markdown_disabled: nil,
            is_media_ready: nil,
            is_opened: nil,
            posted_at: nil,
            posted_at_precise: nil,
            raw_text: nil,
            response_type: nil,
            text: nil,
            tips_amount: nil
          )
          end

          sig do
            override.returns(
              {
                id: Integer,
                author:
                  Onlyfansapi::Models::PostListResponse::Data::List::Author,
                can_comment: T::Boolean,
                can_delete: T::Boolean,
                can_edit: T::Boolean,
                can_toggle_favorite: T::Boolean,
                can_view_media: T::Boolean,
                is_markdown_disabled: T::Boolean,
                is_media_ready: T::Boolean,
                is_opened: T::Boolean,
                posted_at: String,
                posted_at_precise: String,
                raw_text: String,
                response_type: String,
                text: String,
                tips_amount: String
              }
            )
          end
          def to_hash
          end

          class Author < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::PostListResponse::Data::List::Author,
                  Onlyfansapi::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Integer)) }
            attr_reader :id

            sig { params(id: Integer).void }
            attr_writer :id

            sig { returns(T.nilable(String)) }
            attr_reader :_view

            sig { params(_view: String).void }
            attr_writer :_view

            sig { params(id: Integer, _view: String).returns(T.attached_class) }
            def self.new(id: nil, _view: nil)
            end

            sig { override.returns({ id: Integer, _view: String }) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
