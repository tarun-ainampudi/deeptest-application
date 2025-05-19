.class Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$SettleRunnable;
.super Ljava/lang/Object;
.source "COUIBottomSheetBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettleRunnable"
.end annotation


# instance fields
.field private isPosted:Z

.field targetState:I

.field final synthetic this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

.field private final view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;Landroid/view/View;I)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;
    .param p3, "targetState"    # I

    .line 1626
    .local p0, "this":Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$SettleRunnable;, "Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior<TV;>.SettleRunnable;"
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$SettleRunnable;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1627
    iput-object p2, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$SettleRunnable;->view:Landroid/view/View;

    .line 1628
    iput p3, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$SettleRunnable;->targetState:I

    .line 1629
    return-void
.end method

.method static synthetic access$100(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$SettleRunnable;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$SettleRunnable;

    .line 1617
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$SettleRunnable;->isPosted:Z

    return v0
.end method

.method static synthetic access$102(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$SettleRunnable;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$SettleRunnable;
    .param p1, "x1"    # Z

    .line 1617
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$SettleRunnable;->isPosted:Z

    return p1
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1633
    .local p0, "this":Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$SettleRunnable;, "Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior<TV;>.SettleRunnable;"
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$SettleRunnable;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$SettleRunnable;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/customview/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1634
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$SettleRunnable;->view:Landroid/view/View;

    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1636
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$SettleRunnable;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    iget v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$SettleRunnable;->targetState:I

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->setStateInternal(I)V

    .line 1638
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior$SettleRunnable;->isPosted:Z

    .line 1639
    return-void
.end method
