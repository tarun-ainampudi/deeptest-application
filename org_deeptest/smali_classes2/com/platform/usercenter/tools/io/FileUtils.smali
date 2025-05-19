.class public Lcom/platform/usercenter/tools/io/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field private static final HEX_DIGITS:[C

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lcom/platform/usercenter/tools/io/FileUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/platform/usercenter/tools/io/FileUtils;->TAG:Ljava/lang/String;

    .line 329
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/platform/usercenter/tools/io/FileUtils;->HEX_DIGITS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static basename(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .line 91
    if-nez p0, :cond_0

    .line 92
    return-object p0

    .line 95
    :cond_0
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 96
    .local v0, "index":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 97
    .local v1, "length":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    if-ge v2, v1, :cond_1

    .line 98
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 101
    :cond_1
    return-object p0
.end method

.method public static bmpToByteArray(Landroid/graphics/Bitmap;)[B
    .locals 6
    .param p0, "bmp"    # Landroid/graphics/Bitmap;

    .line 313
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 316
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 317
    .local v0, "output":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 318
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 320
    .local v1, "result":[B
    :try_start_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 325
    goto :goto_1

    .line 324
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 321
    :catch_0
    move-exception v2

    .line 322
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "err"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "catch exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 326
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v1

    .line 324
    :goto_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    throw v2

    .line 314
    .end local v0    # "output":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "result":[B
    :cond_1
    :goto_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public static cleanFilesInDir(Ljava/io/File;Ljava/lang/String;)V
    .locals 6
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "name"    # Ljava/lang/String;

    .line 403
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 407
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 408
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_1

    .line 409
    goto :goto_1

    .line 411
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 412
    .local v4, "fileName":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 413
    goto :goto_1

    .line 415
    :cond_2
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 416
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 407
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "fileName":Ljava/lang/String;
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 419
    :cond_4
    return-void

    .line 404
    :cond_5
    :goto_2
    return-void
.end method

.method public static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 8
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 277
    .local v0, "reader":Ljava/io/BufferedReader;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 281
    .local v2, "line":Ljava/lang/String;
    :goto_0
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    if-eqz v4, :cond_0

    .line 282
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 287
    :cond_0
    :goto_1
    invoke-static {p0, v3}, Lcom/platform/usercenter/tools/io/Closeables;->close(Ljava/io/Closeable;Z)V

    .line 288
    goto :goto_2

    .line 287
    :catchall_0
    move-exception v4

    goto :goto_3

    .line 284
    :catch_0
    move-exception v4

    .line 285
    .local v4, "e":Ljava/io/IOException;
    :try_start_1
    const-string v5, "err"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "catch exception = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 289
    .end local v4    # "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 287
    :goto_3
    invoke-static {p0, v3}, Lcom/platform/usercenter/tools/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v4
.end method

.method public static copy(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "from"    # Ljava/lang/String;
    .param p1, "to"    # Ljava/lang/String;

    .line 206
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 207
    .local v0, "fileFrom":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 208
    return v2

    .line 211
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 212
    .local v1, "fileTo":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 213
    return v4

    .line 216
    :cond_1
    invoke-static {v1}, Lcom/platform/usercenter/tools/io/FileUtils;->makeSureFileExist(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 217
    return v2

    .line 222
    :cond_2
    :try_start_0
    invoke-static {v0, v1}, Lcom/platform/usercenter/tools/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    return v4

    .line 224
    :catch_0
    move-exception v3

    .line 225
    .local v3, "e1":Ljava/io/IOException;
    invoke-static {v3}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/Exception;)V

    .line 227
    .end local v3    # "e1":Ljava/io/IOException;
    return v2
.end method

.method public static copy(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 5
    .param p0, "from"    # Ljava/lang/String;
    .param p1, "to"    # Ljava/lang/String;
    .param p2, "isDelOriginalFile"    # Z

    .line 175
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    .local v0, "fileFrom":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 177
    return v2

    .line 180
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 181
    .local v1, "fileTo":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 182
    if-eqz p2, :cond_1

    .line 183
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 185
    :cond_1
    return v4

    .line 189
    :cond_2
    :goto_0
    invoke-static {v1}, Lcom/platform/usercenter/tools/io/FileUtils;->makeSureFileExist(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 190
    return v2

    .line 194
    :cond_3
    :try_start_0
    invoke-static {v0, v1}, Lcom/platform/usercenter/tools/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    return v4

    .line 196
    :catch_0
    move-exception v3

    .line 197
    .local v3, "e1":Ljava/io/IOException;
    invoke-static {v3}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/Exception;)V

    .line 199
    .end local v3    # "e1":Ljava/io/IOException;
    return v2
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 8
    .param p0, "sourceFile"    # Ljava/io/File;
    .param p1, "targetFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    const/4 v0, 0x0

    .line 233
    .local v0, "bis":Ljava/io/BufferedInputStream;
    const/4 v1, 0x0

    .line 236
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v3

    .line 239
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v3

    .line 242
    const/16 v3, 0x400

    .line 243
    .local v3, "BUFFER_SIZE":I
    mul-int/lit8 v4, v3, 0x4

    new-array v4, v4, [B

    .line 245
    .local v4, "b":[B
    :goto_0
    invoke-virtual {v0, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    move v6, v5

    .local v6, "len":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_0

    .line 246
    invoke-virtual {v1, v4, v2, v6}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_0

    .line 249
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    .end local v3    # "BUFFER_SIZE":I
    .end local v4    # "b":[B
    .end local v6    # "len":I
    invoke-static {v1, v2}, Lcom/platform/usercenter/tools/io/Closeables;->close(Ljava/io/Closeable;Z)V

    .line 253
    invoke-static {v0, v2}, Lcom/platform/usercenter/tools/io/Closeables;->close(Ljava/io/Closeable;Z)V

    .line 254
    nop

    .line 255
    return-void

    .line 252
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Lcom/platform/usercenter/tools/io/Closeables;->close(Ljava/io/Closeable;Z)V

    .line 253
    invoke-static {v0, v2}, Lcom/platform/usercenter/tools/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v3
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 5
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 265
    :cond_0
    const/16 v0, 0x400

    .line 266
    .local v0, "BUFFER_SIZE":I
    mul-int/lit8 v1, v0, 0x4

    new-array v1, v1, [B

    .line 268
    .local v1, "b":[B
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "len":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    .line 269
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 272
    :cond_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 273
    return-void

    .line 261
    .end local v0    # "BUFFER_SIZE":I
    .end local v1    # "b":[B
    .end local v3    # "len":I
    :cond_2
    :goto_1
    return-void
.end method

.method public static deleteDir(Ljava/io/File;)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    .line 428
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 430
    return-void

    .line 433
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 434
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 435
    .local v0, "childFiles":[Ljava/io/File;
    if-eqz v0, :cond_3

    array-length v1, v0

    if-nez v1, :cond_1

    goto :goto_1

    .line 439
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 440
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/platform/usercenter/tools/io/FileUtils;->deleteDir(Ljava/io/File;)V

    .line 439
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 442
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 436
    :cond_3
    :goto_1
    return-void

    .line 444
    .end local v0    # "childFiles":[Ljava/io/File;
    :cond_4
    :goto_2
    return-void
.end method

.method public static fileExists(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pathname"    # Ljava/lang/String;

    .line 36
    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 544
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 545
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 549
    .local v0, "path":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 550
    return-object v0

    .line 556
    .end local v0    # "path":Ljava/io/File;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/Android/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 557
    .local v0, "cacheDir":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static getFileLength(Ljava/io/File;)J
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .line 390
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 393
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    .line 391
    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getFileMD5(Ljava/io/File;)Ljava/lang/String;
    .locals 7
    .param p0, "file"    # Ljava/io/File;

    .line 342
    const/4 v0, 0x0

    .line 343
    .local v0, "fis":Ljava/io/InputStream;
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 344
    .local v1, "buffer":[B
    const/4 v2, 0x0

    move v3, v2

    .line 347
    .local v3, "numRead":I
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v4

    .line 348
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 349
    .local v4, "md5":Ljava/security/MessageDigest;
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v3, v5

    if-lez v5, :cond_0

    .line 350
    invoke-virtual {v4, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 352
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 353
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Lcom/platform/usercenter/tools/io/FileUtils;->toHexString([B)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 363
    .end local v4    # "md5":Ljava/security/MessageDigest;
    :catch_0
    move-exception v2

    .line 364
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    const-string v4, "err"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "catch exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    if-eqz v0, :cond_2

    .line 367
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 370
    goto :goto_2

    .line 368
    :catch_1
    move-exception v4

    .line 369
    .local v4, "e1":Ljava/io/IOException;
    invoke-static {v4}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/Exception;)V

    goto :goto_2

    .line 354
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    .end local v4    # "e1":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 355
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "err"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "catch exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    if-eqz v0, :cond_1

    .line 358
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 361
    goto :goto_1

    .line 359
    :catch_3
    move-exception v4

    .line 360
    .restart local v4    # "e1":Ljava/io/IOException;
    invoke-static {v2}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/Exception;)V

    .line 372
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "e1":Ljava/io/IOException;
    :cond_1
    :goto_1
    nop

    .line 373
    :cond_2
    :goto_2
    const/4 v2, 0x0

    return-object v2
.end method

.method public static getLegalFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;

    .line 522
    const-string v0, "[?*|<>:\\/\"]+"

    const-string v1, "_"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 523
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 524
    const-string v1, "&"

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 526
    :cond_0
    return-object v0
.end method

.method public static final input2byte(Ljava/io/InputStream;)[B
    .locals 6
    .param p0, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 295
    .local v0, "swapStream":Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x400

    .line 296
    .local v1, "BUFFER_SIZE":I
    mul-int/lit8 v2, v1, 0x4

    new-array v2, v2, [B

    .line 297
    .local v2, "buff":[B
    const/4 v3, 0x0

    move v4, v3

    .line 298
    .local v4, "rc":I
    :goto_0
    mul-int/lit8 v5, v1, 0x4

    invoke-virtual {p0, v2, v3, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    move v4, v5

    if-lez v5, :cond_0

    .line 299
    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 301
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 302
    .local v3, "in2b":[B
    return-object v3
.end method

.method public static isFileExists(Ljava/lang/String;)Z
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .line 377
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 378
    return v1

    .line 381
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 382
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 383
    const/4 v1, 0x1

    return v1

    .line 386
    :cond_1
    return v1
.end method

.method public static makeSureDirectoryExists(Ljava/lang/String;)Z
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .line 40
    if-nez p0, :cond_0

    .line 41
    const/4 v0, 0x0

    return v0

    .line 43
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    .line 45
    sget-object v1, Lcom/platform/usercenter/tools/io/FileUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to make directory:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/platform/usercenter/tools/log/UCLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    return v1
.end method

.method public static makeSureFileDelete(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 56
    if-nez p0, :cond_0

    .line 57
    const/4 v0, 0x0

    return v0

    .line 59
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 63
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static makeSureFileDelete(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pathname"    # Ljava/lang/String;

    .line 52
    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/platform/usercenter/tools/io/FileUtils;->makeSureFileDelete(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static makeSureFileExist(Ljava/io/File;)Z
    .locals 5
    .param p0, "file"    # Ljava/io/File;

    .line 71
    if-nez p0, :cond_0

    .line 72
    const/4 v0, 0x0

    return v0

    .line 74
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_2

    .line 75
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 76
    .local v0, "parentFile":Ljava/io/File;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 77
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 81
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    goto :goto_0

    .line 82
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "err"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "catch exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .end local v0    # "parentFile":Ljava/io/File;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    return v0
.end method

.method public static makeSureFileExist(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pathname"    # Ljava/lang/String;

    .line 67
    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/platform/usercenter/tools/io/FileUtils;->makeSureFileExist(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static readCompressBitmapIfOversized(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "maxSize"    # I

    .line 484
    const/4 v0, 0x0

    .line 486
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 487
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 488
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 490
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/2addr v2, v3

    .line 491
    .local v2, "size":I
    if-le v2, p1, :cond_0

    .line 492
    int-to-double v3, v2

    int-to-double v5, p1

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 493
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v3, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 494
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 496
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 499
    :cond_0
    return-object v0
.end method

.method public static readStringFromAssert(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 562
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 563
    .local v1, "json":Ljava/io/InputStream;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 566
    .local v2, "in":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "str":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 567
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 570
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 571
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static readStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 105
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    .local v0, "fl":Ljava/io/File;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 107
    .local v1, "fin":Ljava/io/FileInputStream;
    invoke-static {v1}, Lcom/platform/usercenter/tools/io/FileUtils;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "ret":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/platform/usercenter/tools/io/Closeables;->close(Ljava/io/Closeable;Z)V

    .line 110
    return-object v2
.end method

.method public static saveFile(Landroid/graphics/Bitmap;Ljava/lang/String;I)Z
    .locals 5
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "quality"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 457
    const/4 v0, 0x0

    .line 459
    .local v0, "successed":Z
    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    .line 460
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 461
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 463
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 466
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 467
    .local v2, "parent":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 468
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 471
    :cond_1
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 472
    .local v3, "bos":Ljava/io/BufferedOutputStream;
    if-ltz p2, :cond_3

    const/16 v4, 0x64

    if-le p2, v4, :cond_2

    goto :goto_0

    :cond_2
    move v4, p2

    goto :goto_1

    :cond_3
    :goto_0
    const/16 v4, 0x50

    :goto_1
    move p2, v4

    .line 473
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v4, p2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v0

    .line 474
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 475
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 477
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "parent":Ljava/io/File;
    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    :cond_4
    return v0
.end method

.method public static saveToFile(Ljava/io/File;Ljava/io/InputStream;)V
    .locals 8
    .param p0, "file"    # Ljava/io/File;
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, "fos":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 142
    .local v1, "bis":Ljava/io/BufferedInputStream;
    const/16 v2, 0x400

    .line 143
    .local v2, "BUFFER_SIZE":I
    mul-int/lit8 v3, v2, 0x4

    new-array v3, v3, [B

    .line 144
    .local v3, "buf":[B
    const/4 v4, 0x0

    .line 146
    .local v4, "size":I
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v5

    .line 147
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v5

    .line 149
    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    move v4, v5

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-eq v5, v6, :cond_0

    .line 150
    invoke-virtual {v0, v3, v7, v4}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 153
    :cond_0
    invoke-static {v0, v7}, Lcom/platform/usercenter/tools/io/Closeables;->close(Ljava/io/Closeable;Z)V

    .line 154
    invoke-static {v1, v7}, Lcom/platform/usercenter/tools/io/Closeables;->close(Ljava/io/Closeable;Z)V

    .line 155
    return-void
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 4
    .param p0, "b"    # [B

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 334
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 335
    sget-object v2, Lcom/platform/usercenter/tools/io/FileUtils;->HEX_DIGITS:[C

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xf0

    ushr-int/lit8 v3, v3, 0x4

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 336
    sget-object v2, Lcom/platform/usercenter/tools/io/FileUtils;->HEX_DIGITS:[C

    aget-byte v3, p0, v1

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 334
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 338
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static urlToCacheLocalPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .line 530
    const/4 v0, 0x0

    .line 531
    .local v0, "pathname":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 532
    return-object v0

    .line 535
    :cond_0
    invoke-static {p1}, Lcom/platform/usercenter/tools/io/FileUtils;->urlToNormalBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 536
    .local v1, "basename":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 537
    return-object v0

    .line 539
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/platform/usercenter/tools/io/FileUtils;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 540
    return-object v0
.end method

.method public static urlToNormalBaseName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .line 509
    invoke-static {p0}, Lcom/platform/usercenter/tools/io/FileUtils;->basename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 510
    .local v0, "picturename":Ljava/lang/String;
    invoke-static {v0}, Lcom/platform/usercenter/tools/io/FileUtils;->getLegalFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 511
    return-object v0
.end method

.method public static writeFile(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 0
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 164
    invoke-static {p1, p0}, Lcom/platform/usercenter/tools/io/FileUtils;->saveToFile(Ljava/io/File;Ljava/io/InputStream;)V

    .line 166
    :cond_0
    return-void
.end method

.method public static writeFile(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 170
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/platform/usercenter/tools/io/FileUtils;->writeFile(Ljava/io/InputStream;Ljava/io/File;)V

    .line 172
    :cond_0
    return-void
.end method

.method public static writeToFile(Ljava/io/InputStream;Ljava/lang/String;)Z
    .locals 6
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "path"    # Ljava/lang/String;

    .line 119
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto/16 :goto_4

    .line 122
    :cond_0
    const/4 v1, 0x1

    move v2, v1

    .line 124
    .local v2, "notThrow":Z
    :try_start_0
    invoke-static {p0, p1}, Lcom/platform/usercenter/tools/io/FileUtils;->writeFile(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    const/4 v0, 0x0

    .line 126
    .end local v2    # "notThrow":Z
    .local v0, "notThrow":Z
    nop

    .line 131
    :try_start_1
    invoke-static {p0, v0}, Lcom/platform/usercenter/tools/io/Closeables;->close(Ljava/io/Closeable;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 134
    goto :goto_0

    .line 132
    :catch_0
    move-exception v2

    .line 133
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "err"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "catch exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    return v1

    .line 130
    .end local v0    # "notThrow":Z
    .local v2, "notThrow":Z
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 127
    :catch_1
    move-exception v1

    .line 128
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    const-string v3, "err"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "catch exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 131
    .end local v1    # "e":Ljava/io/IOException;
    :try_start_3
    invoke-static {p0, v2}, Lcom/platform/usercenter/tools/io/Closeables;->close(Ljava/io/Closeable;Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 134
    goto :goto_1

    .line 132
    :catch_2
    move-exception v1

    .line 133
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v3, "err"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "catch exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .end local v1    # "e":Ljava/io/IOException;
    nop

    .line 136
    :goto_1
    return v0

    .line 130
    :goto_2
    nop

    .line 131
    :try_start_4
    invoke-static {p0, v2}, Lcom/platform/usercenter/tools/io/Closeables;->close(Ljava/io/Closeable;Z)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 134
    goto :goto_3

    .line 132
    :catch_3
    move-exception v1

    .line 133
    .restart local v1    # "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "catch exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "err"

    invoke-static {v4, v3}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .end local v1    # "e":Ljava/io/IOException;
    :goto_3
    throw v0

    .line 120
    .end local v2    # "notThrow":Z
    :cond_1
    :goto_4
    return v0
.end method
