.class Lcom/oplus/anim/EffectiveAnimationTask$1;
.super Landroid/os/Handler;
.source "EffectiveAnimationTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/anim/EffectiveAnimationTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oplus/anim/EffectiveAnimationTask;


# direct methods
.method constructor <init>(Lcom/oplus/anim/EffectiveAnimationTask;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/anim/EffectiveAnimationTask;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 45
    .local p0, "this":Lcom/oplus/anim/EffectiveAnimationTask$1;, "Lcom/oplus/anim/EffectiveAnimationTask$1;"
    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationTask$1;->this$0:Lcom/oplus/anim/EffectiveAnimationTask;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 48
    .local p0, "this":Lcom/oplus/anim/EffectiveAnimationTask$1;, "Lcom/oplus/anim/EffectiveAnimationTask$1;"
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationTask$1;->this$0:Lcom/oplus/anim/EffectiveAnimationTask;

    invoke-static {v0}, Lcom/oplus/anim/EffectiveAnimationTask;->access$000(Lcom/oplus/anim/EffectiveAnimationTask;)V

    .line 51
    nop

    .line 55
    :goto_0
    return-void
.end method
