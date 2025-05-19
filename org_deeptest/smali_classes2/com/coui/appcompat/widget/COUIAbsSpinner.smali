.class abstract Lcom/coui/appcompat/widget/COUIAbsSpinner;
.super Lcom/coui/appcompat/widget/COUIAdapterView;
.source "COUIAbsSpinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/COUIAbsSpinner$RecycleBin;,
        Lcom/coui/appcompat/widget/COUIAbsSpinner$SavedState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coui/appcompat/widget/COUIAdapterView<",
        "Landroid/widget/SpinnerAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field mAdapter:Landroid/widget/SpinnerAdapter;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field mHeightMeasureSpec:I

.field final mRecycler:Lcom/coui/appcompat/widget/COUIAbsSpinner$RecycleBin;

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field final mSpinnerPadding:Landroid/graphics/Rect;

.field private mTouchFrame:Landroid/graphics/Rect;

.field mWidthMeasureSpec:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 55
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIAdapterView;-><init>(Landroid/content/Context;)V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mSelectionLeftPadding:I

    .line 43
    iput v0, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mSelectionTopPadding:I

    .line 44
    iput v0, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mSelectionRightPadding:I

    .line 45
    iput v0, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mSelectionBottomPadding:I

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 48
    new-instance v0, Lcom/coui/appcompat/widget/COUIAbsSpinner$RecycleBin;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/widget/COUIAbsSpinner$RecycleBin;-><init>(Lcom/coui/appcompat/widget/COUIAbsSpinner;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mRecycler:Lcom/coui/appcompat/widget/COUIAbsSpinner$RecycleBin;

    .line 56
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIAbsSpinner;->initAbsSpinner()V

    .line 57
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/COUIAbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/widget/COUIAdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mSelectionLeftPadding:I

    .line 43
    iput v0, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mSelectionTopPadding:I

    .line 44
    iput v0, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mSelectionRightPadding:I

    .line 45
    iput v0, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mSelectionBottomPadding:I

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 48
    new-instance v0, Lcom/coui/appcompat/widget/COUIAbsSpinner$RecycleBin;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/widget/COUIAbsSpinner$RecycleBin;-><init>(Lcom/coui/appcompat/widget/COUIAbsSpinner;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mRecycler:Lcom/coui/appcompat/widget/COUIAbsSpinner$RecycleBin;

    .line 65
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIAbsSpinner;->initAbsSpinner()V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/widget/COUIAbsSpinner;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIAbsSpinner;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/widget/COUIAbsSpinner;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method private initAbsSpinner()V
    .locals 1

    .line 72
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIAbsSpinner;->setFocusable(Z)V

    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIAbsSpinner;->setWillNotDraw(Z)V

    .line 74
    return-void
.end method


# virtual methods
.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .line 230
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/SpinnerAdapter;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 221
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method getChildWidth(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 225
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 314
    iget v0, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mItemCount:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2

    .line 287
    iget v0, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 288
    iget v0, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mSelectedPosition:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIAbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 290
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method abstract layout(IZ)V
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 148
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 152
    .local v0, "widthMode":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAbsSpinner;->getPaddingLeft()I

    move-result v1

    .line 153
    .local v1, "paddingLeft":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAbsSpinner;->getPaddingTop()I

    move-result v2

    .line 154
    .local v2, "paddingTop":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAbsSpinner;->getPaddingRight()I

    move-result v3

    .line 155
    .local v3, "paddingRight":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAbsSpinner;->getPaddingBottom()I

    move-result v4

    .line 157
    .local v4, "paddingBottom":I
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v6, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mSelectionLeftPadding:I

    if-le v1, v6, :cond_0

    move v6, v1

    goto :goto_0

    :cond_0
    iget v6, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mSelectionLeftPadding:I

    :goto_0
    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 159
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v6, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mSelectionTopPadding:I

    if-le v2, v6, :cond_1

    move v6, v2

    goto :goto_1

    :cond_1
    iget v6, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mSelectionTopPadding:I

    :goto_1
    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 161
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v6, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mSelectionRightPadding:I

    if-le v3, v6, :cond_2

    move v6, v3

    goto :goto_2

    :cond_2
    iget v6, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mSelectionRightPadding:I

    :goto_2
    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 163
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v6, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mSelectionBottomPadding:I

    if-le v4, v6, :cond_3

    move v6, v4

    goto :goto_3

    :cond_3
    iget v6, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mSelectionBottomPadding:I

    :goto_3
    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 166
    iget-boolean v5, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mDataChanged:Z

    if-eqz v5, :cond_4

    .line 167
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAbsSpinner;->handleDataChanged()V

    .line 170
    :cond_4
    const/4 v5, 0x0

    .line 171
    .local v5, "preferredHeight":I
    const/4 v6, 0x0

    .line 172
    .local v6, "preferredWidth":I
    const/4 v7, 0x1

    .line 174
    .local v7, "needsMeasuring":Z
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAbsSpinner;->getSelectedItemPosition()I

    move-result v8

    .line 175
    .local v8, "selectedPosition":I
    const/4 v9, 0x0

    if-ltz v8, :cond_7

    iget-object v10, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v10}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v10

    if-ge v8, v10, :cond_7

    .line 177
    iget-object v10, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mRecycler:Lcom/coui/appcompat/widget/COUIAbsSpinner$RecycleBin;

    invoke-virtual {v10, v8}, Lcom/coui/appcompat/widget/COUIAbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v10

    .line 178
    .local v10, "view":Landroid/view/View;
    if-nez v10, :cond_5

    .line 180
    iget-object v11, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v12, 0x0

    invoke-interface {v11, v8, v12, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 183
    :cond_5
    if-eqz v10, :cond_7

    .line 185
    iget-object v11, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mRecycler:Lcom/coui/appcompat/widget/COUIAbsSpinner$RecycleBin;

    invoke-virtual {v11, v8, v10}, Lcom/coui/appcompat/widget/COUIAbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 187
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    if-nez v11, :cond_6

    .line 188
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mBlockLayoutRequests:Z

    .line 189
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAbsSpinner;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    iput-boolean v9, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mBlockLayoutRequests:Z

    .line 192
    :cond_6
    invoke-virtual {p0, v10, p1, p2}, Lcom/coui/appcompat/widget/COUIAbsSpinner;->measureChild(Landroid/view/View;II)V

    .line 194
    invoke-virtual {p0, v10}, Lcom/coui/appcompat/widget/COUIAbsSpinner;->getChildHeight(Landroid/view/View;)I

    move-result v11

    iget-object v12, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v12

    iget-object v12, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    add-int v5, v11, v12

    .line 195
    invoke-virtual {p0, v10}, Lcom/coui/appcompat/widget/COUIAbsSpinner;->getChildWidth(Landroid/view/View;)I

    move-result v11

    iget-object v12, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v12

    iget-object v12, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    add-int v6, v11, v12

    .line 197
    const/4 v7, 0x0

    .line 201
    .end local v10    # "view":Landroid/view/View;
    :cond_7
    if-eqz v7, :cond_8

    .line 203
    iget-object v10, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int v5, v10, v11

    .line 204
    if-nez v0, :cond_8

    .line 205
    iget-object v10, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int v6, v10, v11

    .line 209
    :cond_8
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAbsSpinner;->getSuggestedMinimumHeight()I

    move-result v10

    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 210
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAbsSpinner;->getSuggestedMinimumWidth()I

    move-result v10

    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 212
    invoke-static {v5, p2, v9}, Landroidx/core/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v10

    .line 213
    .local v10, "heightSize":I
    invoke-static {v6, p1, v9}, Landroidx/core/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v9

    .line 215
    .local v9, "widthSize":I
    invoke-virtual {p0, v9, v10}, Lcom/coui/appcompat/widget/COUIAbsSpinner;->setMeasuredDimension(II)V

    .line 216
    iput p2, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mHeightMeasureSpec:I

    .line 217
    iput p1, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mWidthMeasureSpec:I

    .line 218
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 411
    move-object v0, p1

    check-cast v0, Lcom/coui/appcompat/widget/COUIAbsSpinner$SavedState;

    .line 413
    .local v0, "ss":Lcom/coui/appcompat/widget/COUIAbsSpinner$SavedState;
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIAbsSpinner$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/coui/appcompat/widget/COUIAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 415
    iget-wide v1, v0, Lcom/coui/appcompat/widget/COUIAbsSpinner$SavedState;->selectedId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 416
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mDataChanged:Z

    .line 417
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mNeedSync:Z

    .line 418
    iget-wide v1, v0, Lcom/coui/appcompat/widget/COUIAbsSpinner$SavedState;->selectedId:J

    iput-wide v1, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mSyncRowId:J

    .line 419
    iget v1, v0, Lcom/coui/appcompat/widget/COUIAbsSpinner$SavedState;->position:I

    iput v1, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mSyncPosition:I

    .line 420
    const/4 v1, 0x0

    iput v1, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mSyncMode:I

    .line 421
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAbsSpinner;->requestLayout()V

    .line 423
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .line 398
    invoke-super {p0}, Lcom/coui/appcompat/widget/COUIAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 399
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/coui/appcompat/widget/COUIAbsSpinner$SavedState;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/widget/COUIAbsSpinner$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 400
    .local v1, "ss":Lcom/coui/appcompat/widget/COUIAbsSpinner$SavedState;
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAbsSpinner;->getSelectedItemId()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/coui/appcompat/widget/COUIAbsSpinner$SavedState;->selectedId:J

    .line 401
    iget-wide v2, v1, Lcom/coui/appcompat/widget/COUIAbsSpinner$SavedState;->selectedId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 402
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAbsSpinner;->getSelectedItemPosition()I

    move-result v2

    iput v2, v1, Lcom/coui/appcompat/widget/COUIAbsSpinner$SavedState;->position:I

    goto :goto_0

    .line 404
    :cond_0
    const/4 v2, -0x1

    iput v2, v1, Lcom/coui/appcompat/widget/COUIAbsSpinner$SavedState;->position:I

    .line 406
    :goto_0
    return-object v1
.end method

.method public pointToPosition(II)I
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 326
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 327
    .local v0, "frame":Landroid/graphics/Rect;
    if-nez v0, :cond_0

    .line 328
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 329
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 332
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAbsSpinner;->getChildCount()I

    move-result v1

    .line 333
    .local v1, "count":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 334
    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/COUIAbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 335
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 336
    invoke-virtual {v3, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 337
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 338
    iget v4, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mFirstPosition:I

    add-int/2addr v4, v2

    return v4

    .line 333
    .end local v3    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 342
    .end local v2    # "i":I
    :cond_2
    const/4 v2, -0x1

    return v2
.end method

.method recycleAllViews()V
    .locals 6

    .line 236
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAbsSpinner;->getChildCount()I

    move-result v0

    .line 237
    .local v0, "childCount":I
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mRecycler:Lcom/coui/appcompat/widget/COUIAbsSpinner$RecycleBin;

    .line 238
    .local v1, "recycleBin":Lcom/coui/appcompat/widget/COUIAbsSpinner$RecycleBin;
    iget v2, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mFirstPosition:I

    .line 241
    .local v2, "position":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 242
    invoke-virtual {p0, v3}, Lcom/coui/appcompat/widget/COUIAbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 243
    .local v4, "v":Landroid/view/View;
    add-int v5, v2, v3

    .line 244
    .local v5, "index":I
    invoke-virtual {v1, v5, v4}, Lcom/coui/appcompat/widget/COUIAbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 241
    .end local v4    # "v":Landroid/view/View;
    .end local v5    # "index":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 246
    .end local v3    # "i":I
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 302
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    .line 303
    invoke-super {p0}, Lcom/coui/appcompat/widget/COUIAdapterView;->requestLayout()V

    .line 305
    :cond_0
    return-void
.end method

.method resetList()V
    .locals 3

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mDataChanged:Z

    .line 127
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mNeedSync:Z

    .line 129
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAbsSpinner;->removeAllViewsInLayout()V

    .line 130
    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mOldSelectedPosition:I

    .line 131
    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mOldSelectedRowId:J

    .line 133
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIAbsSpinner;->setSelectedPositionInt(I)V

    .line 134
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIAbsSpinner;->setNextSelectedPositionInt(I)V

    .line 135
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAbsSpinner;->invalidate()V

    .line 136
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 36
    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUIAbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 3
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;

    .line 84
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 86
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAbsSpinner;->resetList()V

    .line 89
    :cond_0
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 91
    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mOldSelectedPosition:I

    .line 92
    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mOldSelectedRowId:J

    .line 94
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_3

    .line 95
    iget v1, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mItemCount:I

    iput v1, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mOldItemCount:I

    .line 96
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mItemCount:I

    .line 97
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAbsSpinner;->checkFocus()V

    .line 99
    new-instance v1, Lcom/coui/appcompat/widget/COUIAdapterView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/COUIAdapterView$AdapterDataSetObserver;-><init>(Lcom/coui/appcompat/widget/COUIAdapterView;)V

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 100
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 102
    iget v1, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mItemCount:I

    if-lez v1, :cond_1

    const/4 v0, 0x0

    nop

    .line 104
    .local v0, "position":I
    :cond_1
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIAbsSpinner;->setSelectedPositionInt(I)V

    .line 105
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIAbsSpinner;->setNextSelectedPositionInt(I)V

    .line 107
    iget v1, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mItemCount:I

    if-nez v1, :cond_2

    .line 109
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAbsSpinner;->checkSelectionChanged()V

    .line 112
    .end local v0    # "position":I
    :cond_2
    goto :goto_0

    .line 113
    :cond_3
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAbsSpinner;->checkFocus()V

    .line 114
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAbsSpinner;->resetList()V

    .line 116
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAbsSpinner;->checkSelectionChanged()V

    .line 119
    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAbsSpinner;->requestLayout()V

    .line 120
    return-void
.end method

.method public setSelection(I)V
    .locals 0
    .param p1, "position"    # I

    .line 260
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUIAbsSpinner;->setNextSelectedPositionInt(I)V

    .line 261
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAbsSpinner;->requestLayout()V

    .line 262
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAbsSpinner;->invalidate()V

    .line 263
    return-void
.end method

.method public setSelection(IZ)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "animate"    # Z

    .line 253
    const/4 v0, 0x1

    if-eqz p2, :cond_0

    iget v1, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mFirstPosition:I

    if-gt v1, p1, :cond_0

    iget v1, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mFirstPosition:I

    .line 254
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIAbsSpinner;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v1, v0

    if-gt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 255
    .local v0, "shouldAnimate":Z
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/widget/COUIAbsSpinner;->setSelectionInt(IZ)V

    .line 256
    return-void
.end method

.method setSelectionInt(IZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "animate"    # Z

    .line 274
    iget v0, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mOldSelectedPosition:I

    if-eq p1, v0, :cond_0

    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mBlockLayoutRequests:Z

    .line 276
    iget v0, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mSelectedPosition:I

    sub-int v0, p1, v0

    .line 277
    .local v0, "delta":I
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUIAbsSpinner;->setNextSelectedPositionInt(I)V

    .line 278
    invoke-virtual {p0, v0, p2}, Lcom/coui/appcompat/widget/COUIAbsSpinner;->layout(IZ)V

    .line 279
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/coui/appcompat/widget/COUIAbsSpinner;->mBlockLayoutRequests:Z

    .line 281
    .end local v0    # "delta":I
    :cond_0
    return-void
.end method
