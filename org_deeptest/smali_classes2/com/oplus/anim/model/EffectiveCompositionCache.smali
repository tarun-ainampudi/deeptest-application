.class public Lcom/oplus/anim/model/EffectiveCompositionCache;
.super Ljava/lang/Object;
.source "EffectiveCompositionCache.java"


# static fields
.field private static final INSTANCE:Lcom/oplus/anim/model/EffectiveCompositionCache;


# instance fields
.field private final cache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/oplus/anim/model/EffectiveCompositionCache;

    invoke-direct {v0}, Lcom/oplus/anim/model/EffectiveCompositionCache;-><init>()V

    sput-object v0, Lcom/oplus/anim/model/EffectiveCompositionCache;->INSTANCE:Lcom/oplus/anim/model/EffectiveCompositionCache;

    return-void
.end method

.method constructor <init>()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/anim/model/EffectiveCompositionCache;->cache:Landroid/util/LruCache;

    .line 17
    return-void
.end method

.method public static getInstance()Lcom/oplus/anim/model/EffectiveCompositionCache;
    .locals 1

    .line 20
    sget-object v0, Lcom/oplus/anim/model/EffectiveCompositionCache;->INSTANCE:Lcom/oplus/anim/model/EffectiveCompositionCache;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/oplus/anim/model/EffectiveCompositionCache;->cache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 47
    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationComposition;
    .locals 1
    .param p1, "cacheKey"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 25
    if-nez p1, :cond_0

    .line 26
    const/4 v0, 0x0

    return-object v0

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/oplus/anim/model/EffectiveCompositionCache;->cache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/anim/EffectiveAnimationComposition;

    return-object v0
.end method

.method public put(Ljava/lang/String;Lcom/oplus/anim/EffectiveAnimationComposition;)V
    .locals 1
    .param p1, "cacheKey"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "composition"    # Lcom/oplus/anim/EffectiveAnimationComposition;

    .line 32
    if-nez p1, :cond_0

    .line 33
    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/oplus/anim/model/EffectiveCompositionCache;->cache:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "cacheKey"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 39
    if-nez p1, :cond_0

    .line 40
    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/oplus/anim/model/EffectiveCompositionCache;->cache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    return-void
.end method

.method public resize(I)V
    .locals 1
    .param p1, "size"    # I

    .line 54
    iget-object v0, p0, Lcom/oplus/anim/model/EffectiveCompositionCache;->cache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->resize(I)V

    .line 55
    return-void
.end method
