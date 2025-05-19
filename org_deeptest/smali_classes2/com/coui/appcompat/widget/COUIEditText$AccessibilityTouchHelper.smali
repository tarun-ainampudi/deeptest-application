.class public Lcom/coui/appcompat/widget/COUIEditText$AccessibilityTouchHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "COUIEditText.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUIEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AccessibilityTouchHelper"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHostView:Landroid/view/View;

.field private mUninstallRect:Landroid/graphics/Rect;

.field private mViewRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/coui/appcompat/widget/COUIEditText;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/widget/COUIEditText;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUIEditText;
    .param p2, "hostView"    # Landroid/view/View;

    .line 1476
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIEditText$AccessibilityTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUIEditText;

    .line 1477
    invoke-direct {p0, p2}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 1466
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText$AccessibilityTouchHelper;->mHostView:Landroid/view/View;

    .line 1467
    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText$AccessibilityTouchHelper;->mContext:Landroid/content/Context;

    .line 1468
    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText$AccessibilityTouchHelper;->mUninstallRect:Landroid/graphics/Rect;

    .line 1469
    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText$AccessibilityTouchHelper;->mViewRect:Landroid/graphics/Rect;

    .line 1478
    iput-object p2, p0, Lcom/coui/appcompat/widget/COUIEditText$AccessibilityTouchHelper;->mHostView:Landroid/view/View;

    .line 1479
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText$AccessibilityTouchHelper;->mHostView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText$AccessibilityTouchHelper;->mContext:Landroid/content/Context;

    .line 1480
    return-void
.end method

.method private getItemBounds(I)Landroid/graphics/Rect;
    .locals 1
    .param p1, "virtualViewId"    # I

    .line 1537
    if-nez p1, :cond_1

    .line 1538
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText$AccessibilityTouchHelper;->mUninstallRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 1539
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText$AccessibilityTouchHelper;->initUninstallRect()V

    .line 1541
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText$AccessibilityTouchHelper;->mUninstallRect:Landroid/graphics/Rect;

    return-object v0

    .line 1543
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method

.method private initUninstallRect()V
    .locals 2

    .line 1483
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText$AccessibilityTouchHelper;->mUninstallRect:Landroid/graphics/Rect;

    .line 1484
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText$AccessibilityTouchHelper;->mUninstallRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText$AccessibilityTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUIEditText;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUIEditText;->getDeleteButtonLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1485
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText$AccessibilityTouchHelper;->mUninstallRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText$AccessibilityTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUIEditText;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUIEditText;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1486
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText$AccessibilityTouchHelper;->mUninstallRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1487
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText$AccessibilityTouchHelper;->mUninstallRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText$AccessibilityTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUIEditText;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUIEditText;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1488
    return-void
.end method

.method private initViewRect()V
    .locals 3

    .line 1491
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText$AccessibilityTouchHelper;->mViewRect:Landroid/graphics/Rect;

    .line 1492
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText$AccessibilityTouchHelper;->mViewRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1493
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText$AccessibilityTouchHelper;->mViewRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIEditText$AccessibilityTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUIEditText;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUIEditText;->getWidth()I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 1494
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText$AccessibilityTouchHelper;->mViewRect:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1495
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText$AccessibilityTouchHelper;->mViewRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText$AccessibilityTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUIEditText;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUIEditText;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1496
    return-void
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 1500
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText$AccessibilityTouchHelper;->mUninstallRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 1501
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIEditText$AccessibilityTouchHelper;->initUninstallRect()V

    .line 1503
    :cond_0
    const/high16 v0, -0x80000000

    .line 1505
    .local v0, "result":I
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText$AccessibilityTouchHelper;->mUninstallRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText$AccessibilityTouchHelper;->mUninstallRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText$AccessibilityTouchHelper;->mUninstallRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText$AccessibilityTouchHelper;->mUninstallRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText$AccessibilityTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUIEditText;

    .line 1506
    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUIEditText;->isDeleteButtonExist()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1507
    const/4 v0, 0x0

    .line 1509
    :cond_1
    return v0
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1548
    .local p1, "virtualViewIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText$AccessibilityTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUIEditText;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIEditText;->isDeleteButtonExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1549
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1551
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 1534
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 1555
    const/16 v0, 0x10

    if-ne p2, v0, :cond_1

    .line 1556
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText$AccessibilityTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUIEditText;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIEditText;->isDeleteButtonExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1557
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText$AccessibilityTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUIEditText;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIEditText;->access$600(Lcom/coui/appcompat/widget/COUIEditText;)V

    .line 1559
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 1561
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1514
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText$AccessibilityTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUIEditText;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIEditText;->access$500(Lcom/coui/appcompat/widget/COUIEditText;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1515
    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2
    .param p1, "virtualViewId"    # I
    .param p2, "node"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 1520
    const/4 v0, 0x0

    .line 1521
    .local v0, "des":Ljava/lang/CharSequence;
    if-nez p1, :cond_0

    .line 1522
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText$AccessibilityTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUIEditText;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUIEditText;->access$500(Lcom/coui/appcompat/widget/COUIEditText;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1523
    const-class v1, Landroid/widget/Button;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 1524
    const/16 v1, 0x10

    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 1526
    :cond_0
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIEditText$AccessibilityTouchHelper;->getItemBounds(I)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 1527
    return-void
.end method
