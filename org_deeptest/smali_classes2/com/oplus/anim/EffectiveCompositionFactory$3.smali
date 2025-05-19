.class final Lcom/oplus/anim/EffectiveCompositionFactory$3;
.super Ljava/lang/Object;
.source "EffectiveCompositionFactory.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/anim/EffectiveCompositionFactory;->fromRawRes(Landroid/content/Context;I)Lcom/oplus/anim/EffectiveAnimationTask;
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
.field final synthetic val$appContext:Landroid/content/Context;

.field final synthetic val$rawRes:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/oplus/anim/EffectiveCompositionFactory$3;->val$appContext:Landroid/content/Context;

    iput p2, p0, Lcom/oplus/anim/EffectiveCompositionFactory$3;->val$rawRes:I

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

    .line 149
    iget-object v0, p0, Lcom/oplus/anim/EffectiveCompositionFactory$3;->val$appContext:Landroid/content/Context;

    iget v1, p0, Lcom/oplus/anim/EffectiveCompositionFactory$3;->val$rawRes:I

    invoke-static {v0, v1}, Lcom/oplus/anim/EffectiveCompositionFactory;->fromRawResSync(Landroid/content/Context;I)Lcom/oplus/anim/EffectiveAnimationResult;

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

    .line 146
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveCompositionFactory$3;->call()Lcom/oplus/anim/EffectiveAnimationResult;

    move-result-object v0

    return-object v0
.end method
