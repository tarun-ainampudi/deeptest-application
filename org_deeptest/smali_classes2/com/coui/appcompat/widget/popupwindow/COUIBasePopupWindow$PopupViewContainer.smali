.class Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow$PopupViewContainer;
.super Landroid/widget/FrameLayout;
.source "COUIBasePopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupViewContainer"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PopupWindow.PopupViewContainer"


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .line 1700
    iput-object p1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow$PopupViewContainer;->this$0:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    .line 1701
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1702
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 1718
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 1719
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow$PopupViewContainer;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1720
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1723
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 1724
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 1725
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow$PopupViewContainer;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 1726
    .local v0, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_1

    .line 1727
    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 1729
    :cond_1
    return v1

    .line 1730
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 1731
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow$PopupViewContainer;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 1732
    .restart local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1733
    iget-object v2, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow$PopupViewContainer;->this$0:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->dismiss()V

    .line 1734
    return v1

    .line 1737
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1739
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1745
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow$PopupViewContainer;->this$0:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    invoke-static {v0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->access$900(Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow$PopupViewContainer;->this$0:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    invoke-static {v0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->access$900(Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1746
    const/4 v0, 0x1

    return v0

    .line 1748
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .line 1706
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow$PopupViewContainer;->this$0:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    invoke-static {v0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->access$700(Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1708
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 1709
    .local v0, "drawableState":[I
    invoke-static {}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->access$800()[I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 1710
    return-object v0

    .line 1712
    .end local v0    # "drawableState":[I
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1753
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 1754
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 1756
    .local v1, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    if-ltz v0, :cond_0

    .line 1757
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow$PopupViewContainer;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_0

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow$PopupViewContainer;->getHeight()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 1758
    :cond_0
    iget-object v2, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow$PopupViewContainer;->this$0:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->dismiss()V

    .line 1759
    return v3

    .line 1760
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    .line 1761
    iget-object v2, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow$PopupViewContainer;->this$0:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->dismiss()V

    .line 1762
    return v3

    .line 1764
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1
    .param p1, "eventType"    # I

    .line 1771
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow$PopupViewContainer;->this$0:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    invoke-static {v0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->access$1000(Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1772
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow$PopupViewContainer;->this$0:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    invoke-static {v0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->access$1000(Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0

    .line 1774
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    .line 1776
    :goto_0
    return-void
.end method
