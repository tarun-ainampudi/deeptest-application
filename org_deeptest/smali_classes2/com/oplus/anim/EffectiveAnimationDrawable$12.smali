.class Lcom/oplus/anim/EffectiveAnimationDrawable$12;
.super Ljava/lang/Object;
.source "EffectiveAnimationDrawable.java"

# interfaces
.implements Lcom/oplus/anim/EffectiveAnimationDrawable$LazyCompositionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/anim/EffectiveAnimationDrawable;->setMinAndMaxProgress(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oplus/anim/EffectiveAnimationDrawable;

.field final synthetic val$maxProgress:F

.field final synthetic val$minProgress:F


# direct methods
.method constructor <init>(Lcom/oplus/anim/EffectiveAnimationDrawable;FF)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/anim/EffectiveAnimationDrawable;

    .line 563
    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$12;->this$0:Lcom/oplus/anim/EffectiveAnimationDrawable;

    iput p2, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$12;->val$minProgress:F

    iput p3, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$12;->val$maxProgress:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/oplus/anim/EffectiveAnimationComposition;)V
    .locals 3
    .param p1, "composition"    # Lcom/oplus/anim/EffectiveAnimationComposition;

    .line 566
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$12;->this$0:Lcom/oplus/anim/EffectiveAnimationDrawable;

    iget v1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$12;->val$minProgress:F

    iget v2, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$12;->val$maxProgress:F

    invoke-virtual {v0, v1, v2}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setMinAndMaxProgress(FF)V

    .line 567
    return-void
.end method
