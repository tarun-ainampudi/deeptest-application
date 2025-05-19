.class public Lcom/coui/appcompat/widget/COUIToolTips;
.super Landroid/widget/PopupWindow;
.source "COUIToolTips.java"


# static fields
.field public static final ALIGN_END:I = 0x40

.field public static final ALIGN_LEFT:I = 0x10

.field public static final ALIGN_RIGHT:I = 0x8

.field public static final ALIGN_START:I = 0x20

.field public static final ANIMATION_DURATION:I = 0xc8

.field public static final DEFAULT_ALIGN_DIRECTION:I = 0x4

.field public static final MODE_INFO:I = 0x1

.field public static final MODE_TOOLTIPS:I


# instance fields
.field private mAnchor:Landroid/view/View;

.field private mAnimationInterpolator:Landroid/view/animation/Interpolator;

.field private mArrowDownDrawable:Landroid/graphics/drawable/Drawable;

.field private mArrowLeftDrawable:Landroid/graphics/drawable/Drawable;

.field private mArrowOverflow:I

.field private mArrowRightDrawable:Landroid/graphics/drawable/Drawable;

.field private mArrowUpDrawable:Landroid/graphics/drawable/Drawable;

.field private mArrowView:Landroid/widget/ImageView;

.field private mContentContainer:Landroid/view/ViewGroup;

.field private mContentRectOnScreen:Landroid/graphics/Rect;

.field private mContentTv:Landroid/widget/TextView;

.field private final mContext:Landroid/content/Context;

.field private final mCoordsOnWindow:Landroid/graphics/Point;

.field private mIsDismissing:Z

.field private mLeftOrTop:Z

.field private mMainPanel:Landroid/view/ViewGroup;

.field private mMode:I

.field private mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mOnPopupWindowDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private mParent:Landroid/view/View;

.field private mParentRectOnScreen:Landroid/graphics/Rect;

.field private mPivotX:F

.field private mPivotY:F

.field private mScrollView:Landroid/widget/ScrollView;

.field private mShowDirection:I

.field private mTipsAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

