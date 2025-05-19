.class public Lcom/coui/appcompat/widget/COUIFlingLocateHelper;
.super Ljava/lang/Object;
.source "COUIFlingLocateHelper.java"


# static fields
.field private static final CENTER_ALIGN:I = 0x2

.field private static final INVALID_ALIGN:I = 0x0

.field private static final INVALID_POSITION:I = -0x1

.field private static final START_ALIGN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "COUIFlingLocateHelper"


# instance fields
.field private mAlignScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private mContext:Landroid/content/Context;

.field private mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

.field private mHorizontalItemAlign:I

.field private mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field private mRecyclerView:Landroidx/recyclerview/widget/COUIRecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->mHorizontalItemAlign:I

    .line 52
    new-instance v0, Lcom/coui/appcompat/widget/COUIFlingLocateHelper$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/widget/COUIFlingLocateHelper$1;-><init>(Lcom/coui/appcompat/widget/COUIFlingLocateHelper;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->mAlignScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/widget/COUIFlingLocateHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIFlingLocateHelper;

    .line 36
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->snapToTargetExistingView()V

    return-void
.end method

.method private computeDistancePerChild(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)F
    .locals 10
    .param p1, "layoutManager"    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .param p2, "helper"    # Landroidx/recyclerview/widget/OrientationHelper;

    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, "minPosView":Landroid/view/View;
    const/4 v1, 0x0

    .line 164
    .local v1, "maxPosView":Landroid/view/View;
    const v2, 0x7fffffff

    .line 165
    .local v2, "minPos":I
    const/high16 v3, -0x80000000

    .line 166
    .local v3, "maxPos":I
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v4

    .line 167
    .local v4, "childCount":I
    const/high16 v5, 0x3f800000    # 1.0f

    if-nez v4, :cond_0

    .line 168
    return v5

    .line 171
    :cond_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v4, :cond_4

    .line 172
    invoke-virtual {p1, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 173
    .local v7, "child":Landroid/view/View;
    invoke-virtual {p1, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v8

    .line 174
    .local v8, "pos":I
    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-eq v8, v9, :cond_3

    if-nez v8, :cond_1

    .line 175
    goto :goto_1

    .line 177
    :cond_1
    if-ge v8, v2, :cond_2

    .line 178
    move v2, v8

    .line 179
    move-object v0, v7

    .line 181
    :cond_2
    if-le v8, v3, :cond_3

    .line 182
    move v3, v8

    .line 183
    move-object v1, v7

    .line 171
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "pos":I
    :cond_3
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 186
    .end local v6    # "i":I
    :cond_4
    if-eqz v0, :cond_7

    if-nez v1, :cond_5

    goto :goto_2

    .line 190
    :cond_5
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    .line 191
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    .line 190
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 192
    .local v6, "start":I
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v7

    .line 193
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v8

    .line 192
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 194
    .local v7, "end":I
    sub-int v8, v7, v6

    .line 195
    .local v8, "distance":I
    if-nez v8, :cond_6

    .line 196
    return v5

    .line 198
    :cond_6
    int-to-float v9, v8

    mul-float/2addr v9, v5

    sub-int v5, v3, v2

    add-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    div-float/2addr v9, v5

    return v9

    .line 187
    .end local v6    # "start":I
    .end local v7    # "end":I
    .end local v8    # "distance":I
    :cond_7
    :goto_2
    return v5
.end method

.method private findCenterView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)Landroid/view/View;
    .locals 8
    .param p1, "layoutManager"    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .param p2, "helper"    # Landroidx/recyclerview/widget/OrientationHelper;

    .line 310
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    .line 311
    .local v0, "childCount":I
    if-nez v0, :cond_0

    .line 312
    const/4 v1, 0x0

    return-object v1

    .line 315
    :cond_0
    const/4 v1, 0x0

    .line 316
    .local v1, "closestChild":Landroid/view/View;
    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 317
    .local v2, "center":I
    const v3, 0x7fffffff

    .line 319
    .local v3, "absClosest":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_2

    .line 320
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 321
    .local v5, "child":Landroid/view/View;
    invoke-virtual {p2, v5}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    .line 322
    invoke-virtual {p2, v5}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    .line 323
    .local v6, "childCenter":I
    sub-int v7, v6, v2

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 326
    .local v7, "absDistance":I
    if-ge v7, v3, :cond_1

    .line 327
    move v3, v7

    .line 328
    move-object v1, v5

    .line 319
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childCenter":I
    .end local v7    # "absDistance":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 331
    .end local v4    # "i":I
    :cond_2
    return-object v1
.end method

.method private findStartView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)Landroid/view/View;
    .locals 8
    .param p1, "layoutManager"    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .param p2, "helper"    # Landroidx/recyclerview/widget/OrientationHelper;

    .line 264
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    .line 265
    .local v0, "childCount":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 266
    return-object v1

    .line 269
    :cond_0
    instance-of v2, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 270
    move-object v2, p1

    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ne v2, v4, :cond_1

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_0
    move v2, v5

    .line 271
    .local v2, "isLastItem":Z
    if-eqz v2, :cond_2

    .line 272
    return-object v1

    .line 275
    .end local v2    # "isLastItem":Z
    :cond_2
    const/4 v1, 0x0

    .line 277
    .local v1, "closestChild":Landroid/view/View;
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->isRtlMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 278
    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    goto :goto_1

    .line 280
    :cond_3
    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    .line 282
    .local v2, "start":I
    :goto_1
    const v4, 0x7fffffff

    .line 284
    .local v4, "absClosest":I
    nop

    .local v3, "i":I
    :goto_2
    if-ge v3, v0, :cond_6

    .line 285
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 286
    .local v5, "child":Landroid/view/View;
    iget-object v6, p0, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->isRtlMode(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p2, v5}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    goto :goto_3

    :cond_4
    invoke-virtual {p2, v5}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    .line 287
    .local v6, "childStart":I
    :goto_3
    sub-int v7, v6, v2

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 290
    .local v7, "absDistance":I
    if-ge v7, v4, :cond_5

    .line 291
    move v4, v7

    .line 292
    move-object v1, v5

    .line 284
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childStart":I
    .end local v7    # "absDistance":I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 295
    .end local v3    # "i":I
    :cond_6
    return-object v1
.end method

.method private getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;
    .locals 1
    .param p1, "manager"    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 233
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 234
    :cond_0
    invoke-static {p1}, Landroidx/recyclerview/widget/OrientationHelper;->createHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    return-object v0
.end method

.method private getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->mRecyclerView:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->mRecyclerView:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    return-object v0
.end method

.method private isRtlMode(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 424
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 425
    return v0

    .line 427
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-le v1, v2, :cond_2

    .line 428
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    move v0, v2

    nop

    :cond_1
    return v0

    .line 430
    :cond_2
    return v0
.end method

.method private snapToTargetExistingView()V
    .locals 11

    .line 109
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 110
    .local v0, "layoutManager":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    if-nez v0, :cond_0

    .line 111
    return-void

    .line 113
    :cond_0
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v1

    .line 114
    .local v1, "snapView":Landroid/view/View;
    if-nez v1, :cond_1

    .line 115
    return-void

    .line 117
    :cond_1
    const/4 v2, 0x0

    .line 118
    .local v2, "endvalue":I
    iget v3, p0, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->mHorizontalItemAlign:I

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-ne v3, v7, :cond_7

    .line 119
    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v8

    div-int/2addr v8, v7

    add-int/2addr v3, v8

    .line 120
    .local v3, "containerCenter":I
    const/4 v8, 0x0

    .local v8, "minPos":I
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v9

    sub-int/2addr v9, v6

    .line 121
    .local v9, "maxPos":I
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    if-ne v6, v8, :cond_3

    .line 122
    iget-object v6, p0, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->isRtlMode(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v6

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v10

    div-int/2addr v10, v7

    sub-int/2addr v6, v10

    goto :goto_0

    .line 123
    :cond_2
    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v6

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v10

    div-int/2addr v10, v7

    add-int/2addr v6, v10

    :goto_0
    move v3, v6

    .line 125
    :cond_3
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    if-ne v6, v9, :cond_5

    .line 126
    iget-object v6, p0, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->isRtlMode(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v6

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v10

    div-int/2addr v10, v7

    add-int/2addr v6, v10

    goto :goto_1

    .line 127
    :cond_4
    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v6

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v10

    div-int/2addr v10, v7

    sub-int/2addr v6, v10

    :goto_1
    move v3, v6

    .line 130
    :cond_5
    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    .line 131
    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v10

    div-int/2addr v10, v7

    add-int/2addr v6, v10

    .line 132
    .local v6, "targetCenter":I
    sub-int v2, v6, v3

    .line 133
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    cmpl-float v5, v7, v5

    if-lez v5, :cond_6

    .line 134
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->mRecyclerView:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v5, v2, v4}, Landroidx/recyclerview/widget/COUIRecyclerView;->smoothScrollBy(II)V

    .line 136
    .end local v3    # "containerCenter":I
    .end local v6    # "targetCenter":I
    .end local v8    # "minPos":I
    .end local v9    # "maxPos":I
    :cond_6
    goto :goto_4

    :cond_7
    iget v3, p0, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->mHorizontalItemAlign:I

    if-ne v3, v6, :cond_9

    .line 137
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->isRtlMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 138
    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v6

    sub-int/2addr v3, v6

    .line 142
    :goto_2
    move v2, v3

    goto :goto_3

    .line 140
    :cond_8
    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v6

    sub-int/2addr v3, v6

    goto :goto_2

    .line 142
    :goto_3
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v3, v5

    if-lez v3, :cond_9

    .line 143
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->mRecyclerView:Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v3, v2, v4}, Landroidx/recyclerview/widget/COUIRecyclerView;->smoothScrollBy(II)V

    .line 146
    :cond_9
    :goto_4
    return-void
.end method


# virtual methods
.method public attachToRecyclerView(Landroidx/recyclerview/widget/COUIRecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/COUIRecyclerView;

    .line 77
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->mRecyclerView:Landroidx/recyclerview/widget/COUIRecyclerView;

    .line 78
    invoke-virtual {p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->mContext:Landroid/content/Context;

    .line 79
    return-void
.end method

.method public cancelHorizontalItemAlign()V
    .locals 2

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->mHorizontalItemAlign:I

    .line 96
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->mRecyclerView:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->mAlignScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 97
    return-void
.end method

.method public findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .locals 3
    .param p1, "layoutManager"    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 214
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 215
    iget v0, p0, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->mHorizontalItemAlign:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 216
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->findCenterView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 217
    :cond_0
    iget v0, p0, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->mHorizontalItemAlign:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 218
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->findStartView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 220
    :cond_1
    return-object v1

    .line 222
    :cond_2
    return-object v1
.end method

.method public getHorizontalItemAlign()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->mHorizontalItemAlign:I

    return v0
.end method

.method public getTargetViewDistance(I)I
    .locals 18
    .param p1, "scaledScrollx"    # I

    .line 342
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    .line 343
    .local v1, "layoutManager":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v2

    .line 344
    .local v2, "itemCount":I
    const/4 v3, -0x1

    if-nez v2, :cond_0

    .line 345
    return v3

    .line 347
    :cond_0
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v4

    .line 348
    .local v4, "currentView":Landroid/view/View;
    if-nez v4, :cond_1

    .line 349
    return v3

    .line 351
    :cond_1
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v5

    .line 352
    .local v5, "currentPosition":I
    move-object v6, v1

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    .line 357
    .local v6, "vectorProvider":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;
    add-int/lit8 v7, v2, -0x1

    invoke-interface {v6, v7}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v7

    .line 358
    .local v7, "vectorForEnd":Landroid/graphics/PointF;
    if-nez v7, :cond_2

    .line 360
    return v3

    .line 363
    :cond_2
    const/high16 v8, 0x3f800000    # 1.0f

    .line 364
    .local v8, "distancePerChild":F
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_3

    .line 365
    invoke-direct {v0, v1}, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v9

    invoke-direct {v0, v1, v9}, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->computeDistancePerChild(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)F

    move-result v8

    .line 366
    move/from16 v9, p1

    int-to-float v11, v9

    div-float/2addr v11, v8

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 367
    .local v11, "hDeltaJump":I
    iget v12, v7, Landroid/graphics/PointF;->x:F

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_4

    .line 368
    neg-int v11, v11

    goto :goto_0

    .line 371
    .end local v11    # "hDeltaJump":I
    :cond_3
    move/from16 v9, p1

    move v11, v10

    .line 373
    .restart local v11    # "hDeltaJump":I
    :cond_4
    :goto_0
    add-int v12, v11, v5

    .line 375
    .local v12, "targetPos":I
    if-eq v12, v5, :cond_10

    if-ltz v12, :cond_10

    if-lt v12, v2, :cond_5

    .line 376
    move/from16 v17, v2

    move v2, v3

    goto/16 :goto_7

    .line 379
    :cond_5
    const/4 v13, 0x0

    .line 380
    .local v13, "endvalue":I
    iget v14, v0, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->mHorizontalItemAlign:I

    const/4 v15, 0x2

    const/4 v3, 0x1

    if-ne v14, v15, :cond_b

    .line 382
    const/4 v14, 0x0

    .line 383
    .local v14, "nextview":Landroid/view/View;
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v16

    if-nez v16, :cond_6

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v16

    if-eqz v16, :cond_6

    .line 384
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v16

    add-int/lit8 v3, v16, -0x1

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 386
    :cond_6
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    add-int/lit8 v15, v2, -0x1

    if-ne v3, v15, :cond_7

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_7

    .line 387
    invoke-virtual {v1, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 389
    :cond_7
    invoke-direct {v0, v1}, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    invoke-direct {v0, v1}, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v10

    const/4 v15, 0x2

    div-int/2addr v10, v15

    add-int/2addr v3, v10

    .line 392
    .local v3, "containerCenter":I
    if-eqz v14, :cond_9

    .line 393
    iget-object v10, v0, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v10}, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->isRtlMode(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {v1, v14}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v10

    sub-int v10, v12, v10

    int-to-float v10, v10

    mul-float/2addr v10, v8

    float-to-int v10, v10

    neg-int v10, v10

    goto :goto_1

    .line 394
    :cond_8
    invoke-virtual {v1, v14}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v10

    sub-int v10, v12, v10

    int-to-float v10, v10

    mul-float/2addr v10, v8

    float-to-int v10, v10

    .line 395
    .local v10, "distancechild":I
    :goto_1
    invoke-direct {v0, v1}, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v15

    invoke-virtual {v15, v14}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v15

    .line 396
    move/from16 v17, v2

    .end local v2    # "itemCount":I
    .local v17, "itemCount":I
    invoke-direct {v0, v1}, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v2

    const/16 v16, 0x2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v15, v2

    add-int/2addr v15, v10

    .line 398
    .end local v10    # "distancechild":I
    .local v15, "targetCenter":I
    goto :goto_3

    .line 399
    .end local v15    # "targetCenter":I
    .end local v17    # "itemCount":I
    .restart local v2    # "itemCount":I
    :cond_9
    move/from16 v17, v2

    .end local v2    # "itemCount":I
    .restart local v17    # "itemCount":I
    iget-object v2, v0, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->isRtlMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    sub-int v2, v12, v2

    int-to-float v2, v2

    mul-float/2addr v2, v8

    float-to-int v2, v2

    neg-int v2, v2

    goto :goto_2

    .line 400
    :cond_a
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    sub-int v2, v12, v2

    int-to-float v2, v2

    mul-float/2addr v2, v8

    float-to-int v2, v2

    .line 401
    .local v2, "distancechild":I
    :goto_2
    invoke-direct {v0, v1}, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v10

    .line 402
    invoke-direct {v0, v1}, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v15

    invoke-virtual {v15, v4}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v15

    const/16 v16, 0x2

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v10, v15

    add-int v15, v10, v2

    .end local v2    # "distancechild":I
    .restart local v15    # "targetCenter":I
    :goto_3
    move v2, v15

    .line 405
    .end local v15    # "targetCenter":I
    .local v2, "targetCenter":I
    sub-int v10, v2, v3

    .line 407
    .end local v13    # "endvalue":I
    .local v10, "endvalue":I
    return v10

    .line 409
    .end local v3    # "containerCenter":I
    .end local v10    # "endvalue":I
    .end local v14    # "nextview":Landroid/view/View;
    .end local v17    # "itemCount":I
    .local v2, "itemCount":I
    .restart local v13    # "endvalue":I
    :cond_b
    move/from16 v17, v2

    .end local v2    # "itemCount":I
    .restart local v17    # "itemCount":I
    iget v2, v0, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->mHorizontalItemAlign:I

    if-ne v2, v3, :cond_f

    .line 411
    iget-object v2, v0, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->isRtlMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-direct {v0, v1}, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    goto :goto_4

    :cond_c
    invoke-direct {v0, v1}, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    .line 412
    .local v2, "containerStart":I
    :goto_4
    iget-object v3, v0, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->isRtlMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-direct {v0, v1}, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    goto :goto_5

    .line 413
    :cond_d
    invoke-direct {v0, v1}, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    .line 414
    .local v3, "currentStart":I
    :goto_5
    iget-object v10, v0, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v10}, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->isRtlMode(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_e

    sub-int v10, v12, v5

    int-to-float v10, v10

    mul-float/2addr v10, v8

    float-to-int v10, v10

    neg-int v10, v10

    goto :goto_6

    :cond_e
    sub-int v10, v12, v5

    int-to-float v10, v10

    mul-float/2addr v10, v8

    float-to-int v10, v10

    .line 415
    .local v10, "distancechild":I
    :goto_6
    add-int v14, v3, v10

    .line 416
    .local v14, "targetStart":I
    sub-int v13, v14, v2

    .line 418
    return v13

    .line 420
    .end local v2    # "containerStart":I
    .end local v3    # "currentStart":I
    .end local v10    # "distancechild":I
    .end local v14    # "targetStart":I
    :cond_f
    const/4 v2, -0x1

    return v2

    .line 376
    .end local v13    # "endvalue":I
    .end local v17    # "itemCount":I
    .local v2, "itemCount":I
    :cond_10
    move/from16 v17, v2

    move v2, v3

    .end local v2    # "itemCount":I
    .restart local v17    # "itemCount":I
    :goto_7
    return v2
.end method

.method public setHorizontalItemAlign(I)V
    .locals 2
    .param p1, "itemAlign"    # I

    .line 87
    iput p1, p0, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->mHorizontalItemAlign:I

    .line 88
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->mRecyclerView:Landroidx/recyclerview/widget/COUIRecyclerView;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->mAlignScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 89
    return-void
.end method
