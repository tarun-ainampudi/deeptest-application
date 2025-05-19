.class Lcom/oplus/anim/EffectiveAnimationDrawable$4;
.super Ljava/lang/Object;
.source "EffectiveAnimationDrawable.java"

# interfaces
.implements Lcom/oplus/anim/EffectiveAnimationDrawable$LazyCompositionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/anim/EffectiveAnimationDrawable;->setMinFrame(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oplus/anim/EffectiveAnimationDrawable;

.field final synthetic val$minFrame:I


# direct methods
.method constructor <init>(Lcom/oplus/anim/EffectiveAnimationDrawable;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/anim/EffectiveAnimationDrawable;

    .line 396
    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$4;->this$0:Lcom/oplus/anim/EffectiveAnimationDrawable;

    iput p2, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$4;->val$minFrame:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/oplus/anim/EffectiveAnimationComposition;)V
    .locals 2
    .param p1, "composition"    # Lcom/oplus/anim/EffectiveAnimationComposition;

    .line 399
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$4;->this$0:Lcom/oplus/anim/EffectiveAnimationDrawable;

    iget v1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$4;->val$minFrame:I

    invoke-virtual {v0, v1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setMinFrame(I)V

    .line 400
    return-void
.end method
