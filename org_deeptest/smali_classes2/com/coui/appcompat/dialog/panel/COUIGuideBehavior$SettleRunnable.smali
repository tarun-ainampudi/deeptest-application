.class Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$SettleRunnable;
.super Ljava/lang/Object;
.source "COUIGuideBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettleRunnable"
.end annotation


# instance fields
.field private isPosted:Z

.field targetState:I

.field final synthetic this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

.field private final view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;Landroid/view/View;I)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;
    .param p3, "targetState"    # I

    .line 1619
    .local p0, "this":Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$SettleRunnable;, "Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior<TV;>.SettleRunnable;"
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$SettleRunnable;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1620
    iput-object p2, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$SettleRunnable;->view:Landroid/view/View;

    .line 1621
    iput p3, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$SettleRunnable;->targetState:I

    .line 1622
    return-void
.end method

.method static synthetic access$100(Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$SettleRunnable;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$SettleRunnable;

    .line 1610
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$SettleRunnable;->isPosted:Z

    return v0
.end method

.method static synthetic access$102(Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$SettleRunnable;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$SettleRunnable;
    .param p1, "x1"    # Z

    .line 1610
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$SettleRunnable;->isPosted:Z

    return p1
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1626
    .local p0, "this":Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$SettleRunnable;, "Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior<TV;>.SettleRunnable;"
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$SettleRunnable;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$SettleRunnable;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/customview/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1627
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$SettleRunnable;->view:Landroid/view/View;

    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1629
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$SettleRunnable;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    iget v1, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$SettleRunnable;->targetState:I

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->setStateInternal(I)V

    .line 1631
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$SettleRunnable;->isPosted:Z

    .line 1632
    return-void
.end method
