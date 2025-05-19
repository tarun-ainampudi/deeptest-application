.class Lcom/coui/appcompat/widget/COUIHintRedDot$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "COUIHintRedDot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/COUIHintRedDot;->executeAlphaAnim()V
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

    .line 311
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIHintRedDot$4;->this$0:Lcom/coui/appcompat/widget/COUIHintRedDot;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 320
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot$4;->this$0:Lcom/coui/appcompat/widget/COUIHintRedDot;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUIHintRedDot;->access$402(Lcom/coui/appcompat/widget/COUIHintRedDot;Z)Z

    .line 321
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot$4;->this$0:Lcom/coui/appcompat/widget/COUIHintRedDot;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIHintRedDot$4;->this$0:Lcom/coui/appcompat/widget/COUIHintRedDot;

    invoke-static {v2}, Lcom/coui/appcompat/widget/COUIHintRedDot;->access$600(Lcom/coui/appcompat/widget/COUIHintRedDot;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/coui/appcompat/widget/COUIHintRedDot;->access$502(Lcom/coui/appcompat/widget/COUIHintRedDot;I)I

    .line 322
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot$4;->this$0:Lcom/coui/appcompat/widget/COUIHintRedDot;

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUIHintRedDot;->access$602(Lcom/coui/appcompat/widget/COUIHintRedDot;I)I

    .line 323
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 327
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot$4;->this$0:Lcom/coui/appcompat/widget/COUIHintRedDot;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUIHintRedDot;->access$402(Lcom/coui/appcompat/widget/COUIHintRedDot;Z)Z

    .line 328
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot$4;->this$0:Lcom/coui/appcompat/widget/COUIHintRedDot;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIHintRedDot$4;->this$0:Lcom/coui/appcompat/widget/COUIHintRedDot;

    invoke-static {v2}, Lcom/coui/appcompat/widget/COUIHintRedDot;->access$600(Lcom/coui/appcompat/widget/COUIHintRedDot;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/coui/appcompat/widget/COUIHintRedDot;->access$502(Lcom/coui/appcompat/widget/COUIHintRedDot;I)I

    .line 329
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot$4;->this$0:Lcom/coui/appcompat/widget/COUIHintRedDot;

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUIHintRedDot;->access$602(Lcom/coui/appcompat/widget/COUIHintRedDot;I)I

    .line 330
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 315
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIHintRedDot$4;->this$0:Lcom/coui/appcompat/widget/COUIHintRedDot;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUIHintRedDot;->access$402(Lcom/coui/appcompat/widget/COUIHintRedDot;Z)Z

    .line 316
    return-void
.end method
