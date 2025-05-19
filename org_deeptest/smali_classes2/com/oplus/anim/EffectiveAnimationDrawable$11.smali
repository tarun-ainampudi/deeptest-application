.class Lcom/oplus/anim/EffectiveAnimationDrawable$11;
.super Ljava/lang/Object;
.source "EffectiveAnimationDrawable.java"

# interfaces
.implements Lcom/oplus/anim/EffectiveAnimationDrawable$LazyCompositionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/anim/EffectiveAnimationDrawable;->setMinAndMaxFrame(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oplus/anim/EffectiveAnimationDrawable;

.field final synthetic val$maxFrame:I

.field final synthetic val$minFrame:I


# direct methods
.method constructor <init>(Lcom/oplus/anim/EffectiveAnimationDrawable;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/anim/EffectiveAnimationDrawable;

    .line 543
    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$11;->this$0:Lcom/oplus/anim/EffectiveAnimationDrawable;

    iput p2, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$11;->val$minFrame:I

    iput p3, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$11;->val$maxFrame:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/oplus/anim/EffectiveAnimationComposition;)V
    .locals 3
    .param p1, "composition"    # Lcom/oplus/anim/EffectiveAnimationComposition;

    .line 546
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$11;->this$0:Lcom/oplus/anim/EffectiveAnimationDrawable;

    iget v1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$11;->val$minFrame:I

    iget v2, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$11;->val$maxFrame:I

    invoke-virtual {v0, v1, v2}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setMinAndMaxFrame(II)V

    .line 547
    return-void
.end method
