package top.kikt.imagescanner.core.cache

import top.kikt.imagescanner.core.entity.AssetEntity
import java.util.concurrent.ConcurrentHashMap

class CacheContainer {

    // key is path
    // value is asset entity
    private val assetMap = ConcurrentHashMap<String, AssetEntity>()

    @Synchronized fun putAsset(assetEntity: AssetEntity) {
        assetMap[assetEntity.id] = assetEntity
    }

    @Synchronized fun getAsset(id: String): AssetEntity? {
        return assetMap[id]
    }

    @Synchronized fun  clearCache() {
        assetMap.clear()
    }
}