.class Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "COUINumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUINumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccessibilityNodeProviderImpl"
.end annotation


# static fields
.field private static final UNDEFINED:I = -0x80000000

.field private static final VIRTUAL_VIEW_ID:I


# instance fields
.field private mAccessibilityFocusedView:I

.field private final mTempArray:[I

.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/coui/appcompat/widget/COUINumberPicker;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUINumberPicker;)V
    .locals 1
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUINumberPicker;

    .line 1848
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    .line 1853
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 1855
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 1857
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    return-void
.end method

.method private createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 6
    .param p1, "virtualViewId"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I

    .line 1972
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 1973
    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 1974
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 1975
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 1976
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->access$1000(Lcom/coui/appcompat/widget/COUINumberPicker;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1977
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-static {v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->access$1000(Lcom/coui/appcompat/widget/COUINumberPicker;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1980
    :cond_0
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 1981
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 1982
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 1983
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->isEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 1984
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 1985
    .local v2, "boundsInParent":Landroid/graphics/Rect;
    invoke-virtual {v2, p3, p4, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1987
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 1988
    move-object v3, v2

    .line 1989
    .local v3, "boundsInScreen":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 1990
    .local v4, "locationOnScreen":[I
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v5, v4}, Lcom/coui/appcompat/widget/COUINumberPicker;->getLocationOnScreen([I)V

    .line 1991
    const/4 v5, 0x0

    aget v5, v4, v5

    aget v1, v4, v1

    invoke-virtual {v3, v5, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1992
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 1994
    iget v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v1, p1, :cond_1

    .line 1995
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1997
    :cond_1
    iget v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v1, p1, :cond_2

    .line 1998
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2000
    :cond_2
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2001
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2004
    :cond_3
    return-object v0
.end method

.method private sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V
    .locals 3
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I
    .param p3, "text"    # Ljava/lang/String;

    .line 1959
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->access$900(Lcom/coui/appcompat/widget/COUINumberPicker;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1960
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 1961
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 1962
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1963
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 1964
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 1965
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v1, v2, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 1968
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 8
    .param p1, "virtualViewId"    # I

    .line 1862
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    .line 1863
    invoke-static {v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->access$800(Lcom/coui/appcompat/widget/COUINumberPicker;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->access$700(Lcom/coui/appcompat/widget/COUINumberPicker;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getScrollX()I

    move-result v4

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getScrollY()I

    move-result v5

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    .line 1864
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    add-int v6, v0, v1

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    .line 1865
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getScrollY()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->getBottom()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    add-int v7, v0, v1

    .line 1862
    const/4 v2, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .param p1, "searched"    # Ljava/lang/String;
    .param p2, "virtualViewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .line 1871
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1872
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1875
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 1880
    const/high16 v0, -0x80000000

    const/16 v1, 0x80

    const/16 v2, 0x40

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 1918
    :pswitch_0
    const/16 v5, 0x10

    if-eq p2, v5, :cond_4

    if-eq p2, v2, :cond_2

    if-eq p2, v1, :cond_0

    .line 1947
    return v4

    .line 1936
    :cond_0
    iget v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v1, p1, :cond_1

    .line 1937
    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 1938
    const/high16 v0, 0x10000

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1940
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-static {v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->access$400(Lcom/coui/appcompat/widget/COUINumberPicker;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->invalidate(IIII)V

    .line 1941
    return v3

    .line 1944
    :cond_1
    return v4

    .line 1926
    :cond_2
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v0, p1, :cond_3

    .line 1927
    iput p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 1928
    const v0, 0x8000

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1930
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-static {v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->access$400(Lcom/coui/appcompat/widget/COUINumberPicker;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->invalidate(IIII)V

    .line 1931
    return v3

    .line 1934
    :cond_3
    return v4

    .line 1920
    :cond_4
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1921
    return v3

    .line 1924
    :cond_5
    return v4

    .line 1882
    :pswitch_1
    if-eq p2, v2, :cond_c

    if-eq p2, v1, :cond_a

    const/16 v0, 0x1000

    if-eq p2, v0, :cond_8

    const/16 v0, 0x2000

    if-eq p2, v0, :cond_6

    .line 1915
    goto :goto_0

    .line 1907
    :cond_6
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1908
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-static {v0, v4}, Lcom/coui/appcompat/widget/COUINumberPicker;->access$500(Lcom/coui/appcompat/widget/COUINumberPicker;Z)V

    .line 1909
    return v3

    .line 1912
    :cond_7
    return v4

    .line 1900
    :cond_8
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1901
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-static {v0, v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->access$500(Lcom/coui/appcompat/widget/COUINumberPicker;Z)V

    .line 1902
    return v3

    .line 1905
    :cond_9
    return v4

    .line 1892
    :cond_a
    iget v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v1, p1, :cond_b

    .line 1893
    iput v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 1895
    return v3

    .line 1897
    :cond_b
    return v4

    .line 1884
    :cond_c
    iget v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v0, p1, :cond_d

    .line 1885
    iput p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 1887
    return v3

    .line 1890
    :cond_d
    return v4

    .line 1949
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method sendAccessibilityEventForVirtualView(II)V
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I

    .line 1953
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/COUINumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    .line 1955
    return-void
.end method
