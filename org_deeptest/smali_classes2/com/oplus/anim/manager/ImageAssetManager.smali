.class public Lcom/oplus/anim/manager/ImageAssetManager;
.super Ljava/lang/Object;
.source "ImageAssetManager.java"


# static fields
.field private static final bitmapHashLock:Ljava/lang/Object;


# instance fields
.field private final context:Landroid/content/Context;

.field private delegate:Lcom/oplus/anim/ImageAssetDelegate;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final imageAssets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/anim/EffectiveImageAsset;",
            ">;"
        }
    .end annotation
.end field

.field private imagesFolder:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oplus/anim/manager/ImageAssetManager;->bitmapHashLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable$Callback;Ljava/lang/String;Lcom/oplus/anim/ImageAssetDelegate;Ljava/util/Map;)V
    .locals 3
    .param p1, "callback"    # Landroid/graphics/drawable/Drawable$Callback;
    .param p2, "imagesFolder"    # Ljava/lang/String;
    .param p3, "delegate"    # Lcom/oplus/anim/ImageAssetDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable$Callback;",
            "Ljava/lang/String;",
            "Lcom/oplus/anim/ImageAssetDelegate;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/anim/EffectiveImageAsset;",
            ">;)V"
        }
    .end annotation

    .line 35
    .local p4, "imageAssets":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/oplus/anim/EffectiveImageAsset;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lcom/oplus/anim/manager/ImageAssetManager;->imagesFolder:Ljava/lang/String;

    .line 37
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/anim/manager/ImageAssetManager;->imagesFolder:Ljava/lang/String;

    iget-object v1, p0, Lcom/oplus/anim/manager/ImageAssetManager;->imagesFolder:Ljava/lang/String;

    .line 38
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_0

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/oplus/anim/manager/ImageAssetManager;->imagesFolder:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/manager/ImageAssetManager;->imagesFolder:Ljava/lang/String;

    .line 42
    :cond_0
    instance-of v0, p1, Landroid/view/View;

    if-nez v0, :cond_1

    .line 43
    const-string v0, "EffectiveAnimation"

    const-string v1, "EffectiveAnimationDrawable must be inside of a view for images to work."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/manager/ImageAssetManager;->imageAssets:Ljava/util/Map;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/anim/manager/ImageAssetManager;->context:Landroid/content/Context;

    .line 46
    return-void

    .line 49
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/manager/ImageAssetManager;->context:Landroid/content/Context;

    .line 50
    iput-object p4, p0, Lcom/oplus/anim/manager/ImageAssetManager;->imageAssets:Ljava/util/Map;

    .line 51
    invoke-virtual {p0, p3}, Lcom/oplus/anim/manager/ImageAssetManager;->setDelegate(Lcom/oplus/anim/ImageAssetDelegate;)V

    .line 52
    return-void
.end method

