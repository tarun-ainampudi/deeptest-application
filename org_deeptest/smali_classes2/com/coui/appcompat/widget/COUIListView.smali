.class public Lcom/coui/appcompat/widget/COUIListView;
.super Landroid/widget/ListView;
.source "COUIListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/COUIListView$ScrollMultiChoiceListener;
    }
.end annotation


# static fields
.field private static final INVALID_SCROLL_CHOICE_POSITION:I = -0x2

.field private static final SCROLL_CHOICE_SCROLL_DELAY:J = 0x32L

.field private static final TAG:Ljava/lang/String; = "COUIListView"


# instance fields
.field private mCheckItemId:I

.field private mDelayedScroll:Ljava/lang/Runnable;

.field private mFlag:Z

.field private mLastPosition:I

.field private mLastSite:I

.field private mLasterPosition:I

.field private mLeftOffset:I

.field private mMultiChoice:Z

.field private mRightOffset:I

.field private mScrollMultiChoiceListener:Lcom/coui/appcompat/widget/COUIListView$ScrollMultiChoiceListener;

.field private mUpScroll:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUIListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 77
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/COUIListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIListView;->mMultiChoice:Z

    .line 45
    const/4 v1, -0x2

    iput v1, p0, Lcom/coui/appcompat/widget/COUIListView;->mLastPosition:I

    .line 46
    iput v1, p0, Lcom/coui/appcompat/widget/COUIListView;->mLasterPosition:I

    .line 47
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/coui/appcompat/widget/COUIListView;->mFlag:Z

    .line 50
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIListView;->mUpScroll:Z

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/widget/COUIListView;->mLastSite:I

    .line 52
    iput v0, p0, Lcom/coui/appcompat/widget/COUIListView;->mCheckItemId:I

    .line 55
    new-instance v0, Lcom/coui/appcompat/widget/COUIListView$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/widget/COUIListView$1;-><init>(Lcom/coui/appcompat/widget/COUIListView;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIListView;->mDelayedScroll:Ljava/lang/Runnable;

    .line 93
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_listview_scrollchoice_left_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIListView;->mLeftOffset:I

    .line 94
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_listview_scrollchoice_right_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIListView;->mRightOffset:I

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/widget/COUIListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIListView;

    .line 37
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIListView;->mUpScroll:Z

    return v0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/widget/COUIListView;II)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/widget/COUIListView;->alignBottomChild(II)V

    return-void
.end method

.method private alignBottomChild(II)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .line 126
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIListView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIListView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIListView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 128
    .local v0, "positionTop":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIListView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/COUIListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 129
    .local v1, "childHeight":I
    sub-int v2, v0, v1

    add-int/2addr v2, p2

    invoke-virtual {p0, p1, v2}, Lcom/coui/appcompat/widget/COUIListView;->setSelectionFromTop(II)V

    .line 130
    return-void
.end method