.field private final mTmpCoords:[I

.field private mViewPortOnScreen:Landroid/graphics/Rect;

.field private mViewportOffset:Landroid/graphics/Rect;

.field private mWindowLocationOnScreen:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 176
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUIToolTips;-><init>(Landroid/content/Context;I)V

    .line 177
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .line 186
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 102
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mLeftOrTop:Z

    .line 120
    const/4 v0, 0x4

    iput v0, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mShowDirection:I

    .line 123
    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mTmpCoords:[I

    .line 124
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mWindowLocationOnScreen:[I

    .line 125
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mCoordsOnWindow:Landroid/graphics/Point;

    .line 132
    new-instance v0, Lcom/coui/appcompat/widget/COUIToolTips$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/widget/COUIToolTips$1;-><init>(Lcom/coui/appcompat/widget/COUIToolTips;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 142
    new-instance v0, Lcom/coui/appcompat/widget/COUIToolTips$2;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/widget/COUIToolTips$2;-><init>(Lcom/coui/appcompat/widget/COUIToolTips;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mOnPopupWindowDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 187
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mContext:Landroid/content/Context;

    .line 188
    invoke-virtual {p0, p2}, Lcom/coui/appcompat/widget/COUIToolTips;->init(I)V

    .line 189
    return-void
.end method

.method public constructor <init>(Landroid/view/Window;)V
    .locals 1
    .param p1, "window"    # Landroid/view/Window;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUIToolTips;-><init>(Landroid/view/Window;I)V

    .line 159
    return-void
.end method

.method public constructor <init>(Landroid/view/Window;I)V
    .locals 2
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "mode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 166
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 102
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mLeftOrTop:Z

    .line 120
    const/4 v0, 0x4

    iput v0, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mShowDirection:I

    .line 123
    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mTmpCoords:[I

    .line 124
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mWindowLocationOnScreen:[I

    .line 125
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mCoordsOnWindow:Landroid/graphics/Point;

    .line 132
    new-instance v0, Lcom/coui/appcompat/widget/COUIToolTips$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/widget/COUIToolTips$1;-><init>(Lcom/coui/appcompat/widget/COUIToolTips;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 142
    new-instance v0, Lcom/coui/appcompat/widget/COUIToolTips$2;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/widget/COUIToolTips$2;-><init>(Lcom/coui/appcompat/widget/COUIToolTips;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mOnPopupWindowDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 167
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mContext:Landroid/content/Context;

    .line 169
    invoke-virtual {p0, p2}, Lcom/coui/appcompat/widget/COUIToolTips;->init(I)V

    .line 170
    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/widget/COUIToolTips;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIToolTips;

    .line 63
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mAnchor:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/widget/COUIToolTips;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIToolTips;

    .line 63
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIToolTips;->dismissPopupWindow()V

    return-void
.end method

.method static synthetic access$200(Lcom/coui/appcompat/widget/COUIToolTips;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIToolTips;

    .line 63
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mContentContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/coui/appcompat/widget/COUIToolTips;)Lcom/oplus/anim/EffectiveAnimationView;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIToolTips;

    .line 63
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mTipsAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/coui/appcompat/widget/COUIToolTips;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIToolTips;
    .param p1, "x1"    # Z

    .line 63
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mIsDismissing:Z

    return p1
.end method

.method private addIndicator(Landroid/graphics/Rect;)V
    .locals 8
    .param p1, "contentRectOnScreen"    # Landroid/graphics/Rect;

    .line 430
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mArrowView:Landroid/widget/ImageView;

    .line 432
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 434
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mShowDirection:I

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    .line 435
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mTmpCoords:[I

    invoke-virtual {v1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 436
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mTmpCoords:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    .line 437
    .local v1, "rootViewLeftOnScreen":I
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mParent:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mTmpCoords:[I

    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 438
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mTmpCoords:[I

    aget v3, v4, v3

    .line 439
    .local v3, "rootViewLeftOnWindow":I
    sub-int v4, v1, v3

    .line 440
    .local v4, "windowLeftOnScreen":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    iget-object v6, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    iget-object v6, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mArrowUpDrawable:Landroid/graphics/drawable/Drawable;

    .line 441
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 442
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIToolTips;->getWidth()I

    move-result v5

    iget v6, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mArrowUpDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 444
    iget v5, p1, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mWindowLocationOnScreen:[I

    aget v6, v6, v2

    sub-int/2addr v5, v6

    .line 446
    .local v5, "contentRectTopOnWindow":I
    iget-object v6, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    if-lt v6, v5, :cond_0

    .line 447
    iget-object v6, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mArrowView:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mArrowUpDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 448
    iput-boolean v2, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mLeftOrTop:Z

    .line 449
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    iget-object v6, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mArrowUpDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    sub-int/2addr v2, v6

    iget v6, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mArrowOverflow:I

    add-int/2addr v2, v6

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 451
    :cond_0
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mArrowView:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mArrowDownDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 452
    const/16 v2, 0x50

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 453
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    iget-object v6, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mArrowDownDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    sub-int/2addr v2, v6

    iget v6, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mArrowOverflow:I

    add-int/2addr v2, v6

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 455
    .end local v1    # "rootViewLeftOnScreen":I
    .end local v3    # "rootViewLeftOnWindow":I
    .end local v4    # "windowLeftOnScreen":I
    .end local v5    # "contentRectTopOnWindow":I
    :goto_0
    goto/16 :goto_1

    :cond_1
    iget v1, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mShowDirection:I

    const/16 v3, 0x10

    if-ne v1, v3, :cond_2

    .line 456
    iput-boolean v2, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mLeftOrTop:Z

    .line 457
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mArrowRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v1, v3

    iget v3, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mArrowOverflow:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 458
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIToolTips;->getWidth()I

    move-result v1

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mArrowRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 459
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mWindowLocationOnScreen:[I

    aget v2, v3, v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mArrowRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 460
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIToolTips;->getHeight()I

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mArrowRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 461
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mArrowView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mArrowRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 463
    :cond_2
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mArrowLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v1, v3

    iget v3, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mArrowOverflow:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 464
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIToolTips;->getWidth()I

    move-result v1

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mArrowLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 465
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mWindowLocationOnScreen:[I

    aget v2, v3, v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mArrowRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 466
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIToolTips;->getHeight()I

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mArrowRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 467
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mArrowView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mArrowLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 469
    :goto_1
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mArrowView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 470
    return-void
.end method

.method private animateEnter()V
    .locals 10

    .line 566
    new-instance v9, Landroid/view/animation/ScaleAnimation;

    iget v6, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mPivotX:F

    iget v8, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mPivotY:F

    const v1, 0x3f666666    # 0.9f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f666666    # 0.9f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v7, 0x1

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 567
    .local v0, "scaleAnimation":Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 568
    .local v1, "alphaAnimation":Landroid/view/animation/Animation;
    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 569
    .local v2, "animationSet":Landroid/view/animation/AnimationSet;
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mAnimationInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 570
    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 571
    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 572
    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 573
    new-instance v3, Lcom/coui/appcompat/widget/COUIToolTips$3;

    invoke-direct {v3, p0}, Lcom/coui/appcompat/widget/COUIToolTips$3;-><init>(Lcom/coui/appcompat/widget/COUIToolTips;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 589
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 590
    return-void
.end method

.method private animateExit()V
    .locals 3

    .line 593
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 595
    .local v0, "alphaAnimation":Landroid/view/animation/Animation;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 596
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mAnimationInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 597
    new-instance v1, Lcom/coui/appcompat/widget/COUIToolTips$4;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/COUIToolTips$4;-><init>(Lcom/coui/appcompat/widget/COUIToolTips;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 616
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 617
    return-void
.end method

.method private calculatePivot()V
    .locals 6

    .line 545
    iget v0, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mShowDirection:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x4

    if-ne v0, v4, :cond_4

    .line 546
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mContentRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mWindowLocationOnScreen:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    sub-int/2addr v0, v4

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v4

    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIToolTips;->getViewportWidth()I

    move-result v4

    if-lt v0, v4, :cond_0

    .line 547
    iput v3, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mPivotX:F

    goto :goto_1

    .line 548
    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIToolTips;->getViewportWidth()I

    move-result v0

    if-eqz v0, :cond_2

    .line 549
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mContentRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mWindowLocationOnScreen:[I

    aget v4, v4, v5

    sub-int/2addr v0, v4

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v4

    .line 550
    .local v0, "scale":I
    if-lez v0, :cond_1

    move v4, v0

    goto :goto_0

    :cond_1
    neg-int v4, v0

    :goto_0
    int-to-float v4, v4

    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIToolTips;->getViewportWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    iput v4, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mPivotX:F

    .line 551
    .end local v0    # "scale":I
    goto :goto_1

    .line 552
    :cond_2
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mPivotX:F

    .line 554
    :goto_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mContentRectOnScreen:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mWindowLocationOnScreen:[I

    aget v1, v5, v1

    sub-int/2addr v4, v1

    if-lt v0, v4, :cond_3

    .line 555
    iput v2, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mPivotY:F

    goto :goto_2

    .line 557
    :cond_3
    iput v3, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mPivotY:F

    goto :goto_2

    .line 560
    :cond_4
    iget v0, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mShowDirection:I

    const/16 v4, 0x10

    if-ne v0, v4, :cond_5

    move v2, v3

    nop

    :cond_5
    iput v2, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mPivotX:F

    .line 561
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mContentRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mWindowLocationOnScreen:[I

    aget v1, v2, v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIToolTips;->getViewportHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mPivotY:F

    .line 563
    :goto_2
    return-void
.end method

.method private static createContentContainer(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 310
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 311
    .local v0, "contentContainer":Landroid/widget/FrameLayout;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
    return-object v0
.end method

.method private dismissPopupWindow()V
    .locals 1

    .line 631
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 632
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIToolTips;->unregisterOrientationHandler()V

    .line 633
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 634
    return-void
.end method

.method private getViewportHeight()I
    .locals 2

    .line 522
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIToolTips;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mViewportOffset:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mViewportOffset:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    return v0
.end method

.method private getViewportWidth()I
    .locals 2

    .line 518
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIToolTips;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mViewportOffset:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mViewportOffset:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    return v0
.end method

.method private offsetRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "rect"    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "offset"    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 673
    if-nez p2, :cond_0

    .line 674
    return-void

    .line 676
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 677
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 678
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 679
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 680
    return-void
.end method

.method private prepareContent(Landroid/graphics/Rect;Z)V
    .locals 2
    .param p1, "contentRectOnScreen"    # Landroid/graphics/Rect;
    .param p2, "hasIndicator"    # Z

    .line 395
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 396
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 397
    if-eqz p2, :cond_0

    .line 398
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIToolTips;->addIndicator(Landroid/graphics/Rect;)V

    .line 400
    :cond_0
    return-void
.end method

.method private refreshCoordinated(Landroid/graphics/Rect;)V
    .locals 11
    .param p1, "contentRectOnScreen"    # Landroid/graphics/Rect;

    .line 475
    iget v0, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mShowDirection:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 476
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIToolTips;->getViewportWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIToolTips;->getViewportWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 477
    .local v0, "x":I
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    .line 478
    .local v1, "availableHeightAboveContent":I
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    .line 479
    .local v2, "availableHeightBelowContent":I
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIToolTips;->getViewportHeight()I

    move-result v3

    .line 480
    .local v3, "viewportHeight":I
    if-lt v1, v3, :cond_0

    .line 481
    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v3

    goto :goto_0

    .line 482
    :cond_0
    if-lt v2, v3, :cond_1

    .line 483
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 484
    :cond_1
    if-le v1, v2, :cond_2

    .line 485
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 486
    .local v4, "y":I
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/COUIToolTips;->setHeight(I)V

    goto :goto_0

    .line 488
    .end local v4    # "y":I
    :cond_2
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 489
    .restart local v4    # "y":I
    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/COUIToolTips;->setHeight(I)V

    .line 491
    .end local v1    # "availableHeightAboveContent":I
    .end local v2    # "availableHeightBelowContent":I
    .end local v3    # "viewportHeight":I
    :goto_0
    goto :goto_2

    .line 492
    .end local v0    # "x":I
    .end local v4    # "y":I
    :cond_3
    iget v0, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mShowDirection:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIToolTips;->getViewportWidth()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_1

    :cond_4
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 493
    .restart local v0    # "x":I
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIToolTips;->getViewportHeight()I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int v4, v1, v2

    .restart local v4    # "y":I
    :goto_2
    move v1, v4

    .line 503
    .end local v4    # "y":I
    .local v1, "y":I
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mParent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mTmpCoords:[I

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 504
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mTmpCoords:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    .line 505
    .local v2, "rootViewLeftOnScreen":I
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mTmpCoords:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    .line 506
    .local v4, "rootViewTopOnScreen":I
    iget-object v6, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mParent:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mTmpCoords:[I

    invoke-virtual {v6, v7}, Landroid/view/View;->getLocationInWindow([I)V

    .line 507
    iget-object v6, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mTmpCoords:[I

    aget v6, v6, v3

    .line 508
    .local v6, "rootViewLeftOnWindow":I
    iget-object v7, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mTmpCoords:[I

    aget v7, v7, v5

    .line 509
    .local v7, "rootViewTopOnWindow":I
    iget-object v8, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mWindowLocationOnScreen:[I

    sub-int v9, v2, v6

    aput v9, v8, v3

    .line 510
    iget-object v8, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mWindowLocationOnScreen:[I

    sub-int v9, v4, v7

    aput v9, v8, v5

    .line 511
    iget-object v8, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mCoordsOnWindow:Landroid/graphics/Point;

    iget-object v9, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mWindowLocationOnScreen:[I

    aget v9, v9, v3

    sub-int v9, v0, v9

    iget-object v10, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mViewportOffset:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    .line 512
    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget-object v10, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mWindowLocationOnScreen:[I

    aget v5, v10, v5

    sub-int v5, v1, v5

    iget-object v10, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mViewportOffset:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v10

    .line 513
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 511
    invoke-virtual {v8, v9, v3}, Landroid/graphics/Point;->set(II)V

    .line 515
    return-void
.end method

.method private registerOrientationHandler()V
    .locals 2

    .line 654
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIToolTips;->unregisterOrientationHandler()V

    .line 655
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mParent:Landroid/view/View;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 656
    return-void
.end method

.method private sizePopupWindow()V
    .locals 7

    .line 403
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->tool_tips_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    .line 404
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 405
    .local v0, "maxWidth":I
    iget v1, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mShowDirection:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 406
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mContentRectOnScreen:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 407
    :cond_0
    iget v1, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mShowDirection:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    .line 408
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mContentRectOnScreen:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 410
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 411
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mContentTv:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    sub-int v3, v0, v3

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 413
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Landroid/view/ViewGroup;->measure(II)V

    .line 414
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/COUIToolTips;->setWidth(I)V

    .line 415
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/COUIToolTips;->setHeight(I)V

    .line 416
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mContentRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIToolTips;->getViewportHeight()I

    move-result v4

    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIToolTips;->getViewportHeight()I

    move-result v4

    add-int/2addr v2, v4

    .line 417
    .local v2, "availableHeight":I
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-lt v2, v4, :cond_2

    .line 418
    const/4 v4, 0x4

    iput v4, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mShowDirection:I

    .line 419
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcoui/support/appcompat/R$dimen;->tool_tips_max_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    .line 420
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    add-int v0, v4, v5

    .line 421
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mContentTv:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    sub-int v5, v0, v5

    iget-object v6, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v5, v6

    iget v6, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 423
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3, v3}, Landroid/view/ViewGroup;->measure(II)V

    .line 424
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/widget/COUIToolTips;->setWidth(I)V

    .line 425
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/widget/COUIToolTips;->setHeight(I)V

    .line 427
    :cond_2
    return-void
.end method

.method private unregisterOrientationHandler()V
    .locals 2

    .line 659
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mParent:Landroid/view/View;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 660
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 621
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mIsDismissing:Z

    if-nez v0, :cond_0

    .line 622
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIToolTips;->animateExit()V

    goto :goto_0

    .line 624
    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIToolTips;->dismissPopupWindow()V

    .line 625
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mIsDismissing:Z

    .line 626
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mTipsAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/anim/EffectiveAnimationView;->setProgress(F)V

    .line 628
    :goto_0
    return-void
.end method

.method public init(I)V
    .locals 24
    .param p1, "mode"    # I

    .line 199
    move-object/from16 v0, p0

    move/from16 v1, p1

    iput v1, v0, Lcom/coui/appcompat/widget/COUIToolTips;->mMode:I

    .line 200
    if-nez v1, :cond_0

    .line 201
    sget v2, Lcoui/support/appcompat/R$attr;->couiToolTipsStyle:I

    .line 202
    .local v2, "defStyleAttr":I
    sget v3, Lcoui/support/appcompat/R$style;->COUIToolTips:I

    goto :goto_0

    .line 204
    .end local v2    # "defStyleAttr":I
    :cond_0
    sget v2, Lcoui/support/appcompat/R$attr;->couiToolTipsDetailFloatingStyle:I

    .line 205
    .restart local v2    # "defStyleAttr":I
    sget v3, Lcoui/support/appcompat/R$style;->COUIToolTips_DetailFloating:I

    .line 207
    .local v3, "defStyleRes":I
    :goto_0
    iget-object v4, v0, Lcom/coui/appcompat/widget/COUIToolTips;->mContext:Landroid/content/Context;

    sget-object v5, Lcoui/support/appcompat/R$styleable;->COUIToolTips:[I

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 209
    .local v4, "a":Landroid/content/res/TypedArray;
    sget v5, Lcoui/support/appcompat/R$styleable;->COUIToolTips_couiToolTipsBackground:I

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 210
    .local v5, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    sget v7, Lcoui/support/appcompat/R$styleable;->COUIToolTips_couiToolTipsArrowUpDrawable:I

    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, v0, Lcom/coui/appcompat/widget/COUIToolTips;->mArrowUpDrawable:Landroid/graphics/drawable/Drawable;

    .line 211
    sget v7, Lcoui/support/appcompat/R$styleable;->COUIToolTips_couiToolTipsArrowDownDrawable:I

    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, v0, Lcom/coui/appcompat/widget/COUIToolTips;->mArrowDownDrawable:Landroid/graphics/drawable/Drawable;

    .line 212
    sget v7, Lcoui/support/appcompat/R$styleable;->COUIToolTips_couiToolTipsArrowLeftDrawable:I

    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, v0, Lcom/coui/appcompat/widget/COUIToolTips;->mArrowLeftDrawable:Landroid/graphics/drawable/Drawable;

    .line 213
    sget v7, Lcoui/support/appcompat/R$styleable;->COUIToolTips_couiToolTipsArrowRightDrawable:I

    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, v0, Lcom/coui/appcompat/widget/COUIToolTips;->mArrowRightDrawable:Landroid/graphics/drawable/Drawable;

    .line 214
    sget v7, Lcoui/support/appcompat/R$styleable;->COUIToolTips_couiToolTipsArrowOverflowOffset:I

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Lcom/coui/appcompat/widget/COUIToolTips;->mArrowOverflow:I

    .line 215
    sget v7, Lcoui/support/appcompat/R$styleable;->COUIToolTips_couiToolTipsMinWidth:I

    invoke-virtual {v4, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    .line 216
    .local v7, "minWidth":I
    sget v9, Lcoui/support/appcompat/R$styleable;->COUIToolTips_couiToolTipsContainerLayoutGravity:I

    invoke-virtual {v4, v9, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 217
    .local v9, "containerLayoutGravity":I
    sget v10, Lcoui/support/appcompat/R$styleable;->COUIToolTips_couiToolTipsContainerLayoutMarginStart:I

    invoke-virtual {v4, v10, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    .line 218
    .local v10, "containerLayoutMarginStart":I
    sget v11, Lcoui/support/appcompat/R$styleable;->COUIToolTips_couiToolTipsContainerLayoutMarginTop:I

    invoke-virtual {v4, v11, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    .line 219
    .local v11, "containerLayoutMarginTop":I
    sget v12, Lcoui/support/appcompat/R$styleable;->COUIToolTips_couiToolTipsContainerLayoutMarginEnd:I

    invoke-virtual {v4, v12, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    .line 220
    .local v12, "containerLayoutMarginEnd":I
    sget v13, Lcoui/support/appcompat/R$styleable;->COUIToolTips_couiToolTipsContainerLayoutMarginBottom:I

    invoke-virtual {v4, v13, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    .line 221
    .local v13, "containerLayoutMarginBottom":I
    sget v14, Lcoui/support/appcompat/R$styleable;->COUIToolTips_couiToolTipsContentTextColor:I

    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    .line 222
    .local v14, "contentTextColor":Landroid/content/res/ColorStateList;
    sget v15, Lcoui/support/appcompat/R$styleable;->COUIToolTips_couiToolTipsViewportOffsetStart:I

    invoke-virtual {v4, v15, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    .line 223
    .local v15, "viewportOffsetStart":I
    sget v6, Lcoui/support/appcompat/R$styleable;->COUIToolTips_couiToolTipsViewportOffsetTop:I

    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    .line 224
    .local v6, "viewportOffsetTop":I
    move/from16 v16, v2

    .end local v2    # "defStyleAttr":I
    .local v16, "defStyleAttr":I
    sget v2, Lcoui/support/appcompat/R$styleable;->COUIToolTips_couiToolTipsViewportOffsetEnd:I

    invoke-virtual {v4, v2, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 225
    .local v2, "viewportOffsetEnd":I
    move/from16 v17, v3

    .end local v3    # "defStyleRes":I
    .local v17, "defStyleRes":I
    sget v3, Lcoui/support/appcompat/R$styleable;->COUIToolTips_couiToolTipsViewportOffsetBottom:I

    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 226
    .local v3, "viewportOffsetBottom":I
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 228
    new-instance v8, Landroid/view/animation/PathInterpolator;

    move-object/from16 v18, v4

    .end local v4    # "a":Landroid/content/res/TypedArray;
    .local v18, "a":Landroid/content/res/TypedArray;
    const v4, 0x3e99999a    # 0.3f

    move/from16 v19, v2

    .end local v2    # "viewportOffsetEnd":I
    .local v19, "viewportOffsetEnd":I
    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v20, v3

    .end local v3    # "viewportOffsetBottom":I
    .local v20, "viewportOffsetBottom":I
    const/4 v3, 0x0

    invoke-direct {v8, v4, v3, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v8, v0, Lcom/coui/appcompat/widget/COUIToolTips;->mAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 230
    iget-object v2, v0, Lcom/coui/appcompat/widget/COUIToolTips;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcoui/support/appcompat/R$layout;->coui_tool_tips_layout:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v0, Lcom/coui/appcompat/widget/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    .line 231
    iget-object v2, v0, Lcom/coui/appcompat/widget/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 232
    iget-object v2, v0, Lcom/coui/appcompat/widget/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->setMinimumWidth(I)V

    .line 234
    iget-object v2, v0, Lcom/coui/appcompat/widget/COUIToolTips;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/coui/appcompat/widget/COUIToolTips;->createContentContainer(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object v2

    iput-object v2, v0, Lcom/coui/appcompat/widget/COUIToolTips;->mContentContainer:Landroid/view/ViewGroup;

    .line 235
    iget-object v2, v0, Lcom/coui/appcompat/widget/COUIToolTips;->mContentContainer:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/coui/appcompat/util/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    .line 237
    iget-object v2, v0, Lcom/coui/appcompat/widget/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    sget v3, Lcoui/support/appcompat/R$id;->contentTv:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/coui/appcompat/widget/COUIToolTips;->mContentTv:Landroid/widget/TextView;

    .line 238
    iget-object v2, v0, Lcom/coui/appcompat/widget/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    sget v3, Lcoui/support/appcompat/R$id;->scrollView:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, v0, Lcom/coui/appcompat/widget/COUIToolTips;->mScrollView:Landroid/widget/ScrollView;

    .line 239
    iget-object v2, v0, Lcom/coui/appcompat/widget/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    sget v3, Lcoui/support/appcompat/R$id;->tips_icon:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oplus/anim/EffectiveAnimationView;

    iput-object v2, v0, Lcom/coui/appcompat/widget/COUIToolTips;->mTipsAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    .line 240
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 241
    iget-object v2, v0, Lcom/coui/appcompat/widget/COUIToolTips;->mTipsAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/oplus/anim/EffectiveAnimationView;->setVisibility(I)V

    goto :goto_1

    .line 243
    :cond_1
    iget-object v2, v0, Lcom/coui/appcompat/widget/COUIToolTips;->mTipsAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    const-string v3, "coui_tool_tips_icon.json"

    invoke-virtual {v2, v3}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 245
    :goto_1
    iget-object v2, v0, Lcom/coui/appcompat/widget/COUIToolTips;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 246
    .local v2, "scrollViewLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v9, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 247
    invoke-virtual {v2, v10, v11, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 248
    invoke-virtual {v2, v10}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 249
    invoke-virtual {v2, v12}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 250
    iget-object v3, v0, Lcom/coui/appcompat/widget/COUIToolTips;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3, v2}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    iget-object v3, v0, Lcom/coui/appcompat/widget/COUIToolTips;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->fontScale:F

    .line 253
    .local v3, "fontScale":F
    const/4 v4, 0x4

    .line 254
    .local v4, "scaleLevel":I
    iget-object v8, v0, Lcom/coui/appcompat/widget/COUIToolTips;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v1, Lcoui/support/appcompat/R$dimen;->tool_tips_content_text_size:I

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 255
    .local v1, "contentTextSize":I
    int-to-float v8, v1

    invoke-static {v8, v3, v4}, Lcom/coui/appcompat/util/COUIChangeTextUtil;->getSuitableFontSize(FFI)F

    move-result v8

    float-to-int v1, v8

    .line 256
    iget-object v8, v0, Lcom/coui/appcompat/widget/COUIToolTips;->mContentTv:Landroid/widget/TextView;

    move-object/from16 v21, v2

    .end local v2    # "scrollViewLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .local v21, "scrollViewLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    int-to-float v2, v1

    move/from16 v22, v1

    const/4 v1, 0x0

    .end local v1    # "contentTextSize":I
    .local v22, "contentTextSize":I
    invoke-virtual {v8, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 257
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUIToolTips;->mContentTv:Landroid/widget/TextView;

    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 259
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIToolTips;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 260
    new-instance v1, Landroid/graphics/Rect;

    move/from16 v2, v19

    move/from16 v8, v20

    .end local v19    # "viewportOffsetEnd":I
    .end local v20    # "viewportOffsetBottom":I
    .local v2, "viewportOffsetEnd":I
    .local v8, "viewportOffsetBottom":I
    invoke-direct {v1, v15, v6, v2, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, v0, Lcom/coui/appcompat/widget/COUIToolTips;->mViewportOffset:Landroid/graphics/Rect;

    goto :goto_2

    .line 267
    .end local v2    # "viewportOffsetEnd":I
    .end local v8    # "viewportOffsetBottom":I
    .restart local v19    # "viewportOffsetEnd":I
    .restart local v20    # "viewportOffsetBottom":I
    :cond_2
    move/from16 v2, v19

    move/from16 v8, v20

    .end local v19    # "viewportOffsetEnd":I
    .end local v20    # "viewportOffsetBottom":I
    .restart local v2    # "viewportOffsetEnd":I
    .restart local v8    # "viewportOffsetBottom":I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v2, v6, v15, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, v0, Lcom/coui/appcompat/widget/COUIToolTips;->mViewportOffset:Landroid/graphics/Rect;

    .line 275
    :goto_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIToolTips;->setClippingEnabled(Z)V

    .line 276
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIToolTips;->setAnimationStyle(I)V

    .line 277
    move/from16 v23, v2

    .end local v2    # "viewportOffsetEnd":I
    .local v23, "viewportOffsetEnd":I
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUIToolTips;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 278
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUIToolTips;->mOnPopupWindowDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIToolTips;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 279
    return-void
.end method

.method public isLayoutRtl(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 669
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public refresh()V
    .locals 7

    .line 284
    iget v0, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mMode:I

    if-nez v0, :cond_0

    .line 285
    sget v0, Lcoui/support/appcompat/R$attr;->couiToolTipsStyle:I

    .line 286
    .local v0, "defStyleAttr":I
    sget v1, Lcoui/support/appcompat/R$style;->COUIToolTips:I

    goto :goto_0

    .line 288
    .end local v0    # "defStyleAttr":I
    :cond_0
    sget v0, Lcoui/support/appcompat/R$attr;->couiToolTipsDetailFloatingStyle:I

    .line 289
    .restart local v0    # "defStyleAttr":I
    sget v1, Lcoui/support/appcompat/R$style;->COUIToolTips_DetailFloating:I

    .line 291
    .local v1, "defStyleRes":I
    :goto_0
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    sget-object v4, Lcoui/support/appcompat/R$styleable;->COUIToolTips:[I

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 292
    .local v2, "a":Landroid/content/res/TypedArray;
    sget v3, Lcoui/support/appcompat/R$styleable;->COUIToolTips_couiToolTipsBackground:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 293
    .local v3, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    sget v4, Lcoui/support/appcompat/R$styleable;->COUIToolTips_couiToolTipsArrowUpDrawable:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mArrowUpDrawable:Landroid/graphics/drawable/Drawable;

    .line 294
    sget v4, Lcoui/support/appcompat/R$styleable;->COUIToolTips_couiToolTipsArrowDownDrawable:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mArrowDownDrawable:Landroid/graphics/drawable/Drawable;

    .line 295
    sget v4, Lcoui/support/appcompat/R$styleable;->COUIToolTips_couiToolTipsArrowLeftDrawable:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mArrowLeftDrawable:Landroid/graphics/drawable/Drawable;

    .line 296
    sget v4, Lcoui/support/appcompat/R$styleable;->COUIToolTips_couiToolTipsArrowRightDrawable:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mArrowRightDrawable:Landroid/graphics/drawable/Drawable;

    .line 297
    sget v4, Lcoui/support/appcompat/R$styleable;->COUIToolTips_couiToolTipsArrowOverflowOffset:I

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mArrowOverflow:I

    .line 298
    sget v4, Lcoui/support/appcompat/R$styleable;->COUIToolTips_couiToolTipsContentTextColor:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 299
    .local v4, "contentTextColor":Landroid/content/res/ColorStateList;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 300
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 301
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mContentTv:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 302
    iget v5, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mShowDirection:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 303
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mArrowView:Landroid/widget/ImageView;

    iget-boolean v6, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mLeftOrTop:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mArrowUpDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mArrowDownDrawable:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 305
    :cond_2
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mArrowView:Landroid/widget/ImageView;

    iget-boolean v6, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mLeftOrTop:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mArrowRightDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_3
    iget-object v6, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mArrowLeftDrawable:Landroid/graphics/drawable/Drawable;

    :goto_2
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 307
    :goto_3
    return-void
.end method

.method public setContent(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 540
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->removeAllViews()V

    .line 541
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 542
    return-void
.end method

.method public setContent(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/CharSequence;

    .line 531
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mContentTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 532
    return-void
.end method

.method public setDismissOnTouchOutside(Z)V
    .locals 1
    .param p1, "cancel"    # Z

    .line 642
    if-eqz p1, :cond_0

    .line 643
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIToolTips;->setTouchable(Z)V

    .line 644
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIToolTips;->setFocusable(Z)V

    .line 645
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIToolTips;->setOutsideTouchable(Z)V

    goto :goto_0

    .line 647
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIToolTips;->setFocusable(Z)V

    .line 648
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIToolTips;->setOutsideTouchable(Z)V

    .line 650
    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIToolTips;->update()V

    .line 651
    return-void
.end method

.method public show(Landroid/view/View;)V
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;

    .line 321
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/widget/COUIToolTips;->show(Landroid/view/View;Z)V

    .line 322
    return-void
.end method

.method public show(Landroid/view/View;Z)V
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "hasIndicator"    # Z

    .line 331
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0, p2}, Lcom/coui/appcompat/widget/COUIToolTips;->showWithDirection(Landroid/view/View;IZ)V

    .line 332
    return-void
.end method

.method public showWithDirection(Landroid/view/View;I)V
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "direction"    # I

    .line 343
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/COUIToolTips;->showWithDirection(Landroid/view/View;IZ)V

    .line 344
    return-void
.end method

.method public showWithDirection(Landroid/view/View;IZ)V
    .locals 6
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "direction"    # I
    .param p3, "hasIndicator"    # Z

    .line 354
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIToolTips;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    return-void

    .line 357
    :cond_0
    iput p2, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mShowDirection:I

    .line 358
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mParent:Landroid/view/View;

    .line 360
    iget v0, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mShowDirection:I

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mShowDirection:I

    const/16 v2, 0x40

    if-ne v0, v2, :cond_5

    .line 361
    :cond_1
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUIToolTips;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    const/16 v2, 0x10

    const/16 v3, 0x8

    if-eqz v0, :cond_3

    .line 362
    iget v0, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mShowDirection:I

    if-ne v0, v1, :cond_2

    move v2, v3

    nop

    :cond_2
    iput v2, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mShowDirection:I

    goto :goto_1

    .line 364
    :cond_3
    iget v0, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mShowDirection:I

    if-ne v0, v1, :cond_4

    goto :goto_0

    :cond_4
    move v2, v3

    :goto_0
    iput v2, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mShowDirection:I

    .line 367
    :cond_5
    :goto_1
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mAnchor:Landroid/view/View;

    .line 368
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mParent:Landroid/view/View;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 369
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIToolTips;->registerOrientationHandler()V

    .line 370
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mContentRectOnScreen:Landroid/graphics/Rect;

    .line 371
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mContentRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 372
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mParentRectOnScreen:Landroid/graphics/Rect;

    .line 373
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mParent:Landroid/view/View;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mParentRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 375
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 376
    .local v0, "rootViewPosition":[I
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mParent:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 377
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mContentRectOnScreen:Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 378
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mParentRectOnScreen:Landroid/graphics/Rect;

    aget v3, v0, v2

    aget v4, v0, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 380
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mParentRectOnScreen:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 381
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mParentRectOnScreen:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 382
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mParentRectOnScreen:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 383
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mParentRectOnScreen:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 385
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIToolTips;->sizePopupWindow()V

    .line 386
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mContentRectOnScreen:Landroid/graphics/Rect;

    invoke-direct {p0, v1}, Lcom/coui/appcompat/widget/COUIToolTips;->refreshCoordinated(Landroid/graphics/Rect;)V

    .line 387
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mContentRectOnScreen:Landroid/graphics/Rect;

    invoke-direct {p0, v1, p3}, Lcom/coui/appcompat/widget/COUIToolTips;->prepareContent(Landroid/graphics/Rect;Z)V

    .line 388
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/COUIToolTips;->setContentView(Landroid/view/View;)V

    .line 389
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIToolTips;->calculatePivot()V

    .line 390
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIToolTips;->animateEnter()V

    .line 391
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mParent:Landroid/view/View;

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIToolTips;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/coui/appcompat/widget/COUIToolTips;->showAtLocation(Landroid/view/View;III)V

    .line 392
    return-void
.end method