.method private putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 148
    sget-object v0, Lcom/oplus/anim/manager/ImageAssetManager;->bitmapHashLock:Ljava/lang/Object;

    monitor-enter v0

    .line 149
    :try_start_0
    sget-boolean v1, Lcom/oplus/anim/utils/OplusLog;->DEBUG_DRAW:Z

    if-eqz v1, :cond_0

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "putBitmap key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/anim/utils/OplusLog;->w(Ljava/lang/String;)V

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/oplus/anim/manager/ImageAssetManager;->imageAssets:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/anim/EffectiveImageAsset;

    invoke-virtual {v1, p2}, Lcom/oplus/anim/EffectiveImageAsset;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 153
    monitor-exit v0

    return-object p2

    .line 154
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public bitmapForId(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/oplus/anim/manager/ImageAssetManager;->imageAssets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/anim/EffectiveImageAsset;

    .line 77
    .local v0, "asset":Lcom/oplus/anim/EffectiveImageAsset;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 78
    return-object v1

    .line 80
    :cond_0
    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveImageAsset;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 81
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_1

    .line 82
    return-object v2

    .line 85
    :cond_1
    iget-object v3, p0, Lcom/oplus/anim/manager/ImageAssetManager;->delegate:Lcom/oplus/anim/ImageAssetDelegate;

    if-eqz v3, :cond_3

    .line 86
    iget-object v1, p0, Lcom/oplus/anim/manager/ImageAssetManager;->delegate:Lcom/oplus/anim/ImageAssetDelegate;

    invoke-interface {v1, v0}, Lcom/oplus/anim/ImageAssetDelegate;->fetchBitmap(Lcom/oplus/anim/EffectiveImageAsset;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 87
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    .line 88
    invoke-direct {p0, p1, v1}, Lcom/oplus/anim/manager/ImageAssetManager;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 90
    :cond_2
    return-object v1

    .line 93
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveImageAsset;->getFileName()Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, "filename":Ljava/lang/String;
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 95
    .local v4, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 96
    const/16 v6, 0xa0

    iput v6, v4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 98
    const-string v6, "data:"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "base64,"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_4

    .line 102
    const/16 v6, 0x2c

    :try_start_0
    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v5

    .line 106
    .local v1, "data":[B
    nop

    .line 105
    nop

    .line 107
    array-length v5, v1

    invoke-static {v1, v6, v5, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 108
    invoke-direct {p0, p1, v2}, Lcom/oplus/anim/manager/ImageAssetManager;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    return-object v5

    .line 103
    .end local v1    # "data":[B
    :catch_0
    move-exception v5

    .line 104
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "EffectiveAnimation"

    const-string v7, "data URL did not have correct base64 format."

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    return-object v1

    .line 113
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    :cond_4
    :try_start_1
    iget-object v5, p0, Lcom/oplus/anim/manager/ImageAssetManager;->imagesFolder:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 117
    sget-boolean v5, Lcom/oplus/anim/utils/OplusLog;->DEBUG_DRAW:Z

    if-eqz v5, :cond_5

    .line 118
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bitmapForId filename = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ";imagesFolder = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/oplus/anim/manager/ImageAssetManager;->imagesFolder:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/oplus/anim/utils/OplusLog;->w(Ljava/lang/String;)V

    .line 120
    :cond_5
    iget-object v5, p0, Lcom/oplus/anim/manager/ImageAssetManager;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/oplus/anim/manager/ImageAssetManager;->imagesFolder:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 121
    .local v5, "is":Ljava/io/InputStream;
    invoke-static {v5, v1, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object v2, v6

    .line 122
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 123
    invoke-direct {p0, p1, v2}, Lcom/oplus/anim/manager/ImageAssetManager;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    return-object v6

    .line 114
    .end local v5    # "is":Ljava/io/InputStream;
    :cond_6
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "You must set an images folder before loading an image. Set it with EffectiveAnimationComposition#setImagesFolder or EffectiveAnimationDrawable#setImagesFolder"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 124
    :catch_1
    move-exception v5

    .line 125
    .local v5, "e":Ljava/io/IOException;
    const-string v6, "EffectiveAnimation"

    const-string v7, "Unable to open asset."

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    return-object v1
.end method

.method public clearImageAssets()V
    .locals 6

    .line 135
    sget-object v0, Lcom/oplus/anim/manager/ImageAssetManager;->bitmapHashLock:Ljava/lang/Object;

    monitor-enter v0

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/oplus/anim/manager/ImageAssetManager;->imageAssets:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 137
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 138
    .local v3, "key":Ljava/lang/String;
    sget-boolean v4, Lcom/oplus/anim/utils/OplusLog;->DEBUG_COMPOSITION:Z

    if-eqz v4, :cond_0

    .line 139
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearImageAssets key = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/oplus/anim/utils/OplusLog;->w(Ljava/lang/String;)V

    .line 141
    :cond_0
    iget-object v4, p0, Lcom/oplus/anim/manager/ImageAssetManager;->imageAssets:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/anim/EffectiveImageAsset;

    .line 142
    .local v4, "asset":Lcom/oplus/anim/EffectiveImageAsset;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/oplus/anim/EffectiveImageAsset;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 143
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "asset":Lcom/oplus/anim/EffectiveImageAsset;
    goto :goto_0

    .line 144
    .end local v1    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    monitor-exit v0

    .line 145
    return-void

    .line 144
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasSameContext(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 131
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/oplus/anim/manager/ImageAssetManager;->context:Landroid/content/Context;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/oplus/anim/manager/ImageAssetManager;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setDelegate(Lcom/oplus/anim/ImageAssetDelegate;)V
    .locals 0
    .param p1, "assetDelegate"    # Lcom/oplus/anim/ImageAssetDelegate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 55
    iput-object p1, p0, Lcom/oplus/anim/manager/ImageAssetManager;->delegate:Lcom/oplus/anim/ImageAssetDelegate;

    .line 56
    return-void
.end method

.method public updateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 63
    if-nez p2, :cond_0

    .line 64
    iget-object v0, p0, Lcom/oplus/anim/manager/ImageAssetManager;->imageAssets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/anim/EffectiveImageAsset;

    .line 65
    .local v0, "asset":Lcom/oplus/anim/EffectiveImageAsset;
    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveImageAsset;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 66
    .local v1, "ret":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/oplus/anim/EffectiveImageAsset;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 67
    return-object v1

    .line 69
    .end local v0    # "asset":Lcom/oplus/anim/EffectiveImageAsset;
    .end local v1    # "ret":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v0, p0, Lcom/oplus/anim/manager/ImageAssetManager;->imageAssets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/anim/EffectiveImageAsset;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveImageAsset;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 70
    .local v0, "prevBitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0, p1, p2}, Lcom/oplus/anim/manager/ImageAssetManager;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 71
    return-object v0
.end method
