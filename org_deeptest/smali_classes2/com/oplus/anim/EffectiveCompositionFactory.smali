.class public Lcom/oplus/anim/EffectiveCompositionFactory;
.super Ljava/lang/Object;
.source "EffectiveCompositionFactory.java"


# static fields
.field private static final taskCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/anim/EffectiveAnimationTask<",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oplus/anim/EffectiveCompositionFactory;->taskCache:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .line 41
    sget-object v0, Lcom/oplus/anim/EffectiveCompositionFactory;->taskCache:Ljava/util/Map;

    return-object v0
.end method

.method private static cache(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/oplus/anim/EffectiveAnimationTask;
    .locals 5
    .param p0, "cacheKey"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable<",
            "Lcom/oplus/anim/EffectiveAnimationResult<",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            ">;>;)",
            "Lcom/oplus/anim/EffectiveAnimationTask<",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation

    .line 433
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lcom/oplus/anim/EffectiveAnimationResult<Lcom/oplus/anim/EffectiveAnimationComposition;>;>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/oplus/anim/model/EffectiveCompositionCache;->getInstance()Lcom/oplus/anim/model/EffectiveCompositionCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/anim/model/EffectiveCompositionCache;->get(Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationComposition;

    move-result-object v0

    .line 434
    .local v0, "cachedComposition":Lcom/oplus/anim/EffectiveAnimationComposition;
    :goto_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 435
    .local v1, "curDensity":F
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationComposition;->getDensity()F

    move-result v2

    cmpl-float v2, v2, v1

    if-nez v2, :cond_1

    .line 436
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EffectiveCompositionFactory::cached Composition isn\'t null, cacheKey is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/anim/utils/OplusLog;->i(Ljava/lang/String;)V

    .line 437
    new-instance v2, Lcom/oplus/anim/EffectiveAnimationTask;

    new-instance v3, Lcom/oplus/anim/EffectiveCompositionFactory$10;

    invoke-direct {v3, v0}, Lcom/oplus/anim/EffectiveCompositionFactory$10;-><init>(Lcom/oplus/anim/EffectiveAnimationComposition;)V

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/oplus/anim/EffectiveAnimationTask;-><init>(Ljava/util/concurrent/Callable;Z)V

    return-object v2

    .line 443
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationComposition;->getDensity()F

    move-result v2

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_2

    .line 444
    invoke-static {}, Lcom/oplus/anim/utils/Utils;->updateDpScale()V

    .line 445
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EffectiveCompositionFactory::cachedComposition density = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationComposition;->getDensity()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "; curDensity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 445
    invoke-static {v2}, Lcom/oplus/anim/utils/OplusLog;->i(Ljava/lang/String;)V

    .line 448
    :cond_2
    if-eqz p0, :cond_3

    sget-object v2, Lcom/oplus/anim/EffectiveCompositionFactory;->taskCache:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 449
    sget-object v2, Lcom/oplus/anim/EffectiveCompositionFactory;->taskCache:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/anim/EffectiveAnimationTask;

    return-object v2

    .line 452
    :cond_3
    new-instance v2, Lcom/oplus/anim/EffectiveAnimationTask;

    invoke-direct {v2, p1}, Lcom/oplus/anim/EffectiveAnimationTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 453
    .local v2, "task":Lcom/oplus/anim/EffectiveAnimationTask;, "Lcom/oplus/anim/EffectiveAnimationTask<Lcom/oplus/anim/EffectiveAnimationComposition;>;"
    new-instance v3, Lcom/oplus/anim/EffectiveCompositionFactory$11;

    invoke-direct {v3, p0}, Lcom/oplus/anim/EffectiveCompositionFactory$11;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/oplus/anim/EffectiveAnimationTask;->addListener(Lcom/oplus/anim/EffectiveAnimationListener;)Lcom/oplus/anim/EffectiveAnimationTask;

    .line 462
    new-instance v3, Lcom/oplus/anim/EffectiveCompositionFactory$12;

    invoke-direct {v3, p0}, Lcom/oplus/anim/EffectiveCompositionFactory$12;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/oplus/anim/EffectiveAnimationTask;->addFailureListener(Lcom/oplus/anim/EffectiveAnimationListener;)Lcom/oplus/anim/EffectiveAnimationTask;

    .line 468
    sget-object v3, Lcom/oplus/anim/EffectiveCompositionFactory;->taskCache:Ljava/util/Map;

    invoke-interface {v3, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    return-object v2
.end method

.method private static findImageAssetForFileName(Lcom/oplus/anim/EffectiveAnimationComposition;Ljava/lang/String;)Lcom/oplus/anim/EffectiveImageAsset;
    .locals 3
    .param p0, "composition"    # Lcom/oplus/anim/EffectiveAnimationComposition;
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 418
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationComposition;->getImages()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/anim/EffectiveImageAsset;

    .line 419
    .local v1, "asset":Lcom/oplus/anim/EffectiveImageAsset;
    invoke-virtual {v1}, Lcom/oplus/anim/EffectiveImageAsset;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 420
    return-object v1

    .line 422
    .end local v1    # "asset":Lcom/oplus/anim/EffectiveImageAsset;
    :cond_0
    goto :goto_0

    .line 423
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static fromAsset(Landroid/content/Context;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationTask;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/oplus/anim/EffectiveAnimationTask<",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation

    .line 99
    sget-boolean v0, Lcom/oplus/anim/utils/OplusLog;->DEBUG_COMPOSITION:Z

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EffectiveCompositionFactory::fromAsset fileName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/utils/OplusLog;->i(Ljava/lang/String;)V

    .line 103
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 104
    .local v0, "appContext":Landroid/content/Context;
    new-instance v1, Lcom/oplus/anim/EffectiveCompositionFactory$2;

    invoke-direct {v1, v0, p1}, Lcom/oplus/anim/EffectiveCompositionFactory$2;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/oplus/anim/EffectiveCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/oplus/anim/EffectiveAnimationTask;

    move-result-object v1

    return-object v1
.end method

.method public static fromAssetSync(Landroid/content/Context;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationResult;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/oplus/anim/EffectiveAnimationResult<",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation

    .line 121
    sget-boolean v0, Lcom/oplus/anim/utils/OplusLog;->DEBUG_COMPOSITION:Z

    if-eqz v0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EffectiveCompositionFactory::fromAssetSync fileName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/utils/OplusLog;->i(Ljava/lang/String;)V

    .line 125
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "asset_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "cacheKey":Ljava/lang/String;
    const-string v1, ".zip"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    new-instance v1, Ljava/util/zip/ZipInputStream;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1, v0}, Lcom/oplus/anim/EffectiveCompositionFactory;->fromZipStreamSync(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationResult;

    move-result-object v1

    return-object v1

    .line 129
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/oplus/anim/EffectiveCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationResult;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 130
    .end local v0    # "cacheKey":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/oplus/anim/EffectiveAnimationResult;

    invoke-direct {v1, v0}, Lcom/oplus/anim/EffectiveAnimationResult;-><init>(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static fromJson(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationTask;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "cacheKey"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Lcom/oplus/anim/EffectiveAnimationTask<",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 219
    new-instance v0, Lcom/oplus/anim/EffectiveCompositionFactory$5;

    invoke-direct {v0, p0, p1}, Lcom/oplus/anim/EffectiveCompositionFactory$5;-><init>(Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/oplus/anim/EffectiveCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/oplus/anim/EffectiveAnimationTask;

    move-result-object v0

    return-object v0
.end method

.method public static fromJsonInputStream(Ljava/io/InputStream;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationTask;
    .locals 2
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "cacheKey"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/oplus/anim/EffectiveAnimationTask<",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation

    .line 181
    sget-boolean v0, Lcom/oplus/anim/utils/OplusLog;->DEBUG_COMPOSITION:Z

    if-eqz v0, :cond_0

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EffectiveCompositionFactory::fromJsonInputStream cacheKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/utils/OplusLog;->i(Ljava/lang/String;)V

    .line 184
    :cond_0
    new-instance v0, Lcom/oplus/anim/EffectiveCompositionFactory$4;

    invoke-direct {v0, p0, p1}, Lcom/oplus/anim/EffectiveCompositionFactory$4;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/oplus/anim/EffectiveCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/oplus/anim/EffectiveAnimationTask;

    move-result-object v0

    return-object v0
.end method

.method public static fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationResult;
    .locals 2
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "cacheKey"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/oplus/anim/EffectiveAnimationResult<",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation

    .line 197
    sget-boolean v0, Lcom/oplus/anim/utils/OplusLog;->DEBUG_COMPOSITION:Z

    if-eqz v0, :cond_0

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EffectiveCompositionFactory::fromJsonInputStreamSync cacheKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/utils/OplusLog;->i(Ljava/lang/String;)V

    .line 200
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/oplus/anim/EffectiveCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;Z)Lcom/oplus/anim/EffectiveAnimationResult;

    move-result-object v0

    return-object v0
.end method

.method private static fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;Z)Lcom/oplus/anim/EffectiveAnimationResult;
    .locals 2
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "cacheKey"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "close"    # Z
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/oplus/anim/EffectiveAnimationResult<",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation

    .line 206
    :try_start_0
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v0, p1}, Lcom/oplus/anim/EffectiveCompositionFactory;->fromJsonReaderSync(Landroid/util/JsonReader;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    if-eqz p2, :cond_0

    .line 209
    invoke-static {p0}, Lcom/oplus/anim/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_0
    return-object v0

    .line 208
    :catchall_0
    move-exception v0

    if-eqz p2, :cond_1

    .line 209
    invoke-static {p0}, Lcom/oplus/anim/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_1
    throw v0
.end method

.method public static fromJsonReader(Landroid/util/JsonReader;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationTask;
    .locals 2
    .param p0, "reader"    # Landroid/util/JsonReader;
    .param p1, "cacheKey"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Ljava/lang/String;",
            ")",
            "Lcom/oplus/anim/EffectiveAnimationTask<",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation

    .line 267
    sget-boolean v0, Lcom/oplus/anim/utils/OplusLog;->DEBUG_COMPOSITION:Z

    if-eqz v0, :cond_0

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EffectiveCompositionFactory::fromJsonReader cacheKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/utils/OplusLog;->i(Ljava/lang/String;)V

    .line 270
    :cond_0
    new-instance v0, Lcom/oplus/anim/EffectiveCompositionFactory$7;

    invoke-direct {v0, p0, p1}, Lcom/oplus/anim/EffectiveCompositionFactory$7;-><init>(Landroid/util/JsonReader;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/oplus/anim/EffectiveCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/oplus/anim/EffectiveAnimationTask;

    move-result-object v0

    return-object v0
.end method

.method public static fromJsonReaderSync(Landroid/util/JsonReader;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationResult;
    .locals 2
    .param p0, "reader"    # Landroid/util/JsonReader;
    .param p1, "cacheKey"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Ljava/lang/String;",
            ")",
            "Lcom/oplus/anim/EffectiveAnimationResult<",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation

    .line 283
    sget-boolean v0, Lcom/oplus/anim/utils/OplusLog;->DEBUG_COMPOSITION:Z

    if-eqz v0, :cond_0

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EffectiveCompositionFactory::fromJsonReaderSync cacheKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/utils/OplusLog;->i(Ljava/lang/String;)V

    .line 286
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/oplus/anim/EffectiveCompositionFactory;->fromJsonReaderSyncInternal(Landroid/util/JsonReader;Ljava/lang/String;Z)Lcom/oplus/anim/EffectiveAnimationResult;

    move-result-object v0

    return-object v0
.end method

.method private static fromJsonReaderSyncInternal(Landroid/util/JsonReader;Ljava/lang/String;Z)Lcom/oplus/anim/EffectiveAnimationResult;
    .locals 2
    .param p0, "reader"    # Landroid/util/JsonReader;
    .param p1, "cacheKey"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "close"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/oplus/anim/EffectiveAnimationResult<",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation

    .line 292
    :try_start_0
    invoke-static {p0}, Lcom/oplus/anim/parser/EffectiveCompositionParser;->parse(Landroid/util/JsonReader;)Lcom/oplus/anim/EffectiveAnimationComposition;

    move-result-object v0

    .line 293
    .local v0, "composition":Lcom/oplus/anim/EffectiveAnimationComposition;
    invoke-static {}, Lcom/oplus/anim/model/EffectiveCompositionCache;->getInstance()Lcom/oplus/anim/model/EffectiveCompositionCache;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/oplus/anim/model/EffectiveCompositionCache;->put(Ljava/lang/String;Lcom/oplus/anim/EffectiveAnimationComposition;)V

    .line 294
    new-instance v1, Lcom/oplus/anim/EffectiveAnimationResult;

    invoke-direct {v1, v0}, Lcom/oplus/anim/EffectiveAnimationResult;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    if-eqz p2, :cond_0

    .line 299
    invoke-static {p0}, Lcom/oplus/anim/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_0
    return-object v1

    .line 298
    .end local v0    # "composition":Lcom/oplus/anim/EffectiveAnimationComposition;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v1, Lcom/oplus/anim/EffectiveAnimationResult;

    invoke-direct {v1, v0}, Lcom/oplus/anim/EffectiveAnimationResult;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 298
    if-eqz p2, :cond_1

    .line 299
    invoke-static {p0}, Lcom/oplus/anim/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_1
    return-object v1

    .line 298
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz p2, :cond_2

    .line 299
    invoke-static {p0}, Lcom/oplus/anim/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_2
    throw v0
.end method

.method public static fromJsonString(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationTask;
    .locals 2
    .param p0, "json"    # Ljava/lang/String;
    .param p1, "cacheKey"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/oplus/anim/EffectiveAnimationTask<",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation

    .line 243
    sget-boolean v0, Lcom/oplus/anim/utils/OplusLog;->DEBUG_COMPOSITION:Z

    if-eqz v0, :cond_0

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EffectiveCompositionFactory::fromJsonString cacheKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/utils/OplusLog;->i(Ljava/lang/String;)V

    .line 246
    :cond_0
    new-instance v0, Lcom/oplus/anim/EffectiveCompositionFactory$6;

    invoke-direct {v0, p0, p1}, Lcom/oplus/anim/EffectiveCompositionFactory$6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/oplus/anim/EffectiveCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/oplus/anim/EffectiveAnimationTask;

    move-result-object v0

    return-object v0
.end method

.method public static fromJsonStringSync(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationResult;
    .locals 2
    .param p0, "json"    # Ljava/lang/String;
    .param p1, "cacheKey"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/oplus/anim/EffectiveAnimationResult<",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation

    .line 260
    sget-boolean v0, Lcom/oplus/anim/utils/OplusLog;->DEBUG_COMPOSITION:Z

    if-eqz v0, :cond_0

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EffectiveCompositionFactory::fromJsonStringSync cacheKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/utils/OplusLog;->i(Ljava/lang/String;)V

    .line 263
    :cond_0
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v0, p1}, Lcom/oplus/anim/EffectiveCompositionFactory;->fromJsonReaderSync(Landroid/util/JsonReader;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationResult;

    move-result-object v0

    return-object v0
.end method

.method public static fromJsonSync(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationResult;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "cacheKey"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Lcom/oplus/anim/EffectiveAnimationResult<",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 236
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oplus/anim/EffectiveCompositionFactory;->fromJsonStringSync(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationResult;

    move-result-object v0

    return-object v0
.end method

.method public static fromRawRes(Landroid/content/Context;I)Lcom/oplus/anim/EffectiveAnimationTask;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rawRes"    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lcom/oplus/anim/EffectiveAnimationTask<",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation

    .line 141
    sget-boolean v0, Lcom/oplus/anim/utils/OplusLog;->DEBUG_COMPOSITION:Z

    if-eqz v0, :cond_0

    .line 142
    const-string v0, "EffectiveCompositionFactory::fromRawRes."

    invoke-static {v0}, Lcom/oplus/anim/utils/OplusLog;->i(Ljava/lang/String;)V

    .line 145
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 146
    .local v0, "appContext":Landroid/content/Context;
    invoke-static {p1}, Lcom/oplus/anim/EffectiveCompositionFactory;->rawResCacheKey(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/oplus/anim/EffectiveCompositionFactory$3;

    invoke-direct {v2, v0, p1}, Lcom/oplus/anim/EffectiveCompositionFactory$3;-><init>(Landroid/content/Context;I)V

    invoke-static {v1, v2}, Lcom/oplus/anim/EffectiveCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/oplus/anim/EffectiveAnimationTask;

    move-result-object v1

    return-object v1
.end method

.method public static fromRawResSync(Landroid/content/Context;I)Lcom/oplus/anim/EffectiveAnimationResult;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rawRes"    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lcom/oplus/anim/EffectiveAnimationResult<",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation

    .line 161
    sget-boolean v0, Lcom/oplus/anim/utils/OplusLog;->DEBUG_COMPOSITION:Z

    if-eqz v0, :cond_0

    .line 162
    const-string v0, "EffectiveCompositionFactory::fromRawResSync."

    invoke-static {v0}, Lcom/oplus/anim/utils/OplusLog;->i(Ljava/lang/String;)V

    .line 165
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {p1}, Lcom/oplus/anim/EffectiveCompositionFactory;->rawResCacheKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/anim/EffectiveCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationResult;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    new-instance v1, Lcom/oplus/anim/EffectiveAnimationResult;

    invoke-direct {v1, v0}, Lcom/oplus/anim/EffectiveAnimationResult;-><init>(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static fromUrl(Landroid/content/Context;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationTask;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/oplus/anim/EffectiveAnimationTask<",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation

    .line 66
    sget-boolean v0, Lcom/oplus/anim/utils/OplusLog;->DEBUG_COMPOSITION:Z

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EffectiveCompositionFactory::fromUrl url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/utils/OplusLog;->i(Ljava/lang/String;)V

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "urlCacheKey":Ljava/lang/String;
    new-instance v1, Lcom/oplus/anim/EffectiveCompositionFactory$1;

    invoke-direct {v1, p0, p1}, Lcom/oplus/anim/EffectiveCompositionFactory$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/oplus/anim/EffectiveCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/oplus/anim/EffectiveAnimationTask;

    move-result-object v1

    return-object v1
.end method

.method public static fromUrlSync(Landroid/content/Context;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationResult;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/oplus/anim/EffectiveAnimationResult<",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation

    .line 85
    sget-boolean v0, Lcom/oplus/anim/utils/OplusLog;->DEBUG_COMPOSITION:Z

    if-eqz v0, :cond_0

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EffectiveCompositionFactory::fromUrlSync url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/utils/OplusLog;->i(Ljava/lang/String;)V

    .line 88
    :cond_0
    invoke-static {p0, p1}, Lcom/oplus/anim/network/NetworkFetcher;->fetchSync(Landroid/content/Context;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationResult;

    move-result-object v0

    return-object v0
.end method

.method public static fromZipStream(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationTask;
    .locals 2
    .param p0, "inputStream"    # Ljava/util/zip/ZipInputStream;
    .param p1, "cacheKey"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipInputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/oplus/anim/EffectiveAnimationTask<",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation

    .line 305
    sget-boolean v0, Lcom/oplus/anim/utils/OplusLog;->DEBUG_COMPOSITION:Z

    if-eqz v0, :cond_0

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EffectiveCompositionFactory::fromZipStream cacheKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/utils/OplusLog;->i(Ljava/lang/String;)V

    .line 308
    :cond_0
    new-instance v0, Lcom/oplus/anim/EffectiveCompositionFactory$8;

    invoke-direct {v0, p0, p1}, Lcom/oplus/anim/EffectiveCompositionFactory$8;-><init>(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/oplus/anim/EffectiveCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/oplus/anim/EffectiveAnimationTask;

    move-result-object v0

    return-object v0
.end method

.method public static fromZipStream(Ljava/util/zip/ZipInputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Lcom/oplus/anim/EffectiveAnimationTask;
    .locals 1
    .param p0, "inputStream"    # Ljava/util/zip/ZipInputStream;
    .param p1, "cacheKey"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "customOptions"    # Landroid/graphics/BitmapFactory$Options;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipInputStream;",
            "Ljava/lang/String;",
            "Landroid/graphics/BitmapFactory$Options;",
            ")",
            "Lcom/oplus/anim/EffectiveAnimationTask<",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation

    .line 317
    new-instance v0, Lcom/oplus/anim/EffectiveCompositionFactory$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/oplus/anim/EffectiveCompositionFactory$9;-><init>(Ljava/util/zip/ZipInputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)V

    invoke-static {p1, v0}, Lcom/oplus/anim/EffectiveCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/oplus/anim/EffectiveAnimationTask;

    move-result-object v0

    return-object v0
.end method

.method public static fromZipStreamSync(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationResult;
    .locals 2
    .param p0, "inputStream"    # Ljava/util/zip/ZipInputStream;
    .param p1, "cacheKey"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipInputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/oplus/anim/EffectiveAnimationResult<",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation

    .line 332
    sget-boolean v0, Lcom/oplus/anim/utils/OplusLog;->DEBUG_COMPOSITION:Z

    if-eqz v0, :cond_0

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EffectiveCompositionFactory::fromZipStreamSync cacheKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/utils/OplusLog;->i(Ljava/lang/String;)V

    .line 336
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1, v0}, Lcom/oplus/anim/EffectiveCompositionFactory;->fromZipStreamSyncInternal(Ljava/util/zip/ZipInputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Lcom/oplus/anim/EffectiveAnimationResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    invoke-static {p0}, Lcom/oplus/anim/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {p0}, Lcom/oplus/anim/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static fromZipStreamSync(Ljava/util/zip/ZipInputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Lcom/oplus/anim/EffectiveAnimationResult;
    .locals 2
    .param p0, "inputStream"    # Ljava/util/zip/ZipInputStream;
    .param p1, "cacheKey"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "customOptions"    # Landroid/graphics/BitmapFactory$Options;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipInputStream;",
            "Ljava/lang/String;",
            "Landroid/graphics/BitmapFactory$Options;",
            ")",
            "Lcom/oplus/anim/EffectiveAnimationResult<",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation

    .line 344
    sget-boolean v0, Lcom/oplus/anim/utils/OplusLog;->DEBUG_COMPOSITION:Z

    if-eqz v0, :cond_0

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EffectiveCompositionFactory::fromZipStreamSync cacheKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/utils/OplusLog;->i(Ljava/lang/String;)V

    .line 348
    :cond_0
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/oplus/anim/EffectiveCompositionFactory;->fromZipStreamSyncInternal(Ljava/util/zip/ZipInputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Lcom/oplus/anim/EffectiveAnimationResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    invoke-static {p0}, Lcom/oplus/anim/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {p0}, Lcom/oplus/anim/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method private static fromZipStreamSyncInternal(Ljava/util/zip/ZipInputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Lcom/oplus/anim/EffectiveAnimationResult;
    .locals 8
    .param p0, "inputStream"    # Ljava/util/zip/ZipInputStream;
    .param p1, "cacheKey"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "customOptions"    # Landroid/graphics/BitmapFactory$Options;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipInputStream;",
            "Ljava/lang/String;",
            "Landroid/graphics/BitmapFactory$Options;",
            ")",
            "Lcom/oplus/anim/EffectiveAnimationResult<",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation

    .line 356
    const/4 v0, 0x0

    .line 357
    .local v0, "composition":Lcom/oplus/anim/EffectiveAnimationComposition;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 358
    .local v1, "images":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    sget-boolean v2, Lcom/oplus/anim/utils/OplusLog;->DEBUG_COMPOSITION:Z

    if-eqz v2, :cond_0

    .line 359
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EffectiveCompositionFactory::fromZipStreamSyncInternal cacheKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/anim/utils/OplusLog;->i(Ljava/lang/String;)V

    .line 362
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 363
    .local v2, "entry":Ljava/util/zip/ZipEntry;
    sget-boolean v3, Lcom/oplus/anim/utils/OplusLog;->DEBUG_COMPOSITION:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    .line 364
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EffectiveCompositionFactory::fromZipStreamSyncInternal entry == null ? "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_1

    move v6, v5

    goto :goto_0

    :cond_1
    move v6, v4

    :goto_0
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oplus/anim/utils/OplusLog;->i(Ljava/lang/String;)V

    .line 366
    :cond_2
    :goto_1
    if-eqz v2, :cond_7

    .line 367
    sget-boolean v3, Lcom/oplus/anim/utils/OplusLog;->DEBUG_COMPOSITION:Z

    if-eqz v3, :cond_3

    .line 368
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EffectiveCompositionFactory::fromZipStreamSyncInternal entry.getName() = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oplus/anim/utils/OplusLog;->i(Ljava/lang/String;)V

    .line 370
    :cond_3
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "__MACOSX"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 371
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto :goto_2

    .line 372
    :cond_4
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, ".json"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v6, 0x0

    if-eqz v3, :cond_5

    .line 373
    new-instance v3, Landroid/util/JsonReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v7}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 374
    .local v3, "reader":Landroid/util/JsonReader;
    invoke-static {v3, v6, v4}, Lcom/oplus/anim/EffectiveCompositionFactory;->fromJsonReaderSyncInternal(Landroid/util/JsonReader;Ljava/lang/String;Z)Lcom/oplus/anim/EffectiveAnimationResult;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oplus/anim/EffectiveAnimationResult;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oplus/anim/EffectiveAnimationComposition;

    move-object v0, v6

    .line 375
    .end local v3    # "reader":Landroid/util/JsonReader;
    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v7, ".png"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 376
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v7, "/"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 377
    .local v3, "splitName":[Ljava/lang/String;
    array-length v7, v3

    sub-int/2addr v7, v5

    aget-object v7, v3, v7

    .line 378
    .local v7, "name":Ljava/lang/String;
    invoke-static {p0, v6, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    .end local v3    # "splitName":[Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    goto :goto_2

    .line 380
    :cond_6
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 383
    :goto_2
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_1

    .line 387
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    :cond_7
    nop

    .line 390
    if-nez v0, :cond_8

    .line 391
    new-instance v2, Lcom/oplus/anim/EffectiveAnimationResult;

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unable to parse composition"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/oplus/anim/EffectiveAnimationResult;-><init>(Ljava/lang/Throwable;)V

    return-object v2

    .line 394
    :cond_8
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 395
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/oplus/anim/EffectiveCompositionFactory;->findImageAssetForFileName(Lcom/oplus/anim/EffectiveAnimationComposition;Ljava/lang/String;)Lcom/oplus/anim/EffectiveImageAsset;

    move-result-object v4

    .line 396
    .local v4, "imageAsset":Lcom/oplus/anim/EffectiveImageAsset;
    if-eqz v4, :cond_9

    .line 397
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Lcom/oplus/anim/EffectiveImageAsset;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 399
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    .end local v4    # "imageAsset":Lcom/oplus/anim/EffectiveImageAsset;
    :cond_9
    goto :goto_3

    .line 402
    :cond_a
    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationComposition;->getImages()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 403
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/oplus/anim/EffectiveImageAsset;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/anim/EffectiveImageAsset;

    invoke-virtual {v4}, Lcom/oplus/anim/EffectiveImageAsset;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_b

    .line 404
    new-instance v2, Lcom/oplus/anim/EffectiveAnimationResult;

    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "There is no image for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oplus/anim/EffectiveImageAsset;

    invoke-virtual {v6}, Lcom/oplus/anim/EffectiveImageAsset;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Lcom/oplus/anim/EffectiveAnimationResult;-><init>(Ljava/lang/Throwable;)V

    return-object v2

    .line 406
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/oplus/anim/EffectiveImageAsset;>;"
    :cond_b
    goto :goto_4

    .line 408
    :cond_c
    invoke-static {}, Lcom/oplus/anim/model/EffectiveCompositionCache;->getInstance()Lcom/oplus/anim/model/EffectiveCompositionCache;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/oplus/anim/model/EffectiveCompositionCache;->put(Ljava/lang/String;Lcom/oplus/anim/EffectiveAnimationComposition;)V

    .line 409
    new-instance v2, Lcom/oplus/anim/EffectiveAnimationResult;

    invoke-direct {v2, v0}, Lcom/oplus/anim/EffectiveAnimationResult;-><init>(Ljava/lang/Object;)V

    return-object v2

    .line 385
    :catch_0
    move-exception v2

    .line 386
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lcom/oplus/anim/EffectiveAnimationResult;

    invoke-direct {v3, v2}, Lcom/oplus/anim/EffectiveAnimationResult;-><init>(Ljava/lang/Throwable;)V

    return-object v3
.end method

.method private static rawResCacheKey(I)Ljava/lang/String;
    .locals 2
    .param p0, "resId"    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rawRes_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static removeCachedCompositionIfExist(Ljava/lang/String;)V
    .locals 1
    .param p0, "cacheKey"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 413
    invoke-static {}, Lcom/oplus/anim/model/EffectiveCompositionCache;->getInstance()Lcom/oplus/anim/model/EffectiveCompositionCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/anim/model/EffectiveCompositionCache;->remove(Ljava/lang/String;)V

    .line 414
    return-void
.end method

.method public static setMaxCacheSize(I)V
    .locals 1
    .param p0, "size"    # I

    .line 57
    invoke-static {}, Lcom/oplus/anim/model/EffectiveCompositionCache;->getInstance()Lcom/oplus/anim/model/EffectiveCompositionCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/anim/model/EffectiveCompositionCache;->resize(I)V

    .line 58
    return-void
.end method
