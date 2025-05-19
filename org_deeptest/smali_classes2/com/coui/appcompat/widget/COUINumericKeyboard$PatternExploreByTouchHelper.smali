.class final Lcom/coui/appcompat/widget/COUINumericKeyboard$PatternExploreByTouchHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "COUINumericKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUINumericKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PatternExploreByTouchHelper"
.end annotation


# instance fields
.field private mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/coui/appcompat/widget/COUINumericKeyboard;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/widget/COUINumericKeyboard;Landroid/view/View;)V
    .locals 0
    .param p2, "forView"    # Landroid/view/View;

    .line 1047
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUINumericKeyboard;

    .line 1048
    invoke-direct {p0, p2}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 1045
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$PatternExploreByTouchHelper;->mTempRect:Landroid/graphics/Rect;

    .line 1049
    return-void
.end method

.method private getBoundsForVirtualView(I)Landroid/graphics/Rect;
    .locals 6
    .param p1, "virtualViewId"    # I

    .line 1116
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$PatternExploreByTouchHelper;->mTempRect:Landroid/graphics/Rect;

    .line 1117
    .local v0, "bounds":Landroid/graphics/Rect;
    const/4 v1, 0x0

    .line 1118
    .local v1, "startX":I
    const/4 v2, 0x0

    .line 1119
    .local v2, "startY":I
    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    .line 1120
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUINumericKeyboard;

    div-int/lit8 v4, p1, 0x3

    rem-int/lit8 v5, p1, 0x3

    invoke-virtual {v3, v4, v5}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->of(II)Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;

    move-result-object v3

    .line 1121
    .local v3, "cell":Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUINumericKeyboard;

    iget v5, v3, Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;->column:I

    invoke-static {v4, v5}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->access$800(Lcom/coui/appcompat/widget/COUINumericKeyboard;I)F

    move-result v4

    float-to-int v1, v4

    .line 1122
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUINumericKeyboard;

    iget v5, v3, Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;->row:I

    invoke-static {v4, v5}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->access$900(Lcom/coui/appcompat/widget/COUINumericKeyboard;I)F

    move-result v4

    float-to-int v2, v4

    .line 1124
    .end local v3    # "cell":Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;
    :cond_0
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUINumericKeyboard;

    invoke-static {v3}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->access$1000(Lcom/coui/appcompat/widget/COUINumericKeyboard;)I

    move-result v3

    sub-int v3, v1, v3

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 1125
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUINumericKeyboard;

    invoke-static {v3}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->access$1000(Lcom/coui/appcompat/widget/COUINumericKeyboard;)I

    move-result v3

    add-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 1126
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUINumericKeyboard;

    invoke-static {v3}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->access$1000(Lcom/coui/appcompat/widget/COUINumericKeyboard;)I

    move-result v3

    sub-int v3, v2, v3

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 1127
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUINumericKeyboard;

    invoke-static {v3}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->access$1000(Lcom/coui/appcompat/widget/COUINumericKeyboard;)I

    move-result v3

    add-int/2addr v3, v2

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 1128
    return-object v0
.end method

