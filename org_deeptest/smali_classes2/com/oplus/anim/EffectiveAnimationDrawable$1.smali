.class Lcom/oplus/anim/EffectiveAnimationDrawable$1;
.super Ljava/lang/Object;
.source "EffectiveAnimationDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/anim/EffectiveAnimationDrawable;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oplus/anim/EffectiveAnimationDrawable;


# direct methods
.method constructor <init>(Lcom/oplus/anim/EffectiveAnimationDrawable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/anim/EffectiveAnimationDrawable;

    .line 101
    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$1;->this$0:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 104
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$1;->this$0:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-static {v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->access$000(Lcom/oplus/anim/EffectiveAnimationDrawable;)Lcom/oplus/anim/model/layer/CompositionLayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$1;->this$0:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-static {v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->access$000(Lcom/oplus/anim/EffectiveAnimationDrawable;)Lcom/oplus/anim/model/layer/CompositionLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$1;->this$0:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-static {v1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->access$100(Lcom/oplus/anim/EffectiveAnimationDrawable;)Lcom/oplus/anim/utils/EffectiveValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getAnimatedValueAbsolute()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/anim/model/layer/CompositionLayer;->setProgress(F)V

    .line 107
    :cond_0
    return-void
.end method
