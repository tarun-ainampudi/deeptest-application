.class public final Lcom/platform/usercenter/tools/ui/SizeUtils;
.super Ljava/lang/Object;
.source "SizeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/platform/usercenter/tools/ui/SizeUtils$OnGetSizeListener;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static applyDimension(FI)F
    .locals 3
    .param p0, "value"    # F
    .param p1, "unit"    # I

    .line 102
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 103
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    packed-switch p1, :pswitch_data_0

    .line 117
    const/4 v1, 0x0

    return v1

    .line 115
    :pswitch_0
    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    mul-float/2addr v1, p0

    const v2, 0x3d214285

    mul-float/2addr v1, v2

    return v1

    .line 113
    :pswitch_1
    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    mul-float/2addr v1, p0

    return v1

    .line 111
    :pswitch_2
    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    mul-float/2addr v1, p0

    const v2, 0x3c638e39

    mul-float/2addr v1, v2

    return v1

    .line 109
    :pswitch_3
    iget v1, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v1, p0

    return v1

    .line 107
    :pswitch_4
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, p0

    return v1

    .line 105
    :pswitch_5
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static dp2px(F)I
    .locals 3
    .param p0, "dpValue"    # F

    .line 32
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 33
    .local v0, "scale":F
    mul-float v1, p0, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static forceGetViewSize(Landroid/view/View;Lcom/platform/usercenter/tools/ui/SizeUtils$OnGetSizeListener;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "listener"    # Lcom/platform/usercenter/tools/ui/SizeUtils$OnGetSizeListener;

    .line 137
    new-instance v0, Lcom/platform/usercenter/tools/ui/SizeUtils$1;

    invoke-direct {v0, p1, p0}, Lcom/platform/usercenter/tools/ui/SizeUtils$1;-><init>(Lcom/platform/usercenter/tools/ui/SizeUtils$OnGetSizeListener;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 145
    return-void
.end method

.method public static getMeasuredHeight(Landroid/view/View;)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 164
    invoke-static {p0}, Lcom/platform/usercenter/tools/ui/SizeUtils;->measureView(Landroid/view/View;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public static getMeasuredWidth(Landroid/view/View;)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 154
    invoke-static {p0}, Lcom/platform/usercenter/tools/ui/SizeUtils;->measureView(Landroid/view/View;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public static measureView(Landroid/view/View;)[I
    .locals 7
    .param p0, "view"    # Landroid/view/View;

    .line 174
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 175
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 176
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v0, v1

    .line 181
    :cond_0
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, 0x0

    invoke-static {v2, v2, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 182
    .local v1, "widthSpec":I
    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 184
    .local v3, "lpHeight":I
    if-lez v3, :cond_1

    .line 185
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_0

    .line 187
    :cond_1
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 189
    .local v4, "heightSpec":I
    :goto_0
    invoke-virtual {p0, v1, v4}, Landroid/view/View;->measure(II)V

    .line 190
    const/4 v5, 0x2

    new-array v5, v5, [I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    aput v6, v5, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    aput v6, v5, v2

    return-object v5
.end method

.method public static pt2Px(F)I
    .locals 5
    .param p0, "ptValue"    # F

    .line 76
    sget-object v0, Lcom/platform/usercenter/tools/UCBasicUtils;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 77
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    mul-float/2addr v1, p0

    const/high16 v2, 0x42900000    # 72.0f

    div-float/2addr v1, v2

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int v1, v1

    return v1
.end method

.method public static px2Pt(F)I
    .locals 5
    .param p0, "pxValue"    # F

    .line 87
    sget-object v0, Lcom/platform/usercenter/tools/UCBasicUtils;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 88
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    const/high16 v1, 0x42900000    # 72.0f

    mul-float/2addr v1, p0

    iget v2, v0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int v1, v1

    return v1
.end method

.method public static px2dp(F)I
    .locals 3
    .param p0, "pxValue"    # F

    .line 43
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 44
    .local v0, "scale":F
    div-float v1, p0, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static px2sp(F)I
    .locals 3
    .param p0, "pxValue"    # F

    .line 65
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 66
    .local v0, "fontScale":F
    div-float v1, p0, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static sp2px(F)I
    .locals 3
    .param p0, "spValue"    # F

    .line 54
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 55
    .local v0, "fontScale":F
    mul-float v1, p0, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method
