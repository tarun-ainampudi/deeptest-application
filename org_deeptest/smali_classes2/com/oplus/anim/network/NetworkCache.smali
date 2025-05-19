.class Lcom/oplus/anim/network/NetworkCache;
.super Ljava/lang/Object;
.source "NetworkCache.java"


# instance fields
.field private final appContext:Landroid/content/Context;

.field private final url:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/network/NetworkCache;->appContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/oplus/anim/network/NetworkCache;->url:Ljava/lang/String;

    .line 29
    return-void
.end method

.method private static filenameForUrl(Ljava/lang/String;Lcom/oplus/anim/network/FileExtension;Z)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "extension"    # Lcom/oplus/anim/network/FileExtension;
    .param p2, "isTemp"    # Z

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "effective_anim_cache_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\\W+"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/oplus/anim/network/FileExtension;->tempExtension()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/oplus/anim/network/FileExtension;->extension:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCachedFile(Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 124
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/oplus/anim/network/NetworkCache;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    sget-object v2, Lcom/oplus/anim/network/FileExtension;->JSON:Lcom/oplus/anim/network/FileExtension;

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Lcom/oplus/anim/network/NetworkCache;->filenameForUrl(Ljava/lang/String;Lcom/oplus/anim/network/FileExtension;Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 125
    .local v0, "jsonFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    return-object v0

    .line 128
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/oplus/anim/network/NetworkCache;->appContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    sget-object v4, Lcom/oplus/anim/network/FileExtension;->ZIP:Lcom/oplus/anim/network/FileExtension;

    invoke-static {p1, v4, v3}, Lcom/oplus/anim/network/NetworkCache;->filenameForUrl(Ljava/lang/String;Lcom/oplus/anim/network/FileExtension;Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 129
    .local v1, "zipFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    return-object v1

    .line 132
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method fetch()Landroid/util/Pair;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Lcom/oplus/anim/network/FileExtension;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 45
    const/4 v0, 0x0

    move-object v1, v0

    .line 47
    .local v1, "cachedFile":Ljava/io/File;
    :try_start_0
    iget-object v2, p0, Lcom/oplus/anim/network/NetworkCache;->url:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/oplus/anim/network/NetworkCache;->getCachedFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v2

    .line 50
    nop

    .line 51
    if-nez v1, :cond_0

    .line 52
    return-object v0

    .line 57
    :cond_0
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v2

    .line 60
    .local v0, "inputStream":Ljava/io/FileInputStream;
    nop

    .line 59
    nop

    .line 63
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".zip"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 64
    sget-object v2, Lcom/oplus/anim/network/FileExtension;->ZIP:Lcom/oplus/anim/network/FileExtension;

    goto :goto_0

    .line 66
    :cond_1
    sget-object v2, Lcom/oplus/anim/network/FileExtension;->JSON:Lcom/oplus/anim/network/FileExtension;

    .line 69
    .local v2, "extension":Lcom/oplus/anim/network/FileExtension;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cache hit for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oplus/anim/network/NetworkCache;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oplus/anim/L;->debug(Ljava/lang/String;)V

    .line 70
    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    .line 58
    .end local v0    # "inputStream":Ljava/io/FileInputStream;
    .end local v2    # "extension":Lcom/oplus/anim/network/FileExtension;
    :catch_0
    move-exception v2

    .line 59
    .local v2, "e":Ljava/io/FileNotFoundException;
    return-object v0

    .line 48
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 49
    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    return-object v0
.end method

.method renameTempFile(Lcom/oplus/anim/network/FileExtension;)V
    .locals 7
    .param p1, "extension"    # Lcom/oplus/anim/network/FileExtension;

    .line 107
    iget-object v0, p0, Lcom/oplus/anim/network/NetworkCache;->url:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/oplus/anim/network/NetworkCache;->filenameForUrl(Ljava/lang/String;Lcom/oplus/anim/network/FileExtension;Z)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "fileName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/oplus/anim/network/NetworkCache;->appContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 109
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".temp"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "newFileName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    .local v3, "newFile":Ljava/io/File;
    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    .line 112
    .local v4, "renamed":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Copying temp file to real file ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/oplus/anim/L;->debug(Ljava/lang/String;)V

    .line 113
    if-nez v4, :cond_0

    .line 114
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to rename cache file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/oplus/anim/L;->warn(Ljava/lang/String;)V

    .line 116
    :cond_0
    return-void
.end method

.method writeTempCacheFile(Ljava/io/InputStream;Lcom/oplus/anim/network/FileExtension;)Ljava/io/File;
    .locals 7
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "extension"    # Lcom/oplus/anim/network/FileExtension;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/oplus/anim/network/NetworkCache;->url:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Lcom/oplus/anim/network/NetworkCache;->filenameForUrl(Ljava/lang/String;Lcom/oplus/anim/network/FileExtension;Z)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "fileName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/oplus/anim/network/NetworkCache;->appContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 82
    .local v1, "file":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 85
    .local v2, "output":Ljava/io/OutputStream;
    const/16 v3, 0x400

    :try_start_1
    new-array v3, v3, [B

    .line 88
    .local v3, "buffer":[B
    :goto_0
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move v5, v4

    .local v5, "read":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    .line 89
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    .end local v3    # "buffer":[B
    .end local v5    # "read":I
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 95
    nop

    .line 97
    .end local v2    # "output":Ljava/io/OutputStream;
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 98
    nop

    .line 99
    return-object v1

    .line 94
    .restart local v2    # "output":Ljava/io/OutputStream;
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 97
    .end local v2    # "output":Ljava/io/OutputStream;
    :catchall_1
    move-exception v2

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw v2
.end method
