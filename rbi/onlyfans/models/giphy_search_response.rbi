# typed: strong

module Onlyfans
  module Models
    class GiphySearchResponse < Onlyfans::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfans::Models::GiphySearchResponse,
            Onlyfans::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Onlyfans::Models::GiphySearchResponse::Meta)) }
      attr_reader :_meta

      sig do
        params(_meta: Onlyfans::Models::GiphySearchResponse::Meta::OrHash).void
      end
      attr_writer :_meta

      sig do
        returns(
          T.nilable(T::Array[Onlyfans::Models::GiphySearchResponse::Data])
        )
      end
      attr_reader :data

      sig do
        params(
          data: T::Array[Onlyfans::Models::GiphySearchResponse::Data::OrHash]
        ).void
      end
      attr_writer :data

      sig do
        params(
          _meta: Onlyfans::Models::GiphySearchResponse::Meta::OrHash,
          data: T::Array[Onlyfans::Models::GiphySearchResponse::Data::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(_meta: nil, data: nil)
      end

      sig do
        override.returns(
          {
            _meta: Onlyfans::Models::GiphySearchResponse::Meta,
            data: T::Array[Onlyfans::Models::GiphySearchResponse::Data]
          }
        )
      end
      def to_hash
      end

      class Meta < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Models::GiphySearchResponse::Meta,
              Onlyfans::Internal::AnyHash
            )
          end

        sig do
          returns(T.nilable(Onlyfans::Models::GiphySearchResponse::Meta::Cache))
        end
        attr_reader :_cache

        sig do
          params(
            _cache: Onlyfans::Models::GiphySearchResponse::Meta::Cache::OrHash
          ).void
        end
        attr_writer :_cache

        sig do
          returns(
            T.nilable(Onlyfans::Models::GiphySearchResponse::Meta::Credits)
          )
        end
        attr_reader :_credits

        sig do
          params(
            _credits:
              Onlyfans::Models::GiphySearchResponse::Meta::Credits::OrHash
          ).void
        end
        attr_writer :_credits

        sig do
          returns(
            T.nilable(Onlyfans::Models::GiphySearchResponse::Meta::RateLimits)
          )
        end
        attr_reader :_rate_limits

        sig do
          params(
            _rate_limits:
              Onlyfans::Models::GiphySearchResponse::Meta::RateLimits::OrHash
          ).void
        end
        attr_writer :_rate_limits

        sig do
          params(
            _cache: Onlyfans::Models::GiphySearchResponse::Meta::Cache::OrHash,
            _credits:
              Onlyfans::Models::GiphySearchResponse::Meta::Credits::OrHash,
            _rate_limits:
              Onlyfans::Models::GiphySearchResponse::Meta::RateLimits::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
        end

        sig do
          override.returns(
            {
              _cache: Onlyfans::Models::GiphySearchResponse::Meta::Cache,
              _credits: Onlyfans::Models::GiphySearchResponse::Meta::Credits,
              _rate_limits:
                Onlyfans::Models::GiphySearchResponse::Meta::RateLimits
            }
          )
        end
        def to_hash
        end

        class Cache < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::GiphySearchResponse::Meta::Cache,
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
                Onlyfans::Models::GiphySearchResponse::Meta::Credits,
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
                Onlyfans::Models::GiphySearchResponse::Meta::RateLimits,
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
              Onlyfans::Models::GiphySearchResponse::Data,
              Onlyfans::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        sig { returns(T.nilable(String)) }
        attr_reader :embed_url

        sig { params(embed_url: String).void }
        attr_writer :embed_url

        sig do
          returns(
            T.nilable(Onlyfans::Models::GiphySearchResponse::Data::Images)
          )
        end
        attr_reader :images

        sig do
          params(
            images: Onlyfans::Models::GiphySearchResponse::Data::Images::OrHash
          ).void
        end
        attr_writer :images

        sig { returns(T.nilable(String)) }
        attr_reader :rating

        sig { params(rating: String).void }
        attr_writer :rating

        sig { returns(T.nilable(String)) }
        attr_reader :slug

        sig { params(slug: String).void }
        attr_writer :slug

        sig { returns(T.nilable(String)) }
        attr_reader :title

        sig { params(title: String).void }
        attr_writer :title

        sig { returns(T.nilable(String)) }
        attr_reader :type

        sig { params(type: String).void }
        attr_writer :type

        sig { returns(T.nilable(String)) }
        attr_reader :url

        sig { params(url: String).void }
        attr_writer :url

        sig { returns(T.nilable(String)) }
        attr_reader :username

        sig { params(username: String).void }
        attr_writer :username

        sig do
          params(
            id: String,
            embed_url: String,
            images: Onlyfans::Models::GiphySearchResponse::Data::Images::OrHash,
            rating: String,
            slug: String,
            title: String,
            type: String,
            url: String,
            username: String
          ).returns(T.attached_class)
        end
        def self.new(
          id: nil,
          embed_url: nil,
          images: nil,
          rating: nil,
          slug: nil,
          title: nil,
          type: nil,
          url: nil,
          username: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              embed_url: String,
              images: Onlyfans::Models::GiphySearchResponse::Data::Images,
              rating: String,
              slug: String,
              title: String,
              type: String,
              url: String,
              username: String
            }
          )
        end
        def to_hash
        end

        class Images < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::GiphySearchResponse::Data::Images,
                Onlyfans::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::GiphySearchResponse::Data::Images::FixedHeight
              )
            )
          end
          attr_reader :fixed_height

          sig do
            params(
              fixed_height:
                Onlyfans::Models::GiphySearchResponse::Data::Images::FixedHeight::OrHash
            ).void
          end
          attr_writer :fixed_height

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::GiphySearchResponse::Data::Images::Original
              )
            )
          end
          attr_reader :original

          sig do
            params(
              original:
                Onlyfans::Models::GiphySearchResponse::Data::Images::Original::OrHash
            ).void
          end
          attr_writer :original

          sig do
            params(
              fixed_height:
                Onlyfans::Models::GiphySearchResponse::Data::Images::FixedHeight::OrHash,
              original:
                Onlyfans::Models::GiphySearchResponse::Data::Images::Original::OrHash
            ).returns(T.attached_class)
          end
          def self.new(fixed_height: nil, original: nil)
          end

          sig do
            override.returns(
              {
                fixed_height:
                  Onlyfans::Models::GiphySearchResponse::Data::Images::FixedHeight,
                original:
                  Onlyfans::Models::GiphySearchResponse::Data::Images::Original
              }
            )
          end
          def to_hash
          end

          class FixedHeight < Onlyfans::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Models::GiphySearchResponse::Data::Images::FixedHeight,
                  Onlyfans::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :height

            sig { params(height: String).void }
            attr_writer :height

            sig { returns(T.nilable(String)) }
            attr_reader :url

            sig { params(url: String).void }
            attr_writer :url

            sig { returns(T.nilable(String)) }
            attr_reader :width

            sig { params(width: String).void }
            attr_writer :width

            sig do
              params(height: String, url: String, width: String).returns(
                T.attached_class
              )
            end
            def self.new(height: nil, url: nil, width: nil)
            end

            sig do
              override.returns({ height: String, url: String, width: String })
            end
            def to_hash
            end
          end

          class Original < Onlyfans::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Models::GiphySearchResponse::Data::Images::Original,
                  Onlyfans::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :height

            sig { params(height: String).void }
            attr_writer :height

            sig { returns(T.nilable(String)) }
            attr_reader :mp4

            sig { params(mp4: String).void }
            attr_writer :mp4

            sig { returns(T.nilable(String)) }
            attr_reader :url

            sig { params(url: String).void }
            attr_writer :url

            sig { returns(T.nilable(String)) }
            attr_reader :webp

            sig { params(webp: String).void }
            attr_writer :webp

            sig { returns(T.nilable(String)) }
            attr_reader :width

            sig { params(width: String).void }
            attr_writer :width

            sig do
              params(
                height: String,
                mp4: String,
                url: String,
                webp: String,
                width: String
              ).returns(T.attached_class)
            end
            def self.new(height: nil, mp4: nil, url: nil, webp: nil, width: nil)
            end

            sig do
              override.returns(
                {
                  height: String,
                  mp4: String,
                  url: String,
                  webp: String,
                  width: String
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
