.class Lcom/oplus/anim/EffectiveAnimationDrawable$14;
.super Ljava/lang/Object;
.source "EffectiveAnimationDrawable.java"

# interfaces
.implements Lcom/oplus/anim/EffectiveAnimationDrawable$LazyCompositionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/anim/EffectiveAnimationDrawable;->setProgress(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oplus/anim/EffectiveAnimationDrawable;

.field final synthetic val$progress:F


# direct methods
.method constructor <init>(Lcom/oplus/anim/EffectiveAnimationDrawable;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/anim/EffectiveAnimationDrawable;

    .line 803
    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$14;->this$0:Lcom/oplus/anim/EffectiveAnimationDrawable;

    iput p2, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$14;->val$progress:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/oplus/anim/EffectiveAnimationComposition;)V
    .locals 2
    .param p1, "composition"    # Lcom/oplus/anim/EffectiveAnimationComposition;

    .line 806
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$14;->this$0:Lcom/oplus/anim/EffectiveAnimationDrawable;

    iget v1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$14;->val$progress:F

    invoke-virtual {v0, v1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setProgress(F)V

    .line 807
    return-void
.end method
