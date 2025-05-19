.class final Lcom/oplus/anim/EffectiveCompositionFactory$10;
.super Ljava/lang/Object;
.source "EffectiveCompositionFactory.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


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
        "Ljava/util/concurrent/Callable<",
        "Lcom/oplus/anim/EffectiveAnimationResult<",
        "Lcom/oplus/anim/EffectiveAnimationComposition;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$cachedComposition:Lcom/oplus/anim/EffectiveAnimationComposition;


# direct methods
.method constructor <init>(Lcom/oplus/anim/EffectiveAnimationComposition;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lcom/oplus/anim/EffectiveCompositionFactory$10;->val$cachedComposition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/oplus/anim/EffectiveAnimationResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oplus/anim/EffectiveAnimationResult<",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation

    .line 440
    new-instance v0, Lcom/oplus/anim/EffectiveAnimationResult;

    iget-object v1, p0, Lcom/oplus/anim/EffectiveCompositionFactory$10;->val$cachedComposition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-direct {v0, v1}, Lcom/oplus/anim/EffectiveAnimationResult;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 437
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveCompositionFactory$10;->call()Lcom/oplus/anim/EffectiveAnimationResult;

    move-result-object v0

    return-object v0
.end method
