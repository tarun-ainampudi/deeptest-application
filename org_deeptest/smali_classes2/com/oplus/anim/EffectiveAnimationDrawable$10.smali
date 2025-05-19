.class Lcom/oplus/anim/EffectiveAnimationDrawable$10;
.super Ljava/lang/Object;
.source "EffectiveAnimationDrawable.java"

# interfaces
.implements Lcom/oplus/anim/EffectiveAnimationDrawable$LazyCompositionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/anim/EffectiveAnimationDrawable;->setMinAndMaxFrame(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oplus/anim/EffectiveAnimationDrawable;

.field final synthetic val$markerName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/anim/EffectiveAnimationDrawable;

    .line 521
    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$10;->this$0:Lcom/oplus/anim/EffectiveAnimationDrawable;

    iput-object p2, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$10;->val$markerName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/oplus/anim/EffectiveAnimationComposition;)V
    .locals 2
    .param p1, "composition"    # Lcom/oplus/anim/EffectiveAnimationComposition;

    .line 524
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$10;->this$0:Lcom/oplus/anim/EffectiveAnimationDrawable;

    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$10;->val$markerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setMinAndMaxFrame(Ljava/lang/String;)V

    .line 525
    return-void
.end method
