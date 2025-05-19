.class public Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "COUIViewExplorerByTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;
    }
.end annotation


# static fields
.field private static final VIEW_LOG_TAG:Ljava/lang/String; = "COUIViewExplorerByTouchHelper"


# instance fields
.field private mCOUIViewTalkBalkInteraction:Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;

.field private mHostView:Landroid/view/View;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;

    .line 50
    invoke-direct {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 39
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper;->mTempRect:Landroid/graphics/Rect;

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper;->mHostView:Landroid/view/View;

    .line 42
    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper;->mCOUIViewTalkBalkInteraction:Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;

    .line 51
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper;->mHostView:Landroid/view/View;

    .line 52
    return-void
.end method

.method private getItemBounds(ILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "rect"    # Landroid/graphics/Rect;

    .line 134
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper;->mCOUIViewTalkBalkInteraction:Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;

    invoke-interface {v0}, Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;->getItemCounts()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper;->mCOUIViewTalkBalkInteraction:Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;

    invoke-interface {v0, p1, p2}, Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;->getItemBounds(ILandroid/graphics/Rect;)V

    .line 137
    :cond_0
    return-void
.end method


# virtual methods
.method public clearFocusedVirtualView()V
    .locals 4

    .line 67
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper;->getFocusedVirtualView()I

    move-result v0

    .line 68
    .local v0, "focusedVirtualView":I
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper;->mHostView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper;->getAccessibilityNodeProvider(Landroid/view/View;)Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;

    move-result-object v1

    const/16 v2, 0x80

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;->performAction(IILandroid/os/Bundle;)Z

    .line 72
    :cond_0
    return-void
.end method

.method protected getVirtualViewAt(FF)I
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 76
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper;->mCOUIViewTalkBalkInteraction:Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;

    invoke-interface {v0, p1, p2}, Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;->getVirtualViewAt(FF)I

    move-result v0

    .line 77
    .local v0, "position":I
    if-ltz v0, :cond_0

    .line 78
    return v0

    .line 80
    :cond_0
    const/high16 v1, -0x80000000

    return v1
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

    .line 85
    .local p1, "virtualViewIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "day":I
    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper;->mCOUIViewTalkBalkInteraction:Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;

    invoke-interface {v1}, Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;->getItemCounts()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 86
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    .end local v0    # "day":I
    :cond_0
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 3
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 118
    const/4 v0, 0x0

    const/16 v1, 0x10

    if-eq p2, v1, :cond_0

    .line 124
    return v0

    .line 120
    :cond_0
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper;->mCOUIViewTalkBalkInteraction:Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;

    invoke-interface {v2, p1, v1, v0}, Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;->performAction(IIZ)V

    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 92
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper;->mCOUIViewTalkBalkInteraction:Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;

    invoke-interface {v0, p1}, Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;->getItemDescription(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 93
    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "node"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 97
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper;->getItemBounds(ILandroid/graphics/Rect;)V

    .line 99
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper;->mCOUIViewTalkBalkInteraction:Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;

    invoke-interface {v0, p1}, Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;->getItemDescription(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 101
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper;->mCOUIViewTalkBalkInteraction:Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;

    invoke-interface {v0}, Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper;->mCOUIViewTalkBalkInteraction:Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;

    invoke-interface {v0}, Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 104
    :cond_0
    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 106
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper;->mCOUIViewTalkBalkInteraction:Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;

    invoke-interface {v0}, Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;->getCurrentPosition()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 107
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setSelected(Z)V

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper;->mCOUIViewTalkBalkInteraction:Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;

    invoke-interface {v0}, Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;->getDisablePosition()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 111
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setEnabled(Z)V

    .line 114
    :cond_2
    return-void
.end method

.method public setCOUIViewTalkBalkInteraction(Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;)V
    .locals 0
    .param p1, "COUIViewTalkBalkInteraction"    # Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;

    .line 145
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper;->mCOUIViewTalkBalkInteraction:Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper$COUIViewTalkBalkInteraction;

    .line 146
    return-void
.end method

.method public setFocusedVirtualView(I)V
    .locals 3
    .param p1, "virtualViewId"    # I

    .line 60
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper;->mHostView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIViewExplorerByTouchHelper;->getAccessibilityNodeProvider(Landroid/view/View;)Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;

    move-result-object v0

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;->performAction(IILandroid/os/Bundle;)Z

    .line 61
    return-void
.end method
