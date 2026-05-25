# typed: strong

module Onlyfans
  module Models
    class PostUnarchiveResponse < Onlyfans::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfans::Models::PostUnarchiveResponse,
            Onlyfans::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Onlyfans::Models::PostUnarchiveResponse::Meta)) }
      attr_reader :_meta

      sig do
        params(
          _meta: Onlyfans::Models::PostUnarchiveResponse::Meta::OrHash
        ).void
      end
      attr_writer :_meta

      sig { returns(T.nilable(Onlyfans::Models::PostUnarchiveResponse::Data)) }
      attr_reader :data

      sig do
        params(data: Onlyfans::Models::PostUnarchiveResponse::Data::OrHash).void
      end
      attr_writer :data

      sig do
        params(
          _meta: Onlyfans::Models::PostUnarchiveResponse::Meta::OrHash,
          data: Onlyfans::Models::PostUnarchiveResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(_meta: nil, data: nil)
      end

      sig do
        override.returns(
          {
            _meta: Onlyfans::Models::PostUnarchiveResponse::Meta,
            data: Onlyfans::Models::PostUnarchiveResponse::Data
          }
        )
      end
      def to_hash
      end

      class Meta < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Models::PostUnarchiveResponse::Meta,
              Onlyfans::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(Onlyfans::Models::PostUnarchiveResponse::Meta::Cache)
          )
        end
        attr_reader :_cache

        sig do
          params(
            _cache: Onlyfans::Models::PostUnarchiveResponse::Meta::Cache::OrHash
          ).void
        end
        attr_writer :_cache

        sig do
          returns(
            T.nilable(Onlyfans::Models::PostUnarchiveResponse::Meta::Credits)
          )
        end
        attr_reader :_credits

        sig do
          params(
            _credits:
              Onlyfans::Models::PostUnarchiveResponse::Meta::Credits::OrHash
          ).void
        end
        attr_writer :_credits

        sig do
          returns(
            T.nilable(Onlyfans::Models::PostUnarchiveResponse::Meta::RateLimits)
          )
        end
        attr_reader :_rate_limits

        sig do
          params(
            _rate_limits:
              Onlyfans::Models::PostUnarchiveResponse::Meta::RateLimits::OrHash
          ).void
        end
        attr_writer :_rate_limits

        sig do
          params(
            _cache:
              Onlyfans::Models::PostUnarchiveResponse::Meta::Cache::OrHash,
            _credits:
              Onlyfans::Models::PostUnarchiveResponse::Meta::Credits::OrHash,
            _rate_limits:
              Onlyfans::Models::PostUnarchiveResponse::Meta::RateLimits::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
        end

        sig do
          override.returns(
            {
              _cache: Onlyfans::Models::PostUnarchiveResponse::Meta::Cache,
              _credits: Onlyfans::Models::PostUnarchiveResponse::Meta::Credits,
              _rate_limits:
                Onlyfans::Models::PostUnarchiveResponse::Meta::RateLimits
            }
          )
        end
        def to_hash
        end

        class Cache < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::PostUnarchiveResponse::Meta::Cache,
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
                Onlyfans::Models::PostUnarchiveResponse::Meta::Credits,
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
                Onlyfans::Models::PostUnarchiveResponse::Meta::RateLimits,
                Onlyfans::Internal::AnyHash
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

      class Data < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Models::PostUnarchiveResponse::Data,
              Onlyfans::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(Onlyfans::Models::PostUnarchiveResponse::Data::Counters)
          )
        end
        attr_reader :counters

        sig do
          params(
            counters:
              Onlyfans::Models::PostUnarchiveResponse::Data::Counters::OrHash
          ).void
        end
        attr_writer :counters

        sig do
          returns(
            T.nilable(
              T::Array[
                Onlyfans::Models::PostUnarchiveResponse::Data::LabelState
              ]
            )
          )
        end
        attr_reader :label_states

        sig do
          params(
            label_states:
              T::Array[
                Onlyfans::Models::PostUnarchiveResponse::Data::LabelState::OrHash
              ]
          ).void
        end
        attr_writer :label_states

        sig do
          params(
            counters:
              Onlyfans::Models::PostUnarchiveResponse::Data::Counters::OrHash,
            label_states:
              T::Array[
                Onlyfans::Models::PostUnarchiveResponse::Data::LabelState::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(counters: nil, label_states: nil)
        end

        sig do
          override.returns(
            {
              counters: Onlyfans::Models::PostUnarchiveResponse::Data::Counters,
              label_states:
                T::Array[
                  Onlyfans::Models::PostUnarchiveResponse::Data::LabelState
                ]
            }
          )
        end
        def to_hash
        end

        class Counters < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::PostUnarchiveResponse::Data::Counters,
                Onlyfans::Internal::AnyHash
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

        class LabelState < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::PostUnarchiveResponse::Data::LabelState,
                Onlyfans::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_clear_in_progress

          sig { params(is_clear_in_progress: T::Boolean).void }
          attr_writer :is_clear_in_progress

          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig { returns(T.nilable(T::Array[T.anything])) }
          attr_reader :posts

          sig { params(posts: T::Array[T.anything]).void }
          attr_writer :posts

          sig { returns(T.nilable(Integer)) }
          attr_reader :posts_count

          sig { params(posts_count: Integer).void }
          attr_writer :posts_count

          sig { returns(T.nilable(String)) }
          attr_reader :type

          sig { params(type: String).void }
          attr_writer :type

          sig do
            params(
              id: String,
              is_clear_in_progress: T::Boolean,
              name: String,
              posts: T::Array[T.anything],
              posts_count: Integer,
              type: String
            ).returns(T.attached_class)
          end
          def self.new(
            id: nil,
            is_clear_in_progress: nil,
            name: nil,
            posts: nil,
            posts_count: nil,
            type: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                is_clear_in_progress: T::Boolean,
                name: String,
                posts: T::Array[T.anything],
                posts_count: Integer,
                type: String
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