.method private isInScrollRange(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 140
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 141
    .local v0, "m":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 142
    .local v1, "n":I
    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/widget/COUIListView;->pointToPosition(II)I

    move-result v2

    .line 143
    .local v2, "curPosition":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    .line 144
    .local v3, "xRaw":I
    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 145
    .local v4, "location":[I
    const/4 v5, 0x0

    .line 148
    .local v5, "checkBox":Landroid/widget/CheckBox;
    const/4 v6, 0x0

    :try_start_0
    iget v7, p0, Lcom/coui/appcompat/widget/COUIListView;->mCheckItemId:I

    if-lez v7, :cond_2

    .line 149
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v7, v2, v7

    invoke-virtual {p0, v7}, Lcom/coui/appcompat/widget/COUIListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    iget v8, p0, Lcom/coui/appcompat/widget/COUIListView;->mCheckItemId:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    move-object v5, v7

    .line 150
    invoke-virtual {v5, v4}, Landroid/widget/CheckBox;->getLocationOnScreen([I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    nop

    .line 162
    aget v7, v4, v6

    iget v8, p0, Lcom/coui/appcompat/widget/COUIListView;->mLeftOffset:I

    sub-int/2addr v7, v8

    .line 163
    .local v7, "mLeftBorder":I
    aget v8, v4, v6

    iget v9, p0, Lcom/coui/appcompat/widget/COUIListView;->mRightOffset:I

    add-int/2addr v8, v9

    .line 165
    .local v8, "mRightBorder":I
    invoke-virtual {v5}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v9

    if-nez v9, :cond_0

    if-le v3, v7, :cond_0

    if-ge v3, v8, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIListView;->getHeaderViewsCount()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    if-le v2, v9, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIListView;->getCount()I

    move-result v9

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIListView;->getFooterViewsCount()I

    move-result v11

    sub-int/2addr v9, v11

    if-ge v2, v9, :cond_0

    .line 167
    iput-boolean v10, p0, Lcom/coui/appcompat/widget/COUIListView;->mMultiChoice:Z

    .line 168
    return v10

    .line 170
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    if-nez v9, :cond_1

    .line 171
    iput-boolean v6, p0, Lcom/coui/appcompat/widget/COUIListView;->mMultiChoice:Z

    .line 173
    :cond_1
    return v6

    .line 152
    .end local v7    # "mLeftBorder":I
    .end local v8    # "mRightBorder":I
    :cond_2
    :try_start_1
    iput-boolean v6, p0, Lcom/coui/appcompat/widget/COUIListView;->mMultiChoice:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 153
    return v6

    .line 156
    :catch_0
    move-exception v7

    .line 157
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    if-nez v8, :cond_3

    .line 158
    iput-boolean v6, p0, Lcom/coui/appcompat/widget/COUIListView;->mMultiChoice:Z

    .line 160
    :cond_3
    return v6
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 109
    .local v0, "action":I
    and-int/lit16 v1, v0, 0xff

    if-nez v1, :cond_0

    .line 110
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIListView;->isInScrollRange(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    const/4 v1, 0x1

    return v1

    .line 114
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 179
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIListView;->mMultiChoice:Z

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIListView;->isInScrollRange(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 180
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 181
    .local v0, "m":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    .line 182
    .local v5, "n":I
    invoke-virtual {p0, v0, v5}, Lcom/coui/appcompat/widget/COUIListView;->pointToPosition(II)I

    move-result v6

    .line 183
    .local v6, "curPosition":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .end local v0    # "m":I
    .end local v5    # "n":I
    .end local v6    # "curPosition":I
    goto/16 :goto_1

    .line 186
    .restart local v0    # "m":I
    .restart local v5    # "n":I
    .restart local v6    # "curPosition":I
    :pswitch_0
    iput v3, p0, Lcom/coui/appcompat/widget/COUIListView;->mLastPosition:I

    .line 187
    iput v3, p0, Lcom/coui/appcompat/widget/COUIListView;->mLasterPosition:I

    .line 188
    goto/16 :goto_1

    .line 191
    :pswitch_1
    iput-boolean v4, p0, Lcom/coui/appcompat/widget/COUIListView;->mFlag:Z

    .line 194
    :pswitch_2
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIListView;->getCount()I

    move-result v7

    sub-int/2addr v7, v4

    if-ne v6, v7, :cond_0

    .line 195
    invoke-direct {p0, v6, v2}, Lcom/coui/appcompat/widget/COUIListView;->alignBottomChild(II)V

    .line 197
    :cond_0
    iget-boolean v7, p0, Lcom/coui/appcompat/widget/COUIListView;->mFlag:Z

    if-eqz v7, :cond_4

    iget v7, p0, Lcom/coui/appcompat/widget/COUIListView;->mLastPosition:I

    if-eq v7, v6, :cond_4

    if-eq v6, v1, :cond_4

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIListView;->mScrollMultiChoiceListener:Lcom/coui/appcompat/widget/COUIListView$ScrollMultiChoiceListener;

    if-eqz v1, :cond_4

    .line 198
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIListView;->mDelayedScroll:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/COUIListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 214
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIListView;->mScrollMultiChoiceListener:Lcom/coui/appcompat/widget/COUIListView$ScrollMultiChoiceListener;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v7, v6, v7

    invoke-virtual {p0, v7}, Lcom/coui/appcompat/widget/COUIListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Lcom/coui/appcompat/widget/COUIListView$ScrollMultiChoiceListener;->onItemTouch(ILandroid/view/View;)V

    .line 215
    iget v1, p0, Lcom/coui/appcompat/widget/COUIListView;->mLastPosition:I

    if-eq v1, v3, :cond_2

    .line 219
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIListView;->getFirstVisiblePosition()I

    move-result v1

    const-wide/16 v7, 0x32

    if-ne v6, v1, :cond_1

    if-lez v6, :cond_1

    .line 220
    iput-boolean v4, p0, Lcom/coui/appcompat/widget/COUIListView;->mUpScroll:Z

    .line 221
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIListView;->mDelayedScroll:Ljava/lang/Runnable;

    invoke-virtual {p0, v1, v7, v8}, Lcom/coui/appcompat/widget/COUIListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 222
    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIListView;->getLastVisiblePosition()I

    move-result v1

    if-ne v6, v1, :cond_2

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIListView;->getCount()I

    move-result v1

    if-ge v6, v1, :cond_2

    .line 223
    iput-boolean v2, p0, Lcom/coui/appcompat/widget/COUIListView;->mUpScroll:Z

    .line 224
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIListView;->mDelayedScroll:Ljava/lang/Runnable;

    invoke-virtual {p0, v1, v7, v8}, Lcom/coui/appcompat/widget/COUIListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 227
    :cond_2
    :goto_0
    iget v1, p0, Lcom/coui/appcompat/widget/COUIListView;->mLasterPosition:I

    if-ne v1, v6, :cond_3

    .line 228
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIListView;->mScrollMultiChoiceListener:Lcom/coui/appcompat/widget/COUIListView$ScrollMultiChoiceListener;

    iget v2, p0, Lcom/coui/appcompat/widget/COUIListView;->mLastPosition:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUIListView;->mLastPosition:I

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int/2addr v3, v7

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/widget/COUIListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/coui/appcompat/widget/COUIListView$ScrollMultiChoiceListener;->onItemTouch(ILandroid/view/View;)V

    .line 230
    :cond_3
    iget v1, p0, Lcom/coui/appcompat/widget/COUIListView;->mLastPosition:I

    iput v1, p0, Lcom/coui/appcompat/widget/COUIListView;->mLasterPosition:I

    .line 231
    iput v6, p0, Lcom/coui/appcompat/widget/COUIListView;->mLastPosition:I

    .line 233
    :cond_4
    return v4

    .line 237
    .end local v0    # "m":I
    .end local v5    # "n":I
    .end local v6    # "curPosition":I
    :cond_5
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 239
    .local v0, "action":I
    and-int/lit16 v5, v0, 0xff

    if-eq v5, v4, :cond_6

    const/4 v6, 0x3

    if-eq v5, v6, :cond_6

    goto :goto_2

    .line 243
    :cond_6
    iput-boolean v4, p0, Lcom/coui/appcompat/widget/COUIListView;->mUpScroll:Z

    .line 244
    iput v3, p0, Lcom/coui/appcompat/widget/COUIListView;->mLastPosition:I

    .line 245
    iput v3, p0, Lcom/coui/appcompat/widget/COUIListView;->mLasterPosition:I

    .line 246
    iput-boolean v2, p0, Lcom/coui/appcompat/widget/COUIListView;->mFlag:Z

    .line 247
    iput-boolean v4, p0, Lcom/coui/appcompat/widget/COUIListView;->mMultiChoice:Z

    .line 248
    iput v1, p0, Lcom/coui/appcompat/widget/COUIListView;->mLastSite:I

    .line 251
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setCheckItemId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 103
    iput p1, p0, Lcom/coui/appcompat/widget/COUIListView;->mCheckItemId:I

    .line 104
    return-void
.end method

.method public setScrollMultiChoiceListener(Lcom/coui/appcompat/widget/COUIListView$ScrollMultiChoiceListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/coui/appcompat/widget/COUIListView$ScrollMultiChoiceListener;

    .line 260
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIListView;->mScrollMultiChoiceListener:Lcom/coui/appcompat/widget/COUIListView$ScrollMultiChoiceListener;

    .line 261
    return-void
.end method
