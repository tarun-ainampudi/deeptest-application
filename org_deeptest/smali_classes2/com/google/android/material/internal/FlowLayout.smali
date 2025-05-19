.class public Lcom/google/android/material/internal/FlowLayout;
.super Landroid/view/ViewGroup;
.source "FlowLayout.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private itemSpacing:I

.field private lineSpacing:I

.field private rowCount:I

.field private singleLine:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/internal/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/internal/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/internal/FlowLayout;->singleLine:Z

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/internal/FlowLayout;->loadFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/internal/FlowLayout;->singleLine:Z

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/internal/FlowLayout;->loadFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method private static getMeasuredDimension(III)I
    .locals 1
    .param p0, "size"    # I
    .param p1, "mode"    # I
    .param p2, "childrenEdge"    # I

    .line 178
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    if-eq p1, v0, :cond_0

    .line 184
    return p2

    .line 180
    :cond_0
    return p0

    .line 182
    :cond_1
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private loadFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 72
    nop

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/google/android/material/R$styleable;->FlowLayout:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 74
    .local v0, "array":Landroid/content/res/TypedArray;
    sget v1, Lcom/google/android/material/R$styleable;->FlowLayout_lineSpacing:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/internal/FlowLayout;->lineSpacing:I

    .line 75
    sget v1, Lcom/google/android/material/R$styleable;->FlowLayout_itemSpacing:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/internal/FlowLayout;->itemSpacing:I

    .line 76
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    return-void
.end method


# virtual methods
.method protected getItemSpacing()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/google/android/material/internal/FlowLayout;->itemSpacing:I

    return v0
.end method

.method protected getLineSpacing()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/google/android/material/internal/FlowLayout;->lineSpacing:I

    return v0
.end method

.method protected getRowCount()I
    .locals 1

    .line 248
    iget v0, p0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    return v0
.end method