.method private getVirtualViewIdForHit(FF)I
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 1142
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUINumericKeyboard;

    invoke-static {v0, p1, p2}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->access$1100(Lcom/coui/appcompat/widget/COUINumericKeyboard;FF)Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;

    move-result-object v0

    .line 1143
    .local v0, "cell":Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;
    if-nez v0, :cond_0

    .line 1144
    const/4 v1, -0x1

    return v1

    .line 1146
    :cond_0
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;->getRow()I

    move-result v1

    .line 1147
    .local v1, "row":I
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUINumericKeyboard$Cell;->getColumn()I

    move-result v2

    .line 1148
    .local v2, "column":I
    mul-int/lit8 v3, v1, 0x3

    add-int/2addr v3, v2

    .line 1149
    .local v3, "index":I
    const/16 v4, 0x9

    if-ne v3, v4, :cond_1

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUINumericKeyboard;

    iget-object v5, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUINumericKeyboard;

    invoke-static {v5}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->access$1200(Lcom/coui/appcompat/widget/COUINumericKeyboard;)Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->access$1300(Lcom/coui/appcompat/widget/COUINumericKeyboard;Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1150
    const/4 v3, -0x1

    .line 1152
    :cond_1
    const/16 v4, 0xb

    if-ne v3, v4, :cond_2

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUINumericKeyboard;

    iget-object v5, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUINumericKeyboard;

    invoke-static {v5}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->access$1400(Lcom/coui/appcompat/widget/COUINumericKeyboard;)Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->access$1300(Lcom/coui/appcompat/widget/COUINumericKeyboard;Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1153
    const/4 v3, -0x1

    .line 1155
    :cond_2
    return v3
.end method


# virtual methods
.method public getItemCounts()I
    .locals 3

    .line 1159
    const/16 v0, 0xb

    .line 1160
    .local v0, "count":I
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUINumericKeyboard;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUINumericKeyboard;

    invoke-static {v2}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->access$1200(Lcom/coui/appcompat/widget/COUINumericKeyboard;)Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->access$1300(Lcom/coui/appcompat/widget/COUINumericKeyboard;Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1161
    add-int/lit8 v0, v0, -0x1

    .line 1163
    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUINumericKeyboard;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUINumericKeyboard;

    invoke-static {v2}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->access$1400(Lcom/coui/appcompat/widget/COUINumericKeyboard;)Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->access$1300(Lcom/coui/appcompat/widget/COUINumericKeyboard;Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1164
    add-int/lit8 v0, v0, -0x1

    .line 1166
    :cond_1
    return v0
.end method

.method public getItemDescription(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "virtualViewId"    # I

    .line 1171
    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUINumericKeyboard;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUINumericKeyboard;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->access$1200(Lcom/coui/appcompat/widget/COUINumericKeyboard;)Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->access$1300(Lcom/coui/appcompat/widget/COUINumericKeyboard;Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1172
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUINumericKeyboard;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->access$1200(Lcom/coui/appcompat/widget/COUINumericKeyboard;)Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;->access$1500(Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1173
    :cond_0
    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUINumericKeyboard;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUINumericKeyboard;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->access$1400(Lcom/coui/appcompat/widget/COUINumericKeyboard;)Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->access$1300(Lcom/coui/appcompat/widget/COUINumericKeyboard;Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1174
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUINumericKeyboard;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->access$1400(Lcom/coui/appcompat/widget/COUINumericKeyboard;)Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;->access$1500(Lcom/coui/appcompat/widget/COUINumericKeyboard$SideStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1175
    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 1176
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1178
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUINumericKeyboard;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->access$1600(Lcom/coui/appcompat/widget/COUINumericKeyboard;)[I

    move-result-object v1

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getVirtualViewAt(FF)I
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 1055
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/widget/COUINumericKeyboard$PatternExploreByTouchHelper;->getVirtualViewIdForHit(FF)I

    move-result v0

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

    .line 1060
    .local p1, "virtualViewIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUINumericKeyboard$PatternExploreByTouchHelper;->getItemCounts()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1061
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1060
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1063
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method onItemClicked(I)Z
    .locals 2
    .param p1, "index"    # I

    .line 1103
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUINumericKeyboard$PatternExploreByTouchHelper;->invalidateVirtualView(I)V

    .line 1104
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUINumericKeyboard;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1105
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUINumericKeyboard;

    invoke-static {v0, p1}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->access$700(Lcom/coui/appcompat/widget/COUINumericKeyboard;I)V

    .line 1106
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumericKeyboard$PatternExploreByTouchHelper;->this$0:Lcom/coui/appcompat/widget/COUINumericKeyboard;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUINumericKeyboard$PatternExploreByTouchHelper;->getItemDescription(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUINumericKeyboard;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1111
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/widget/COUINumericKeyboard$PatternExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 1112
    return v0
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 1087
    const/16 v0, 0x10

    if-eq p2, v0, :cond_0

    .line 1095
    const/4 v0, 0x0

    return v0

    .line 1092
    :cond_0
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUINumericKeyboard$PatternExploreByTouchHelper;->onItemClicked(I)Z

    move-result v0

    return v0
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1082
    invoke-super {p0, p1, p2}, Landroidx/customview/widget/ExploreByTouchHelper;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1083
    return-void
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "virtualViewId"    # I
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1067
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUINumericKeyboard$PatternExploreByTouchHelper;->getItemDescription(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1068
    .local v0, "contentDescription":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1069
    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "node"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1073
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUINumericKeyboard$PatternExploreByTouchHelper;->getItemDescription(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1074
    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLICK:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1075
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    .line 1076
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUINumericKeyboard$PatternExploreByTouchHelper;->getBoundsForVirtualView(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 1077
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 1078
    return-void
.end method
