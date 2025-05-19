.class Lcom/oplus/anim/EffectiveAnimationDrawable$15;
.super Ljava/lang/Object;
.source "EffectiveAnimationDrawable.java"

# interfaces
.implements Lcom/oplus/anim/EffectiveAnimationDrawable$LazyCompositionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/anim/EffectiveAnimationDrawable;->addValueCallback(Lcom/oplus/anim/model/KeyPath;Ljava/lang/Object;Lcom/oplus/anim/value/EffectiveValueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oplus/anim/EffectiveAnimationDrawable;

.field final synthetic val$callback:Lcom/oplus/anim/value/EffectiveValueCallback;

.field final synthetic val$keyPath:Lcom/oplus/anim/model/KeyPath;

.field final synthetic val$property:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/KeyPath;Ljava/lang/Object;Lcom/oplus/anim/value/EffectiveValueCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/anim/EffectiveAnimationDrawable;

    .line 852
    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$15;->this$0:Lcom/oplus/anim/EffectiveAnimationDrawable;

    iput-object p2, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$15;->val$keyPath:Lcom/oplus/anim/model/KeyPath;

    iput-object p3, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$15;->val$property:Ljava/lang/Object;

    iput-object p4, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$15;->val$callback:Lcom/oplus/anim/value/EffectiveValueCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/oplus/anim/EffectiveAnimationComposition;)V
    .locals 4
    .param p1, "composition"    # Lcom/oplus/anim/EffectiveAnimationComposition;

    .line 855
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$15;->this$0:Lcom/oplus/anim/EffectiveAnimationDrawable;

    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$15;->val$keyPath:Lcom/oplus/anim/model/KeyPath;

    iget-object v2, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$15;->val$property:Ljava/lang/Object;

    iget-object v3, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$15;->val$callback:Lcom/oplus/anim/value/EffectiveValueCallback;

    invoke-virtual {v0, v1, v2, v3}, Lcom/oplus/anim/EffectiveAnimationDrawable;->addValueCallback(Lcom/oplus/anim/model/KeyPath;Ljava/lang/Object;Lcom/oplus/anim/value/EffectiveValueCallback;)V

    .line 856
    return-void
.end method
