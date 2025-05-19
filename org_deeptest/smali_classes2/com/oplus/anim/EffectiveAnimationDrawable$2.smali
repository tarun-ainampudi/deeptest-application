.class Lcom/oplus/anim/EffectiveAnimationDrawable$2;
.super Ljava/lang/Object;
.source "EffectiveAnimationDrawable.java"

# interfaces
.implements Lcom/oplus/anim/EffectiveAnimationDrawable$LazyCompositionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/anim/EffectiveAnimationDrawable;->playAnimation()V
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

    .line 356
    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$2;->this$0:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/oplus/anim/EffectiveAnimationComposition;)V
    .locals 1
    .param p1, "composition"    # Lcom/oplus/anim/EffectiveAnimationComposition;

    .line 359
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$2;->this$0:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->playAnimation()V

    .line 360
    return-void
.end method
