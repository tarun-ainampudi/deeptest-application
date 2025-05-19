.class Lcom/google/android/material/slider/Slider$AccessibilityHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "Slider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/slider/Slider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessibilityHelper"
.end annotation


# instance fields
.field bounds:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/google/android/material/slider/Slider;


# direct methods
.method constructor <init>(Lcom/google/android/material/slider/Slider;)V
    .locals 0

    .line 2113
    iput-object p1, p0, Lcom/google/android/material/slider/Slider$AccessibilityHelper;->this$0:Lcom/google/android/material/slider/Slider;

    .line 2114
    invoke-direct {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 2111
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/slider/Slider$AccessibilityHelper;->bounds:Landroid/graphics/Rect;

    .line 2115
    return-void
.end method

.method private updateBoundsForVirturalViewId(I)V
    .locals 7
    .param p1, "virtualViewId"    # I

    .line 2178
    iget-object v0, p0, Lcom/google/android/material/slider/Slider$AccessibilityHelper;->this$0:Lcom/google/android/material/slider/Slider;

    .line 2179
    invoke-static {v0}, Lcom/google/android/material/slider/Slider;->access$900(Lcom/google/android/material/slider/Slider;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/slider/Slider$AccessibilityHelper;->this$0:Lcom/google/android/material/slider/Slider;

    iget-object v2, p0, Lcom/google/android/material/slider/Slider$AccessibilityHelper;->this$0:Lcom/google/android/material/slider/Slider;

    invoke-virtual {v2}, Lcom/google/android/material/slider/Slider;->getValues()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/material/slider/Slider;->access$1000(Lcom/google/android/material/slider/Slider;F)F

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/slider/Slider$AccessibilityHelper;->this$0:Lcom/google/android/material/slider/Slider;

    invoke-static {v2}, Lcom/google/android/material/slider/Slider;->access$1100(Lcom/google/android/material/slider/Slider;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 2180
    .local v0, "x":I
    iget-object v1, p0, Lcom/google/android/material/slider/Slider$AccessibilityHelper;->this$0:Lcom/google/android/material/slider/Slider;

    invoke-static {v1}, Lcom/google/android/material/slider/Slider;->access$1200(Lcom/google/android/material/slider/Slider;)I

    move-result v1

    .line 2182
    .local v1, "y":I
    iget-object v2, p0, Lcom/google/android/material/slider/Slider$AccessibilityHelper;->bounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/google/android/material/slider/Slider$AccessibilityHelper;->this$0:Lcom/google/android/material/slider/Slider;

    invoke-static {v3}, Lcom/google/android/material/slider/Slider;->access$1300(Lcom/google/android/material/slider/Slider;)I

    move-result v3

    sub-int v3, v0, v3

    iget-object v4, p0, Lcom/google/android/material/slider/Slider$AccessibilityHelper;->this$0:Lcom/google/android/material/slider/Slider;

    invoke-static {v4}, Lcom/google/android/material/slider/Slider;->access$1300(Lcom/google/android/material/slider/Slider;)I

    move-result v4

    sub-int v4, v1, v4

    iget-object v5, p0, Lcom/google/android/material/slider/Slider$AccessibilityHelper;->this$0:Lcom/google/android/material/slider/Slider;

    invoke-static {v5}, Lcom/google/android/material/slider/Slider;->access$1300(Lcom/google/android/material/slider/Slider;)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/google/android/material/slider/Slider$AccessibilityHelper;->this$0:Lcom/google/android/material/slider/Slider;

    invoke-static {v6}, Lcom/google/android/material/slider/Slider;->access$1300(Lcom/google/android/material/slider/Slider;)I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 2183
    return-void
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 2119
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/slider/Slider$AccessibilityHelper;->this$0:Lcom/google/android/material/slider/Slider;

    invoke-virtual {v1}, Lcom/google/android/material/slider/Slider;->getValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2120
    invoke-direct {p0, v0}, Lcom/google/android/material/slider/Slider$AccessibilityHelper;->updateBoundsForVirturalViewId(I)V

    .line 2121
    iget-object v1, p0, Lcom/google/android/material/slider/Slider$AccessibilityHelper;->bounds:Landroid/graphics/Rect;

    float-to-int v2, p1

    float-to-int v3, p2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2122
    return v0

    .line 2119
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2125
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

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

    .line 2130
    .local p1, "virtualViewIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/slider/Slider$AccessibilityHelper;->this$0:Lcom/google/android/material/slider/Slider;

    invoke-virtual {v1}, Lcom/google/android/material/slider/Slider;->getValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2131
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2133
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 2188
    iget-object v0, p0, Lcom/google/android/material/slider/Slider$AccessibilityHelper;->this$0:Lcom/google/android/material/slider/Slider;

    invoke-virtual {v0}, Lcom/google/android/material/slider/Slider;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2189
    return v1

    .line 2192
    :cond_0
    const/16 v0, 0x1000

    const/16 v2, 0x2000

    const/4 v3, 0x1

    if-eq p2, v0, :cond_5

    if-eq p2, v2, :cond_5

    const v0, 0x102003d

    if-eq p2, v0, :cond_1

    .line 2242
    return v1

    .line 2195
    :cond_1
    if-eqz p3, :cond_4

    const-string v0, "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

    .line 2196
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 2200
    :cond_2
    const-string v0, "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

    .line 2201
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    .line 2202
    .local v0, "value":F
    iget-object v2, p0, Lcom/google/android/material/slider/Slider$AccessibilityHelper;->this$0:Lcom/google/android/material/slider/Slider;

    invoke-static {v2, p1, v0}, Lcom/google/android/material/slider/Slider;->access$1400(Lcom/google/android/material/slider/Slider;IF)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2203
    iget-object v1, p0, Lcom/google/android/material/slider/Slider$AccessibilityHelper;->this$0:Lcom/google/android/material/slider/Slider;

    invoke-static {v1}, Lcom/google/android/material/slider/Slider;->access$1500(Lcom/google/android/material/slider/Slider;)V

    .line 2204
    iget-object v1, p0, Lcom/google/android/material/slider/Slider$AccessibilityHelper;->this$0:Lcom/google/android/material/slider/Slider;

    invoke-virtual {v1}, Lcom/google/android/material/slider/Slider;->postInvalidate()V

    .line 2205
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/Slider$AccessibilityHelper;->invalidateVirtualView(I)V

    .line 2206
    return v3

    .line 2208
    :cond_3
    return v1

    .line 2198
    .end local v0    # "value":F
    :cond_4
    :goto_0
    return v1

    .line 2213
    :cond_5
    iget-object v0, p0, Lcom/google/android/material/slider/Slider$AccessibilityHelper;->this$0:Lcom/google/android/material/slider/Slider;

    const/16 v4, 0x14

    invoke-static {v0, v4}, Lcom/google/android/material/slider/Slider;->access$1600(Lcom/google/android/material/slider/Slider;I)F

    move-result v0

    .line 2214
    .local v0, "increment":F
    if-ne p2, v2, :cond_6

    .line 2215
    neg-float v0, v0

    .line 2219
    :cond_6
    iget-object v2, p0, Lcom/google/android/material/slider/Slider$AccessibilityHelper;->this$0:Lcom/google/android/material/slider/Slider;

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    if-ne v2, v3, :cond_7

    .line 2220
    neg-float v0, v0

    .line 2223
    :cond_7
    iget-object v2, p0, Lcom/google/android/material/slider/Slider$AccessibilityHelper;->this$0:Lcom/google/android/material/slider/Slider;

    .line 2224
    invoke-static {v2}, Lcom/google/android/material/slider/Slider;->access$700(Lcom/google/android/material/slider/Slider;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v2, v0

    iget-object v4, p0, Lcom/google/android/material/slider/Slider$AccessibilityHelper;->this$0:Lcom/google/android/material/slider/Slider;

    invoke-static {v4}, Lcom/google/android/material/slider/Slider;->access$500(Lcom/google/android/material/slider/Slider;)F

    move-result v4

    iget-object v5, p0, Lcom/google/android/material/slider/Slider$AccessibilityHelper;->this$0:Lcom/google/android/material/slider/Slider;

    invoke-static {v5}, Lcom/google/android/material/slider/Slider;->access$600(Lcom/google/android/material/slider/Slider;)F

    move-result v5

    invoke-static {v2, v4, v5}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v2

    .line 2225
    .local v2, "clamped":F
    iget-object v4, p0, Lcom/google/android/material/slider/Slider$AccessibilityHelper;->this$0:Lcom/google/android/material/slider/Slider;

    invoke-static {v4, p1, v2}, Lcom/google/android/material/slider/Slider;->access$1400(Lcom/google/android/material/slider/Slider;IF)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2226
    iget-object v1, p0, Lcom/google/android/material/slider/Slider$AccessibilityHelper;->this$0:Lcom/google/android/material/slider/Slider;

    invoke-static {v1}, Lcom/google/android/material/slider/Slider;->access$1500(Lcom/google/android/material/slider/Slider;)V

    .line 2227
    iget-object v1, p0, Lcom/google/android/material/slider/Slider$AccessibilityHelper;->this$0:Lcom/google/android/material/slider/Slider;

    invoke-virtual {v1}, Lcom/google/android/material/slider/Slider;->postInvalidate()V

    .line 2230
    iget-object v1, p0, Lcom/google/android/material/slider/Slider$AccessibilityHelper;->this$0:Lcom/google/android/material/slider/Slider;

    invoke-static {v1}, Lcom/google/android/material/slider/Slider;->access$700(Lcom/google/android/material/slider/Slider;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, p1, :cond_8

    .line 2231
    iget-object v1, p0, Lcom/google/android/material/slider/Slider$AccessibilityHelper;->this$0:Lcom/google/android/material/slider/Slider;

    invoke-static {v1}, Lcom/google/android/material/slider/Slider;->access$700(Lcom/google/android/material/slider/Slider;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 2232
    const/16 v1, 0x8

    invoke-virtual {p0, p1, v1}, Lcom/google/android/material/slider/Slider$AccessibilityHelper;->sendEventForVirtualView(II)Z

    goto :goto_1

    .line 2234
    :cond_8
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/Slider$AccessibilityHelper;->invalidateVirtualView(I)V

    .line 2237
    :goto_1
    return v3

    .line 2239
    :cond_9
    return v1
.end method

.method protected onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 9
    .param p1, "virtualViewId"    # I
    .param p2, "info"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 2139
    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SET_PROGRESS:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2141
    iget-object v0, p0, Lcom/google/android/material/slider/Slider$AccessibilityHelper;->this$0:Lcom/google/android/material/slider/Slider;

    invoke-virtual {v0}, Lcom/google/android/material/slider/Slider;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 2143
    .local v0, "value":F
    iget-object v1, p0, Lcom/google/android/material/slider/Slider$AccessibilityHelper;->this$0:Lcom/google/android/material/slider/Slider;

    invoke-virtual {v1}, Lcom/google/android/material/slider/Slider;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2144
    iget-object v1, p0, Lcom/google/android/material/slider/Slider$AccessibilityHelper;->this$0:Lcom/google/android/material/slider/Slider;

    invoke-static {v1}, Lcom/google/android/material/slider/Slider;->access$500(Lcom/google/android/material/slider/Slider;)F

    move-result v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 2145
    const/16 v1, 0x2000

    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 2147
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/slider/Slider$AccessibilityHelper;->this$0:Lcom/google/android/material/slider/Slider;

    invoke-static {v1}, Lcom/google/android/material/slider/Slider;->access$600(Lcom/google/android/material/slider/Slider;)F

    move-result v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 2148
    const/16 v1, 0x1000

    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 2152
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/slider/Slider$AccessibilityHelper;->this$0:Lcom/google/android/material/slider/Slider;

    .line 2154
    invoke-static {v1}, Lcom/google/android/material/slider/Slider;->access$500(Lcom/google/android/material/slider/Slider;)F

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/slider/Slider$AccessibilityHelper;->this$0:Lcom/google/android/material/slider/Slider;

    invoke-static {v2}, Lcom/google/android/material/slider/Slider;->access$600(Lcom/google/android/material/slider/Slider;)F

    move-result v2

    .line 2153
    const/4 v3, 0x1

    invoke-static {v3, v1, v2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;->obtain(IFFF)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;

    move-result-object v1

    .line 2152
    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setRangeInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;)V

    .line 2156
    const-class v1, Landroid/widget/SeekBar;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 2157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2159
    .local v1, "contentDescription":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/google/android/material/slider/Slider$AccessibilityHelper;->this$0:Lcom/google/android/material/slider/Slider;

    invoke-virtual {v2}, Lcom/google/android/material/slider/Slider;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2160
    iget-object v2, p0, Lcom/google/android/material/slider/Slider$AccessibilityHelper;->this$0:Lcom/google/android/material/slider/Slider;

    invoke-virtual {v2}, Lcom/google/android/material/slider/Slider;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2163
    :cond_2
    iget-object v2, p0, Lcom/google/android/material/slider/Slider$AccessibilityHelper;->this$0:Lcom/google/android/material/slider/Slider;

    invoke-static {v2}, Lcom/google/android/material/slider/Slider;->access$700(Lcom/google/android/material/slider/Slider;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v3, :cond_3

    .line 2164
    iget-object v2, p0, Lcom/google/android/material/slider/Slider$AccessibilityHelper;->this$0:Lcom/google/android/material/slider/Slider;

    .line 2165
    invoke-virtual {v2}, Lcom/google/android/material/slider/Slider;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v4, Lcom/google/android/material/R$string;->mtrl_slider_range_content_description:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/material/slider/Slider$AccessibilityHelper;->this$0:Lcom/google/android/material/slider/Slider;

    iget-object v8, p0, Lcom/google/android/material/slider/Slider$AccessibilityHelper;->this$0:Lcom/google/android/material/slider/Slider;

    .line 2168
    invoke-virtual {v8}, Lcom/google/android/material/slider/Slider;->getMinimumValue()F

    move-result v8

    invoke-static {v7, v8}, Lcom/google/android/material/slider/Slider;->access$800(Lcom/google/android/material/slider/Slider;F)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    iget-object v6, p0, Lcom/google/android/material/slider/Slider$AccessibilityHelper;->this$0:Lcom/google/android/material/slider/Slider;

    iget-object v7, p0, Lcom/google/android/material/slider/Slider$AccessibilityHelper;->this$0:Lcom/google/android/material/slider/Slider;

    .line 2169
    invoke-virtual {v7}, Lcom/google/android/material/slider/Slider;->getMaximumValue()F

    move-result v7

    invoke-static {v6, v7}, Lcom/google/android/material/slider/Slider;->access$800(Lcom/google/android/material/slider/Slider;F)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 2166
    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2164
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2171
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2173
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/Slider$AccessibilityHelper;->updateBoundsForVirturalViewId(I)V

    .line 2174
    iget-object v2, p0, Lcom/google/android/material/slider/Slider$AccessibilityHelper;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 2175
    return-void
.end method
