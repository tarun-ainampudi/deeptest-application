.class final Lcom/oplus/anim/EffectiveCompositionFactory$1;
.super Ljava/lang/Object;
.source "EffectiveCompositionFactory.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/anim/EffectiveCompositionFactory;->fromUrl(Landroid/content/Context;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationTask;
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
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/oplus/anim/EffectiveCompositionFactory$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/oplus/anim/EffectiveCompositionFactory$1;->val$url:Ljava/lang/String;

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

    .line 73
    iget-object v0, p0, Lcom/oplus/anim/EffectiveCompositionFactory$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/oplus/anim/EffectiveCompositionFactory$1;->val$url:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/oplus/anim/network/NetworkFetcher;->fetchSync(Landroid/content/Context;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationResult;

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

    .line 70
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveCompositionFactory$1;->call()Lcom/oplus/anim/EffectiveAnimationResult;

    move-result-object v0

    return-object v0
.end method
