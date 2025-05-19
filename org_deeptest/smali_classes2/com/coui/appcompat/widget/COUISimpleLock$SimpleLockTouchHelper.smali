.class final Lcom/coui/appcompat/widget/COUISimpleLock$SimpleLockTouchHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "COUISimpleLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUISimpleLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SimpleLockTouchHelper"
.end annotation


# instance fields
.field private mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/coui/appcompat/widget/COUISimpleLock;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/widget/COUISimpleLock;Landroid/view/View;)V
    .locals 0
    .param p2, "forView"    # Landroid/view/View;

    .line 995
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISimpleLock$SimpleLockTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUISimpleLock;

    .line 996
    invoke-direct {p0, p2}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 993
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISimpleLock$SimpleLockTouchHelper;->mTempRect:Landroid/graphics/Rect;

    .line 997
    return-void
.end method


# virtual methods
.method public getItemDescription(I)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "virtualViewId"    # I

    .line 1057
    const/4 v0, 0x0

    .line 1058
    .local v0, "description":Ljava/lang/String;
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISimpleLock$SimpleLockTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUISimpleLock;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUISimpleLock;->access$1100(Lcom/coui/appcompat/widget/COUISimpleLock;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISimpleLock$SimpleLockTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUISimpleLock;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUISimpleLock;->access$1200(Lcom/coui/appcompat/widget/COUISimpleLock;)Ljava/util/LinkedList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1059
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISimpleLock$SimpleLockTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUISimpleLock;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISimpleLock$SimpleLockTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUISimpleLock;

    invoke-static {v2}, Lcom/coui/appcompat/widget/COUISimpleLock;->access$1100(Lcom/coui/appcompat/widget/COUISimpleLock;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x79

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUISimpleLock$SimpleLockTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUISimpleLock;

    invoke-static {v4}, Lcom/coui/appcompat/widget/COUISimpleLock;->access$1300(Lcom/coui/appcompat/widget/COUISimpleLock;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/coui/appcompat/widget/COUISimpleLock;->access$1102(Lcom/coui/appcompat/widget/COUISimpleLock;Ljava/lang/String;)Ljava/lang/String;

    .line 1060
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISimpleLock$SimpleLockTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUISimpleLock;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUISimpleLock;->access$1200(Lcom/coui/appcompat/widget/COUISimpleLock;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 1061
    .local v1, "size":I
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISimpleLock$SimpleLockTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUISimpleLock;

    invoke-static {v2}, Lcom/coui/appcompat/widget/COUISimpleLock;->access$1100(Lcom/coui/appcompat/widget/COUISimpleLock;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x78

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 1062
    return-object v0

    .line 1065
    .end local v1    # "size":I
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getVirtualViewAt(FF)I
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 1003
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISimpleLock$SimpleLockTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUISimpleLock;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUISimpleLock;->access$900(Lcom/coui/appcompat/widget/COUISimpleLock;)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock$SimpleLockTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUISimpleLock;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISimpleLock;->access$1000(Lcom/coui/appcompat/widget/COUISimpleLock;)I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    .line 1004
    const/4 v0, 0x0

    return v0

    .line 1006
    :cond_0
    const/4 v0, -0x2

    return v0
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1011
    .local p1, "virtualViewIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 1012
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1011
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1014
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method onItemClicked(I)Z
    .locals 1
    .param p1, "index"    # I

    .line 1052
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/widget/COUISimpleLock$SimpleLockTouchHelper;->sendEventForVirtualView(II)Z

    .line 1053
    const/4 v0, 0x0

    return v0
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 1039
    const/16 v0, 0x10

    if-eq p2, v0, :cond_0

    .line 1048
    const/4 v0, 0x0

    return v0

    .line 1044
    :cond_0
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUISimpleLock$SimpleLockTouchHelper;->onItemClicked(I)Z

    move-result v0

    return v0
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1032
    invoke-super {p0, p1, p2}, Landroidx/customview/widget/ExploreByTouchHelper;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1033
    return-void
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "virtualViewId"    # I
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1018
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUISimpleLock$SimpleLockTouchHelper;->getItemDescription(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1019
    .local v0, "contentDescription":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1020
    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "node"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1024
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUISimpleLock$SimpleLockTouchHelper;->getItemDescription(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1025
    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 1026
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock$SimpleLockTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/widget/COUISimpleLock$SimpleLockTouchHelper;->setRectBounds(ILandroid/graphics/Rect;)V

    .line 1027
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock$SimpleLockTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 1028
    return-void
.end method

.method public setRectBounds(ILandroid/graphics/Rect;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "rect"    # Landroid/graphics/Rect;

    .line 1069
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 1070
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock$SimpleLockTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUISimpleLock;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISimpleLock;->access$900(Lcom/coui/appcompat/widget/COUISimpleLock;)I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISimpleLock$SimpleLockTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUISimpleLock;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUISimpleLock;->access$1000(Lcom/coui/appcompat/widget/COUISimpleLock;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1072
    :cond_0
    return-void
.end method
