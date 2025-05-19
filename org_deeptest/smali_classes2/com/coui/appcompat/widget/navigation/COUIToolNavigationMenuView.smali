.class public Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;
.super Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;
.source "COUIToolNavigationMenuView.java"


# static fields
.field private static final CENTER:I = 0x0

.field private static final END:I = 0x2

.field private static final START:I = 0x1


# instance fields
.field private mDefaultPadding:I

.field private mIconMarginHorizontal:I

.field private mIconTopMargin:I

.field private mItemHeight:I

.field private mItemMinWidth:I

.field private mTempChildWidths:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 33
    .local v0, "resources":Landroid/content/res/Resources;
    sget v1, Lcoui/support/appcompat/R$dimen;->coui_tool_navigation_edge_item_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->mDefaultPadding:I

    .line 34
    const/4 v1, 0x5

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->mTempChildWidths:[I

    .line 35
    sget v1, Lcoui/support/appcompat/R$dimen;->coui_tool_navigation_item_min_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->mItemMinWidth:I

    .line 36
    sget v1, Lcoui/support/appcompat/R$dimen;->coui_tool_navigation_item_icon_margin_horizontal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->mIconMarginHorizontal:I

    .line 37
    sget v1, Lcoui/support/appcompat/R$dimen;->coui_tool_navigation_icon_margin_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->mIconTopMargin:I

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method private isRtlMode()Z
    .locals 2

    .line 164
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private setIconAlignment(Landroid/widget/RelativeLayout$LayoutParams;I)V
    .locals 4
    .param p1, "iconLp"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p2, "alignment"    # I

    .line 168
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    const/16 v2, 0x14

    goto :goto_0

    :cond_0
    if-ne p2, v0, :cond_1

    const/16 v2, 0x15

    goto :goto_0

    :cond_1
    const/16 v2, 0xe

    :goto_0
    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 172
    invoke-direct {p0}, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->isRtlMode()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_4

    .line 173
    if-ne p2, v1, :cond_2

    iget v1, p0, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->mIconMarginHorizontal:I

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    iput v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 174
    if-ne p2, v0, :cond_3

    iget v3, p0, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->mIconMarginHorizontal:I

    nop

    :cond_3
    iput v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_3

    .line 176
    :cond_4
    if-ne p2, v1, :cond_5

    iget v1, p0, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->mIconMarginHorizontal:I

    goto :goto_2

    :cond_5
    move v1, v3

    :goto_2
    iput v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 177
    if-ne p2, v0, :cond_6

    iget v3, p0, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->mIconMarginHorizontal:I

    nop

    :cond_6
    iput v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 179
    :goto_3
    return-void
.end method

.method private setPaddingAndMeasure(Landroid/view/View;IIII)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "paddingLeft"    # I
    .param p4, "paddingRight"    # I
    .param p5, "heightSpec"    # I

    .line 182
    invoke-direct {p0}, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->isRtlMode()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, p4

    goto :goto_0

    :cond_0
    move v0, p3

    :goto_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->isRtlMode()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, p3

    goto :goto_1

    :cond_1
    move v1, p4

    :goto_1
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 183
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->mTempChildWidths:[I

    aget v0, v0, p2

    add-int/2addr v0, p3

    add-int/2addr v0, p4

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v0, p5}, Landroid/view/View;->measure(II)V

    .line 184
    return-void
.end method

.method private setTextAlignment(ILandroid/widget/TextView;I)V
    .locals 3
    .param p1, "strWidth"    # I
    .param p2, "title"    # Landroid/widget/TextView;
    .param p3, "alignment"    # I

    .line 187
    iget v0, p0, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->mItemMinWidth:I

    if-ge p1, v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->mItemMinWidth:I

    :goto_0
    move p1, v0

    .line 188
    const/4 v0, 0x0

    packed-switch p3, :pswitch_data_0

    goto :goto_5

    .line 194
    :pswitch_0
    const/4 v1, 0x6

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 195
    invoke-direct {p0}, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->isRtlMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->mItemMinWidth:I

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    invoke-direct {p0}, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->isRtlMode()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    iget v2, p0, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->mItemMinWidth:I

    sub-int/2addr v2, p1

    div-int/lit8 v2, v2, 0x2

    :goto_2
    invoke-virtual {p2, v1, v0, v2, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 196
    goto :goto_5

    .line 190
    :pswitch_1
    const/4 v1, 0x5

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 191
    invoke-direct {p0}, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->isRtlMode()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v0

    goto :goto_3

    :cond_3
    iget v1, p0, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->mItemMinWidth:I

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    :goto_3
    invoke-direct {p0}, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->isRtlMode()Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->mItemMinWidth:I

    sub-int/2addr v2, p1

    div-int/lit8 v2, v2, 0x2

    goto :goto_4

    :cond_4
    move v2, v0

    :goto_4
    invoke-virtual {p2, v1, v0, v2, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 192
    goto :goto_5

    .line 198
    :pswitch_2
    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 199
    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 202
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 21
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 46
    move-object/from16 v6, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, v6, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->mDefaultPadding:I

    const/4 v7, 0x2

    mul-int/2addr v1, v7

    sub-int v8, v0, v1

    .line 47
    .local v8, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->getChildCount()I

    move-result v9

    .line 48
    .local v9, "count":I
    iget v0, v6, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->mItemHeight:I

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 49
    .local v11, "heightSpec":I
    const/4 v12, 0x1

    if-nez v9, :cond_0

    move v0, v12

    goto :goto_0

    :cond_0
    move v0, v9

    :goto_0
    div-int v13, v8, v0

    .line 50
    .local v13, "childWidth":I
    mul-int v0, v13, v9

    sub-int v0, v8, v0

    .line 51
    .local v0, "extra":I
    const/4 v14, 0x0

    move v15, v0

    move v0, v14

    .local v0, "i":I
    .local v15, "extra":I
    :goto_1
    if-ge v0, v9, :cond_2

    .line 52
    iget-object v1, v6, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->mTempChildWidths:[I

    aput v13, v1, v0

    .line 53
    if-lez v15, :cond_1

    .line 54
    iget-object v1, v6, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->mTempChildWidths:[I

    aget v2, v1, v0

    add-int/2addr v2, v12

    aput v2, v1, v0

    .line 55
    add-int/lit8 v15, v15, -0x1

    .line 51
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 58
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    .line 59
    .local v0, "totalWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/coui/appcompat/util/COUIOrientationUtil;->isPortrait(Landroid/content/Context;)Z

    move-result v1

    const/16 v5, 0x8

    if-eqz v1, :cond_9

    .line 60
    move/from16 v16, v0

    move v0, v14

    .local v0, "i":I
    .local v16, "totalWidth":I
    :goto_2
    move v4, v0

    .end local v0    # "i":I
    .local v4, "i":I
    if-ge v4, v9, :cond_8

    .line 61
    invoke-virtual {v6, v4}, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 62
    .local v3, "child":Landroid/view/View;
    sget v0, Lcoui/support/appcompat/R$id;->normalLable:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/TextView;

    .line 63
    .local v2, "title":Landroid/widget/TextView;
    sget v0, Lcoui/support/appcompat/R$id;->icon:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 64
    .local v1, "iconLp":Landroid/widget/RelativeLayout$LayoutParams;
    iget v0, v6, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->mIconTopMargin:I

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 65
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v10, v0

    .line 66
    .local v10, "strWidth":I
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v5, :cond_3

    .line 67
    nop

    .line 60
    move v14, v4

    move/from16 v17, v7

    move/from16 v20, v8

    move v8, v5

    goto/16 :goto_5

    .line 69
    :cond_3
    packed-switch v9, :pswitch_data_0

    .line 108
    move-object v12, v2

    move-object/from16 v19, v3

    move v14, v4

    move/from16 v17, v7

    move/from16 v20, v8

    move-object v7, v1

    move v8, v5

    .end local v1    # "iconLp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "title":Landroid/widget/TextView;
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "i":I
    .end local v8    # "width":I
    .local v7, "iconLp":Landroid/widget/RelativeLayout$LayoutParams;
    .local v12, "title":Landroid/widget/TextView;
    .local v14, "i":I
    .local v19, "child":Landroid/view/View;
    .local v20, "width":I
    goto/16 :goto_4

    .line 93
    .end local v7    # "iconLp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v12    # "title":Landroid/widget/TextView;
    .end local v14    # "i":I
    .end local v19    # "child":Landroid/view/View;
    .end local v20    # "width":I
    .restart local v1    # "iconLp":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v2    # "title":Landroid/widget/TextView;
    .restart local v3    # "child":Landroid/view/View;
    .restart local v4    # "i":I
    .restart local v8    # "width":I
    :pswitch_0
    if-nez v4, :cond_4

    .line 94
    invoke-direct {v6, v1, v14}, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->setIconAlignment(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 95
    invoke-direct {v6, v10, v2, v14}, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->setTextAlignment(ILandroid/widget/TextView;I)V

    .line 96
    iget v0, v6, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->mDefaultPadding:I

    const/16 v17, 0x0

    move/from16 v18, v0

    move-object/from16 v0, p0

    move-object v7, v1

    .end local v1    # "iconLp":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v7    # "iconLp":Landroid/widget/RelativeLayout$LayoutParams;
    move-object v1, v3

    move-object v12, v2

    .end local v2    # "title":Landroid/widget/TextView;
    .restart local v12    # "title":Landroid/widget/TextView;
    move v2, v4

    move-object/from16 v19, v3

    .end local v3    # "child":Landroid/view/View;
    .restart local v19    # "child":Landroid/view/View;
    move/from16 v3, v18

    move v14, v4

    .end local v4    # "i":I
    .restart local v14    # "i":I
    move/from16 v4, v17

    move/from16 v20, v8

    move v8, v5

    .end local v8    # "width":I
    .restart local v20    # "width":I
    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->setPaddingAndMeasure(Landroid/view/View;IIII)V

    goto :goto_3

    .line 97
    .end local v7    # "iconLp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v12    # "title":Landroid/widget/TextView;
    .end local v14    # "i":I
    .end local v19    # "child":Landroid/view/View;
    .end local v20    # "width":I
    .restart local v1    # "iconLp":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v2    # "title":Landroid/widget/TextView;
    .restart local v3    # "child":Landroid/view/View;
    .restart local v4    # "i":I
    .restart local v8    # "width":I
    :cond_4
    move-object v7, v1

    move-object v12, v2

    move-object/from16 v19, v3

    move v14, v4

    move/from16 v20, v8

    move v8, v5

    .end local v1    # "iconLp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "title":Landroid/widget/TextView;
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "i":I
    .end local v8    # "width":I
    .restart local v7    # "iconLp":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v12    # "title":Landroid/widget/TextView;
    .restart local v14    # "i":I
    .restart local v19    # "child":Landroid/view/View;
    .restart local v20    # "width":I
    add-int/lit8 v0, v9, -0x1

    if-ne v14, v0, :cond_5

    .line 98
    const/4 v0, 0x0

    invoke-direct {v6, v7, v0}, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->setIconAlignment(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 99
    invoke-direct {v6, v10, v12, v0}, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->setTextAlignment(ILandroid/widget/TextView;I)V

    .line 100
    const/4 v3, 0x0

    iget v4, v6, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->mDefaultPadding:I

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move v2, v14

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->setPaddingAndMeasure(Landroid/view/View;IIII)V

    goto :goto_3

    .line 102
    :cond_5
    const/4 v0, 0x0

    invoke-direct {v6, v7, v0}, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->setIconAlignment(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 103
    invoke-direct {v6, v10, v12, v0}, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->setTextAlignment(ILandroid/widget/TextView;I)V

    .line 104
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move v2, v14

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->setPaddingAndMeasure(Landroid/view/View;IIII)V

    goto :goto_3

    .line 77
    .end local v7    # "iconLp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v12    # "title":Landroid/widget/TextView;
    .end local v14    # "i":I
    .end local v19    # "child":Landroid/view/View;
    .end local v20    # "width":I
    .restart local v1    # "iconLp":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v2    # "title":Landroid/widget/TextView;
    .restart local v3    # "child":Landroid/view/View;
    .restart local v4    # "i":I
    .restart local v8    # "width":I
    :pswitch_1
    move-object v7, v1

    move-object v12, v2

    move-object/from16 v19, v3

    move v14, v4

    move/from16 v20, v8

    move v8, v5

    .end local v1    # "iconLp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "title":Landroid/widget/TextView;
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "i":I
    .end local v8    # "width":I
    .restart local v7    # "iconLp":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v12    # "title":Landroid/widget/TextView;
    .restart local v14    # "i":I
    .restart local v19    # "child":Landroid/view/View;
    .restart local v20    # "width":I
    if-nez v14, :cond_6

    .line 78
    const/4 v0, 0x1

    invoke-direct {v6, v7, v0}, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->setIconAlignment(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 79
    invoke-direct {v6, v10, v12, v0}, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->setTextAlignment(ILandroid/widget/TextView;I)V

    .line 80
    iget v3, v6, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->mDefaultPadding:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move v2, v14

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->setPaddingAndMeasure(Landroid/view/View;IIII)V

    .line 108
    :goto_3
    const/16 v17, 0x2

    goto :goto_4

    .line 81
    :cond_6
    add-int/lit8 v0, v9, -0x1

    if-ne v14, v0, :cond_7

    .line 82
    const/4 v5, 0x2

    invoke-direct {v6, v7, v5}, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->setIconAlignment(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 83
    invoke-direct {v6, v10, v12, v5}, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->setTextAlignment(ILandroid/widget/TextView;I)V

    .line 84
    const/4 v3, 0x0

    iget v4, v6, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->mDefaultPadding:I

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move v2, v14

    move/from16 v17, v5

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->setPaddingAndMeasure(Landroid/view/View;IIII)V

    goto :goto_4

    .line 86
    :cond_7
    const/16 v17, 0x2

    const/4 v0, 0x0

    invoke-direct {v6, v7, v0}, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->setIconAlignment(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 87
    invoke-direct {v6, v10, v12, v0}, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->setTextAlignment(ILandroid/widget/TextView;I)V

    .line 88
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move v2, v14

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->setPaddingAndMeasure(Landroid/view/View;IIII)V

    .line 90
    goto :goto_4

    .line 71
    .end local v7    # "iconLp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v12    # "title":Landroid/widget/TextView;
    .end local v14    # "i":I
    .end local v19    # "child":Landroid/view/View;
    .end local v20    # "width":I
    .restart local v1    # "iconLp":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v2    # "title":Landroid/widget/TextView;
    .restart local v3    # "child":Landroid/view/View;
    .restart local v4    # "i":I
    .restart local v8    # "width":I
    :pswitch_2
    move-object v12, v2

    move-object/from16 v19, v3

    move v14, v4

    move/from16 v17, v7

    move/from16 v20, v8

    move-object v7, v1

    move v8, v5

    .end local v1    # "iconLp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "title":Landroid/widget/TextView;
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "i":I
    .end local v8    # "width":I
    .restart local v7    # "iconLp":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v12    # "title":Landroid/widget/TextView;
    .restart local v14    # "i":I
    .restart local v19    # "child":Landroid/view/View;
    .restart local v20    # "width":I
    const/4 v0, 0x0

    invoke-direct {v6, v7, v0}, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->setIconAlignment(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 72
    invoke-direct {v6, v10, v12, v0}, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->setTextAlignment(ILandroid/widget/TextView;I)V

    .line 73
    iget v3, v6, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->mDefaultPadding:I

    iget v4, v6, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->mDefaultPadding:I

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move v2, v14

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->setPaddingAndMeasure(Landroid/view/View;IIII)V

    .line 74
    nop

    .line 108
    :goto_4
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 109
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 110
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int v16, v16, v1

    .line 60
    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v7    # "iconLp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v10    # "strWidth":I
    .end local v12    # "title":Landroid/widget/TextView;
    .end local v19    # "child":Landroid/view/View;
    :goto_5
    add-int/lit8 v0, v14, 0x1

    move v5, v8

    move/from16 v7, v17

    move/from16 v8, v20

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v12, 0x1

    const/4 v14, 0x0

    goto/16 :goto_2

    .line 154
    .end local v14    # "i":I
    .end local v20    # "width":I
    .restart local v8    # "width":I
    :cond_8
    move/from16 v20, v8

    move/from16 v0, v16

    .end local v8    # "width":I
    .restart local v20    # "width":I
    goto/16 :goto_a

    .line 113
    .end local v16    # "totalWidth":I
    .end local v20    # "width":I
    .local v0, "totalWidth":I
    .restart local v8    # "width":I
    :cond_9
    move/from16 v20, v8

    move v8, v5

    .end local v8    # "width":I
    .restart local v20    # "width":I
    move/from16 v16, v0

    const/4 v0, 0x0

    .local v0, "i":I
    .restart local v16    # "totalWidth":I
    :goto_6
    move v7, v0

    .end local v0    # "i":I
    .local v7, "i":I
    if-ge v7, v9, :cond_f

    .line 114
    invoke-virtual {v6, v7}, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 115
    .local v10, "child":Landroid/view/View;
    sget v0, Lcoui/support/appcompat/R$id;->rl_content:I

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/RelativeLayout;

    .line 116
    .local v12, "rl":Landroid/widget/RelativeLayout;
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v8, :cond_a

    .line 117
    nop

    .line 113
    const/4 v14, 0x1

    goto/16 :goto_9

    .line 119
    :cond_a
    packed-switch v9, :pswitch_data_1

    .line 149
    :goto_7
    const/4 v14, 0x1

    goto/16 :goto_8

    .line 139
    :pswitch_3
    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 140
    if-nez v7, :cond_b

    .line 141
    iget v3, v6, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->mDefaultPadding:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v10

    move v2, v7

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->setPaddingAndMeasure(Landroid/view/View;IIII)V

    goto :goto_7

    .line 142
    :cond_b
    add-int/lit8 v0, v9, -0x1

    if-ne v7, v0, :cond_c

    .line 143
    const/4 v3, 0x0

    iget v4, v6, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->mDefaultPadding:I

    move-object/from16 v0, p0

    move-object v1, v10

    move v2, v7

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->setPaddingAndMeasure(Landroid/view/View;IIII)V

    goto :goto_7

    .line 145
    :cond_c
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v10

    move v2, v7

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->setPaddingAndMeasure(Landroid/view/View;IIII)V

    goto :goto_7

    .line 126
    :pswitch_4
    if-nez v7, :cond_d

    .line 127
    const v0, 0x800003

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 128
    iget v3, v6, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->mDefaultPadding:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v10

    move v2, v7

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->setPaddingAndMeasure(Landroid/view/View;IIII)V

    goto :goto_7

    .line 129
    :cond_d
    add-int/lit8 v0, v9, -0x1

    if-ne v7, v0, :cond_e

    .line 130
    const v0, 0x800005

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 131
    const/4 v3, 0x0

    iget v4, v6, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->mDefaultPadding:I

    move-object/from16 v0, p0

    move-object v1, v10

    move v2, v7

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->setPaddingAndMeasure(Landroid/view/View;IIII)V

    goto :goto_7

    .line 133
    :cond_e
    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 134
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v10

    move v2, v7

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->setPaddingAndMeasure(Landroid/view/View;IIII)V

    .line 136
    goto :goto_7

    .line 121
    :pswitch_5
    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 122
    iget v3, v6, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->mDefaultPadding:I

    iget v4, v6, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->mDefaultPadding:I

    move-object/from16 v0, p0

    move-object v1, v10

    move v2, v7

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->setPaddingAndMeasure(Landroid/view/View;IIII)V

    .line 123
    nop

    .line 149
    :goto_8
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 150
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 151
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int v16, v16, v1

    .line 113
    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v10    # "child":Landroid/view/View;
    .end local v12    # "rl":Landroid/widget/RelativeLayout;
    :goto_9
    add-int/lit8 v0, v7, 0x1

    goto/16 :goto_6

    .line 154
    .end local v7    # "i":I
    :cond_f
    move/from16 v0, v16

    .end local v16    # "totalWidth":I
    .local v0, "totalWidth":I
    :goto_a
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    iget v3, v6, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->mItemHeight:I

    .line 155
    invoke-static {v3, v11, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v2

    .line 154
    invoke-virtual {v6, v1, v2}, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->setMeasuredDimension(II)V

    .line 156
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public setItemHeight(I)V
    .locals 0
    .param p1, "defaultHeight"    # I

    .line 160
    iput p1, p0, Lcom/coui/appcompat/widget/navigation/COUIToolNavigationMenuView;->mItemHeight:I

    .line 161
    return-void
.end method
