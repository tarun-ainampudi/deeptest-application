.class Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;
.super Landroid/widget/LinearLayout;
.source "COUITabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/tablayout/COUITabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlidingTabStrip"
.end annotation


# instance fields
.field private lastPosition:I

.field private mIndicatorAnimTime:I

.field private mIndicatorAnimator:Landroid/animation/ValueAnimator;

.field private mIndicatorBackgroundHeight:I

.field private mIndicatorBackgroundPaddingLeft:I

.field private mIndicatorBackgroundPaddingRight:I

.field private final mIndicatorBackgroundPaint:Landroid/graphics/Paint;

.field private mIndicatorLeft:I

.field private mIndicatorRight:I

.field private mIndicatorWidthRatio:F

.field mLastOffset:F

.field mLastSelectionOffset:F

.field private mLayoutDirection:I

.field private mSelectedIndicatorHeight:I

.field private final mSelectedIndicatorPaint:Landroid/graphics/Paint;

.field mSelectedPosition:I

.field mSelectionOffset:F

.field private mShouldResizeText:Z

.field final synthetic this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .line 1963
    iput-object p1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    .line 1964
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1941
    const/4 p1, -0x1

    iput p1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mSelectedPosition:I

    .line 1946
    iput p1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mLayoutDirection:I

    .line 1948
    iput p1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mIndicatorLeft:I

    .line 1949
    iput p1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mIndicatorRight:I

    .line 1950
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->lastPosition:I

    .line 1960
    iput p1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mIndicatorAnimTime:I

    .line 1965
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->setWillNotDraw(Z)V

    .line 1966
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    .line 1968
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mIndicatorBackgroundPaint:Landroid/graphics/Paint;

    .line 1970
    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->setGravity(I)V

    .line 1971
    return-void
.end method

