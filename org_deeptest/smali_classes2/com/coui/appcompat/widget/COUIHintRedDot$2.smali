.class Lcom/coui/appcompat/widget/COUIHintRedDot$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "COUIHintRedDot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/COUIHintRedDot;->executeWidthAnim(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/COUIHintRedDot;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUIHintRedDot;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUIHintRedDot;

    .line 280
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIHintRedDot$2;->this$0:Lcom/coui/appcompat/widget/COUIHintRedDot;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 290
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot$2;->this$0:Lcom/coui/appcompat/widget/COUIHintRedDot;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUIHintRedDot;->access$102(Lcom/coui/appcompat/widget/COUIHintRedDot;Z)Z

    .line 291
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 295
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot$2;->this$0:Lcom/coui/appcompat/widget/COUIHintRedDot;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUIHintRedDot;->access$102(Lcom/coui/appcompat/widget/COUIHintRedDot;Z)Z

    .line 296
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 284
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot$2;->this$0:Lcom/coui/appcompat/widget/COUIHintRedDot;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUIHintRedDot;->access$102(Lcom/coui/appcompat/widget/COUIHintRedDot;Z)Z

    .line 285
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot$2;->this$0:Lcom/coui/appcompat/widget/COUIHintRedDot;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIHintRedDot;->access$200(Lcom/coui/appcompat/widget/COUIHintRedDot;)V

    .line 286
    return-void
.end method
