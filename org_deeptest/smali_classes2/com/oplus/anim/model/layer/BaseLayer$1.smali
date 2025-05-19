.class Lcom/oplus/anim/model/layer/BaseLayer$1;
.super Ljava/lang/Object;
.source "BaseLayer.java"

# interfaces
.implements Lcom/oplus/anim/animation/keyframe/BaseKeyframeAnimation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/anim/model/layer/BaseLayer;->setupInOutAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oplus/anim/model/layer/BaseLayer;

.field final synthetic val$inOutAnimation:Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;


# direct methods
.method constructor <init>(Lcom/oplus/anim/model/layer/BaseLayer;Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/anim/model/layer/BaseLayer;

    .line 168
    iput-object p1, p0, Lcom/oplus/anim/model/layer/BaseLayer$1;->this$0:Lcom/oplus/anim/model/layer/BaseLayer;

    iput-object p2, p0, Lcom/oplus/anim/model/layer/BaseLayer$1;->val$inOutAnimation:Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChanged()V
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/oplus/anim/model/layer/BaseLayer$1;->this$0:Lcom/oplus/anim/model/layer/BaseLayer;

    iget-object v1, p0, Lcom/oplus/anim/model/layer/BaseLayer$1;->val$inOutAnimation:Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v1}, Lcom/oplus/anim/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/oplus/anim/model/layer/BaseLayer;->setVisible(Z)V

    .line 172
    return-void
.end method
