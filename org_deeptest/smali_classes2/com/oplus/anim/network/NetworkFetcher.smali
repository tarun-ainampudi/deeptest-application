.class public Lcom/oplus/anim/network/NetworkFetcher;
.super Ljava/lang/Object;
.source "NetworkFetcher.java"


# instance fields
.field private final appContext:Landroid/content/Context;

.field private final networkCache:Lcom/oplus/anim/network/NetworkCache;

.field private final url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/network/NetworkFetcher;->appContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/oplus/anim/network/NetworkFetcher;->url:Ljava/lang/String;

    .line 34
    new-instance v0, Lcom/oplus/anim/network/NetworkCache;

    iget-object v1, p0, Lcom/oplus/anim/network/NetworkFetcher;->appContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/oplus/anim/network/NetworkCache;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oplus/anim/network/NetworkFetcher;->networkCache:Lcom/oplus/anim/network/NetworkCache;

    .line 35
    return-void
.end method

.method private fetchFromCache()Lcom/oplus/anim/EffectiveAnimationComposition;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/oplus/anim/network/NetworkFetcher;->networkCache:Lcom/oplus/anim/network/NetworkCache;

    invoke-virtual {v0}, Lcom/oplus/anim/network/NetworkCache;->fetch()Landroid/util/Pair;

    move-result-object v0

    .line 59
    .local v0, "cacheResult":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/oplus/anim/network/FileExtension;Ljava/io/InputStream;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 60
    return-object v1

    .line 63
    :cond_0
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/oplus/anim/network/FileExtension;

    .line 64
    .local v2, "extension":Lcom/oplus/anim/network/FileExtension;
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/io/InputStream;

    .line 66
    .local v3, "inputStream":Ljava/io/InputStream;
    sget-object v4, Lcom/oplus/anim/network/FileExtension;->ZIP:Lcom/oplus/anim/network/FileExtension;

    if-ne v2, v4, :cond_1

    .line 67
    new-instance v4, Ljava/util/zip/ZipInputStream;

    invoke-direct {v4, v3}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object v5, p0, Lcom/oplus/anim/network/NetworkFetcher;->url:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/oplus/anim/EffectiveCompositionFactory;->fromZipStreamSync(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationResult;

    move-result-object v4

    goto :goto_0

    .line 69
    :cond_1
    iget-object v4, p0, Lcom/oplus/anim/network/NetworkFetcher;->url:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/oplus/anim/EffectiveCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationResult;

    move-result-object v4

    .line 71
    .local v4, "result":Lcom/oplus/anim/EffectiveAnimationResult;, "Lcom/oplus/anim/EffectiveAnimationResult<Lcom/oplus/anim/EffectiveAnimationComposition;>;"
    :goto_0
    invoke-virtual {v4}, Lcom/oplus/anim/EffectiveAnimationResult;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 72
    invoke-virtual {v4}, Lcom/oplus/anim/EffectiveAnimationResult;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/anim/EffectiveAnimationComposition;

    return-object v1

    .line 74
    :cond_2
    return-object v1
.end method

.method private fetchFromNetwork()Lcom/oplus/anim/EffectiveAnimationResult;
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oplus/anim/EffectiveAnimationResult<",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation

    .line 80
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/anim/network/NetworkFetcher;->fetchFromNetworkInternal()Lcom/oplus/anim/EffectiveAnimationResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/oplus/anim/EffectiveAnimationResult;

    invoke-direct {v1, v0}, Lcom/oplus/anim/EffectiveAnimationResult;-><init>(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private fetchFromNetworkInternal()Lcom/oplus/anim/EffectiveAnimationResult;
    .locals 8
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fetching "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/anim/network/NetworkFetcher;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/L;->debug(Ljava/lang/String;)V

    .line 89
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/oplus/anim/network/NetworkFetcher;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 91
    .local v0, "connection":Ljava/net/HttpURLConnection;
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 94
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    goto/16 :goto_3

    .line 108
    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x4a67ee1e

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v3, v4, :cond_2

    const v4, -0x29cf5b9

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "application/json"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v2, v5

    goto :goto_0

    :cond_2
    const-string v3, "application/zip"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v2, v6

    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    .line 117
    const-string v1, "Received json response."

    invoke-static {v1}, Lcom/oplus/anim/L;->debug(Ljava/lang/String;)V

    .line 118
    sget-object v1, Lcom/oplus/anim/network/FileExtension;->JSON:Lcom/oplus/anim/network/FileExtension;

    .line 119
    .local v1, "extension":Lcom/oplus/anim/network/FileExtension;
    iget-object v2, p0, Lcom/oplus/anim/network/NetworkFetcher;->networkCache:Lcom/oplus/anim/network/NetworkCache;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/oplus/anim/network/NetworkCache;->writeTempCacheFile(Ljava/io/InputStream;Lcom/oplus/anim/network/FileExtension;)Ljava/io/File;

    move-result-object v2

    .line 120
    .local v2, "file":Ljava/io/File;
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget-object v4, p0, Lcom/oplus/anim/network/NetworkFetcher;->url:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/oplus/anim/EffectiveCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationResult;

    move-result-object v3

    goto :goto_1

    .line 110
    .end local v1    # "extension":Lcom/oplus/anim/network/FileExtension;
    .end local v2    # "file":Ljava/io/File;
    :cond_4
    const-string v1, "Handling zip response."

    invoke-static {v1}, Lcom/oplus/anim/L;->debug(Ljava/lang/String;)V

    .line 111
    sget-object v1, Lcom/oplus/anim/network/FileExtension;->ZIP:Lcom/oplus/anim/network/FileExtension;

    .line 112
    .restart local v1    # "extension":Lcom/oplus/anim/network/FileExtension;
    iget-object v2, p0, Lcom/oplus/anim/network/NetworkFetcher;->networkCache:Lcom/oplus/anim/network/NetworkCache;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/oplus/anim/network/NetworkCache;->writeTempCacheFile(Ljava/io/InputStream;Lcom/oplus/anim/network/FileExtension;)Ljava/io/File;

    move-result-object v2

    .line 113
    .restart local v2    # "file":Ljava/io/File;
    new-instance v3, Ljava/util/zip/ZipInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object v4, p0, Lcom/oplus/anim/network/NetworkFetcher;->url:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/oplus/anim/EffectiveCompositionFactory;->fromZipStreamSync(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationResult;

    move-result-object v3

    .line 114
    .local v3, "result":Lcom/oplus/anim/EffectiveAnimationResult;, "Lcom/oplus/anim/EffectiveAnimationResult<Lcom/oplus/anim/EffectiveAnimationComposition;>;"
    nop

    .line 120
    :goto_1
    nop

    .line 124
    invoke-virtual {v3}, Lcom/oplus/anim/EffectiveAnimationResult;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 125
    iget-object v4, p0, Lcom/oplus/anim/network/NetworkFetcher;->networkCache:Lcom/oplus/anim/network/NetworkCache;

    invoke-virtual {v4, v1}, Lcom/oplus/anim/network/NetworkCache;->renameTempFile(Lcom/oplus/anim/network/FileExtension;)V

    .line 128
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Completed fetch from network. Success: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/oplus/anim/EffectiveAnimationResult;->getValue()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_6

    goto :goto_2

    :cond_6
    move v5, v6

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/oplus/anim/L;->debug(Ljava/lang/String;)V

    .line 129
    return-object v3

    .line 95
    .end local v1    # "extension":Lcom/oplus/anim/network/FileExtension;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "result":Lcom/oplus/anim/EffectiveAnimationResult;, "Lcom/oplus/anim/EffectiveAnimationResult<Lcom/oplus/anim/EffectiveAnimationComposition;>;"
    :cond_7
    :goto_3
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 96
    .local v1, "r":Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .local v2, "error":Ljava/lang/StringBuilder;
    :goto_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_8

    .line 99
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 101
    :cond_8
    new-instance v3, Lcom/oplus/anim/EffectiveAnimationResult;

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to fetch "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/oplus/anim/network/NetworkFetcher;->url:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ". Failed with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Lcom/oplus/anim/EffectiveAnimationResult;-><init>(Ljava/lang/Throwable;)V

    return-object v3
.end method

.method public static fetchSync(Landroid/content/Context;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationResult;
    .locals 1
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

    .line 38
    new-instance v0, Lcom/oplus/anim/network/NetworkFetcher;

    invoke-direct {v0, p0, p1}, Lcom/oplus/anim/network/NetworkFetcher;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/oplus/anim/network/NetworkFetcher;->fetchSync()Lcom/oplus/anim/EffectiveAnimationResult;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public fetchSync()Lcom/oplus/anim/EffectiveAnimationResult;
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oplus/anim/EffectiveAnimationResult<",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lcom/oplus/anim/network/NetworkFetcher;->fetchFromCache()Lcom/oplus/anim/EffectiveAnimationComposition;

    move-result-object v0

    .line 44
    .local v0, "result":Lcom/oplus/anim/EffectiveAnimationComposition;
    if-eqz v0, :cond_0

    .line 45
    new-instance v1, Lcom/oplus/anim/EffectiveAnimationResult;

    invoke-direct {v1, v0}, Lcom/oplus/anim/EffectiveAnimationResult;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 48
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animation for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/anim/network/NetworkFetcher;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not found in cache. Fetching from network."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/anim/L;->debug(Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Lcom/oplus/anim/network/NetworkFetcher;->fetchFromNetwork()Lcom/oplus/anim/EffectiveAnimationResult;

    move-result-object v1

    return-object v1
.end method
