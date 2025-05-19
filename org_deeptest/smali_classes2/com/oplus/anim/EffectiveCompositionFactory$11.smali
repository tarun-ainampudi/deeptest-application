.class final Lcom/oplus/anim/EffectiveCompositionFactory$11;
.super Ljava/lang/Object;
.source "EffectiveCompositionFactory.java"

# interfaces
.implements Lcom/oplus/anim/EffectiveAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/anim/EffectiveCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/oplus/anim/EffectiveAnimationTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oplus/anim/EffectiveAnimationListener<",
        "Lcom/oplus/anim/EffectiveAnimationComposition;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$cacheKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 453
    iput-object p1, p0, Lcom/oplus/anim/EffectiveCompositionFactory$11;->val$cacheKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/oplus/anim/EffectiveAnimationComposition;)V
    .locals 2
    .param p1, "result"    # Lcom/oplus/anim/EffectiveAnimationComposition;

    .line 456
    iget-object v0, p0, Lcom/oplus/anim/EffectiveCompositionFactory$11;->val$cacheKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 457
    invoke-static {}, Lcom/oplus/anim/model/EffectiveCompositionCache;->getInstance()Lcom/oplus/anim/model/EffectiveCompositionCache;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/anim/EffectiveCompositionFactory$11;->val$cacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/oplus/anim/model/EffectiveCompositionCache;->put(Ljava/lang/String;Lcom/oplus/anim/EffectiveAnimationComposition;)V

    .line 459
    :cond_0
    invoke-static {}, Lcom/oplus/anim/EffectiveCompositionFactory;->access$000()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/anim/EffectiveCompositionFactory$11;->val$cacheKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 453
    check-cast p1, Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveCompositionFactory$11;->onResult(Lcom/oplus/anim/EffectiveAnimationComposition;)V

    return-void
.end method
