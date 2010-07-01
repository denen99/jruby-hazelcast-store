require 'java'
require 'jruby-hazelcast'
require 'active_support'

module ActiveSupport

  module Cache

    class HazelcastCacheStore < Store
    
      class CacheException  < StandardError; end

      def initialize(options = {})
        @cache = HazelcastCacheClient.instance
        rescue CacheException => e
          logger.error("HazelcastCacheStore Creation Error (#{e}): #{e.message}")
        
      end

      def read_entry(key, options = nil)
        super
        @cache.get(key)
        rescue CacheException => e
          logger.error("HazelcastCacheStore Creation Error (#{e}): #{e.message}")
        
      end

      def write_entry(key, value, options = nil)
        super
        @data.put(key, value, options)
        true
        rescue CacheException => e
          logger.error("HazelcastCacheStore Creation Error (#{e}): #{e.message}")
        
      end

      def delete_entry(key, options = nil)
        super
        @data.evict(key)
        rescue CacheException => e
          logger.error("HazelcastCacheStore Creation Error (#{e}): #{e.message}")
        
      end

      def keys
        super
        raise "Not supported by HazelcastCacheClient"
      end

      def exist?(key, options = nil)
        @data.exist?(key)
        rescue CacheException => e
          logger.error("HazelcastCacheStore Creation Error (#{e}): #{e.message}")
        
      end

      def delete_matched(matcher, options = nil)
        super
        raise "Not supported by HazelcastCacheClient"
      end

      def clear
        @data.clear
        true
        rescue CacheException => e
          logger.error("HazelcastCacheStore Creation Error (#{e}): #{e.message}")
        
     end

   end

  end
end
