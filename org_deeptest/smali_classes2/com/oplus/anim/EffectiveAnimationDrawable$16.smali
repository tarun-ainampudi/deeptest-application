.class Lcom/oplus/anim/EffectiveAnimationDrawable$16;
.super Lcom/oplus/anim/value/EffectiveValueCallback;
.source "EffectiveAnimationDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/anim/EffectiveAnimationDrawable;->addValueCallback(Lcom/oplus/anim/model/KeyPath;Ljava/lang/Object;Lcom/oplus/anim/value/SimpleValueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/anim/value/EffectiveValueCallback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oplus/anim/EffectiveAnimationDrawable;

.field final synthetic val$callback:Lcom/oplus/anim/value/SimpleValueCallback;


# direct methods
.method constructor <init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/value/SimpleValueCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/anim/EffectiveAnimationDrawable;

    .line 894
    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$16;->this$0:Lcom/oplus/anim/EffectiveAnimationDrawable;

    iput-object p2, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$16;->val$callback:Lcom/oplus/anim/value/SimpleValueCallback;

    invoke-direct {p0}, Lcom/oplus/anim/value/EffectiveValueCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/oplus/anim/value/EffectiveFrameInfo;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/value/EffectiveFrameInfo<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 897
    .local p1, "frameInfo":Lcom/oplus/anim/value/EffectiveFrameInfo;, "Lcom/oplus/anim/value/EffectiveFrameInfo<TT;>;"
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$16;->val$callback:Lcom/oplus/anim/value/SimpleValueCallback;

    invoke-interface {v0, p1}, Lcom/oplus/anim/value/SimpleValueCallback;->getValue(Lcom/oplus/anim/value/EffectiveFrameInfo;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