.method static synthetic access$100(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    .line 1937
    invoke-direct {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->updateIndicatorPosition()V

    return-void
.end method

.method static synthetic access$1800(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    .line 1937
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mIndicatorBackgroundPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    .line 1937
    iget v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mIndicatorBackgroundPaddingLeft:I

    return v0
.end method

.method static synthetic access$1902(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;I)I
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;
    .param p1, "x1"    # I

    .line 1937
    iput p1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mIndicatorBackgroundPaddingLeft:I

    return p1
.end method

.method static synthetic access$200(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    .line 1937
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mShouldResizeText:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    .line 1937
    iget v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mIndicatorBackgroundHeight:I

    return v0
.end method

.method static synthetic access$2002(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;I)I
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;
    .param p1, "x1"    # I

    .line 1937
    iput p1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mIndicatorBackgroundHeight:I

    return p1
.end method

.method static synthetic access$202(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;
    .param p1, "x1"    # Z

    .line 1937
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mShouldResizeText:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    .line 1937
    iget v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mIndicatorBackgroundPaddingRight:I

    return v0
.end method

.method static synthetic access$2102(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;I)I
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;
    .param p1, "x1"    # I

    .line 1937
    iput p1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mIndicatorBackgroundPaddingRight:I

    return p1
.end method

.method static synthetic access$2200(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    .line 1937
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    .line 1937
    iget v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mIndicatorRight:I

    return v0
.end method

.method static synthetic access$2400(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    .line 1937
    iget v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mIndicatorLeft:I

    return v0
.end method

.method static synthetic access$2500(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    .line 1937
    iget v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mSelectedIndicatorHeight:I

    return v0
.end method

.method static synthetic access$2600(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;)F
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    .line 1937
    iget v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mIndicatorWidthRatio:F

    return v0
.end method

.method static synthetic access$2602(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;F)F
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;
    .param p1, "x1"    # F

    .line 1937
    iput p1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mIndicatorWidthRatio:F

    return p1
.end method

.method static synthetic access$2702(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;I)I
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;
    .param p1, "x1"    # I

    .line 1937
    iput p1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mIndicatorAnimTime:I

    return p1
.end method

.method private getIndicatorLeft(I)I
    .locals 2
    .param p1, "left"    # I

    .line 2310
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    .line 2311
    invoke-virtual {v1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 2312
    .local v0, "remainWidth":I
    invoke-direct {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->isLayoutRTL()Z

    move-result v1

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    .line 2313
    add-int v1, p1, v0

    return v1

    .line 2315
    :cond_0
    return p1
.end method

.method private getIndicatorRight(I)I
    .locals 2
    .param p1, "right"    # I

    .line 2319
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    .line 2320
    invoke-virtual {v1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 2321
    .local v0, "remainWidth":I
    invoke-direct {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->isLayoutRTL()Z

    move-result v1

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    .line 2322
    add-int v1, p1, v0

    return v1

    .line 2324
    :cond_0
    return p1
.end method

.method private isLayoutRTL()Z
    .locals 2

    .line 2166
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private measureChildMargin(II)V
    .locals 8
    .param p1, "widthSize"    # I
    .param p2, "totalWidth"    # I

    .line 2181
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->getChildCount()I

    move-result v0

    .line 2182
    .local v0, "count":I
    sub-int v1, p1, p2

    add-int/lit8 v2, v0, 0x1

    div-int/2addr v1, v2

    .line 2185
    .local v1, "divider":I
    iget-object v2, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-static {v2}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->access$1000(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;)I

    move-result v2

    const/4 v3, 0x0

    if-lt v1, v2, :cond_3

    .line 2186
    div-int/lit8 v2, v1, 0x2

    .line 2187
    .local v2, "margin":I
    nop

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 2188
    invoke-virtual {p0, v3}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2189
    .local v4, "child":Landroid/view/View;
    if-nez v3, :cond_0

    .line 2190
    iget-object v5, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-static {v5}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->access$1000(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;)I

    move-result v5

    sub-int v5, v1, v5

    .line 2191
    .local v5, "start":I
    move v6, v2

    goto :goto_1

    .line 2192
    .end local v5    # "start":I
    :cond_0
    add-int/lit8 v5, v0, -0x1

    if-ne v3, v5, :cond_1

    .line 2193
    move v5, v2

    .line 2194
    .restart local v5    # "start":I
    iget-object v6, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-static {v6}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->access$1000(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;)I

    move-result v6

    sub-int v6, v1, v6

    goto :goto_1

    .line 2196
    .end local v5    # "start":I
    :cond_1
    move v5, v2

    .line 2197
    .restart local v5    # "start":I
    move v6, v2

    .line 2199
    .local v6, "end":I
    :goto_1
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->setMargin(Landroid/view/View;III)V

    .line 2187
    .end local v4    # "child":Landroid/view/View;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2201
    .end local v2    # "margin":I
    .end local v3    # "i":I
    .end local v5    # "start":I
    .end local v6    # "end":I
    :cond_2
    goto :goto_4

    .line 2202
    :cond_3
    sub-int v2, p1, p2

    iget-object v4, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-static {v4}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->access$1000(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    add-int/lit8 v4, v0, -0x1

    div-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    .line 2203
    .restart local v2    # "margin":I
    nop

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v0, :cond_6

    .line 2204
    invoke-virtual {p0, v3}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2205
    .restart local v4    # "child":Landroid/view/View;
    if-nez v3, :cond_4

    .line 2206
    const/4 v5, 0x0

    .line 2207
    .restart local v5    # "start":I
    move v6, v2

    goto :goto_3

    .line 2208
    .end local v5    # "start":I
    :cond_4
    add-int/lit8 v5, v0, -0x1

    if-ne v3, v5, :cond_5

    .line 2209
    move v5, v2

    .line 2210
    .restart local v5    # "start":I
    const/4 v6, 0x0

    goto :goto_3

    .line 2212
    .end local v5    # "start":I
    :cond_5
    move v5, v2

    .line 2213
    .restart local v5    # "start":I
    move v6, v2

    .line 2215
    .restart local v6    # "end":I
    :goto_3
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->setMargin(Landroid/view/View;III)V

    .line 2203
    .end local v4    # "child":Landroid/view/View;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2218
    .end local v2    # "margin":I
    .end local v3    # "i":I
    .end local v5    # "start":I
    .end local v6    # "end":I
    :cond_6
    :goto_4
    return-void
.end method

.method private setMargin(Landroid/view/View;II)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "marinStart"    # I
    .param p3, "marginEnd"    # I

    .line 2170
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2171
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 2172
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 2173
    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_0

    .line 2175
    :cond_0
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 2176
    iput p3, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 2178
    :goto_0
    return-void
.end method

.method private setMargin(Landroid/view/View;III)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "marinStart"    # I
    .param p3, "marginEnd"    # I
    .param p4, "width"    # I

    .line 2157
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2158
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    add-int v1, p4, p3

    add-int/2addr v1, p2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 2159
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 2160
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 2161
    .local v1, "heightMeasureSpec":I
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 2162
    .local v2, "widthMeasureSpec":I
    invoke-virtual {p1, v2, v1}, Landroid/view/View;->measure(II)V

    .line 2163
    return-void
.end method

.method private updateIndicatorPosition()V
    .locals 18

    .line 2239
    move-object/from16 v0, p0

    iget v1, v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mSelectedPosition:I

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2243
    .local v1, "selectedTitle":Landroid/view/View;
    iget v2, v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mSelectedPosition:I

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;

    .line 2244
    .local v2, "tabView":Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;
    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->access$000(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;)Landroid/widget/TextView;

    move-result-object v4

    if-eqz v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 2245
    .local v4, "hasOriginTextView":Z
    :goto_0
    const/4 v5, -0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_6

    .line 2246
    invoke-static {v2}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->access$000(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;)Landroid/widget/TextView;

    move-result-object v8

    .line 2247
    .local v8, "textView":Landroid/widget/TextView;
    invoke-virtual {v8}, Landroid/widget/TextView;->getWidth()I

    move-result v9

    if-lez v9, :cond_5

    .line 2248
    invoke-virtual {v2}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->getLeft()I

    move-result v5

    invoke-virtual {v8}, Landroid/widget/TextView;->getLeft()I

    move-result v9

    add-int/2addr v5, v9

    iget-object v9, v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-static {v9}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->access$1200(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;)I

    move-result v9

    sub-int/2addr v5, v9

    .line 2249
    .local v5, "left":I
    invoke-virtual {v2}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->getLeft()I

    move-result v9

    invoke-virtual {v8}, Landroid/widget/TextView;->getRight()I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-static {v10}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->access$1200(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;)I

    move-result v10

    add-int/2addr v9, v10

    .line 2251
    .local v9, "right":I
    iget v10, v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mSelectionOffset:F

    cmpl-float v10, v10, v7

    if-lez v10, :cond_4

    iget v10, v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mSelectedPosition:I

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->getChildCount()I

    move-result v11

    sub-int/2addr v11, v3

    if-ge v10, v11, :cond_4

    .line 2252
    iget v10, v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mSelectedPosition:I

    add-int/2addr v10, v3

    invoke-virtual {v0, v10}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;

    .line 2253
    .local v3, "nextTabView":Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;
    invoke-static {v3}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->access$000(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;)Landroid/widget/TextView;

    move-result-object v10

    .line 2256
    .local v10, "nextTitle":Landroid/widget/TextView;
    if-eqz v10, :cond_1

    .line 2257
    invoke-virtual {v3}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->getLeft()I

    move-result v11

    invoke-virtual {v10}, Landroid/widget/TextView;->getLeft()I

    move-result v12

    add-int/2addr v11, v12

    iget-object v12, v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-static {v12}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->access$1200(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;)I

    move-result v12

    sub-int/2addr v11, v12

    .line 2258
    .local v11, "nextLeft":I
    invoke-virtual {v3}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->getLeft()I

    move-result v12

    invoke-virtual {v10}, Landroid/widget/TextView;->getRight()I

    move-result v13

    add-int/2addr v12, v13

    iget-object v13, v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-static {v13}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->access$1200(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;)I

    move-result v13

    add-int/2addr v12, v13

    goto :goto_1

    .line 2260
    .end local v11    # "nextLeft":I
    :cond_1
    invoke-virtual {v3}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->getLeft()I

    move-result v11

    .line 2261
    .restart local v11    # "nextLeft":I
    invoke-virtual {v3}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->getRight()I

    move-result v12

    .line 2263
    .local v12, "nextRight":I
    :goto_1
    sub-int v13, v12, v11

    sub-int v14, v9, v5

    sub-int/2addr v13, v14

    .line 2264
    .local v13, "widthDiff":I
    sub-int v14, v11, v5

    .line 2266
    .local v14, "leftDiff":I
    iget v15, v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mLastSelectionOffset:F

    cmpl-float v15, v15, v7

    if-nez v15, :cond_2

    .line 2267
    iget v15, v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mSelectionOffset:F

    iput v15, v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mLastSelectionOffset:F

    .line 2270
    :cond_2
    iget v15, v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mSelectionOffset:F

    iget v6, v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mLastSelectionOffset:F

    sub-float/2addr v15, v6

    cmpl-float v6, v15, v7

    if-lez v6, :cond_3

    .line 2271
    sub-int v6, v9, v5

    int-to-float v6, v6

    int-to-float v7, v13

    iget v15, v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mSelectionOffset:F

    mul-float/2addr v7, v15

    add-float/2addr v6, v7

    float-to-int v6, v6

    .line 2272
    .local v6, "curWidth":I
    int-to-float v7, v5

    int-to-float v15, v14

    move-object/from16 v16, v2

    .end local v2    # "tabView":Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;
    .local v16, "tabView":Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;
    iget v2, v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mSelectionOffset:F

    mul-float/2addr v15, v2

    add-float/2addr v7, v15

    float-to-int v2, v7

    .line 2277
    move v5, v2

    move-object/from16 v17, v3

    goto :goto_2

    .line 2274
    .end local v6    # "curWidth":I
    .end local v16    # "tabView":Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;
    .restart local v2    # "tabView":Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;
    :cond_3
    move-object/from16 v16, v2

    .end local v2    # "tabView":Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;
    .restart local v16    # "tabView":Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;
    sub-int v2, v12, v11

    int-to-float v2, v2

    int-to-float v6, v13

    iget v7, v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mSelectionOffset:F

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float v7, v15, v7

    mul-float/2addr v6, v7

    sub-float/2addr v2, v6

    float-to-int v6, v2

    .line 2275
    .restart local v6    # "curWidth":I
    int-to-float v2, v11

    int-to-float v7, v14

    move-object/from16 v17, v3

    .end local v3    # "nextTabView":Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;
    .local v17, "nextTabView":Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;
    iget v3, v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mSelectionOffset:F

    sub-float v3, v15, v3

    mul-float/2addr v7, v3

    sub-float/2addr v2, v7

    float-to-int v2, v2

    .line 2277
    move v5, v2

    :goto_2
    add-int v9, v5, v6

    .line 2278
    iget v2, v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mSelectionOffset:F

    iput v2, v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mLastSelectionOffset:F

    goto :goto_3

    .line 2280
    .end local v6    # "curWidth":I
    .end local v10    # "nextTitle":Landroid/widget/TextView;
    .end local v11    # "nextLeft":I
    .end local v12    # "nextRight":I
    .end local v13    # "widthDiff":I
    .end local v14    # "leftDiff":I
    .end local v16    # "tabView":Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;
    .end local v17    # "nextTabView":Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;
    .restart local v2    # "tabView":Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;
    :cond_4
    move-object/from16 v16, v2

    .end local v2    # "tabView":Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;
    .restart local v16    # "tabView":Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;
    :goto_3
    invoke-direct {v0, v5}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->getIndicatorLeft(I)I

    move-result v5

    .line 2281
    invoke-direct {v0, v9}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->getIndicatorRight(I)I

    move-result v2

    goto :goto_4

    .line 2283
    .end local v5    # "left":I
    .end local v9    # "right":I
    .end local v16    # "tabView":Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;
    .restart local v2    # "tabView":Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;
    :cond_5
    move-object/from16 v16, v2

    .end local v2    # "tabView":Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;
    .restart local v16    # "tabView":Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;
    move v2, v5

    .line 2285
    .end local v8    # "textView":Landroid/widget/TextView;
    .local v2, "right":I
    .restart local v5    # "left":I
    :goto_4
    goto :goto_5

    .line 2287
    .end local v5    # "left":I
    .end local v16    # "tabView":Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;
    .local v2, "tabView":Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;
    :cond_6
    move-object/from16 v16, v2

    .end local v2    # "tabView":Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;
    .restart local v16    # "tabView":Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    if-lez v2, :cond_7

    .line 2288
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 2289
    .restart local v5    # "left":I
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    .line 2291
    .local v2, "right":I
    iget v6, v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mSelectionOffset:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_8

    iget v6, v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mSelectedPosition:I

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->getChildCount()I

    move-result v7

    sub-int/2addr v7, v3

    if-ge v6, v7, :cond_8

    .line 2293
    iget v6, v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mSelectedPosition:I

    add-int/2addr v6, v3

    invoke-virtual {v0, v6}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2294
    .local v3, "nextTitle":Landroid/view/View;
    iget v6, v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mSelectionOffset:F

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    iget v7, v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mSelectionOffset:F

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v7, v8, v7

    int-to-float v9, v5

    mul-float/2addr v7, v9

    add-float/2addr v6, v7

    float-to-int v5, v6

    .line 2296
    iget v6, v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mSelectionOffset:F

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    iget v7, v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mSelectionOffset:F

    sub-float v7, v8, v7

    int-to-float v8, v2

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v2, v6

    .line 2298
    .end local v3    # "nextTitle":Landroid/view/View;
    goto :goto_5

    .line 2300
    .end local v2    # "right":I
    .end local v5    # "left":I
    :cond_7
    move v2, v5

    .restart local v2    # "right":I
    .restart local v5    # "left":I
    :cond_8
    :goto_5
    move v3, v5

    .line 2306
    .end local v5    # "left":I
    .local v3, "left":I
    invoke-virtual {v0, v3, v2}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->setIndicatorPosition(II)V

    .line 2307
    return-void
.end method


# virtual methods
.method animateIndicatorToPosition(II)V
    .locals 29
    .param p1, "position"    # I
    .param p2, "duration"    # I

    .line 2344
    move-object/from16 v13, p0

    move/from16 v14, p1

    const/4 v0, 0x0

    .line 2345
    .local v0, "isCancel":Z
    iget-object v1, v13, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    iget-object v1, v13, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2346
    iget v1, v13, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->lastPosition:I

    if-eq v14, v1, :cond_0

    .line 2347
    iget-object v1, v13, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    goto :goto_0

    .line 2349
    :cond_0
    iget-object v1, v13, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2350
    const/4 v0, 0x1

    .line 2354
    .end local v0    # "isCancel":Z
    .local v15, "isCancel":Z
    :cond_1
    :goto_0
    move v15, v0

    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    move/from16 v16, v0

    .line 2357
    .local v16, "isRtl":Z
    invoke-virtual/range {p0 .. p1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 2358
    .local v17, "targetView":Landroid/view/View;
    if-nez v17, :cond_3

    .line 2360
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->updateIndicatorPosition()V

    .line 2361
    return-void

    .line 2365
    :cond_3
    move-object/from16 v18, v17

    check-cast v18, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;

    .line 2366
    .local v18, "tabView":Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;
    iget-object v0, v13, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getSelectedTabPosition()I

    move-result v0

    invoke-virtual {v13, v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;

    .line 2367
    .local v19, "curTabView":Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;
    invoke-static/range {v18 .. v18}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->access$000(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v2, 0x2

    if-eqz v0, :cond_7

    .line 2368
    invoke-static/range {v18 .. v18}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->access$000(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;)Landroid/widget/TextView;

    move-result-object v20

    .line 2369
    .local v20, "nextView":Landroid/widget/TextView;
    iget v12, v13, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mIndicatorLeft:I

    .line 2370
    .local v12, "startLeft":I
    iget v11, v13, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mIndicatorRight:I

    .line 2371
    .local v11, "startRight":I
    invoke-virtual/range {v18 .. v18}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->getLeft()I

    move-result v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, v13, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-static {v1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->access$1200(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {v13, v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->getIndicatorLeft(I)I

    move-result v21

    .line 2372
    .local v21, "targetLeft":I
    invoke-virtual/range {v18 .. v18}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->getLeft()I

    move-result v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, v13, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-static {v1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->access$1200(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {v13, v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->getIndicatorRight(I)I

    move-result v22

    .line 2373
    .local v22, "targetRight":I
    sub-int v0, v22, v21

    sub-int v1, v11, v12

    sub-int v23, v0, v1

    .line 2374
    .local v23, "widthDiff":I
    sub-int v24, v21, v12

    .line 2376
    .local v24, "leftDiff":I
    iget-object v0, v13, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    iget v1, v13, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mSelectedPosition:I

    invoke-virtual {v0, v14, v1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getIndicatorAnimTime(II)I

    move-result v0

    .line 2377
    .local v0, "time":I
    iget v1, v13, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mIndicatorAnimTime:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_4

    .line 2378
    iget v0, v13, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mIndicatorAnimTime:I

    .line 2380
    .end local v0    # "time":I
    .local v10, "time":I
    :cond_4
    move v10, v0

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, v13, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    move-object v9, v0

    .line 2381
    .local v9, "animator":Landroid/animation/ValueAnimator;
    int-to-long v0, v10

    invoke-virtual {v9, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2382
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v3, 0x0

    const v4, 0x3f2b851f    # 0.67f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v9, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2383
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    invoke-virtual {v9, v0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 2384
    new-instance v3, Landroid/animation/ArgbEvaluator;

    invoke-direct {v3}, Landroid/animation/ArgbEvaluator;-><init>()V

    .line 2385
    .local v3, "evaluator":Landroid/animation/ArgbEvaluator;
    if-eqz v15, :cond_5

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    :goto_2
    move v4, v0

    goto :goto_3

    :cond_5
    iget-object v0, v13, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-static {v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->access$1300(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;)I

    move-result v0

    goto :goto_2

    .line 2386
    .local v4, "nextStartColor":I
    :goto_3
    if-eqz v15, :cond_6

    invoke-static/range {v19 .. v19}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->access$000(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    :goto_4
    move v6, v0

    goto :goto_5

    :cond_6
    iget-object v0, v13, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-static {v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->access$1400(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;)I

    move-result v0

    goto :goto_4

    .line 2387
    .local v6, "curStartColor":I
    :goto_5
    new-instance v8, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip$1;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object/from16 v5, v19

    move v7, v11

    move/from16 v25, v15

    move-object v15, v8

    .end local v15    # "isCancel":Z
    .local v25, "isCancel":Z
    move v8, v12

    move-object v13, v9

    .end local v9    # "animator":Landroid/animation/ValueAnimator;
    .local v13, "animator":Landroid/animation/ValueAnimator;
    move/from16 v9, v23

    move/from16 v26, v10

    .end local v10    # "time":I
    .local v26, "time":I
    move/from16 v10, v24

    move/from16 v27, v11

    .end local v11    # "startRight":I
    .local v27, "startRight":I
    move/from16 v11, v22

    move/from16 v28, v12

    .end local v12    # "startLeft":I
    .local v28, "startLeft":I
    move/from16 v12, v21

    invoke-direct/range {v0 .. v12}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip$1;-><init>(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;Landroid/widget/TextView;Landroid/animation/ArgbEvaluator;ILcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;IIIIIII)V

    invoke-virtual {v13, v15}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2412
    new-instance v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip$2;

    move-object v1, v13

    move-object/from16 v7, p0

    .end local v13    # "animator":Landroid/animation/ValueAnimator;
    .local v1, "animator":Landroid/animation/ValueAnimator;
    invoke-direct {v0, v7, v14}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip$2;-><init>(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;I)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2419
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 2420
    .end local v1    # "animator":Landroid/animation/ValueAnimator;
    .end local v3    # "evaluator":Landroid/animation/ArgbEvaluator;
    .end local v4    # "nextStartColor":I
    .end local v6    # "curStartColor":I
    .end local v20    # "nextView":Landroid/widget/TextView;
    .end local v21    # "targetLeft":I
    .end local v22    # "targetRight":I
    .end local v23    # "widthDiff":I
    .end local v24    # "leftDiff":I
    .end local v26    # "time":I
    .end local v27    # "startRight":I
    .end local v28    # "startLeft":I
    goto :goto_8

    .line 2422
    .end local v25    # "isCancel":Z
    .restart local v15    # "isCancel":Z
    :cond_7
    move-object v7, v13

    move/from16 v25, v15

    .end local v15    # "isCancel":Z
    .restart local v25    # "isCancel":Z
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 2423
    .local v6, "targetLeft":I
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRight()I

    move-result v8

    .line 2427
    .local v8, "targetRight":I
    iget v0, v7, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mSelectedPosition:I

    sub-int v0, v14, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, v1, :cond_8

    .line 2429
    iget v0, v7, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mIndicatorLeft:I

    .line 2430
    .local v0, "startLeft":I
    iget v1, v7, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mIndicatorRight:I

    .line 2446
    move v9, v1

    move v1, v0

    goto :goto_7

    .line 2433
    .end local v0    # "startLeft":I
    :cond_8
    iget-object v0, v7, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->dpToPx(I)I

    move-result v0

    .line 2434
    .local v0, "offset":I
    iget v1, v7, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mSelectedPosition:I

    if-ge v14, v1, :cond_a

    .line 2436
    if-eqz v16, :cond_9

    .line 2437
    sub-int v1, v6, v0

    move v3, v1

    .line 2446
    .end local v0    # "offset":I
    .local v1, "startLeft":I
    .local v3, "startRight":I
    .local v9, "startRight":I
    :goto_6
    move v9, v3

    goto :goto_7

    .line 2439
    .end local v1    # "startLeft":I
    .end local v3    # "startRight":I
    .end local v9    # "startRight":I
    .restart local v0    # "offset":I
    :cond_9
    add-int v1, v8, v0

    move v3, v1

    goto :goto_6

    .line 2443
    :cond_a
    if-eqz v16, :cond_b

    .line 2444
    add-int v1, v8, v0

    move v3, v1

    goto :goto_6

    .line 2446
    :cond_b
    sub-int v1, v6, v0

    move v0, v1

    move v9, v0

    .end local v0    # "offset":I
    .restart local v1    # "startLeft":I
    .restart local v9    # "startRight":I
    :goto_7
    move v10, v1

    .line 2451
    .end local v1    # "startLeft":I
    .local v10, "startLeft":I
    if-ne v10, v6, :cond_d

    if-eq v9, v8, :cond_c

    goto :goto_9

    .line 2478
    .end local v6    # "targetLeft":I
    .end local v8    # "targetRight":I
    .end local v9    # "startRight":I
    .end local v10    # "startLeft":I
    :cond_c
    :goto_8
    move/from16 v12, p2

    goto :goto_a

    .line 2452
    .restart local v6    # "targetLeft":I
    .restart local v8    # "targetRight":I
    .restart local v9    # "startRight":I
    .restart local v10    # "startLeft":I
    :cond_d
    :goto_9
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, v7, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    move-object v11, v0

    .line 2453
    .local v11, "animator":Landroid/animation/ValueAnimator;
    sget-object v0, Lcom/coui/appcompat/widget/tablayout/COUIAnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2454
    move/from16 v12, p2

    int-to-long v0, v12

    invoke-virtual {v11, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2455
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    invoke-virtual {v11, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 2456
    new-instance v13, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip$3;

    move-object v0, v13

    move-object/from16 v1, p0

    move v2, v10

    move v3, v6

    move v4, v9

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip$3;-><init>(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;IIII)V

    invoke-virtual {v11, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2465
    new-instance v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip$4;

    invoke-direct {v0, v7, v14}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip$4;-><init>(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;I)V

    invoke-virtual {v11, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2472
    invoke-virtual {v11}, Landroid/animation/ValueAnimator;->start()V

    .line 2478
    .end local v6    # "targetLeft":I
    .end local v8    # "targetRight":I
    .end local v9    # "startRight":I
    .end local v10    # "startLeft":I
    .end local v11    # "animator":Landroid/animation/ValueAnimator;
    :goto_a
    iget-object v0, v7, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getSelectedTabPosition()I

    move-result v0

    iput v0, v7, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->lastPosition:I

    .line 2479
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method childrenNeedLayout()Z
    .locals 4

    .line 1988
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->getChildCount()I

    move-result v1

    .local v1, "z":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1989
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1990
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    if-gtz v3, :cond_0

    .line 1991
    const/4 v3, 0x1

    return v3

    .line 1988
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1994
    .end local v0    # "i":I
    .end local v1    # "z":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method getIndicatorPosition()F
    .locals 2

    .line 2008
    iget v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mSelectedPosition:I

    int-to-float v0, v0

    iget v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mSelectionOffset:F

    add-float/2addr v0, v1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 2483
    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 2485
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-virtual {v3}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getTabCount()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 2486
    iget-object v3, v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-virtual {v3, v2}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getTabAt(I)Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;

    move-result-object v3

    .line 2487
    .local v3, "tab":Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->getPointMode()I

    move-result v4

    if-eqz v4, :cond_4

    .line 2488
    iget-object v4, v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-static {v4}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->access$1500(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;)Lcom/coui/appcompat/util/COUIHintRedDotHelper;

    move-result-object v4

    invoke-virtual {v3}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->getPointMode()I

    move-result v5

    invoke-virtual {v3}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->getPointNumber()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->getViewWidth(II)I

    move-result v4

    .line 2489
    .local v4, "width":I
    iget-object v5, v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-static {v5}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->access$1500(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;)Lcom/coui/appcompat/util/COUIHintRedDotHelper;

    move-result-object v5

    invoke-virtual {v3}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->getPointMode()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->getViewHeight(I)I

    move-result v5

    .line 2490
    .local v5, "height":I
    invoke-virtual {v3}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->getPointMode()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    div-int/lit8 v6, v4, 0x2

    goto :goto_1

    :cond_0
    iget-object v6, v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-static {v6}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->access$1600(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;)I

    move-result v6

    .line 2491
    .local v6, "horizontalOffset":I
    :goto_1
    div-int/lit8 v7, v5, 0x2

    .line 2494
    .local v7, "verticalOffset":I
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->isLayoutRTL()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2495
    iget-object v8, v3, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->mView:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;

    invoke-virtual {v8}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->getX()F

    move-result v8

    int-to-float v9, v6

    add-float/2addr v8, v9

    iget-object v9, v3, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->mView:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;

    invoke-virtual {v9}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->getPaddingLeft()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    .line 2496
    .local v8, "right":F
    int-to-float v9, v4

    sub-float v9, v8, v9

    goto :goto_2

    .line 2498
    .end local v8    # "right":F
    :cond_1
    iget-object v8, v3, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->mView:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;

    invoke-virtual {v8}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->getX()F

    move-result v8

    iget-object v9, v3, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->mView:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;

    invoke-virtual {v9}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    int-to-float v9, v6

    sub-float/2addr v8, v9

    iget-object v9, v3, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->mView:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;

    invoke-virtual {v9}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->getPaddingRight()I

    move-result v9

    int-to-float v9, v9

    sub-float v9, v8, v9

    .line 2499
    .local v9, "left":F
    int-to-float v8, v4

    add-float/2addr v8, v9

    .line 2501
    .restart local v8    # "right":F
    :goto_2
    const/4 v10, 0x0

    .line 2502
    .local v10, "visibleChild":I
    const/4 v11, 0x0

    .local v11, "count":I
    :goto_3
    iget-object v12, v3, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->mView:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;

    invoke-virtual {v12}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->getChildCount()I

    move-result v12

    if-ge v11, v12, :cond_3

    .line 2503
    iget-object v12, v3, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->mView:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;

    invoke-virtual {v12, v11}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_2

    .line 2504
    move v10, v11

    .line 2505
    goto :goto_4

    .line 2502
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 2508
    .end local v11    # "count":I
    :cond_3
    :goto_4
    iget-object v11, v3, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->mView:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;

    invoke-virtual {v11, v10}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getY()F

    move-result v11

    int-to-float v12, v7

    sub-float/2addr v11, v12

    .line 2509
    .local v11, "top":F
    int-to-float v12, v5

    add-float/2addr v12, v11

    .line 2510
    .local v12, "bottom":F
    iget-object v13, v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-static {v13}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->access$1700(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;)Landroid/graphics/RectF;

    move-result-object v13

    iput v9, v13, Landroid/graphics/RectF;->left:F

    .line 2511
    iget-object v13, v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-static {v13}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->access$1700(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;)Landroid/graphics/RectF;

    move-result-object v13

    iput v11, v13, Landroid/graphics/RectF;->top:F

    .line 2512
    iget-object v13, v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-static {v13}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->access$1700(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;)Landroid/graphics/RectF;

    move-result-object v13

    iput v8, v13, Landroid/graphics/RectF;->right:F

    .line 2513
    iget-object v13, v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-static {v13}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->access$1700(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;)Landroid/graphics/RectF;

    move-result-object v13

    iput v12, v13, Landroid/graphics/RectF;->bottom:F

    .line 2514
    iget-object v13, v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-static {v13}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->access$1500(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;)Lcom/coui/appcompat/util/COUIHintRedDotHelper;

    move-result-object v13

    invoke-virtual {v3}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->getPointMode()I

    move-result v14

    invoke-virtual {v3}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->getPointNumber()I

    move-result v15

    iget-object v1, v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-static {v1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->access$1700(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;)Landroid/graphics/RectF;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v14, v15, v1}, Lcom/coui/appcompat/util/COUIHintRedDotHelper;->drawRedPoint(Landroid/graphics/Canvas;IILandroid/graphics/RectF;)V

    goto :goto_5

    .line 2485
    .end local v3    # "tab":Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;
    .end local v4    # "width":I
    .end local v5    # "height":I
    .end local v6    # "horizontalOffset":I
    .end local v7    # "verticalOffset":I
    .end local v8    # "right":F
    .end local v9    # "left":F
    .end local v10    # "visibleChild":I
    .end local v11    # "top":F
    .end local v12    # "bottom":F
    :cond_4
    move-object/from16 v0, p1

    :goto_5
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 2517
    .end local v2    # "i":I
    :cond_5
    move-object/from16 v0, p1

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 2222
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 2223
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->access$502(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;Z)Z

    .line 2224
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2227
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2228
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    .line 2229
    .local v2, "duration":J
    iget v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mSelectedPosition:I

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v5, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    .line 2230
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v5

    sub-float/2addr v4, v5

    long-to-float v5, v2

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 2229
    invoke-virtual {p0, v0, v4}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->animateIndicatorToPosition(II)V

    .line 2231
    .end local v2    # "duration":J
    goto :goto_0

    .line 2233
    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->updateIndicatorPosition()V

    .line 2235
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    iget v2, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mSelectedPosition:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, v1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->setScrollPosition(IFZZ)V

    .line 2236
    return-void
.end method

.method protected onMeasure(II)V
    .locals 16
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 2028
    move-object/from16 v6, p0

    move/from16 v7, p2

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 2029
    return-void

    .line 2031
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 2032
    .local v8, "widthSize":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 2033
    .local v9, "widthMode":I
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->getChildCount()I

    move-result v10

    .line 2034
    .local v10, "count":I
    if-nez v10, :cond_1

    .line 2035
    invoke-super/range {p0 .. p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2036
    return-void

    .line 2038
    :cond_1
    iget-object v0, v6, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    iget v0, v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mMode:I

    const/high16 v11, 0x40000000    # 2.0f

    const/high16 v1, -0x80000000

    const/4 v2, 0x1

    const/4 v12, 0x0

    if-ne v0, v2, :cond_12

    .line 2039
    iget-object v0, v6, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-static {v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->access$500(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2040
    move v0, v12

    .local v0, "i":I
    :goto_0
    move v13, v0

    .end local v0    # "i":I
    .local v13, "i":I
    if-ge v13, v10, :cond_3

    .line 2041
    invoke-virtual {v6, v13}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;

    .line 2042
    .local v14, "child":Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;
    invoke-static {v14}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->access$000(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2043
    invoke-static {v14}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->access$000(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, v6, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    iget v1, v1, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabTextSize:F

    invoke-virtual {v0, v12, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2045
    :cond_2
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v14

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 2040
    .end local v14    # "child":Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;
    add-int/lit8 v0, v13, 0x1

    goto :goto_0

    .line 2047
    .end local v13    # "i":I
    :cond_3
    const/4 v0, 0x0

    .line 2048
    .local v0, "totalWidth":I
    nop

    .local v12, "i":I
    :goto_1
    move v1, v12

    .end local v12    # "i":I
    .local v1, "i":I
    if-ge v1, v10, :cond_4

    .line 2049
    invoke-virtual {v6, v1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2050
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 2051
    .local v3, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 2048
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "params":Landroid/widget/LinearLayout$LayoutParams;
    add-int/lit8 v12, v1, 0x1

    goto :goto_1

    .line 2053
    .end local v1    # "i":I
    :cond_4
    invoke-static {v0, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {v6, v1, v7}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2054
    return-void

    .line 2056
    .end local v0    # "totalWidth":I
    :cond_5
    const v0, 0x1fffffff

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2057
    .local v0, "widthSpec":I
    const/4 v3, 0x0

    .line 2058
    .local v3, "totalWidth":I
    iput-boolean v12, v6, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mShouldResizeText:Z

    .line 2059
    iget-object v4, v6, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-static {v4}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->access$600(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;)F

    move-result v4

    iput v4, v6, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mIndicatorWidthRatio:F

    .line 2060
    move v4, v3

    move v3, v12

    .local v3, "i":I
    .local v4, "totalWidth":I
    :goto_2
    if-ge v3, v10, :cond_8

    .line 2061
    invoke-virtual {v6, v3}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;

    .line 2062
    .local v5, "child":Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;
    const/4 v13, -0x2

    invoke-direct {v6, v5, v12, v12, v13}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->setMargin(Landroid/view/View;III)V

    .line 2063
    invoke-static {v5}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->access$000(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;)Landroid/widget/TextView;

    move-result-object v13

    if-eqz v13, :cond_6

    .line 2064
    invoke-static {v5}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->access$000(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;)Landroid/widget/TextView;

    move-result-object v13

    iget-object v14, v6, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-static {v14}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->access$700(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;)F

    move-result v14

    invoke-virtual {v13, v12, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2066
    :cond_6
    invoke-virtual {v5, v0, v7}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->measure(II)V

    .line 2067
    invoke-virtual {v5}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->getMeasuredWidth()I

    move-result v13

    .line 2068
    .local v13, "width":I
    iget-object v14, v6, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-static {v14}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->access$800(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;)I

    move-result v14

    if-le v13, v14, :cond_7

    .line 2069
    iput-boolean v2, v6, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mShouldResizeText:Z

    .line 2070
    goto :goto_3

    .line 2072
    :cond_7
    add-int/2addr v4, v13

    .line 2060
    .end local v5    # "child":Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;
    .end local v13    # "width":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2076
    .end local v3    # "i":I
    :cond_8
    :goto_3
    add-int/lit8 v3, v10, -0x1

    iget-object v5, v6, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-static {v5}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->access$900(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;)I

    move-result v5

    mul-int/2addr v3, v5

    sub-int v3, v8, v3

    iget-object v5, v6, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-static {v5}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->access$1000(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    .line 2077
    .local v3, "maxWidth":I
    iget-boolean v5, v6, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mShouldResizeText:Z

    if-nez v5, :cond_9

    .line 2078
    if-le v4, v3, :cond_9

    .line 2079
    iput-boolean v2, v6, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mShouldResizeText:Z

    .line 2083
    :cond_9
    iget-boolean v2, v6, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mShouldResizeText:Z

    if-eqz v2, :cond_11

    .line 2084
    iget-object v2, v6, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    iget-object v5, v6, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    iget v5, v5, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabTextMultiLineSize:F

    iput v5, v2, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabTextSize:F

    .line 2085
    move v2, v12

    .local v2, "i":I
    :goto_4
    if-ge v2, v10, :cond_b

    .line 2086
    invoke-virtual {v6, v2}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;

    .line 2087
    .restart local v5    # "child":Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;
    invoke-static {v5}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->access$000(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;)Landroid/widget/TextView;

    move-result-object v13

    if-eqz v13, :cond_a

    .line 2088
    invoke-static {v5}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->access$000(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 2089
    .local v13, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v14, v6, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-static {v14}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->access$1100(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;)I

    move-result v14

    iput v14, v13, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2090
    invoke-static {v5}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;->access$000(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;)Landroid/widget/TextView;

    move-result-object v14

    iget-object v15, v6, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    iget v15, v15, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mTabTextMultiLineSize:F

    invoke-virtual {v14, v12, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2091
    const/high16 v14, 0x3f800000    # 1.0f

    iput v14, v6, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mIndicatorWidthRatio:F

    .line 2085
    .end local v5    # "child":Lcom/coui/appcompat/widget/tablayout/COUITabLayout$TabView;
    .end local v13    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2094
    .end local v2    # "i":I
    :cond_b
    iget-object v2, v6, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-static {v2}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->access$800(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;)I

    move-result v2

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 2095
    .local v1, "maxWidthSpec":I
    const/4 v2, 0x0

    .line 2096
    .end local v4    # "totalWidth":I
    .local v2, "totalWidth":I
    move v4, v2

    move v2, v12

    .local v2, "i":I
    .restart local v4    # "totalWidth":I
    :goto_5
    if-ge v2, v10, :cond_c

    .line 2097
    invoke-virtual {v6, v2}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2098
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5, v1, v7}, Landroid/view/View;->measure(II)V

    .line 2099
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    add-int/2addr v4, v13

    .line 2096
    .end local v5    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 2101
    .end local v2    # "i":I
    :cond_c
    if-gt v4, v3, :cond_d

    .line 2102
    invoke-direct {v6, v8, v4}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->measureChildMargin(II)V

    goto :goto_8

    .line 2104
    :cond_d
    iget-object v2, v6, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-static {v2}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->access$900(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 2107
    .local v2, "margin":I
    move v5, v12

    .local v5, "i":I
    :goto_6
    if-ge v5, v10, :cond_10

    .line 2108
    invoke-virtual {v6, v5}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 2109
    .local v13, "child":Landroid/view/View;
    if-nez v5, :cond_e

    .line 2110
    const/4 v14, 0x0

    .line 2111
    .local v14, "start":I
    move v15, v2

    goto :goto_7

    .line 2112
    .end local v14    # "start":I
    :cond_e
    add-int/lit8 v14, v10, -0x1

    if-ne v5, v14, :cond_f

    .line 2113
    move v14, v2

    .line 2114
    .restart local v14    # "start":I
    const/4 v15, 0x0

    goto :goto_7

    .line 2116
    .end local v14    # "start":I
    :cond_f
    move v14, v2

    .line 2117
    .restart local v14    # "start":I
    move v15, v2

    .line 2119
    .local v15, "end":I
    :goto_7
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    invoke-direct {v6, v13, v14, v15, v11}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->setMargin(Landroid/view/View;III)V

    .line 2107
    .end local v13    # "child":Landroid/view/View;
    add-int/lit8 v5, v5, 0x1

    const/high16 v11, 0x40000000    # 2.0f

    goto :goto_6

    .line 2122
    .end local v1    # "maxWidthSpec":I
    .end local v2    # "margin":I
    .end local v5    # "i":I
    .end local v14    # "start":I
    .end local v15    # "end":I
    :cond_10
    :goto_8
    goto :goto_9

    .line 2123
    :cond_11
    invoke-direct {v6, v8, v4}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->measureChildMargin(II)V

    .line 2125
    .end local v0    # "widthSpec":I
    .end local v3    # "maxWidth":I
    .end local v4    # "totalWidth":I
    :goto_9
    goto :goto_c

    .line 2126
    :cond_12
    iget-object v0, v6, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-static {v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->access$800(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;)I

    move-result v0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2127
    .local v0, "maxWidthSpec":I
    iget-object v1, v6, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-static {v1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->access$900(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 2130
    .local v1, "margin":I
    move v2, v12

    .local v2, "i":I
    :goto_a
    if-ge v2, v10, :cond_15

    .line 2131
    invoke-virtual {v6, v2}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2132
    .local v3, "child":Landroid/view/View;
    invoke-direct {v6, v3, v12, v12}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->setMargin(Landroid/view/View;II)V

    .line 2133
    invoke-virtual {v3, v0, v7}, Landroid/view/View;->measure(II)V

    .line 2134
    if-nez v2, :cond_13

    .line 2135
    const/4 v4, 0x0

    .line 2136
    .local v4, "start":I
    move v5, v1

    goto :goto_b

    .line 2137
    .end local v4    # "start":I
    :cond_13
    add-int/lit8 v4, v10, -0x1

    if-ne v2, v4, :cond_14

    .line 2138
    move v4, v1

    .line 2139
    .restart local v4    # "start":I
    const/4 v5, 0x0

    goto :goto_b

    .line 2141
    .end local v4    # "start":I
    :cond_14
    move v4, v1

    .line 2142
    .restart local v4    # "start":I
    move v5, v1

    .line 2144
    .local v5, "end":I
    :goto_b
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    invoke-direct {v6, v3, v4, v5, v11}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->setMargin(Landroid/view/View;III)V

    .line 2130
    .end local v3    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 2147
    .end local v0    # "maxWidthSpec":I
    .end local v1    # "margin":I
    .end local v2    # "i":I
    .end local v4    # "start":I
    .end local v5    # "end":I
    :cond_15
    :goto_c
    const/4 v0, 0x0

    .line 2148
    .local v0, "totalWidth":I
    nop

    .restart local v12    # "i":I
    :goto_d
    move v1, v12

    .end local v12    # "i":I
    .local v1, "i":I
    if-ge v1, v10, :cond_16

    .line 2149
    invoke-virtual {v6, v1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2150
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 2151
    .local v3, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v0, v4

    .line 2148
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "params":Landroid/widget/LinearLayout$LayoutParams;
    add-int/lit8 v12, v1, 0x1

    goto :goto_d

    .line 2153
    .end local v1    # "i":I
    :cond_16
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {v6, v1, v7}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2154
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .line 2013
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    .line 2017
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 2019
    iget v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mLayoutDirection:I

    if-eq v0, p1, :cond_0

    .line 2020
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->requestLayout()V

    .line 2021
    iput p1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mLayoutDirection:I

    .line 2024
    :cond_0
    return-void
.end method

.method setIndicatorPosition(II)V
    .locals 3
    .param p1, "left"    # I
    .param p2, "right"    # I

    .line 2330
    add-int v0, p1, p2

    div-int/lit8 v0, v0, 0x2

    .line 2331
    .local v0, "center":I
    sub-int v1, p2, p1

    .line 2332
    .local v1, "width":I
    div-int/lit8 v2, v1, 0x2

    sub-int p1, v0, v2

    .line 2333
    div-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v0

    .line 2335
    .end local p2    # "right":I
    .local v2, "right":I
    iget p2, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mIndicatorLeft:I

    if-ne p1, p2, :cond_0

    iget p2, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mIndicatorRight:I

    if-eq v2, p2, :cond_1

    .line 2337
    :cond_0
    iput p1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mIndicatorLeft:I

    .line 2338
    iput v2, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mIndicatorRight:I

    .line 2339
    iget-object p2, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-static {p2}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2341
    :cond_1
    return-void
.end method

.method setIndicatorPositionFromTabPosition(IF)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F

    .line 1998
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1999
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2002
    :cond_0
    iput p1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mSelectedPosition:I

    .line 2003
    iput p2, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mSelectionOffset:F

    .line 2004
    invoke-direct {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->updateIndicatorPosition()V

    .line 2005
    return-void
.end method

.method setSelectedIndicatorColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 1975
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1976
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1978
    return-void
.end method

.method setSelectedIndicatorHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .line 1981
    iget v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mSelectedIndicatorHeight:I

    if-eq v0, p1, :cond_0

    .line 1982
    iput p1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mSelectedIndicatorHeight:I

    .line 1983
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1985
    :cond_0
    return-void
.end method
