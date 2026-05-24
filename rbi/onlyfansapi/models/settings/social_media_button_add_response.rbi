# typed: strong

module Onlyfansapi
  module Models
    module Settings
      class SocialMediaButtonAddResponse < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::Settings::SocialMediaButtonAddResponse,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::Settings::SocialMediaButtonAddResponse::Meta
            )
          )
        end
        attr_reader :_meta

        sig do
          params(
            _meta:
              Onlyfansapi::Models::Settings::SocialMediaButtonAddResponse::Meta::OrHash
          ).void
        end
        attr_writer :_meta

        sig do
          returns(
            T.nilable(
              T::Array[
                Onlyfansapi::Models::Settings::SocialMediaButtonAddResponse::Data
              ]
            )
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              T::Array[
                Onlyfansapi::Models::Settings::SocialMediaButtonAddResponse::Data::OrHash
              ]
          ).void
        end
        attr_writer :data

        sig do
          params(
            _meta:
              Onlyfansapi::Models::Settings::SocialMediaButtonAddResponse::Meta::OrHash,
            data:
              T::Array[
                Onlyfansapi::Models::Settings::SocialMediaButtonAddResponse::Data::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(_meta: nil, data: nil)
        end

        sig do
          override.returns(
            {
              _meta:
                Onlyfansapi::Models::Settings::SocialMediaButtonAddResponse::Meta,
              data:
                T::Array[
                  Onlyfansapi::Models::Settings::SocialMediaButtonAddResponse::Data
                ]
            }
          )
        end
        def to_hash
        end

        class Meta < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::Settings::SocialMediaButtonAddResponse::Meta,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Onlyfansapi::Models::Settings::SocialMediaButtonAddResponse::Meta::Cache
              )
            )
          end
          attr_reader :_cache

          sig do
            params(
              _cache:
                Onlyfansapi::Models::Settings::SocialMediaButtonAddResponse::Meta::Cache::OrHash
            ).void
          end
          attr_writer :_cache

          sig do
            returns(
              T.nilable(
                Onlyfansapi::Models::Settings::SocialMediaButtonAddResponse::Meta::Credits
              )
            )
          end
          attr_reader :_credits

          sig do
            params(
              _credits:
                Onlyfansapi::Models::Settings::SocialMediaButtonAddResponse::Meta::Credits::OrHash
            ).void
          end
          attr_writer :_credits

          sig do
            returns(
              T.nilable(
                Onlyfansapi::Models::Settings::SocialMediaButtonAddResponse::Meta::RateLimits
              )
            )
          end
          attr_reader :_rate_limits

          sig do
            params(
              _rate_limits:
                Onlyfansapi::Models::Settings::SocialMediaButtonAddResponse::Meta::RateLimits::OrHash
            ).void
          end
          attr_writer :_rate_limits

          sig do
            params(
              _cache:
                Onlyfansapi::Models::Settings::SocialMediaButtonAddResponse::Meta::Cache::OrHash,
              _credits:
                Onlyfansapi::Models::Settings::SocialMediaButtonAddResponse::Meta::Credits::OrHash,
              _rate_limits:
                Onlyfansapi::Models::Settings::SocialMediaButtonAddResponse::Meta::RateLimits::OrHash
            ).returns(T.attached_class)
          end
          def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
          end

          sig do
            override.returns(
              {
                _cache:
                  Onlyfansapi::Models::Settings::SocialMediaButtonAddResponse::Meta::Cache,
                _credits:
                  Onlyfansapi::Models::Settings::SocialMediaButtonAddResponse::Meta::Credits,
                _rate_limits:
                  Onlyfansapi::Models::Settings::SocialMediaButtonAddResponse::Meta::RateLimits
              }
            )
          end
          def to_hash
          end

          class Cache < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::Settings::SocialMediaButtonAddResponse::Meta::Cache,
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
                  Onlyfansapi::Models::Settings::SocialMediaButtonAddResponse::Meta::Credits,
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
              override.returns(
                { balance: Integer, note: String, used: Integer }
              )
            end
            def to_hash
            end
          end

          class RateLimits < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::Settings::SocialMediaButtonAddResponse::Meta::RateLimits,
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
                Onlyfansapi::Models::Settings::SocialMediaButtonAddResponse::Data,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_reader :id

          sig { params(id: Integer).void }
          attr_writer :id

          sig { returns(T.nilable(Integer)) }
          attr_reader :clicks

          sig { params(clicks: Integer).void }
          attr_writer :clicks

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_valid

          sig { params(is_valid: T::Boolean).void }
          attr_writer :is_valid

          sig { returns(T.nilable(String)) }
          attr_reader :label

          sig { params(label: String).void }
          attr_writer :label

          sig { returns(T.nilable(String)) }
          attr_reader :link

          sig { params(link: String).void }
          attr_writer :link

          sig { returns(T.nilable(String)) }
          attr_reader :social_media

          sig { params(social_media: String).void }
          attr_writer :social_media

          sig { returns(T.nilable(Integer)) }
          attr_reader :sort

          sig { params(sort: Integer).void }
          attr_writer :sort

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
              id: Integer,
              clicks: Integer,
              is_valid: T::Boolean,
              label: String,
              link: String,
              social_media: String,
              sort: Integer,
              url: String,
              username: String
            ).returns(T.attached_class)
          end
          def self.new(
            id: nil,
            clicks: nil,
            is_valid: nil,
            label: nil,
            link: nil,
            social_media: nil,
            sort: nil,
            url: nil,
            username: nil
          )
          end

          sig do
            override.returns(
              {
                id: Integer,
                clicks: Integer,
                is_valid: T::Boolean,
                label: String,
                link: String,
                social_media: String,
                sort: Integer,
                url: String,
                username: String
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
