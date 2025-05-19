.class final Lcom/oplus/anim/EffectiveCompositionFactory$9;
.super Ljava/lang/Object;
.source "EffectiveCompositionFactory.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/anim/EffectiveCompositionFactory;->fromZipStream(Ljava/util/zip/ZipInputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Lcom/oplus/anim/EffectiveAnimationTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/oplus/anim/EffectiveAnimationResult<",
        "Lcom/oplus/anim/EffectiveAnimationComposition;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$cacheKey:Ljava/lang/String;

.field final synthetic val$customOptions:Landroid/graphics/BitmapFactory$Options;

.field final synthetic val$inputStream:Ljava/util/zip/ZipInputStream;


# direct methods
.method constructor <init>(Ljava/util/zip/ZipInputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/oplus/anim/EffectiveCompositionFactory$9;->val$inputStream:Ljava/util/zip/ZipInputStream;

    iput-object p2, p0, Lcom/oplus/anim/EffectiveCompositionFactory$9;->val$cacheKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/anim/EffectiveCompositionFactory$9;->val$customOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/oplus/anim/EffectiveAnimationResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oplus/anim/EffectiveAnimationResult<",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lcom/oplus/anim/EffectiveCompositionFactory$9;->val$inputStream:Ljava/util/zip/ZipInputStream;

    iget-object v1, p0, Lcom/oplus/anim/EffectiveCompositionFactory$9;->val$cacheKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/oplus/anim/EffectiveCompositionFactory$9;->val$customOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, v1, v2}, Lcom/oplus/anim/EffectiveCompositionFactory;->fromZipStreamSync(Ljava/util/zip/ZipInputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Lcom/oplus/anim/EffectiveAnimationResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 317
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveCompositionFactory$9;->call()Lcom/oplus/anim/EffectiveAnimationResult;

    move-result-object v0

    return-object v0
.end method