.method public getRowIndex(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 253
    sget v0, Lcom/google/android/material/R$id;->row_index_key:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 254
    .local v0, "index":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 255
    const/4 v1, -0x1

    return v1

    .line 257
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public isSingleLine()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcom/google/android/material/internal/FlowLayout;->singleLine:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 19
    .param p1, "sizeChanged"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 190
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 192
    iput v2, v0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    .line 193
    return-void

    .line 195
    :cond_0
    const/4 v1, 0x1

    iput v1, v0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    .line 197
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    if-ne v3, v1, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    .line 198
    .local v3, "isRtl":Z
    :goto_0
    if-eqz v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingRight()I

    move-result v4

    goto :goto_1

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingLeft()I

    move-result v4

    .line 199
    .local v4, "paddingStart":I
    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingLeft()I

    move-result v5

    goto :goto_2

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingRight()I

    move-result v5

    .line 200
    .local v5, "paddingEnd":I
    :goto_2
    move v6, v4

    .line 201
    .local v6, "childStart":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingTop()I

    move-result v7

    .line 202
    .local v7, "childTop":I
    move v8, v7

    .line 205
    .local v8, "childBottom":I
    sub-int v9, p4, p2

    sub-int/2addr v9, v5

    .line 207
    .local v9, "maxChildEnd":I
    nop

    .local v2, "i":I
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->getChildCount()I

    move-result v10

    if-ge v2, v10, :cond_8

    .line 208
    invoke-virtual {v0, v2}, Lcom/google/android/material/internal/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 210
    .local v10, "child":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_4

    .line 211
    sget v11, Lcom/google/android/material/R$id;->row_index_key:I

    const/4 v12, -0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 212
    nop

    .line 207
    move v14, v1

    move/from16 v18, v3

    move/from16 v16, v5

    goto :goto_6

    .line 215
    :cond_4
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 216
    .local v11, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v12, 0x0

    .line 217
    .local v12, "startMargin":I
    const/4 v13, 0x0

    .line 218
    .local v13, "endMargin":I
    instance-of v1, v11, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_5

    .line 219
    move-object v1, v11

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 220
    .local v1, "marginLp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-static {v1}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v12

    .line 221
    invoke-static {v1}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v13

    .line 224
    .end local v1    # "marginLp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_5
    add-int v1, v6, v12

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v1, v15

    .line 226
    .local v1, "childEnd":I
    move/from16 v16, v5

    .end local v5    # "paddingEnd":I
    .local v16, "paddingEnd":I
    iget-boolean v5, v0, Lcom/google/android/material/internal/FlowLayout;->singleLine:Z

    if-nez v5, :cond_6

    if-le v1, v9, :cond_6

    .line 227
    move v6, v4

    .line 228
    iget v5, v0, Lcom/google/android/material/internal/FlowLayout;->lineSpacing:I

    add-int v7, v8, v5

    .line 229
    iget v5, v0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    const/4 v14, 0x1

    add-int/2addr v5, v14

    iput v5, v0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    goto :goto_4

    .line 231
    :cond_6
    const/4 v14, 0x1

    :goto_4
    sget v5, Lcom/google/android/material/R$id;->row_index_key:I

    move/from16 v17, v1

    .end local v1    # "childEnd":I
    .local v17, "childEnd":I
    iget v1, v0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    sub-int/2addr v1, v14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v5, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 233
    add-int v1, v6, v12

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v1, v5

    .line 234
    .end local v17    # "childEnd":I
    .restart local v1    # "childEnd":I
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v7

    .line 236
    .end local v8    # "childBottom":I
    .local v5, "childBottom":I
    if-eqz v3, :cond_7

    .line 237
    sub-int v8, v9, v1

    sub-int v15, v9, v6

    move/from16 v18, v3

    .end local v3    # "isRtl":Z
    .local v18, "isRtl":Z
    sub-int v3, v15, v12

    invoke-virtual {v10, v8, v7, v3, v5}, Landroid/view/View;->layout(IIII)V

    goto :goto_5

    .line 240
    .end local v18    # "isRtl":Z
    .restart local v3    # "isRtl":Z
    :cond_7
    move/from16 v18, v3

    .end local v3    # "isRtl":Z
    .restart local v18    # "isRtl":Z
    add-int v3, v6, v12

    invoke-virtual {v10, v3, v7, v1, v5}, Landroid/view/View;->layout(IIII)V

    .line 243
    :goto_5
    add-int v3, v12, v13

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v3, v8

    iget v8, v0, Lcom/google/android/material/internal/FlowLayout;->itemSpacing:I

    add-int/2addr v3, v8

    add-int/2addr v6, v3

    .line 207
    move v8, v5

    .end local v1    # "childEnd":I
    .end local v5    # "childBottom":I
    .end local v10    # "child":Landroid/view/View;
    .end local v11    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v12    # "startMargin":I
    .end local v13    # "endMargin":I
    .restart local v8    # "childBottom":I
    :goto_6
    add-int/lit8 v2, v2, 0x1

    move v1, v14

    move/from16 v5, v16

    move/from16 v3, v18

    goto/16 :goto_3

    .line 245
    .end local v2    # "i":I
    .end local v16    # "paddingEnd":I
    .end local v18    # "isRtl":Z
    .restart local v3    # "isRtl":Z
    .local v5, "paddingEnd":I
    :cond_8
    move/from16 v18, v3

    move/from16 v16, v5

    .end local v3    # "isRtl":Z
    .end local v5    # "paddingEnd":I
    .restart local v16    # "paddingEnd":I
    .restart local v18    # "isRtl":Z
    return-void
.end method

.method protected onMeasure(II)V
    .locals 21
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 107
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 108
    .local v1, "width":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 110
    .local v2, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 111
    .local v3, "height":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 113
    .local v4, "heightMode":I
    const/high16 v5, -0x80000000

    if-eq v2, v5, :cond_1

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v2, v5, :cond_0

    goto :goto_0

    :cond_0
    const v5, 0x7fffffff

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v1

    .line 118
    .local v5, "maxWidth":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingLeft()I

    move-result v6

    .line 119
    .local v6, "childLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingTop()I

    move-result v7

    .line 120
    .local v7, "childTop":I
    move v8, v7

    .line 121
    .local v8, "childBottom":I
    move v9, v6

    .line 122
    .local v9, "childRight":I
    const/4 v10, 0x0

    .line 123
    .local v10, "maxChildRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingRight()I

    move-result v11

    sub-int v11, v5, v11

    .line 124
    .local v11, "maxRight":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->getChildCount()I

    move-result v13

    if-ge v12, v13, :cond_7

    .line 125
    invoke-virtual {v0, v12}, Lcom/google/android/material/internal/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 127
    .local v13, "child":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-ne v14, v15, :cond_2

    .line 128
    nop

    .line 124
    move/from16 v14, p1

    move/from16 v15, p2

    move/from16 v16, v5

    goto/16 :goto_4

    .line 130
    :cond_2
    move/from16 v14, p1

    move/from16 v15, p2

    invoke-virtual {v0, v13, v14, v15}, Lcom/google/android/material/internal/FlowLayout;->measureChild(Landroid/view/View;II)V

    .line 132
    move/from16 v16, v5

    .end local v5    # "maxWidth":I
    .local v16, "maxWidth":I
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 133
    .local v5, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/16 v17, 0x0

    .line 134
    .local v17, "leftMargin":I
    const/16 v18, 0x0

    .line 135
    .local v18, "rightMargin":I
    move/from16 v19, v7

    .end local v7    # "childTop":I
    .local v19, "childTop":I
    instance-of v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v7, :cond_3

    .line 136
    move-object v7, v5

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 137
    .local v7, "marginLp":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v20, v5

    .end local v5    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .local v20, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v5, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int v17, v17, v5

    .line 138
    iget v5, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int v18, v18, v5

    goto :goto_3

    .line 141
    .end local v7    # "marginLp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v20    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v5    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    move-object/from16 v20, v5

    .end local v5    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v20    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :goto_3
    add-int v5, v6, v17

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v5, v7

    .line 146
    .end local v9    # "childRight":I
    .local v5, "childRight":I
    if-le v5, v11, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->isSingleLine()Z

    move-result v7

    if-nez v7, :cond_4

    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingLeft()I

    move-result v6

    .line 148
    iget v7, v0, Lcom/google/android/material/internal/FlowLayout;->lineSpacing:I

    add-int/2addr v7, v8

    .line 151
    move/from16 v19, v7

    :cond_4
    add-int v7, v6, v17

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v7, v9

    .line 152
    .end local v5    # "childRight":I
    .local v7, "childRight":I
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int v5, v19, v5

    .line 155
    .end local v8    # "childBottom":I
    .local v5, "childBottom":I
    if-le v7, v10, :cond_5

    .line 156
    move v10, v7

    .line 159
    :cond_5
    add-int v8, v17, v18

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, v0, Lcom/google/android/material/internal/FlowLayout;->itemSpacing:I

    add-int/2addr v8, v9

    add-int/2addr v6, v8

    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v12, v8, :cond_6

    .line 165
    add-int v10, v10, v18

    .line 124
    .end local v5    # "childBottom":I
    .end local v13    # "child":Landroid/view/View;
    .end local v17    # "leftMargin":I
    .end local v18    # "rightMargin":I
    .end local v19    # "childTop":I
    .end local v20    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .local v7, "childTop":I
    .restart local v8    # "childBottom":I
    .restart local v9    # "childRight":I
    :cond_6
    move v8, v5

    move v9, v7

    move/from16 v7, v19

    :goto_4
    add-int/lit8 v12, v12, 0x1

    move/from16 v5, v16

    goto/16 :goto_2

    .line 169
    .end local v12    # "i":I
    .end local v16    # "maxWidth":I
    .local v5, "maxWidth":I
    :cond_7
    move/from16 v14, p1

    move/from16 v15, p2

    move/from16 v16, v5

    move/from16 v19, v7

    .end local v5    # "maxWidth":I
    .end local v7    # "childTop":I
    .restart local v16    # "maxWidth":I
    .restart local v19    # "childTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingRight()I

    move-result v5

    add-int/2addr v10, v5

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->getPaddingBottom()I

    move-result v5

    add-int/2addr v8, v5

    .line 172
    invoke-static {v1, v2, v10}, Lcom/google/android/material/internal/FlowLayout;->getMeasuredDimension(III)I

    move-result v5

    .line 173
    .local v5, "finalWidth":I
    invoke-static {v3, v4, v8}, Lcom/google/android/material/internal/FlowLayout;->getMeasuredDimension(III)I

    move-result v7

    .line 174
    .local v7, "finalHeight":I
    invoke-virtual {v0, v5, v7}, Lcom/google/android/material/internal/FlowLayout;->setMeasuredDimension(II)V

    .line 175
    return-void
.end method

.method protected setItemSpacing(I)V
    .locals 0
    .param p1, "itemSpacing"    # I

    .line 92
    iput p1, p0, Lcom/google/android/material/internal/FlowLayout;->itemSpacing:I

    .line 93
    return-void
.end method

.method protected setLineSpacing(I)V
    .locals 0
    .param p1, "lineSpacing"    # I

    .line 84
    iput p1, p0, Lcom/google/android/material/internal/FlowLayout;->lineSpacing:I

    .line 85
    return-void
.end method

.method public setSingleLine(Z)V
    .locals 0
    .param p1, "singleLine"    # Z

    .line 102
    iput-boolean p1, p0, Lcom/google/android/material/internal/FlowLayout;->singleLine:Z

    .line 103
    return-void
.end method
