.class public Lcom/coui/appcompat/widget/COUISlideView;
.super Landroid/widget/LinearLayout;
.source "COUISlideView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/COUISlideView$OnSlideMenuItemClickListener;,
        Lcom/coui/appcompat/widget/COUISlideView$OnSmoothScrollListener;,
        Lcom/coui/appcompat/widget/COUISlideView$OnDeleteItemClickListener;,
        Lcom/coui/appcompat/widget/COUISlideView$OnSlideListener;
    }
.end annotation


# static fields
.field private static final ANIM_DURATION:I = 0xc8

.field private static final BIT_NUMBER_24:I = 0x18

.field private static final BIT_NUMBER_32:I = 0x20

.field private static final COLOR_MASK:I = 0xffffff

.field private static final DAMPING_1:F = 0.42857143f

.field private static final DAMPING_2:F = 0.5714286f

.field private static final DEGREE_180:I = 0xb4

.field private static final DEGREE_270:I = 0x10e

.field private static final DEGREE_360:I = 0x168

.field private static final DEGREE_90:I = 0x5a

.field private static final DELETAY_VALUE:I = 0x4

.field private static final FADE_ANIM_DURATION:I = 0xd2

.field private static final INVALID_POINTER:I = -0x1

.field private static final LISTVIEW_TOUCH_MODE_SCROLL:I = 0x3

.field private static final TAG:Ljava/lang/String; = "COUISlideView"

.field private static final VELOCITY_SCALE:I = 0x3e8

.field private static final VERTICAL_LINE_WIDTH:I = 0x1

.field private static sTempRect:Landroid/graphics/Rect;


# instance fields
.field private mActivePointerId:I

.field private mAlpha:I

.field private mCanCopy:Z

.field private mCanDelete:Z

.field private mCanRename:Z

.field private mContext:Landroid/content/Context;

.field private mCurrStatus:I

.field private mCurrentTranslateX:I

.field private mDiver:Landroid/graphics/drawable/Drawable;

.field private mDiverEnable:Z

.field private mDrawItemEnable:Z

.field private mEnableFastDelete:Z

.field private mFadeAnim:Landroid/animation/ValueAnimator;

.field private mGroupStyle:I

.field private mHolderWidth:I

.field private mIconCount:I

.field private mInitialHeight:I

.field private mInitialMotionX:I

.field private mInitialMotionY:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsBeingDragged:Z

.field private mIsUnableToDrag:Z

.field private mItemBackgroundColor:I

.field private mItemCount:I

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/widget/COUISlideMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:I

.field private mLastMotionY:I

.field private mLastX:I

.field private mLastY:I

.field private mLayout:Landroid/text/Layout;

.field private mLinePaint:Landroid/graphics/Paint;

.field private mMaximumVelocity:I

.field private mMenuDividerEnable:Z

.field private mOnDeleteItemClickListener:Lcom/coui/appcompat/widget/COUISlideView$OnDeleteItemClickListener;

.field private mOnSlideListener:Lcom/coui/appcompat/widget/COUISlideView$OnSlideListener;

.field private mOnSlideMenuItemClickListener:Lcom/coui/appcompat/widget/COUISlideView$OnSlideMenuItemClickListener;

.field private mOnSmoothScrollListener:Lcom/coui/appcompat/widget/COUISlideView$OnSmoothScrollListener;

.field private mOverSlideDeleteSlop:I

.field private mPaddingRight:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPath1:Landroid/graphics/Path;

.field private mPathArc:Landroid/graphics/Path;

.field private mQuickDeleteSlop:I

.field private mRadius:I

.field mRefreshStyle:I

.field private mScrollAll:Z

.field private mScroller:Landroid/widget/Scroller;

.field private mSlideBackColor:I

.field private mSlideColorDrawable:Landroid/graphics/drawable/Drawable;

.field private mSlideDelete:Z

.field private mSlideEnable:Z

.field private mSlideItemPadding:I

.field private mSlideTextColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private mSlideTouchSlop:I

.field private mSlideView:Landroid/view/View;

.field private mSmoothScrollRunnable:Ljava/lang/Runnable;

.field private mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mStartDeleteAnimation:Z

.field private mStringDelete:Ljava/lang/String;

.field private mTargetTranslateX:I

.field private mTextPadding:I

.field private mTouchSlop:I

.field private mUpScrollX:I

.field private mUseDefaultBackGround:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewContent:Landroid/widget/LinearLayout;

.field private mhasStartAnimation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 98
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/coui/appcompat/widget/COUISlideView;->sTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 205
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUISlideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 206
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 215
    sget v0, Lcoui/support/appcompat/R$attr;->couiSlideView:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/COUISlideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 216
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .line 219
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/widget/COUISlideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 220
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 223
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 110
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    .line 112
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mCanDelete:Z

    .line 113
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/coui/appcompat/widget/COUISlideView;->mCanCopy:Z

    .line 114
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mCanRename:Z

    .line 115
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/COUISlideView;->mSlideEnable:Z

    .line 116
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mDrawItemEnable:Z

    .line 117
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mDiverEnable:Z

    .line 118
    iput v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mIconCount:I

    .line 119
    iput v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mItemCount:I

    .line 121
    iput v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mAlpha:I

    .line 124
    iput v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mTextPadding:I

    .line 128
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/coui/appcompat/widget/COUISlideView;->mLayout:Landroid/text/Layout;

    .line 135
    iput v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mLastX:I

    .line 136
    iput v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mLastY:I

    .line 140
    const/16 v3, 0x8

    iput v3, p0, Lcom/coui/appcompat/widget/COUISlideView;->mSlideTouchSlop:I

    .line 141
    iput-object v2, p0, Lcom/coui/appcompat/widget/COUISlideView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 142
    const/4 v2, -0x1

    iput v2, p0, Lcom/coui/appcompat/widget/COUISlideView;->mActivePointerId:I

    .line 144
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mScrollAll:Z

    .line 145
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mIsUnableToDrag:Z

    .line 146
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mIsBeingDragged:Z

    .line 147
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mhasStartAnimation:Z

    .line 148
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/COUISlideView;->mStartDeleteAnimation:Z

    .line 150
    iput v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mCurrStatus:I

    .line 151
    iput v2, p0, Lcom/coui/appcompat/widget/COUISlideView;->mGroupStyle:I

    .line 152
    const/16 v2, 0x12

    iput v2, p0, Lcom/coui/appcompat/widget/COUISlideView;->mPaddingRight:I

    .line 153
    const/16 v2, 0x14

    iput v2, p0, Lcom/coui/appcompat/widget/COUISlideView;->mRadius:I

    .line 156
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/COUISlideView;->mUseDefaultBackGround:Z

    .line 157
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/COUISlideView;->mMenuDividerEnable:Z

    .line 225
    if-eqz p2, :cond_0

    .line 226
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/COUISlideView;->mRefreshStyle:I

    .line 228
    :cond_0
    iget v1, p0, Lcom/coui/appcompat/widget/COUISlideView;->mRefreshStyle:I

    if-nez v1, :cond_1

    .line 229
    iput p3, p0, Lcom/coui/appcompat/widget/COUISlideView;->mRefreshStyle:I

    .line 231
    :cond_1
    sget-object v1, Lcoui/support/appcompat/R$styleable;->COUISlideView:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 232
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    sget v1, Lcoui/support/appcompat/R$styleable;->COUISlideView_itemBackgroundColor:I

    .line 234
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcoui/support/appcompat/R$color;->coui_slide_view_item_background_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 232
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/COUISlideView;->mItemBackgroundColor:I

    .line 235
    sget v1, Lcoui/support/appcompat/R$styleable;->COUISlideView_slideTextColor:I

    .line 237
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcoui/support/appcompat/R$color;->coui_slideview_textcolor:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 235
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/COUISlideView;->mSlideTextColor:I

    .line 238
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 239
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISlideView;->initView()V

    .line 240
    return-void
.end method

.method static synthetic access$002(Lcom/coui/appcompat/widget/COUISlideView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISlideView;
    .param p1, "x1"    # I

    .line 76
    iput p1, p0, Lcom/coui/appcompat/widget/COUISlideView;->mAlpha:I

    return p1
.end method

.method static synthetic access$102(Lcom/coui/appcompat/widget/COUISlideView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISlideView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .line 76
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISlideView;->mSmoothScrollRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/coui/appcompat/widget/COUISlideView;)Lcom/coui/appcompat/widget/COUISlideView$OnSmoothScrollListener;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISlideView;

    .line 76
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mOnSmoothScrollListener:Lcom/coui/appcompat/widget/COUISlideView$OnSmoothScrollListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/coui/appcompat/widget/COUISlideView;)Lcom/coui/appcompat/widget/COUISlideView$OnDeleteItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISlideView;

    .line 76
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mOnDeleteItemClickListener:Lcom/coui/appcompat/widget/COUISlideView$OnDeleteItemClickListener;

    return-object v0
.end method

.method static synthetic access$402(Lcom/coui/appcompat/widget/COUISlideView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISlideView;
    .param p1, "x1"    # Z

    .line 76
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUISlideView;->mhasStartAnimation:Z

    return p1
.end method

.method static synthetic access$502(Lcom/coui/appcompat/widget/COUISlideView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISlideView;
    .param p1, "x1"    # I

    .line 76
    iput p1, p0, Lcom/coui/appcompat/widget/COUISlideView;->mInitialHeight:I

    return p1
.end method

.method static synthetic access$600(Lcom/coui/appcompat/widget/COUISlideView;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISlideView;

    .line 76
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mFadeAnim:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private clipBottomRound(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 574
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mPath1:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 575
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mPath1:Landroid/graphics/Path;

    goto :goto_0

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mPath1:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 581
    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISlideView;->isLayoutRtl()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 582
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mPath1:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISlideView;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/coui/appcompat/widget/COUISlideView;->mRadius:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 583
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mPath1:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISlideView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 584
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mPath1:Landroid/graphics/Path;

    iget v2, p0, Lcom/coui/appcompat/widget/COUISlideView;->mRadius:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISlideView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    .line 586
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mPath1:Landroid/graphics/Path;

    iget v2, p0, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISlideView;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/coui/appcompat/widget/COUISlideView;->mRadius:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 587
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mPath1:Landroid/graphics/Path;

    iget v2, p0, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISlideView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 588
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mPath1:Landroid/graphics/Path;

    iget v2, p0, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUISlideView;->mRadius:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISlideView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 591
    :goto_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mPath1:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 592
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mPath1:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 593
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mPathArc:Landroid/graphics/Path;

    if-nez v0, :cond_2

    .line 594
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mPathArc:Landroid/graphics/Path;

    goto :goto_2

    .line 596
    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mPathArc:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 600
    :goto_2
    const/4 v0, 0x0

    .line 601
    .local v0, "mRectF":Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISlideView;->isLayoutRtl()Z

    move-result v2

    const/high16 v3, 0x42b40000    # 90.0f

    if-eqz v2, :cond_3

    .line 602
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISlideView;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/coui/appcompat/widget/COUISlideView;->mRadius:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/coui/appcompat/widget/COUISlideView;->mRadius:I

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISlideView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v2, v1, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v0, v2

    .line 603
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISlideView;->mPathArc:Landroid/graphics/Path;

    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual {v1, v0, v3, v2}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    goto :goto_3

    .line 605
    :cond_3
    new-instance v2, Landroid/graphics/RectF;

    iget v4, p0, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    iget v5, p0, Lcom/coui/appcompat/widget/COUISlideView;->mRadius:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISlideView;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/coui/appcompat/widget/COUISlideView;->mRadius:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    int-to-float v6, v6

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISlideView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v0, v2

    .line 606
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISlideView;->mPathArc:Landroid/graphics/Path;

    invoke-virtual {v2, v0, v1, v3}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 609
    :goto_3
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISlideView;->mPathArc:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 610
    return-void
.end method

.method private clipTopRound(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 534
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mPath1:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 535
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mPath1:Landroid/graphics/Path;

    goto :goto_0

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mPath1:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 541
    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISlideView;->isLayoutRtl()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 542
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mPath1:Landroid/graphics/Path;

    iget v2, p0, Lcom/coui/appcompat/widget/COUISlideView;->mRadius:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 543
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mPath1:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 544
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mPath1:Landroid/graphics/Path;

    iget v2, p0, Lcom/coui/appcompat/widget/COUISlideView;->mRadius:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    .line 546
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mPath1:Landroid/graphics/Path;

    iget v2, p0, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/coui/appcompat/widget/COUISlideView;->mRadius:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 547
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mPath1:Landroid/graphics/Path;

    iget v2, p0, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 548
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mPath1:Landroid/graphics/Path;

    iget v2, p0, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUISlideView;->mRadius:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 551
    :goto_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mPath1:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 552
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mPath1:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 553
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mPathArc:Landroid/graphics/Path;

    if-nez v0, :cond_2

    .line 554
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mPathArc:Landroid/graphics/Path;

    goto :goto_2

    .line 556
    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mPathArc:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 561
    :goto_2
    const/4 v0, 0x0

    .line 562
    .local v0, "mRectF":Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISlideView;->isLayoutRtl()Z

    move-result v2

    const/high16 v3, -0x3d4c0000    # -90.0f

    if-eqz v2, :cond_3

    .line 563
    new-instance v2, Landroid/graphics/RectF;

    iget v4, p0, Lcom/coui/appcompat/widget/COUISlideView;->mRadius:I

    int-to-float v4, v4

    iget v5, p0, Lcom/coui/appcompat/widget/COUISlideView;->mRadius:I

    int-to-float v5, v5

    invoke-direct {v2, v1, v1, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v0, v2

    .line 564
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISlideView;->mPathArc:Landroid/graphics/Path;

    const/high16 v2, -0x3ccc0000    # -180.0f

    invoke-virtual {v1, v0, v3, v2}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    goto :goto_3

    .line 566
    :cond_3
    new-instance v2, Landroid/graphics/RectF;

    iget v4, p0, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    iget v5, p0, Lcom/coui/appcompat/widget/COUISlideView;->mRadius:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    int-to-float v5, v5

    iget v6, p0, Lcom/coui/appcompat/widget/COUISlideView;->mRadius:I

    int-to-float v6, v6

    invoke-direct {v2, v4, v1, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v0, v2

    .line 567
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISlideView;->mPathArc:Landroid/graphics/Path;

    invoke-virtual {v2, v0, v1, v3}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 570
    :goto_3
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISlideView;->mPathArc:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 571
    return-void
.end method

.method private drawDiver(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 503
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 504
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mDiver:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISlideView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISlideView;->mDiver:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISlideView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISlideView;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 505
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mDiver:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 506
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 507
    return-void
.end method

.method private drawItemBackground(Landroid/graphics/Canvas;)V
    .locals 31
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 613
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget v1, v0, Lcom/coui/appcompat/widget/COUISlideView;->mItemCount:I

    if-gtz v1, :cond_0

    .line 614
    return-void

    .line 617
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 619
    iget v1, v0, Lcom/coui/appcompat/widget/COUISlideView;->mAlpha:I

    if-lez v1, :cond_1

    .line 620
    iget v1, v0, Lcom/coui/appcompat/widget/COUISlideView;->mAlpha:I

    shl-int/lit8 v1, v1, 0x18

    iget v2, v0, Lcom/coui/appcompat/widget/COUISlideView;->mSlideBackColor:I

    or-int/2addr v1, v2

    .line 621
    .local v1, "color":I
    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 625
    .end local v1    # "color":I
    :cond_1
    const/4 v1, 0x1

    .line 626
    .local v1, "mirrorFactor":I
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 627
    const/4 v1, -0x1

    .line 632
    .end local v1    # "mirrorFactor":I
    .local v8, "mirrorFactor":I
    :goto_0
    move v8, v1

    goto :goto_1

    .line 629
    .end local v8    # "mirrorFactor":I
    .restart local v1    # "mirrorFactor":I
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 632
    .end local v1    # "mirrorFactor":I
    .restart local v8    # "mirrorFactor":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 633
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 636
    :cond_3
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUISlideView;->mLayout:Landroid/text/Layout;

    if-nez v1, :cond_4

    .line 637
    new-instance v1, Landroid/text/StaticLayout;

    iget-object v10, v0, Lcom/coui/appcompat/widget/COUISlideView;->mStringDelete:Ljava/lang/String;

    iget-object v2, v0, Lcom/coui/appcompat/widget/COUISlideView;->mPaint:Landroid/graphics/Paint;

    move-object v11, v2

    check-cast v11, Landroid/text/TextPaint;

    iget v12, v0, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    sget-object v13, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v16}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v1, v0, Lcom/coui/appcompat/widget/COUISlideView;->mLayout:Landroid/text/Layout;

    .line 641
    :cond_4
    invoke-virtual/range {p0 .. p1}, Lcom/coui/appcompat/widget/COUISlideView;->getLineRangeForDraw(Landroid/graphics/Canvas;)J

    move-result-wide v9

    .line 642
    .local v9, "lineRange":J
    invoke-static {v9, v10}, Lcom/coui/appcompat/widget/COUISlideView;->unpackRangeStartFromLong(J)I

    move-result v11

    .line 643
    .local v11, "firstLine":I
    if-gez v11, :cond_5

    .line 644
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 645
    return-void

    .line 648
    :cond_5
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    move-object v12, v1

    .line 649
    .local v12, "mRecPaint":Landroid/graphics/Paint;
    iget v1, v0, Lcom/coui/appcompat/widget/COUISlideView;->mItemBackgroundColor:I

    .line 650
    .local v1, "rectColor":I
    iget v2, v0, Lcom/coui/appcompat/widget/COUISlideView;->mAlpha:I

    if-lez v2, :cond_6

    .line 651
    const v2, 0xffffff

    and-int/2addr v1, v2

    .line 652
    iget v2, v0, Lcom/coui/appcompat/widget/COUISlideView;->mAlpha:I

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v2, v1

    invoke-virtual {v12, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 656
    .end local v1    # "rectColor":I
    .local v13, "rectColor":I
    :goto_2
    move v13, v1

    goto :goto_3

    .line 654
    .end local v13    # "rectColor":I
    .restart local v1    # "rectColor":I
    :cond_6
    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 656
    .end local v1    # "rectColor":I
    .restart local v13    # "rectColor":I
    :goto_3
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 657
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->getSlideViewScrollX()I

    move-result v2

    mul-int/2addr v2, v8

    sub-int v14, v1, v2

    .line 658
    .local v14, "itemGroupLeft":I
    mul-int v1, v14, v8

    int-to-float v2, v1

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->getWidth()I

    move-result v1

    mul-int/2addr v1, v8

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->getHeight()I

    move-result v1

    int-to-float v5, v1

    move-object/from16 v1, p1

    move-object v6, v12

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 660
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUISlideView;->mLayout:Landroid/text/Layout;

    add-int/lit8 v2, v11, 0x1

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    .line 661
    .local v1, "lbottom":I
    iget-object v2, v0, Lcom/coui/appcompat/widget/COUISlideView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v11}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v2

    sub-int v2, v1, v2

    .line 662
    .local v2, "lbaseline":I
    iget-object v3, v0, Lcom/coui/appcompat/widget/COUISlideView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    .line 663
    .local v3, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    iget v4, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget v5, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    float-to-double v5, v5

    .line 664
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    sub-int/2addr v4, v5

    .line 666
    .local v4, "h2":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4
    iget v6, v0, Lcom/coui/appcompat/widget/COUISlideView;->mItemCount:I

    if-ge v5, v6, :cond_f

    .line 668
    iget-object v6, v0, Lcom/coui/appcompat/widget/COUISlideView;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/coui/appcompat/widget/COUISlideMenuItem;

    invoke-virtual {v6}, Lcom/coui/appcompat/widget/COUISlideMenuItem;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 669
    .local v6, "tempDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v15, v0, Lcom/coui/appcompat/widget/COUISlideView;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/coui/appcompat/widget/COUISlideMenuItem;

    invoke-virtual {v15}, Lcom/coui/appcompat/widget/COUISlideMenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 671
    .local v15, "iconDrawable":Landroid/graphics/drawable/Drawable;
    const/16 v16, 0x0

    .line 672
    .local v16, "extraMove":I
    const/16 v17, 0x0

    .line 673
    .local v17, "deleteScroll":I
    const/16 v18, 0x0

    .line 675
    .local v18, "position":I
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->getSlideViewScrollX()I

    move-result v19

    move/from16 v20, v1

    .end local v1    # "lbottom":I
    .local v20, "lbottom":I
    mul-int v1, v19, v8

    move-object/from16 v21, v3

    .end local v3    # "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    .local v21, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    iget v3, v0, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    if-le v1, v3, :cond_7

    iget-boolean v1, v0, Lcom/coui/appcompat/widget/COUISlideView;->mhasStartAnimation:Z

    if-nez v1, :cond_7

    .line 676
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->getSlideViewScrollX()I

    move-result v1

    mul-int/2addr v1, v8

    iget v3, v0, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    sub-int v16, v1, v3

    .line 679
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->getSlideViewScrollX()I

    move-result v1

    mul-int/2addr v1, v8

    iget v3, v0, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    if-le v1, v3, :cond_8

    iget-boolean v1, v0, Lcom/coui/appcompat/widget/COUISlideView;->mhasStartAnimation:Z

    if-eqz v1, :cond_8

    .line 680
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->getSlideViewScrollX()I

    move-result v1

    mul-int/2addr v1, v8

    iget v3, v0, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    sub-int v17, v1, v3

    .line 686
    :cond_8
    iget-boolean v1, v0, Lcom/coui/appcompat/widget/COUISlideView;->mEnableFastDelete:Z

    if-eqz v1, :cond_a

    iget-boolean v1, v0, Lcom/coui/appcompat/widget/COUISlideView;->mSlideDelete:Z

    if-eqz v1, :cond_a

    .line 687
    iget v1, v0, Lcom/coui/appcompat/widget/COUISlideView;->mItemCount:I

    add-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->getWidth()I

    move-result v1

    iget v3, v0, Lcom/coui/appcompat/widget/COUISlideView;->mUpScrollX:I

    mul-int/2addr v3, v8

    sub-int/2addr v1, v3

    if-eqz v1, :cond_9

    .line 688
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->getWidth()I

    move-result v1

    iget v3, v0, Lcom/coui/appcompat/widget/COUISlideView;->mUpScrollX:I

    mul-int/2addr v3, v8

    sub-int/2addr v1, v3

    iget v3, v0, Lcom/coui/appcompat/widget/COUISlideView;->mSlideItemPadding:I

    add-int/2addr v1, v3

    iget v3, v0, Lcom/coui/appcompat/widget/COUISlideView;->mItemCount:I

    sub-int/2addr v3, v5

    move-object/from16 v22, v6

    .end local v6    # "tempDrawable":Landroid/graphics/drawable/Drawable;
    .local v22, "tempDrawable":Landroid/graphics/drawable/Drawable;
    iget v6, v0, Lcom/coui/appcompat/widget/COUISlideView;->mUpScrollX:I

    mul-int/2addr v6, v8

    move-wide/from16 v23, v9

    .end local v9    # "lineRange":J
    .local v23, "lineRange":J
    iget v9, v0, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    sub-int/2addr v6, v9

    mul-int/2addr v3, v6

    iget v6, v0, Lcom/coui/appcompat/widget/COUISlideView;->mItemCount:I

    add-int/lit8 v6, v6, 0x1

    div-int/2addr v3, v6

    add-int/2addr v1, v3

    iget v3, v0, Lcom/coui/appcompat/widget/COUISlideView;->mItemCount:I

    sub-int/2addr v3, v5

    iget v6, v0, Lcom/coui/appcompat/widget/COUISlideView;->mUpScrollX:I

    mul-int/2addr v6, v8

    iget v9, v0, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    sub-int/2addr v6, v9

    mul-int/2addr v3, v6

    iget v6, v0, Lcom/coui/appcompat/widget/COUISlideView;->mItemCount:I

    add-int/lit8 v6, v6, 0x1

    div-int/2addr v3, v6

    .line 689
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->getSlideViewScrollX()I

    move-result v6

    iget v9, v0, Lcom/coui/appcompat/widget/COUISlideView;->mUpScrollX:I

    sub-int/2addr v6, v9

    mul-int/2addr v3, v6

    mul-int/2addr v3, v8

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->getWidth()I

    move-result v6

    iget v9, v0, Lcom/coui/appcompat/widget/COUISlideView;->mUpScrollX:I

    mul-int/2addr v9, v8

    sub-int/2addr v6, v9

    div-int/2addr v3, v6

    add-int v18, v1, v3

    goto :goto_5

    .line 695
    .end local v22    # "tempDrawable":Landroid/graphics/drawable/Drawable;
    .end local v23    # "lineRange":J
    .restart local v6    # "tempDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v9    # "lineRange":J
    :cond_9
    move-object/from16 v22, v6

    move-wide/from16 v23, v9

    .end local v6    # "tempDrawable":Landroid/graphics/drawable/Drawable;
    .end local v9    # "lineRange":J
    .restart local v22    # "tempDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v23    # "lineRange":J
    goto :goto_5

    .line 692
    .end local v22    # "tempDrawable":Landroid/graphics/drawable/Drawable;
    .end local v23    # "lineRange":J
    .restart local v6    # "tempDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v9    # "lineRange":J
    :cond_a
    move-object/from16 v22, v6

    move-wide/from16 v23, v9

    .end local v6    # "tempDrawable":Landroid/graphics/drawable/Drawable;
    .end local v9    # "lineRange":J
    .restart local v22    # "tempDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v23    # "lineRange":J
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->getSlideViewScrollX()I

    move-result v3

    mul-int/2addr v3, v8

    sub-int/2addr v1, v3

    iget v3, v0, Lcom/coui/appcompat/widget/COUISlideView;->mSlideItemPadding:I

    add-int/2addr v1, v3

    iget v3, v0, Lcom/coui/appcompat/widget/COUISlideView;->mItemCount:I

    sub-int/2addr v3, v5

    mul-int v3, v3, v16

    iget v6, v0, Lcom/coui/appcompat/widget/COUISlideView;->mItemCount:I

    add-int/lit8 v6, v6, 0x1

    div-int/2addr v3, v6

    add-int/2addr v1, v3

    add-int v18, v1, v17

    .line 695
    :goto_5
    mul-int v18, v18, v8

    .line 696
    iget v1, v0, Lcom/coui/appcompat/widget/COUISlideView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "j":I
    :goto_6
    if-le v1, v5, :cond_b

    .line 697
    iget-object v3, v0, Lcom/coui/appcompat/widget/COUISlideView;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/widget/COUISlideMenuItem;

    invoke-virtual {v3}, Lcom/coui/appcompat/widget/COUISlideMenuItem;->getWidth()I

    move-result v3

    mul-int/2addr v3, v8

    add-int v18, v18, v3

    .line 696
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 700
    .end local v1    # "j":I
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->getHeight()I

    move-result v1

    .line 701
    .local v1, "h":I
    move/from16 v3, v18

    .line 702
    .local v3, "boundsLeft":I
    iget-object v6, v0, Lcom/coui/appcompat/widget/COUISlideView;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/coui/appcompat/widget/COUISlideMenuItem;

    invoke-virtual {v6}, Lcom/coui/appcompat/widget/COUISlideMenuItem;->getWidth()I

    move-result v6

    add-int v6, v18, v6

    .line 703
    .local v6, "boundsRight":I
    const/4 v9, 0x0

    .line 704
    .local v9, "boundsTop":I
    move v10, v1

    .line 706
    .local v10, "boundsBottom":I
    nop

    .line 707
    move/from16 v25, v6

    .end local v6    # "boundsRight":I
    .local v25, "boundsRight":I
    iget-object v6, v0, Lcom/coui/appcompat/widget/COUISlideView;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/coui/appcompat/widget/COUISlideMenuItem;

    invoke-virtual {v6}, Lcom/coui/appcompat/widget/COUISlideMenuItem;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_c

    .line 708
    iget-object v6, v0, Lcom/coui/appcompat/widget/COUISlideView;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/coui/appcompat/widget/COUISlideMenuItem;

    invoke-virtual {v6}, Lcom/coui/appcompat/widget/COUISlideMenuItem;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move/from16 v26, v9

    .end local v9    # "boundsTop":I
    .local v26, "boundsTop":I
    iget-object v9, v0, Lcom/coui/appcompat/widget/COUISlideView;->mItems:Ljava/util/ArrayList;

    .line 709
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/coui/appcompat/widget/COUISlideMenuItem;

    invoke-virtual {v9}, Lcom/coui/appcompat/widget/COUISlideMenuItem;->getWidth()I

    move-result v9

    mul-int/2addr v9, v8

    div-int/lit8 v9, v9, 0x2

    add-int v9, v18, v9

    int-to-float v9, v9

    div-int/lit8 v19, v1, 0x2

    add-int v19, v2, v19

    div-int/lit8 v27, v4, 0x2

    move/from16 v28, v2

    .end local v2    # "lbaseline":I
    .local v28, "lbaseline":I
    sub-int v2, v19, v27

    int-to-float v2, v2

    move/from16 v29, v4

    .end local v4    # "h2":I
    .local v29, "h2":I
    iget-object v4, v0, Lcom/coui/appcompat/widget/COUISlideView;->mPaint:Landroid/graphics/Paint;

    .line 708
    invoke-virtual {v7, v6, v9, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_7

    .line 714
    .end local v26    # "boundsTop":I
    .end local v28    # "lbaseline":I
    .end local v29    # "h2":I
    .restart local v2    # "lbaseline":I
    .restart local v4    # "h2":I
    .restart local v9    # "boundsTop":I
    :cond_c
    move/from16 v28, v2

    move/from16 v29, v4

    move/from16 v26, v9

    .end local v2    # "lbaseline":I
    .end local v4    # "h2":I
    .end local v9    # "boundsTop":I
    .restart local v26    # "boundsTop":I
    .restart local v28    # "lbaseline":I
    .restart local v29    # "h2":I
    :goto_7
    if-eqz v15, :cond_e

    .line 715
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 716
    .local v2, "iconWidth":I
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 717
    .local v4, "iconHeight":I
    iget-object v6, v0, Lcom/coui/appcompat/widget/COUISlideView;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/coui/appcompat/widget/COUISlideMenuItem;

    invoke-virtual {v6}, Lcom/coui/appcompat/widget/COUISlideMenuItem;->getWidth()I

    move-result v6

    sub-int/2addr v6, v2

    mul-int/2addr v6, v8

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v3

    .line 718
    .local v6, "iconLeft":I
    sub-int v9, v1, v4

    div-int/lit8 v9, v9, 0x2

    .line 719
    .local v9, "iconTop":I
    mul-int v19, v2, v8

    add-int v0, v6, v19

    .line 721
    .local v0, "iconRight":I
    if-le v6, v0, :cond_d

    .line 722
    move/from16 v19, v6

    .line 723
    .local v19, "temp":I
    move v6, v0

    .line 724
    move/from16 v0, v19

    .line 726
    .end local v19    # "temp":I
    :cond_d
    move/from16 v30, v1

    .end local v1    # "h":I
    .local v30, "h":I
    add-int v1, v9, v4

    invoke-virtual {v15, v6, v9, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 727
    invoke-virtual {v15, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 666
    .end local v0    # "iconRight":I
    .end local v2    # "iconWidth":I
    .end local v3    # "boundsLeft":I
    .end local v4    # "iconHeight":I
    .end local v6    # "iconLeft":I
    .end local v9    # "iconTop":I
    .end local v10    # "boundsBottom":I
    .end local v15    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    .end local v16    # "extraMove":I
    .end local v17    # "deleteScroll":I
    .end local v18    # "position":I
    .end local v22    # "tempDrawable":Landroid/graphics/drawable/Drawable;
    .end local v25    # "boundsRight":I
    .end local v26    # "boundsTop":I
    .end local v30    # "h":I
    :cond_e
    add-int/lit8 v5, v5, 0x1

    move/from16 v1, v20

    move-object/from16 v3, v21

    move-wide/from16 v9, v23

    move/from16 v2, v28

    move/from16 v4, v29

    move-object/from16 v0, p0

    goto/16 :goto_4

    .line 730
    .end local v5    # "i":I
    .end local v20    # "lbottom":I
    .end local v21    # "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    .end local v23    # "lineRange":J
    .end local v28    # "lbaseline":I
    .end local v29    # "h2":I
    .local v1, "lbottom":I
    .local v2, "lbaseline":I
    .local v3, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    .local v4, "h2":I
    .local v9, "lineRange":J
    :cond_f
    move/from16 v20, v1

    move/from16 v28, v2

    move-object/from16 v21, v3

    move/from16 v29, v4

    move-wide/from16 v23, v9

    .end local v1    # "lbottom":I
    .end local v2    # "lbaseline":I
    .end local v3    # "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    .end local v4    # "h2":I
    .end local v9    # "lineRange":J
    .restart local v20    # "lbottom":I
    .restart local v21    # "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    .restart local v23    # "lineRange":J
    .restart local v28    # "lbaseline":I
    .restart local v29    # "h2":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 731
    return-void
.end method

.method private endDrag()V
    .locals 1

    .line 1442
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISlideView;->recycleVelocityTracker()V

    .line 1443
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mIsBeingDragged:Z

    .line 1444
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mIsUnableToDrag:Z

    .line 1445
    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .line 1461
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1462
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 1464
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 1466
    :goto_0
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .line 1455
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1456
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1458
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 9

    .line 417
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISlideView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mContext:Landroid/content/Context;

    .line 418
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    .line 419
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/coui/appcompat/widget/COUISlideView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 423
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISlideView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcoui/support/appcompat/R$dimen;->TD08:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 424
    .local v0, "textSize":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISlideView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    .line 425
    .local v2, "fontScale":F
    const/4 v3, 0x2

    .line 426
    .local v3, "scaleLevel":I
    int-to-float v4, v0

    invoke-static {v4, v2, v3}, Lcom/coui/appcompat/util/COUIChangeTextUtil;->getSuitableFontSize(FFI)F

    move-result v4

    float-to-int v0, v4

    .line 428
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISlideView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcoui/support/appcompat/R$dimen;->coui_slideview_touch_slop:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/widget/COUISlideView;->mSlideTouchSlop:I

    .line 429
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISlideView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcoui/support/appcompat/R$dimen;->coui_slideview_over_slide_delete:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/widget/COUISlideView;->mOverSlideDeleteSlop:I

    .line 430
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISlideView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcoui/support/appcompat/R$dimen;->coui_slideview_quick_delete:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/widget/COUISlideView;->mQuickDeleteSlop:I

    .line 431
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4}, Landroid/text/TextPaint;-><init>()V

    iput-object v4, p0, Lcom/coui/appcompat/widget/COUISlideView;->mPaint:Landroid/graphics/Paint;

    .line 432
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUISlideView;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/coui/appcompat/widget/COUISlideView;->mSlideTextColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 433
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUISlideView;->mPaint:Landroid/graphics/Paint;

    int-to-float v5, v0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 434
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUISlideView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcoui/support/appcompat/R$dimen;->M5:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/widget/COUISlideView;->mTextPadding:I

    .line 435
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUISlideView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcoui/support/appcompat/R$dimen;->M3:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/widget/COUISlideView;->mPaddingRight:I

    .line 436
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUISlideView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcoui/support/appcompat/R$dimen;->coui_slideview_group_round_radius:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/widget/COUISlideView;->mRadius:I

    .line 437
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUISlideView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 438
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUISlideView;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 439
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/coui/appcompat/widget/COUISlideView;->mItems:Ljava/util/ArrayList;

    .line 440
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUISlideView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    .line 441
    .local v4, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v5

    iput v5, p0, Lcom/coui/appcompat/widget/COUISlideView;->mMaximumVelocity:I

    .line 442
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/COUISlideView;->setDeleteEnable(Z)V

    .line 443
    new-instance v5, Landroid/text/TextPaint;

    invoke-direct {v5}, Landroid/text/TextPaint;-><init>()V

    iput-object v5, p0, Lcom/coui/appcompat/widget/COUISlideView;->mLinePaint:Landroid/graphics/Paint;

    .line 444
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUISlideView;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 445
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUISlideView;->mLinePaint:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/coui/appcompat/widget/COUISlideView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcoui/support/appcompat/R$color;->coui_slideview_delete_divider_color:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 446
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUISlideView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 448
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISlideView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcoui/support/appcompat/R$drawable;->coui_divider_horizontal_default:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUISlideView;->mDiver:Landroid/graphics/drawable/Drawable;

    .line 449
    const v1, 0x3e083127    # 0.133f

    const/4 v5, 0x0

    const v7, 0x3e99999a    # 0.3f

    invoke-static {v1, v5, v7, v6}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUISlideView;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 450
    new-instance v1, Landroid/widget/Scroller;

    iget-object v5, p0, Lcom/coui/appcompat/widget/COUISlideView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/coui/appcompat/widget/COUISlideView;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v1, v5, v6}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUISlideView;->mScroller:Landroid/widget/Scroller;

    .line 451
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/COUISlideView;->setOrientation(I)V

    .line 453
    new-instance v5, Landroid/widget/AbsListView$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v5}, Lcom/coui/appcompat/widget/COUISlideView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 455
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISlideView;->itemWidthChange()V

    .line 456
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUISlideView;->mContext:Landroid/content/Context;

    sget v6, Lcoui/support/appcompat/R$string;->coui_slide_delete:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/coui/appcompat/widget/COUISlideView;->mStringDelete:Ljava/lang/String;

    .line 457
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUISlideView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcoui/support/appcompat/R$color;->coui_slideview_backcolor:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Lcom/coui/appcompat/widget/COUISlideView;->mSlideBackColor:I

    .line 458
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    iget v6, p0, Lcom/coui/appcompat/widget/COUISlideView;->mSlideBackColor:I

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v5, p0, Lcom/coui/appcompat/widget/COUISlideView;->mSlideColorDrawable:Landroid/graphics/drawable/Drawable;

    .line 459
    iget v5, p0, Lcom/coui/appcompat/widget/COUISlideView;->mSlideBackColor:I

    const v6, 0xffffff

    and-int/2addr v5, v6

    iput v5, p0, Lcom/coui/appcompat/widget/COUISlideView;->mSlideBackColor:I

    .line 460
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUISlideView;->mSlideColorDrawable:Landroid/graphics/drawable/Drawable;

    const-string v6, "Alpha"

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_0

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/coui/appcompat/widget/COUISlideView;->mFadeAnim:Landroid/animation/ValueAnimator;

    .line 461
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUISlideView;->mFadeAnim:Landroid/animation/ValueAnimator;

    iget-object v6, p0, Lcom/coui/appcompat/widget/COUISlideView;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 462
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUISlideView;->mFadeAnim:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/coui/appcompat/widget/COUISlideView$1;

    invoke-direct {v6, p0}, Lcom/coui/appcompat/widget/COUISlideView$1;-><init>(Lcom/coui/appcompat/widget/COUISlideView;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 470
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISlideView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcoui/support/appcompat/R$dimen;->coui_slide_view_item_padding:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/coui/appcompat/widget/COUISlideView;->mSlideItemPadding:I

    .line 471
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/COUISlideView;->setWillNotDraw(Z)V

    .line 472
    return-void

    :array_0
    .array-data 4
        0x0
        0xd2
    .end array-data
.end method

.method private itemWidthChange()V
    .locals 3

    .line 403
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    .line 404
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISlideView;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/COUISlideView;->mItemCount:I

    .line 405
    nop

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/coui/appcompat/widget/COUISlideView;->mItemCount:I

    if-ge v0, v1, :cond_0

    .line 406
    iget v1, p0, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISlideView;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/widget/COUISlideMenuItem;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUISlideMenuItem;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    .line 405
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 409
    .end local v0    # "i":I
    :cond_0
    iget v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    .line 410
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISlideView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$dimen;->coui_slide_view_item_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    .line 411
    return-void
.end method

.method public static packRangeInLong(II)J
    .locals 4
    .param p0, "start"    # I
    .param p1, "end"    # I

    .line 807
    int-to-long v0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p1

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .line 1469
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1470
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1471
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1473
    :cond_0
    return-void
.end method

.method private requestParentDisallowInterceptTouchEvent(Z)V
    .locals 1
    .param p1, "disallowIntercept"    # Z

    .line 1448
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISlideView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1449
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 1450
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1452
    :cond_0
    return-void
.end method

.method public static unpackRangeStartFromLong(J)I
    .locals 2
    .param p0, "range"    # J

    .line 817
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public addItem(ILcom/coui/appcompat/widget/COUISlideMenuItem;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "item"    # Lcom/coui/appcompat/widget/COUISlideMenuItem;

    .line 259
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    .line 260
    const/4 v0, 0x0

    .line 261
    .local v0, "width":I
    invoke-virtual {p2}, Lcom/coui/appcompat/widget/COUISlideMenuItem;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 262
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISlideView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/coui/appcompat/widget/COUISlideMenuItem;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/coui/appcompat/widget/COUISlideView;->mTextPadding:I

    mul-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    .line 264
    :cond_0
    invoke-virtual {p2}, Lcom/coui/appcompat/widget/COUISlideMenuItem;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 265
    invoke-virtual {p2, v0}, Lcom/coui/appcompat/widget/COUISlideMenuItem;->setWidth(I)V

    .line 269
    .end local v0    # "width":I
    :cond_1
    if-gez p1, :cond_2

    .line 270
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 272
    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 275
    :goto_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISlideView;->itemWidthChange()V

    .line 276
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISlideView;->postInvalidate()V

    .line 277
    return-void
.end method

.method public addItem(Lcom/coui/appcompat/widget/COUISlideMenuItem;)V
    .locals 1
    .param p1, "item"    # Lcom/coui/appcompat/widget/COUISlideMenuItem;

    .line 249
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/coui/appcompat/widget/COUISlideView;->addItem(ILcom/coui/appcompat/widget/COUISlideMenuItem;)V

    .line 250
    return-void
.end method

.method public animationScrollTo(II)V
    .locals 5
    .param p1, "destX"    # I
    .param p2, "destY"    # I

    .line 1583
    move v0, p1

    .line 1584
    .local v0, "finalLocation":I
    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    int-to-float v2, v0

    invoke-direct {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    .line 1585
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    .line 1586
    const/high16 v2, 0x43480000    # 200.0f

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    .line 1587
    .local v1, "springForce":Landroidx/dynamicanimation/animation/SpringForce;
    new-instance v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUISlideView;->mSlideView:Landroid/view/View;

    sget-object v4, Landroidx/dynamicanimation/animation/SpringAnimation;->SCROLL_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v2, v3, v4}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    invoke-virtual {v2, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/COUISlideView;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 1588
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISlideView;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 1589
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISlideView;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v3, Lcom/coui/appcompat/widget/COUISlideView$6;

    invoke-direct {v3, p0}, Lcom/coui/appcompat/widget/COUISlideView$6;-><init>(Lcom/coui/appcompat/widget/COUISlideView;)V

    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 1595
    return-void
.end method

.method public computeScroll()V
    .locals 3

    .line 1654
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1655
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mScrollAll:Z

    if-eqz v0, :cond_0

    .line 1656
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISlideView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/widget/COUISlideView;->scrollTo(II)V

    goto :goto_0

    .line 1658
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mSlideView:Landroid/view/View;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISlideView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISlideView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    .line 1661
    :goto_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISlideView;->postInvalidate()V

    .line 1663
    :cond_1
    return-void
.end method

.method public enableFastDelete(Z)V
    .locals 0
    .param p1, "enableFastDelete"    # Z

    .line 1769
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUISlideView;->mEnableFastDelete:Z

    .line 1770
    return-void
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .line 841
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mSlideView:Landroid/view/View;

    return-object v0
.end method

.method public getDeleteItemText()Ljava/lang/CharSequence;
    .locals 2

    .line 383
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mCanDelete:Z

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mItems:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/COUISlideMenuItem;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUISlideMenuItem;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 386
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDiver()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 931
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mDiver:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDiverEnable()Z
    .locals 1

    .line 896
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mDiverEnable:Z

    return v0
.end method

.method public getDrawItemEnable()Z
    .locals 1

    .line 877
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mDrawItemEnable:Z

    return v0
.end method

.method public getHolderWidth()I
    .locals 1

    .line 1603
    iget v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    return v0
.end method

.method public getLineForVertical(I)I
    .locals 6
    .param p1, "vertical"    # I

    .line 776
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    .line 777
    .local v0, "high":I
    const/4 v1, -0x1

    .line 778
    .local v1, "low":I
    const/4 v2, 0x0

    move v3, v1

    move v1, v0

    move v0, v2

    .line 780
    .local v0, "guess":I
    .local v1, "high":I
    .local v3, "low":I
    :goto_0
    sub-int v4, v1, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 781
    add-int v4, v1, v3

    div-int/lit8 v0, v4, 0x2

    .line 783
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUISlideView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    if-le v4, p1, :cond_0

    .line 784
    move v1, v0

    goto :goto_0

    .line 786
    :cond_0
    move v3, v0

    goto :goto_0

    .line 791
    :cond_1
    if-gez v3, :cond_2

    .line 792
    return v2

    .line 794
    :cond_2
    return v3
.end method

.method public getLineRangeForDraw(Landroid/graphics/Canvas;)J
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 746
    const/4 v0, 0x0

    .line 747
    .local v0, "dtop":I
    const/4 v1, 0x0

    .line 749
    .local v1, "dbottom":I
    sget-object v2, Lcom/coui/appcompat/widget/COUISlideView;->sTempRect:Landroid/graphics/Rect;

    monitor-enter v2

    .line 750
    :try_start_0
    sget-object v3, Lcom/coui/appcompat/widget/COUISlideView;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-nez v3, :cond_0

    .line 752
    invoke-static {v5, v4}, Lcom/coui/appcompat/widget/COUISlideView;->packRangeInLong(II)J

    move-result-wide v3

    monitor-exit v2

    return-wide v3

    .line 755
    :cond_0
    sget-object v3, Lcom/coui/appcompat/widget/COUISlideView;->sTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move v0, v3

    .line 756
    sget-object v3, Lcom/coui/appcompat/widget/COUISlideView;->sTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    move v1, v3

    .line 757
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 759
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 760
    .local v2, "top":I
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUISlideView;->mLayout:Landroid/text/Layout;

    iget-object v6, p0, Lcom/coui/appcompat/widget/COUISlideView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v6}, Landroid/text/Layout;->getLineCount()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 762
    .local v3, "bottom":I
    if-lt v2, v3, :cond_1

    .line 763
    invoke-static {v5, v4}, Lcom/coui/appcompat/widget/COUISlideView;->packRangeInLong(II)J

    move-result-wide v4

    return-wide v4

    .line 765
    :cond_1
    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/COUISlideView;->getLineForVertical(I)I

    move-result v4

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/widget/COUISlideView;->getLineForVertical(I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/coui/appcompat/widget/COUISlideView;->packRangeInLong(II)J

    move-result-wide v4

    return-wide v4

    .line 757
    .end local v2    # "top":I
    .end local v3    # "bottom":I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public getScroll()Landroid/widget/Scroller;
    .locals 1

    .line 988
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method public getSlideEnable()Z
    .locals 1

    .line 859
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mSlideEnable:Z

    return v0
.end method

.method public getSlideViewScrollX()I
    .locals 2

    .line 1630
    const/4 v0, 0x0

    .line 1631
    .local v0, "scrollX":I
    iget-boolean v1, p0, Lcom/coui/appcompat/widget/COUISlideView;->mScrollAll:Z

    if-eqz v1, :cond_0

    .line 1632
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISlideView;->getScrollX()I

    move-result v0

    goto :goto_0

    .line 1634
    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISlideView;->mSlideView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v0

    .line 1636
    :goto_0
    return v0
.end method

.method public hasFocusable()Z
    .locals 2

    .line 936
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISlideView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 937
    return v1

    .line 939
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISlideView;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 940
    const/4 v0, 0x1

    return v0

    .line 942
    :cond_1
    return v1
.end method

.method public isLayoutRtl()Z
    .locals 3

    .line 1673
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-le v0, v2, :cond_1

    .line 1674
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISlideView;->getLayoutDirection()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    .line 1676
    :cond_1
    return v1
.end method

.method public isSliding()Z
    .locals 1

    .line 1760
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mhasStartAnimation:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 491
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 493
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mSlideEnable:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mDrawItemEnable:Z

    if-eqz v0, :cond_1

    .line 494
    :cond_0
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUISlideView;->drawItemBackground(Landroid/graphics/Canvas;)V

    .line 496
    :cond_1
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mDiverEnable:Z

    if-eqz v0, :cond_2

    .line 497
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUISlideView;->drawDiver(Landroid/graphics/Canvas;)V

    .line 500
    :cond_2
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 993
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/coui/appcompat/widget/COUISlideView;->mSlideEnable:Z

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 994
    return v3

    .line 996
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 999
    .local v2, "action":I
    const/4 v4, -0x1

    const/4 v5, 0x3

    if-eq v2, v5, :cond_15

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    goto/16 :goto_9

    .line 1007
    :cond_1
    if-eqz v2, :cond_3

    .line 1008
    iget-boolean v6, v0, Lcom/coui/appcompat/widget/COUISlideView;->mIsBeingDragged:Z

    if-eqz v6, :cond_2

    .line 1009
    return v5

    .line 1011
    :cond_2
    iget-boolean v6, v0, Lcom/coui/appcompat/widget/COUISlideView;->mIsUnableToDrag:Z

    if-eqz v6, :cond_3

    .line 1012
    return v3

    .line 1015
    :cond_3
    const/4 v6, 0x0

    .line 1016
    .local v6, "scrollX":I
    iget-boolean v7, v0, Lcom/coui/appcompat/widget/COUISlideView;->mScrollAll:Z

    if-eqz v7, :cond_4

    .line 1017
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->getScrollX()I

    move-result v6

    goto :goto_0

    .line 1019
    :cond_4
    iget-object v7, v0, Lcom/coui/appcompat/widget/COUISlideView;->mSlideView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScrollX()I

    move-result v6

    .line 1021
    :goto_0
    if-eqz v2, :cond_13

    const/4 v7, 0x2

    if-eq v2, v7, :cond_6

    const/4 v3, 0x6

    if-eq v2, v3, :cond_5

    goto/16 :goto_8

    .line 1087
    :cond_5
    goto/16 :goto_8

    .line 1023
    :cond_6
    iget v7, v0, Lcom/coui/appcompat/widget/COUISlideView;->mActivePointerId:I

    .line 1024
    .local v7, "activePointerId":I
    if-ne v7, v4, :cond_7

    .line 1026
    goto/16 :goto_8

    .line 1028
    :cond_7
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 1029
    .local v4, "pointerIndex":I
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    float-to-int v8, v8

    .line 1030
    .local v8, "x":I
    iget v9, v0, Lcom/coui/appcompat/widget/COUISlideView;->mLastMotionX:I

    sub-int v9, v8, v9

    .line 1031
    .local v9, "dx":I
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 1032
    .local v10, "xDiff":I
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    float-to-int v11, v11

    .line 1033
    .local v11, "y":I
    iget v12, v0, Lcom/coui/appcompat/widget/COUISlideView;->mInitialMotionY:I

    sub-int v12, v11, v12

    .line 1034
    .local v12, "dy":I
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v13

    .line 1035
    .local v13, "yDiff":I
    iput v8, v0, Lcom/coui/appcompat/widget/COUISlideView;->mLastMotionX:I

    .line 1036
    iput v11, v0, Lcom/coui/appcompat/widget/COUISlideView;->mLastMotionY:I

    .line 1037
    iget v14, v0, Lcom/coui/appcompat/widget/COUISlideView;->mTouchSlop:I

    if-le v10, v14, :cond_9

    int-to-float v14, v10

    const/high16 v15, 0x3f000000    # 0.5f

    mul-float/2addr v14, v15

    int-to-float v15, v13

    cmpl-float v14, v14, v15

    if-lez v14, :cond_9

    .line 1038
    iput-boolean v5, v0, Lcom/coui/appcompat/widget/COUISlideView;->mIsBeingDragged:Z

    .line 1039
    invoke-direct {v0, v5}, Lcom/coui/appcompat/widget/COUISlideView;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 1040
    if-lez v9, :cond_8

    iget v14, v0, Lcom/coui/appcompat/widget/COUISlideView;->mInitialMotionX:I

    iget v15, v0, Lcom/coui/appcompat/widget/COUISlideView;->mTouchSlop:I

    add-int/2addr v14, v15

    goto :goto_1

    :cond_8
    iget v14, v0, Lcom/coui/appcompat/widget/COUISlideView;->mInitialMotionX:I

    iget v15, v0, Lcom/coui/appcompat/widget/COUISlideView;->mTouchSlop:I

    sub-int/2addr v14, v15

    :goto_1
    iput v14, v0, Lcom/coui/appcompat/widget/COUISlideView;->mLastMotionX:I

    .line 1042
    iput v11, v0, Lcom/coui/appcompat/widget/COUISlideView;->mLastMotionY:I

    goto :goto_2

    .line 1043
    :cond_9
    iget v14, v0, Lcom/coui/appcompat/widget/COUISlideView;->mTouchSlop:I

    if-le v13, v14, :cond_a

    .line 1044
    iput-boolean v5, v0, Lcom/coui/appcompat/widget/COUISlideView;->mIsUnableToDrag:Z

    .line 1046
    :cond_a
    :goto_2
    iget-boolean v14, v0, Lcom/coui/appcompat/widget/COUISlideView;->mIsBeingDragged:Z

    if-eqz v14, :cond_14

    .line 1047
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->initVelocityTrackerIfNotExists()V

    .line 1048
    iget-object v14, v0, Lcom/coui/appcompat/widget/COUISlideView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v14, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1049
    const/4 v14, 0x0

    .line 1052
    .local v14, "newScrollX":I
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v15

    iget v3, v0, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    if-ge v15, v3, :cond_c

    iget v3, v0, Lcom/coui/appcompat/widget/COUISlideView;->mItemCount:I

    if-ne v3, v5, :cond_b

    goto :goto_3

    .line 1055
    :cond_b
    mul-int/lit8 v3, v9, 0x4

    div-int/lit8 v3, v3, 0x7

    sub-int v3, v6, v3

    goto :goto_4

    .line 1053
    :cond_c
    :goto_3
    mul-int/lit8 v3, v9, 0x3

    div-int/lit8 v3, v3, 0x7

    sub-int v3, v6, v3

    .line 1058
    .end local v14    # "newScrollX":I
    .local v3, "newScrollX":I
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->getLayoutDirection()I

    move-result v14

    if-eq v14, v5, :cond_d

    if-ltz v3, :cond_e

    .line 1059
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->getLayoutDirection()I

    move-result v14

    if-ne v14, v5, :cond_f

    if-lez v3, :cond_f

    .line 1060
    :cond_e
    const/4 v3, 0x0

    goto :goto_6

    .line 1061
    :cond_f
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v14

    iget v15, v0, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    if-le v14, v15, :cond_11

    .line 1062
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->getLayoutDirection()I

    move-result v14

    if-ne v14, v5, :cond_10

    iget v5, v0, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    neg-int v5, v5

    goto :goto_5

    :cond_10
    iget v5, v0, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    :goto_5
    move v3, v5

    .line 1066
    :cond_11
    :goto_6
    iget-boolean v5, v0, Lcom/coui/appcompat/widget/COUISlideView;->mScrollAll:Z

    if-eqz v5, :cond_12

    .line 1067
    const/4 v14, 0x0

    invoke-virtual {v0, v3, v14}, Lcom/coui/appcompat/widget/COUISlideView;->scrollTo(II)V

    goto :goto_7

    .line 1069
    :cond_12
    const/4 v14, 0x0

    iget-object v5, v0, Lcom/coui/appcompat/widget/COUISlideView;->mSlideView:Landroid/view/View;

    invoke-virtual {v5, v3, v14}, Landroid/view/View;->scrollTo(II)V

    .line 1071
    .end local v3    # "newScrollX":I
    :goto_7
    goto :goto_8

    .line 1075
    .end local v4    # "pointerIndex":I
    .end local v7    # "activePointerId":I
    .end local v8    # "x":I
    .end local v9    # "dx":I
    .end local v10    # "xDiff":I
    .end local v11    # "y":I
    .end local v12    # "dy":I
    .end local v13    # "yDiff":I
    :cond_13
    move v14, v3

    invoke-virtual {v1, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, v0, Lcom/coui/appcompat/widget/COUISlideView;->mActivePointerId:I

    .line 1076
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->initOrResetVelocityTracker()V

    .line 1077
    iget-object v3, v0, Lcom/coui/appcompat/widget/COUISlideView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1078
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Lcom/coui/appcompat/widget/COUISlideView;->mInitialMotionX:I

    iput v3, v0, Lcom/coui/appcompat/widget/COUISlideView;->mLastMotionX:I

    .line 1079
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Lcom/coui/appcompat/widget/COUISlideView;->mInitialMotionY:I

    iput v3, v0, Lcom/coui/appcompat/widget/COUISlideView;->mLastMotionY:I

    .line 1080
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/coui/appcompat/widget/COUISlideView;->mIsUnableToDrag:Z

    .line 1081
    iget-object v3, v0, Lcom/coui/appcompat/widget/COUISlideView;->mOnSlideListener:Lcom/coui/appcompat/widget/COUISlideView$OnSlideListener;

    if-eqz v3, :cond_14

    .line 1082
    iget-object v3, v0, Lcom/coui/appcompat/widget/COUISlideView;->mOnSlideListener:Lcom/coui/appcompat/widget/COUISlideView$OnSlideListener;

    invoke-interface {v3, v0, v5}, Lcom/coui/appcompat/widget/COUISlideView$OnSlideListener;->onSlide(Landroid/view/View;I)V

    .line 1091
    :cond_14
    :goto_8
    iget-boolean v3, v0, Lcom/coui/appcompat/widget/COUISlideView;->mIsBeingDragged:Z

    return v3

    .line 1000
    .end local v6    # "scrollX":I
    :cond_15
    :goto_9
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/coui/appcompat/widget/COUISlideView;->mIsBeingDragged:Z

    .line 1001
    iput-boolean v3, v0, Lcom/coui/appcompat/widget/COUISlideView;->mIsUnableToDrag:Z

    .line 1002
    iput v4, v0, Lcom/coui/appcompat/widget/COUISlideView;->mActivePointerId:I

    .line 1003
    return v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 22
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1104
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .line 1105
    .local v3, "actionMasked":I
    iget-boolean v0, v1, Lcom/coui/appcompat/widget/COUISlideView;->mSlideEnable:Z

    const/4 v4, 0x0

    if-nez v0, :cond_3

    .line 1106
    iget-boolean v0, v1, Lcom/coui/appcompat/widget/COUISlideView;->mDrawItemEnable:Z

    if-eqz v0, :cond_2

    iget-boolean v0, v1, Lcom/coui/appcompat/widget/COUISlideView;->mhasStartAnimation:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1110
    :cond_0
    if-nez v3, :cond_3

    .line 1111
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1112
    .local v0, "eX":F
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->isLayoutRtl()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1113
    iget v5, v1, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    int-to-float v5, v5

    cmpl-float v5, v0, v5

    if-lez v5, :cond_3

    .line 1114
    return v4

    .line 1117
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->getSlideViewScrollX()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpg-float v5, v0, v5

    if-gez v5, :cond_3

    .line 1118
    return v4

    .line 1107
    .end local v0    # "eX":F
    :cond_2
    :goto_0
    return v4

    .line 1124
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v5, v0

    .line 1125
    .local v5, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v6, v0

    .line 1126
    .local v6, "y":I
    const/4 v0, 0x0

    .line 1127
    .local v0, "scrollX":I
    iget-boolean v7, v1, Lcom/coui/appcompat/widget/COUISlideView;->mScrollAll:Z

    if-eqz v7, :cond_4

    .line 1128
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->getScrollX()I

    move-result v0

    .line 1132
    .end local v0    # "scrollX":I
    .local v7, "scrollX":I
    :goto_1
    move v7, v0

    goto :goto_2

    .line 1130
    .end local v7    # "scrollX":I
    .restart local v0    # "scrollX":I
    :cond_4
    iget-object v7, v1, Lcom/coui/appcompat/widget/COUISlideView;->mSlideView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScrollX()I

    move-result v0

    goto :goto_1

    .line 1132
    .end local v0    # "scrollX":I
    .restart local v7    # "scrollX":I
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->initVelocityTrackerIfNotExists()V

    .line 1133
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-wide/16 v10, 0x0

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    packed-switch v0, :pswitch_data_0

    .line 1432
    move/from16 v18, v3

    .end local v3    # "actionMasked":I
    .local v18, "actionMasked":I
    goto/16 :goto_28

    .line 1390
    .end local v18    # "actionMasked":I
    .restart local v3    # "actionMasked":I
    :pswitch_0
    const/4 v0, 0x0

    .line 1391
    .local v0, "newScrollX":I
    int-to-double v14, v7

    iget v9, v1, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    int-to-double v8, v9

    mul-double/2addr v8, v12

    sub-double/2addr v14, v8

    cmpl-double v8, v14, v10

    if-lez v8, :cond_6

    .line 1394
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_5

    iget v8, v1, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    neg-int v8, v8

    goto :goto_3

    :cond_5
    iget v8, v1, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    :goto_3
    move v0, v8

    goto :goto_4

    .line 1397
    :cond_6
    move v8, v0

    .end local v0    # "newScrollX":I
    .local v8, "newScrollX":I
    :goto_4
    invoke-virtual {v1, v8, v4}, Lcom/coui/appcompat/widget/COUISlideView;->smoothScrollTo(II)V

    .line 1398
    if-nez v8, :cond_7

    move v0, v4

    goto :goto_5

    :cond_7
    const/4 v0, 0x2

    :goto_5
    iput v0, v1, Lcom/coui/appcompat/widget/COUISlideView;->mCurrStatus:I

    .line 1400
    iget-object v0, v1, Lcom/coui/appcompat/widget/COUISlideView;->mOnSlideListener:Lcom/coui/appcompat/widget/COUISlideView$OnSlideListener;

    if-eqz v0, :cond_8

    .line 1401
    iget-object v0, v1, Lcom/coui/appcompat/widget/COUISlideView;->mOnSlideListener:Lcom/coui/appcompat/widget/COUISlideView$OnSlideListener;

    iget v9, v1, Lcom/coui/appcompat/widget/COUISlideView;->mCurrStatus:I

    invoke-interface {v0, v1, v9}, Lcom/coui/appcompat/widget/COUISlideView$OnSlideListener;->onSlide(Landroid/view/View;I)V

    .line 1403
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    .line 1404
    .local v9, "parent":Landroid/view/ViewParent;
    if-eqz v9, :cond_9

    .line 1406
    invoke-interface {v9, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1410
    const/4 v0, 0x0

    move-object v4, v0

    .line 1412
    .local v4, "mMode1":Ljava/lang/Integer;
    :try_start_0
    move-object v0, v9

    check-cast v0, Landroid/widget/AbsListView;

    invoke-static {v0}, Lcom/coui/appcompat/util/AbsListViewNative;->getTouchMode(Landroid/widget/AbsListView;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    .line 1415
    goto :goto_6

    .line 1413
    :catch_0
    move-exception v0

    .line 1414
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1416
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6
    instance-of v0, v9, Landroid/widget/ListView;

    if-eqz v0, :cond_9

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v10, 0x3

    if-ge v0, v10, :cond_9

    .line 1417
    move-object v0, v9

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->getLeft()I

    move-result v10

    sub-int/2addr v0, v10

    int-to-float v0, v0

    .line 1418
    .local v0, "offsetX":F
    move-object v10, v9

    check-cast v10, Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->getTop()I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    .line 1419
    .local v10, "offsetY":F
    neg-float v11, v0

    neg-float v12, v10

    invoke-virtual {v2, v11, v12}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1420
    move-object v11, v9

    check-cast v11, Landroid/view/ViewGroup;

    invoke-virtual {v11, v2}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1421
    invoke-virtual {v2, v0, v10}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1425
    .end local v0    # "offsetX":F
    .end local v4    # "mMode1":Ljava/lang/Integer;
    .end local v10    # "offsetY":F
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->endDrag()V

    .line 1427
    nop

    .line 1432
    move/from16 v18, v3

    goto/16 :goto_28

    .line 1159
    .end local v8    # "newScrollX":I
    .end local v9    # "parent":Landroid/view/ViewParent;
    :pswitch_1
    iget v0, v1, Lcom/coui/appcompat/widget/COUISlideView;->mLastMotionX:I

    sub-int v8, v5, v0

    .line 1160
    .local v8, "deltaX":I
    iget v0, v1, Lcom/coui/appcompat/widget/COUISlideView;->mLastMotionY:I

    sub-int v9, v6, v0

    .line 1161
    .local v9, "deltaY":I
    iget v0, v1, Lcom/coui/appcompat/widget/COUISlideView;->mActivePointerId:I

    invoke-virtual {v2, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    .line 1162
    .local v10, "pointerIndex":I
    invoke-virtual {v2, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v11, v0

    .line 1163
    .local v11, "xM":I
    iget v0, v1, Lcom/coui/appcompat/widget/COUISlideView;->mLastMotionX:I

    sub-int v12, v11, v0

    .line 1164
    .local v12, "dx":I
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v13

    .line 1165
    .local v13, "xDiff":I
    invoke-virtual {v2, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v14, v0

    .line 1166
    .local v14, "yM":I
    iget v0, v1, Lcom/coui/appcompat/widget/COUISlideView;->mInitialMotionY:I

    sub-int v15, v14, v0

    .line 1167
    .local v15, "dy":I
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 1168
    .local v4, "yDiff":I
    iput v11, v1, Lcom/coui/appcompat/widget/COUISlideView;->mLastMotionX:I

    .line 1169
    iput v14, v1, Lcom/coui/appcompat/widget/COUISlideView;->mLastMotionY:I

    .line 1170
    const/16 v0, 0x8

    if-le v13, v0, :cond_b

    int-to-float v0, v13

    const v16, 0x3f4ccccd    # 0.8f

    mul-float v0, v0, v16

    move/from16 v18, v3

    .end local v3    # "actionMasked":I
    .restart local v18    # "actionMasked":I
    int-to-float v3, v4

    cmpl-float v0, v0, v3

    if-lez v0, :cond_c

    .line 1171
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/coui/appcompat/widget/COUISlideView;->mIsBeingDragged:Z

    .line 1172
    if-lez v12, :cond_a

    iget v0, v1, Lcom/coui/appcompat/widget/COUISlideView;->mInitialMotionX:I

    const/16 v3, 0x8

    add-int/2addr v0, v3

    goto :goto_7

    :cond_a
    const/16 v3, 0x8

    iget v0, v1, Lcom/coui/appcompat/widget/COUISlideView;->mInitialMotionX:I

    sub-int/2addr v0, v3

    :goto_7
    iput v0, v1, Lcom/coui/appcompat/widget/COUISlideView;->mLastMotionX:I

    .line 1174
    iput v6, v1, Lcom/coui/appcompat/widget/COUISlideView;->mLastMotionY:I

    goto :goto_8

    .line 1177
    .end local v18    # "actionMasked":I
    .restart local v3    # "actionMasked":I
    :cond_b
    move/from16 v18, v3

    .end local v3    # "actionMasked":I
    .restart local v18    # "actionMasked":I
    :cond_c
    :goto_8
    iget-boolean v0, v1, Lcom/coui/appcompat/widget/COUISlideView;->mIsBeingDragged:Z

    if-eqz v0, :cond_15

    if-eqz v8, :cond_15

    iget-boolean v0, v1, Lcom/coui/appcompat/widget/COUISlideView;->mSlideEnable:Z

    if-eqz v0, :cond_15

    .line 1178
    const/4 v0, 0x0

    .line 1181
    .local v0, "newScrollX":I
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move/from16 v19, v0

    .end local v0    # "newScrollX":I
    .local v19, "newScrollX":I
    iget v0, v1, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    if-lt v3, v0, :cond_e

    .line 1183
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1184
    neg-int v0, v7

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->getWidth()I

    move-result v3

    move/from16 v20, v4

    .end local v4    # "yDiff":I
    .local v20, "yDiff":I
    iget v4, v1, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    sub-int/2addr v3, v4

    invoke-static {v8, v0, v3}, Lcom/coui/appcompat/util/COUIPhysicalAnimationUtil;->calcRealOverScrollDist(III)I

    move-result v0

    goto :goto_9

    .line 1186
    .end local v20    # "yDiff":I
    .restart local v4    # "yDiff":I
    :cond_d
    move/from16 v20, v4

    .end local v4    # "yDiff":I
    .restart local v20    # "yDiff":I
    iget v0, v1, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    sub-int v0, v7, v0

    neg-int v0, v0

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->getWidth()I

    move-result v3

    iget v4, v1, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    sub-int/2addr v3, v4

    invoke-static {v8, v0, v3}, Lcom/coui/appcompat/util/COUIPhysicalAnimationUtil;->calcRealOverScrollDist(III)I

    move-result v0

    .line 1188
    .local v0, "overX":I
    :goto_9
    sub-int v0, v7, v0

    .line 1189
    .end local v19    # "newScrollX":I
    .local v0, "newScrollX":I
    goto :goto_a

    .line 1190
    .end local v0    # "newScrollX":I
    .end local v20    # "yDiff":I
    .restart local v4    # "yDiff":I
    .restart local v19    # "newScrollX":I
    :cond_e
    move/from16 v20, v4

    .end local v4    # "yDiff":I
    .restart local v20    # "yDiff":I
    sub-int v0, v7, v8

    .line 1194
    .end local v19    # "newScrollX":I
    .restart local v0    # "newScrollX":I
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 1195
    .local v3, "parent":Landroid/view/ViewParent;
    if-eqz v3, :cond_f

    .line 1196
    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1197
    move-object v4, v3

    check-cast v4, Landroid/view/View;

    move-object/from16 v21, v3

    const/4 v3, 0x0

    .end local v3    # "parent":Landroid/view/ViewParent;
    .local v21, "parent":Landroid/view/ViewParent;
    invoke-virtual {v4, v3}, Landroid/view/View;->setPressed(Z)V

    goto :goto_b

    .line 1199
    .end local v21    # "parent":Landroid/view/ViewParent;
    .restart local v3    # "parent":Landroid/view/ViewParent;
    :cond_f
    move-object/from16 v21, v3

    const/4 v3, 0x0

    .end local v3    # "parent":Landroid/view/ViewParent;
    .restart local v21    # "parent":Landroid/view/ViewParent;
    :goto_b
    invoke-virtual {v1, v3}, Lcom/coui/appcompat/widget/COUISlideView;->setPressed(Z)V

    .line 1202
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_10

    if-ltz v0, :cond_11

    .line 1203
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->getLayoutDirection()I

    move-result v3

    if-ne v3, v4, :cond_12

    if-lez v0, :cond_12

    .line 1204
    :cond_11
    const/4 v0, 0x0

    goto :goto_c

    .line 1205
    :cond_12
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    iget v3, v1, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    .line 1209
    :goto_c
    iget-boolean v3, v1, Lcom/coui/appcompat/widget/COUISlideView;->mScrollAll:Z

    if-eqz v3, :cond_13

    .line 1210
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lcom/coui/appcompat/widget/COUISlideView;->scrollTo(II)V

    goto :goto_d

    .line 1212
    :cond_13
    const/4 v3, 0x0

    iget-object v4, v1, Lcom/coui/appcompat/widget/COUISlideView;->mSlideView:Landroid/view/View;

    invoke-virtual {v4, v0, v3}, Landroid/view/View;->scrollTo(II)V

    .line 1214
    :goto_d
    iput v5, v1, Lcom/coui/appcompat/widget/COUISlideView;->mLastMotionX:I

    .line 1215
    iput v6, v1, Lcom/coui/appcompat/widget/COUISlideView;->mLastMotionY:I

    .line 1216
    iget-object v3, v1, Lcom/coui/appcompat/widget/COUISlideView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_14

    .line 1217
    iget-object v3, v1, Lcom/coui/appcompat/widget/COUISlideView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1219
    :cond_14
    const/4 v3, 0x1

    return v3

    .line 1221
    .end local v0    # "newScrollX":I
    .end local v20    # "yDiff":I
    .end local v21    # "parent":Landroid/view/ViewParent;
    .restart local v4    # "yDiff":I
    :cond_15
    move/from16 v20, v4

    .end local v4    # "yDiff":I
    .restart local v20    # "yDiff":I
    if-eqz v9, :cond_42

    .line 1223
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 1224
    .restart local v3    # "parent":Landroid/view/ViewParent;
    if-eqz v3, :cond_18

    .line 1226
    iget-boolean v0, v1, Lcom/coui/appcompat/widget/COUISlideView;->mIsBeingDragged:Z

    if-nez v0, :cond_17

    .line 1227
    const/4 v0, 0x6

    if-gt v9, v0, :cond_16

    const/4 v0, -0x6

    if-ge v9, v0, :cond_17

    .line 1228
    :cond_16
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1229
    instance-of v0, v3, Landroid/widget/ListView;

    if-eqz v0, :cond_17

    .line 1231
    :try_start_1
    move-object v0, v3

    check-cast v0, Landroid/widget/AbsListView;

    invoke-static {v0, v4}, Lcom/coui/appcompat/util/AbsListViewNative;->setTouchMode(Landroid/widget/AbsListView;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1234
    goto :goto_e

    .line 1232
    :catch_1
    move-exception v0

    .line 1233
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1238
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_17
    :goto_e
    move-object v0, v3

    check-cast v0, Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 1239
    invoke-virtual {v1, v4}, Lcom/coui/appcompat/widget/COUISlideView;->setPressed(Z)V

    .line 1241
    .end local v3    # "parent":Landroid/view/ViewParent;
    :cond_18
    goto/16 :goto_28

    .line 1248
    .end local v8    # "deltaX":I
    .end local v9    # "deltaY":I
    .end local v10    # "pointerIndex":I
    .end local v11    # "xM":I
    .end local v12    # "dx":I
    .end local v13    # "xDiff":I
    .end local v14    # "yM":I
    .end local v15    # "dy":I
    .end local v18    # "actionMasked":I
    .end local v20    # "yDiff":I
    .local v3, "actionMasked":I
    :pswitch_2
    move/from16 v18, v3

    .end local v3    # "actionMasked":I
    .restart local v18    # "actionMasked":I
    iget-boolean v0, v1, Lcom/coui/appcompat/widget/COUISlideView;->mSlideEnable:Z

    if-nez v0, :cond_19

    iget-boolean v0, v1, Lcom/coui/appcompat/widget/COUISlideView;->mDrawItemEnable:Z

    if-eqz v0, :cond_2d

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->getSlideViewScrollX()I

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->getSlideViewScrollX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v3, v1, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    if-eq v0, v3, :cond_2d

    .line 1249
    :cond_19
    const/4 v0, 0x0

    .line 1250
    .local v0, "newScrollX":I
    iget-object v3, v1, Lcom/coui/appcompat/widget/COUISlideView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1251
    .local v3, "velocityTracker":Landroid/view/VelocityTracker;
    iget v4, v1, Lcom/coui/appcompat/widget/COUISlideView;->mMaximumVelocity:I

    int-to-float v4, v4

    const/16 v8, 0x3e8

    invoke-virtual {v3, v8, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1252
    iget v4, v1, Lcom/coui/appcompat/widget/COUISlideView;->mActivePointerId:I

    invoke-virtual {v3, v4}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v4

    float-to-int v4, v4

    .line 1253
    .local v4, "initialVelocity":I
    iget-boolean v9, v1, Lcom/coui/appcompat/widget/COUISlideView;->mEnableFastDelete:Z

    const/16 v14, -0x3e8

    if-eqz v9, :cond_21

    .line 1254
    if-ge v4, v14, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->isLayoutRtl()Z

    move-result v9

    if-nez v9, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->getSlideViewScrollX()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget v14, v1, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    iget v15, v1, Lcom/coui/appcompat/widget/COUISlideView;->mQuickDeleteSlop:I

    add-int/2addr v14, v15

    if-le v9, v14, :cond_1a

    .line 1255
    const/4 v9, 0x1

    goto :goto_f

    .line 1254
    :cond_1a
    nop

    .line 1255
    const/4 v9, 0x0

    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->getSlideViewScrollX()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    iget v15, v1, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    iget v10, v1, Lcom/coui/appcompat/widget/COUISlideView;->mOverSlideDeleteSlop:I

    add-int/2addr v15, v10

    if-le v14, v15, :cond_1b

    const/4 v10, 0x1

    goto :goto_10

    :cond_1b
    const/4 v10, 0x0

    :goto_10
    or-int/2addr v9, v10

    if-eqz v9, :cond_1c

    .line 1256
    const/4 v8, 0x1

    iput-boolean v8, v1, Lcom/coui/appcompat/widget/COUISlideView;->mhasStartAnimation:Z

    .line 1257
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->getSlideViewScrollX()I

    move-result v8

    iput v8, v1, Lcom/coui/appcompat/widget/COUISlideView;->mUpScrollX:I

    .line 1258
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->getWidth()I

    move-result v0

    .line 1259
    iget-object v8, v1, Lcom/coui/appcompat/widget/COUISlideView;->mSlideView:Landroid/view/View;

    invoke-virtual {v1, v8}, Lcom/coui/appcompat/widget/COUISlideView;->startDeleteSlideAnimation(Landroid/view/View;)V

    goto/16 :goto_17

    .line 1260
    :cond_1c
    if-le v4, v8, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->getSlideViewScrollX()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v9, v1, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    iget v10, v1, Lcom/coui/appcompat/widget/COUISlideView;->mQuickDeleteSlop:I

    add-int/2addr v9, v10

    if-le v8, v9, :cond_1d

    .line 1261
    const/4 v8, 0x1

    goto :goto_11

    .line 1260
    :cond_1d
    nop

    .line 1261
    const/4 v8, 0x0

    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->getSlideViewScrollX()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget v10, v1, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    iget v11, v1, Lcom/coui/appcompat/widget/COUISlideView;->mOverSlideDeleteSlop:I

    add-int/2addr v10, v11

    if-le v9, v10, :cond_1e

    const/4 v9, 0x1

    goto :goto_12

    :cond_1e
    const/4 v9, 0x0

    :goto_12
    or-int/2addr v8, v9

    if-eqz v8, :cond_1f

    .line 1262
    const/4 v8, 0x1

    iput-boolean v8, v1, Lcom/coui/appcompat/widget/COUISlideView;->mhasStartAnimation:Z

    .line 1263
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->getSlideViewScrollX()I

    move-result v8

    iput v8, v1, Lcom/coui/appcompat/widget/COUISlideView;->mUpScrollX:I

    .line 1264
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->getWidth()I

    move-result v8

    neg-int v0, v8

    .line 1265
    iget-object v8, v1, Lcom/coui/appcompat/widget/COUISlideView;->mSlideView:Landroid/view/View;

    invoke-virtual {v1, v8}, Lcom/coui/appcompat/widget/COUISlideView;->startDeleteSlideAnimation(Landroid/view/View;)V

    goto/16 :goto_17

    .line 1266
    :cond_1f
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-double v8, v8

    iget v10, v1, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    int-to-double v10, v10

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-lez v8, :cond_28

    .line 1267
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_20

    iget v8, v1, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    neg-int v8, v8

    goto :goto_13

    :cond_20
    iget v8, v1, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    :goto_13
    move v0, v8

    goto :goto_17

    .line 1270
    :cond_21
    iget-boolean v9, v1, Lcom/coui/appcompat/widget/COUISlideView;->mSlideEnable:Z

    if-nez v9, :cond_22

    iget-boolean v9, v1, Lcom/coui/appcompat/widget/COUISlideView;->mDrawItemEnable:Z

    if-eqz v9, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->getSlideViewScrollX()I

    move-result v9

    if-eqz v9, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->getSlideViewScrollX()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget v10, v1, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    if-eq v9, v10, :cond_28

    .line 1271
    :cond_22
    if-ge v4, v14, :cond_24

    .line 1272
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_23

    const/4 v8, 0x0

    goto :goto_14

    :cond_23
    iget v8, v1, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    :goto_14
    move v0, v8

    goto :goto_17

    .line 1273
    :cond_24
    if-le v4, v8, :cond_26

    .line 1274
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_25

    iget v8, v1, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    neg-int v8, v8

    goto :goto_15

    :cond_25
    const/4 v8, 0x0

    :goto_15
    move v0, v8

    goto :goto_17

    .line 1275
    :cond_26
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-double v8, v8

    iget v10, v1, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    int-to-double v10, v10

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-lez v8, :cond_28

    .line 1276
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_27

    iget v8, v1, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    neg-int v8, v8

    goto :goto_16

    :cond_27
    iget v8, v1, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    :goto_16
    move v0, v8

    .line 1287
    :cond_28
    :goto_17
    iget-boolean v8, v1, Lcom/coui/appcompat/widget/COUISlideView;->mhasStartAnimation:Z

    if-nez v8, :cond_29

    .line 1288
    const/4 v8, 0x0

    invoke-virtual {v1, v0, v8}, Lcom/coui/appcompat/widget/COUISlideView;->animationScrollTo(II)V

    .line 1290
    :cond_29
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->getSlideViewScrollX()I

    move-result v8

    iget v9, v1, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    if-le v8, v9, :cond_2b

    iget v8, v1, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    if-ne v0, v8, :cond_2b

    .line 1291
    if-nez v0, :cond_2a

    const/4 v8, 0x0

    goto :goto_18

    :cond_2a
    const/4 v8, 0x2

    :goto_18
    iput v8, v1, Lcom/coui/appcompat/widget/COUISlideView;->mCurrStatus:I

    .line 1293
    iget-object v8, v1, Lcom/coui/appcompat/widget/COUISlideView;->mOnSlideListener:Lcom/coui/appcompat/widget/COUISlideView$OnSlideListener;

    if-eqz v8, :cond_2d

    .line 1294
    iget-object v8, v1, Lcom/coui/appcompat/widget/COUISlideView;->mOnSlideListener:Lcom/coui/appcompat/widget/COUISlideView$OnSlideListener;

    iget v9, v1, Lcom/coui/appcompat/widget/COUISlideView;->mCurrStatus:I

    invoke-interface {v8, v1, v9}, Lcom/coui/appcompat/widget/COUISlideView$OnSlideListener;->onSlide(Landroid/view/View;I)V

    goto :goto_1a

    .line 1297
    :cond_2b
    if-nez v0, :cond_2c

    const/4 v8, 0x0

    goto :goto_19

    :cond_2c
    const/4 v8, 0x2

    :goto_19
    iput v8, v1, Lcom/coui/appcompat/widget/COUISlideView;->mCurrStatus:I

    .line 1299
    iget-object v8, v1, Lcom/coui/appcompat/widget/COUISlideView;->mOnSlideListener:Lcom/coui/appcompat/widget/COUISlideView$OnSlideListener;

    if-eqz v8, :cond_2d

    .line 1300
    iget-object v8, v1, Lcom/coui/appcompat/widget/COUISlideView;->mOnSlideListener:Lcom/coui/appcompat/widget/COUISlideView$OnSlideListener;

    iget v9, v1, Lcom/coui/appcompat/widget/COUISlideView;->mCurrStatus:I

    invoke-interface {v8, v1, v9}, Lcom/coui/appcompat/widget/COUISlideView$OnSlideListener;->onSlide(Landroid/view/View;I)V

    .line 1307
    .end local v0    # "newScrollX":I
    .end local v3    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v4    # "initialVelocity":I
    :cond_2d
    :goto_1a
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->getSlideViewScrollX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v3, v1, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    if-ne v0, v3, :cond_3b

    .line 1308
    const/4 v0, 0x0

    .line 1309
    .local v0, "isTouchedOnMenu":Z
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 1310
    iget v3, v1, Lcom/coui/appcompat/widget/COUISlideView;->mInitialMotionX:I

    iget v4, v1, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    if-ge v3, v4, :cond_2e

    iget v3, v1, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    if-ge v5, v3, :cond_2e

    const/4 v3, 0x1

    goto :goto_1b

    :cond_2e
    const/4 v3, 0x0

    :goto_1b
    move v0, v3

    goto :goto_1d

    .line 1312
    :cond_2f
    iget v3, v1, Lcom/coui/appcompat/widget/COUISlideView;->mInitialMotionX:I

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->getWidth()I

    move-result v4

    iget v8, v1, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    sub-int/2addr v4, v8

    if-le v3, v4, :cond_30

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->getWidth()I

    move-result v3

    iget v4, v1, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    sub-int/2addr v3, v4

    if-le v5, v3, :cond_30

    const/4 v3, 0x1

    goto :goto_1c

    :cond_30
    const/4 v3, 0x0

    :goto_1c
    move v0, v3

    .line 1315
    :goto_1d
    if-eqz v0, :cond_37

    .line 1316
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1e
    iget v4, v1, Lcom/coui/appcompat/widget/COUISlideView;->mItemCount:I

    if-ge v3, v4, :cond_3b

    .line 1318
    const/4 v4, 0x0

    .line 1319
    .local v4, "position":I
    move v8, v4

    const/4 v4, 0x0

    .local v4, "j":I
    .local v8, "position":I
    :goto_1f
    if-ge v4, v3, :cond_31

    .line 1320
    iget-object v9, v1, Lcom/coui/appcompat/widget/COUISlideView;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/coui/appcompat/widget/COUISlideMenuItem;

    invoke-virtual {v9}, Lcom/coui/appcompat/widget/COUISlideMenuItem;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    .line 1319
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 1324
    .end local v4    # "j":I
    :cond_31
    const/4 v4, 0x0

    .line 1325
    .local v4, "isTouchedOnIndexI":Z
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->isLayoutRtl()Z

    move-result v9

    if-eqz v9, :cond_33

    .line 1326
    iget v9, v1, Lcom/coui/appcompat/widget/COUISlideView;->mInitialMotionX:I

    iget-object v10, v1, Lcom/coui/appcompat/widget/COUISlideView;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/coui/appcompat/widget/COUISlideMenuItem;

    invoke-virtual {v10}, Lcom/coui/appcompat/widget/COUISlideMenuItem;->getWidth()I

    move-result v10

    add-int/2addr v10, v8

    if-ge v9, v10, :cond_32

    iget-object v9, v1, Lcom/coui/appcompat/widget/COUISlideView;->mItems:Ljava/util/ArrayList;

    .line 1327
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/coui/appcompat/widget/COUISlideMenuItem;

    invoke-virtual {v9}, Lcom/coui/appcompat/widget/COUISlideMenuItem;->getWidth()I

    move-result v9

    add-int/2addr v9, v8

    if-ge v5, v9, :cond_32

    const/4 v9, 0x1

    goto :goto_20

    :cond_32
    const/4 v9, 0x0

    :goto_20
    move v4, v9

    goto :goto_22

    .line 1329
    :cond_33
    iget v9, v1, Lcom/coui/appcompat/widget/COUISlideView;->mInitialMotionX:I

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->getWidth()I

    move-result v10

    sub-int/2addr v10, v8

    iget-object v11, v1, Lcom/coui/appcompat/widget/COUISlideView;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/coui/appcompat/widget/COUISlideMenuItem;

    invoke-virtual {v11}, Lcom/coui/appcompat/widget/COUISlideMenuItem;->getWidth()I

    move-result v11

    sub-int/2addr v10, v11

    if-le v9, v10, :cond_34

    .line 1330
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->getWidth()I

    move-result v9

    sub-int/2addr v9, v8

    iget-object v10, v1, Lcom/coui/appcompat/widget/COUISlideView;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/coui/appcompat/widget/COUISlideMenuItem;

    invoke-virtual {v10}, Lcom/coui/appcompat/widget/COUISlideMenuItem;->getWidth()I

    move-result v10

    sub-int/2addr v9, v10

    if-le v5, v9, :cond_34

    const/4 v9, 0x1

    goto :goto_21

    :cond_34
    const/4 v9, 0x0

    :goto_21
    move v4, v9

    .line 1332
    :goto_22
    if-eqz v4, :cond_36

    .line 1333
    iget-boolean v9, v1, Lcom/coui/appcompat/widget/COUISlideView;->mCanDelete:Z

    if-eqz v9, :cond_35

    if-nez v3, :cond_35

    iget-boolean v9, v1, Lcom/coui/appcompat/widget/COUISlideView;->mhasStartAnimation:Z

    if-nez v9, :cond_35

    iget-boolean v9, v1, Lcom/coui/appcompat/widget/COUISlideView;->mStartDeleteAnimation:Z

    if-eqz v9, :cond_35

    .line 1334
    const/4 v9, 0x1

    iput-boolean v9, v1, Lcom/coui/appcompat/widget/COUISlideView;->mhasStartAnimation:Z

    .line 1335
    iget-object v9, v1, Lcom/coui/appcompat/widget/COUISlideView;->mSlideView:Landroid/view/View;

    invoke-virtual {v1, v9}, Lcom/coui/appcompat/widget/COUISlideView;->startDeleteAnimation(Landroid/view/View;)V

    .line 1337
    :cond_35
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Lcom/coui/appcompat/widget/COUISlideView;->playSoundEffect(I)V

    .line 1339
    iget-object v9, v1, Lcom/coui/appcompat/widget/COUISlideView;->mOnSlideMenuItemClickListener:Lcom/coui/appcompat/widget/COUISlideView$OnSlideMenuItemClickListener;

    if-eqz v9, :cond_3b

    .line 1340
    iget-object v9, v1, Lcom/coui/appcompat/widget/COUISlideView;->mOnSlideMenuItemClickListener:Lcom/coui/appcompat/widget/COUISlideView$OnSlideMenuItemClickListener;

    iget-object v10, v1, Lcom/coui/appcompat/widget/COUISlideView;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/coui/appcompat/widget/COUISlideMenuItem;

    invoke-interface {v9, v10, v3}, Lcom/coui/appcompat/widget/COUISlideView$OnSlideMenuItemClickListener;->onSlideMenuItemClick(Lcom/coui/appcompat/widget/COUISlideMenuItem;I)V

    goto :goto_25

    .line 1316
    .end local v4    # "isTouchedOnIndexI":Z
    .end local v8    # "position":I
    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1e

    .line 1349
    .end local v3    # "i":I
    :cond_37
    iget v3, v1, Lcom/coui/appcompat/widget/COUISlideView;->mInitialMotionX:I

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->getWidth()I

    move-result v4

    iget v8, v1, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    sub-int/2addr v4, v8

    if-ge v3, v4, :cond_38

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->getWidth()I

    move-result v3

    iget v4, v1, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    sub-int/2addr v3, v4

    if-ge v5, v3, :cond_38

    iget v3, v1, Lcom/coui/appcompat/widget/COUISlideView;->mInitialMotionX:I

    sub-int/2addr v3, v5

    iget v4, v1, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    neg-int v4, v4

    if-ge v3, v4, :cond_38

    const/4 v3, 0x1

    goto :goto_23

    :cond_38
    const/4 v3, 0x0

    .line 1351
    .local v3, "neeShinkBack":Z
    :goto_23
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 1352
    iget v4, v1, Lcom/coui/appcompat/widget/COUISlideView;->mInitialMotionX:I

    iget v8, v1, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    if-ge v4, v8, :cond_39

    iget v4, v1, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    if-le v5, v4, :cond_39

    iget v4, v1, Lcom/coui/appcompat/widget/COUISlideView;->mInitialMotionX:I

    sub-int/2addr v4, v5

    iget v8, v1, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    if-le v4, v8, :cond_39

    const/16 v17, 0x1

    goto :goto_24

    :cond_39
    const/16 v17, 0x0

    :goto_24
    move/from16 v3, v17

    .line 1354
    :cond_3a
    if-eqz v3, :cond_3b

    .line 1355
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->shrink()V

    .line 1361
    .end local v0    # "isTouchedOnMenu":Z
    .end local v3    # "neeShinkBack":Z
    :cond_3b
    :goto_25
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1362
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_3e

    iget-boolean v3, v1, Lcom/coui/appcompat/widget/COUISlideView;->mSlideEnable:Z

    if-eqz v3, :cond_3e

    .line 1364
    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 1365
    .local v3, "offsetX":F
    move-object v4, v0

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->getTop()I

    move-result v8

    sub-int/2addr v4, v8

    int-to-float v4, v4

    .line 1366
    .local v4, "offsetY":F
    neg-float v8, v3

    neg-float v9, v4

    invoke-virtual {v2, v8, v9}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1369
    iget-boolean v8, v1, Lcom/coui/appcompat/widget/COUISlideView;->mIsBeingDragged:Z

    if-nez v8, :cond_3d

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_3c

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->getSlideViewScrollX()I

    move-result v8

    if-ltz v8, :cond_3d

    goto :goto_26

    .line 1370
    :cond_3c
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->getSlideViewScrollX()I

    move-result v8

    if-gtz v8, :cond_3d

    .line 1371
    :goto_26
    move-object v8, v0

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8, v2}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_27

    .line 1373
    :cond_3d
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1374
    .local v8, "cancelEvent":Landroid/view/MotionEvent;
    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1375
    move-object v9, v0

    check-cast v9, Landroid/view/ViewGroup;

    invoke-virtual {v9, v8}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1378
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 1383
    .end local v8    # "cancelEvent":Landroid/view/MotionEvent;
    :goto_27
    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1385
    .end local v3    # "offsetX":F
    .end local v4    # "offsetY":F
    :cond_3e
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->endDrag()V

    .line 1386
    goto :goto_28

    .line 1135
    .end local v0    # "parent":Landroid/view/ViewParent;
    .end local v18    # "actionMasked":I
    .local v3, "actionMasked":I
    :pswitch_3
    move/from16 v18, v3

    .end local v3    # "actionMasked":I
    .restart local v18    # "actionMasked":I
    iget-boolean v0, v1, Lcom/coui/appcompat/widget/COUISlideView;->mhasStartAnimation:Z

    if-eqz v0, :cond_3f

    .line 1136
    const/4 v3, 0x0

    return v3

    .line 1138
    :cond_3f
    iget-object v0, v1, Lcom/coui/appcompat/widget/COUISlideView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_40

    .line 1139
    iget-object v0, v1, Lcom/coui/appcompat/widget/COUISlideView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1141
    :cond_40
    iget-object v0, v1, Lcom/coui/appcompat/widget/COUISlideView;->mOnSlideListener:Lcom/coui/appcompat/widget/COUISlideView$OnSlideListener;

    if-eqz v0, :cond_41

    .line 1142
    iget-object v0, v1, Lcom/coui/appcompat/widget/COUISlideView;->mOnSlideListener:Lcom/coui/appcompat/widget/COUISlideView$OnSlideListener;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v3}, Lcom/coui/appcompat/widget/COUISlideView$OnSlideListener;->onSlide(Landroid/view/View;I)V

    .line 1144
    :cond_41
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v1, Lcom/coui/appcompat/widget/COUISlideView;->mActivePointerId:I

    .line 1145
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Lcom/coui/appcompat/widget/COUISlideView;->mInitialMotionX:I

    iput v0, v1, Lcom/coui/appcompat/widget/COUISlideView;->mLastMotionX:I

    .line 1146
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Lcom/coui/appcompat/widget/COUISlideView;->mInitialMotionY:I

    iput v0, v1, Lcom/coui/appcompat/widget/COUISlideView;->mLastMotionY:I

    .line 1147
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1148
    .restart local v0    # "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_42

    iget-boolean v3, v1, Lcom/coui/appcompat/widget/COUISlideView;->mSlideEnable:Z

    if-eqz v3, :cond_42

    .line 1149
    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 1150
    .local v3, "offsetX":F
    move-object v4, v0

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISlideView;->getTop()I

    move-result v8

    sub-int/2addr v4, v8

    int-to-float v4, v4

    .line 1151
    .restart local v4    # "offsetY":F
    neg-float v8, v3

    neg-float v9, v4

    invoke-virtual {v2, v8, v9}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1152
    move-object v8, v0

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8, v2}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1153
    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1154
    const/4 v8, 0x1

    invoke-interface {v0, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1155
    .end local v3    # "offsetX":F
    .end local v4    # "offsetY":F
    nop

    .line 1432
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_42
    :goto_28
    iput v5, v1, Lcom/coui/appcompat/widget/COUISlideView;->mLastX:I

    .line 1433
    iput v6, v1, Lcom/coui/appcompat/widget/COUISlideView;->mLastY:I

    .line 1434
    iget-object v0, v1, Lcom/coui/appcompat/widget/COUISlideView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_43

    .line 1435
    iget-object v0, v1, Lcom/coui/appcompat/widget/COUISlideView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1437
    :cond_43
    const/4 v3, 0x1

    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public refresh()V
    .locals 7

    .line 1776
    const/4 v0, 0x0

    .line 1777
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISlideView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/coui/appcompat/widget/COUISlideView;->mRefreshStyle:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    .line 1778
    .local v1, "styleAttrType":Ljava/lang/String;
    const-string v2, "attr"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 1779
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISlideView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v5, Lcoui/support/appcompat/R$styleable;->COUISlideView:[I

    iget v6, p0, Lcom/coui/appcompat/widget/COUISlideView;->mRefreshStyle:I

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0

    .line 1781
    :cond_0
    const-string v2, "style"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1782
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISlideView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v5, Lcoui/support/appcompat/R$styleable;->COUISlideView:[I

    iget v6, p0, Lcom/coui/appcompat/widget/COUISlideView;->mRefreshStyle:I

    invoke-virtual {v2, v4, v5, v3, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1786
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 1787
    sget v2, Lcoui/support/appcompat/R$styleable;->COUISlideView_itemBackgroundColor:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUISlideView;->mItemBackgroundColor:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUISlideView;->mItemBackgroundColor:I

    .line 1790
    sget v2, Lcoui/support/appcompat/R$styleable;->COUISlideView_slideTextColor:I

    .line 1792
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISlideView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcoui/support/appcompat/R$color;->coui_slideview_textcolor:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 1790
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUISlideView;->mSlideTextColor:I

    .line 1793
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISlideView;->invalidate()V

    .line 1794
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1796
    :cond_2
    return-void
.end method

.method public removeItem(I)V
    .locals 1
    .param p1, "index"    # I

    .line 395
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 399
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISlideView;->itemWidthChange()V

    .line 400
    return-void

    .line 396
    :cond_1
    :goto_0
    return-void
.end method

.method public restoreLayout()V
    .locals 3

    .line 478
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mAlpha:I

    .line 479
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISlideView;->mSlideView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 480
    const/16 v1, 0xb4

    .line 481
    .local v1, "height":I
    iget v1, p0, Lcom/coui/appcompat/widget/COUISlideView;->mInitialHeight:I

    .line 482
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISlideView;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 483
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUISlideView;->setVisibility(I)V

    .line 484
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISlideView;->clearAnimation()V

    .line 485
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mhasStartAnimation:Z

    .line 486
    return-void
.end method

.method public setCanStartDeleteAnimation(Z)V
    .locals 0
    .param p1, "start"    # Z

    .line 338
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUISlideView;->mStartDeleteAnimation:Z

    .line 339
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 826
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mScrollAll:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 827
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mViewContent:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 828
    iput-object p0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mSlideView:Landroid/view/View;

    goto :goto_0

    .line 830
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/widget/COUISlideView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 831
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISlideView;->mSlideView:Landroid/view/View;

    .line 833
    :goto_0
    return-void
.end method

.method public setDeleteEnable(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .line 286
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mCanDelete:Z

    if-ne v0, p1, :cond_0

    .line 287
    return-void

    .line 289
    :cond_0
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUISlideView;->mCanDelete:Z

    .line 290
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 291
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISlideView;->mItems:Ljava/util/ArrayList;

    new-instance v2, Lcom/coui/appcompat/widget/COUISlideMenuItem;

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUISlideView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUISlideView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcoui/support/appcompat/R$drawable;->coui_slide_view_delete:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/coui/appcompat/widget/COUISlideMenuItem;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 294
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISlideView;->mPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_4

    .line 295
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISlideView;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/COUISlideMenuItem;

    .line 296
    .local v0, "item":Lcom/coui/appcompat/widget/COUISlideMenuItem;
    const/4 v1, 0x0

    .line 297
    .local v1, "width":I
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUISlideMenuItem;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 298
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISlideView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUISlideMenuItem;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v1, v2

    .line 299
    iget v2, p0, Lcom/coui/appcompat/widget/COUISlideView;->mTextPadding:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 302
    :cond_1
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUISlideMenuItem;->getWidth()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 303
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUISlideMenuItem;->setWidth(I)V

    .line 305
    .end local v0    # "item":Lcom/coui/appcompat/widget/COUISlideMenuItem;
    .end local v1    # "width":I
    :cond_2
    goto :goto_0

    .line 308
    :cond_3
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISlideView;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 310
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISlideView;->itemWidthChange()V

    .line 311
    return-void
.end method

.method public setDeleteItemIcon(I)V
    .locals 2
    .param p1, "iconRes"    # I

    .line 347
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mCanDelete:Z

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mItems:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/COUISlideMenuItem;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUISlideMenuItem;->setIcon(I)V

    .line 352
    :cond_0
    return-void
.end method

.method public setDeleteItemIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 360
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mCanDelete:Z

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mItems:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/COUISlideMenuItem;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUISlideMenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 365
    :cond_0
    return-void
.end method

.method public setDeleteItemText(I)V
    .locals 1
    .param p1, "text"    # I

    .line 373
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUISlideView;->setDeleteItemText(Ljava/lang/CharSequence;)V

    .line 374
    return-void
.end method

.method public setDeleteItemText(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 319
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mCanDelete:Z

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mItems:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/COUISlideMenuItem;

    .line 321
    .local v0, "item":Lcom/coui/appcompat/widget/COUISlideMenuItem;
    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUISlideMenuItem;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISlideView;->mPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_0

    .line 323
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISlideView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUISlideMenuItem;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/coui/appcompat/widget/COUISlideView;->mTextPadding:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 324
    .local v1, "width":I
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUISlideMenuItem;->getWidth()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 325
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUISlideMenuItem;->setWidth(I)V

    .line 326
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISlideView;->itemWidthChange()V

    .line 330
    .end local v0    # "item":Lcom/coui/appcompat/widget/COUISlideMenuItem;
    .end local v1    # "width":I
    :cond_0
    return-void
.end method

.method public setDiver(I)V
    .locals 1
    .param p1, "diverId"    # I

    .line 905
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISlideView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUISlideView;->setDiver(Landroid/graphics/drawable/Drawable;)V

    .line 906
    return-void
.end method

.method public setDiver(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "diver"    # Landroid/graphics/drawable/Drawable;

    .line 914
    if-eqz p1, :cond_0

    .line 915
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mDiverEnable:Z

    goto :goto_0

    .line 917
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mDiverEnable:Z

    .line 919
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mDiver:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1

    .line 920
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISlideView;->mDiver:Landroid/graphics/drawable/Drawable;

    .line 921
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISlideView;->invalidate()V

    .line 923
    :cond_1
    return-void
.end method

.method public setDiverEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 886
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUISlideView;->mDiverEnable:Z

    .line 887
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISlideView;->invalidate()V

    .line 888
    return-void
.end method

.method public setDrawItemEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 868
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUISlideView;->mDrawItemEnable:Z

    .line 869
    return-void
.end method

.method public setGroupOffset(I)V
    .locals 0
    .param p1, "padding"    # I

    .line 522
    iput p1, p0, Lcom/coui/appcompat/widget/COUISlideView;->mPaddingRight:I

    .line 523
    return-void
.end method

.method public setItemBackgroundColor(I)V
    .locals 1
    .param p1, "itemBackgroundColor"    # I

    .line 1804
    iget v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mItemBackgroundColor:I

    if-eq v0, p1, :cond_0

    .line 1805
    iput p1, p0, Lcom/coui/appcompat/widget/COUISlideView;->mItemBackgroundColor:I

    .line 1806
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISlideView;->invalidate()V

    .line 1808
    :cond_0
    return-void
.end method

.method public setMenuDividerEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 529
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUISlideView;->mMenuDividerEnable:Z

    .line 531
    return-void
.end method

.method public setOnDeleteItemClickListener(Lcom/coui/appcompat/widget/COUISlideView$OnDeleteItemClickListener;)V
    .locals 0
    .param p1, "l"    # Lcom/coui/appcompat/widget/COUISlideView$OnDeleteItemClickListener;

    .line 1697
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISlideView;->mOnDeleteItemClickListener:Lcom/coui/appcompat/widget/COUISlideView$OnDeleteItemClickListener;

    .line 1698
    return-void
.end method

.method public setOnSlideListener(Lcom/coui/appcompat/widget/COUISlideView$OnSlideListener;)V
    .locals 0
    .param p1, "onSlideListener"    # Lcom/coui/appcompat/widget/COUISlideView$OnSlideListener;

    .line 951
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISlideView;->mOnSlideListener:Lcom/coui/appcompat/widget/COUISlideView$OnSlideListener;

    .line 952
    return-void
.end method

.method public setOnSlideMenuItemClickListener(Lcom/coui/appcompat/widget/COUISlideView$OnSlideMenuItemClickListener;)V
    .locals 0
    .param p1, "l"    # Lcom/coui/appcompat/widget/COUISlideView$OnSlideMenuItemClickListener;

    .line 1747
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISlideView;->mOnSlideMenuItemClickListener:Lcom/coui/appcompat/widget/COUISlideView$OnSlideMenuItemClickListener;

    .line 1748
    return-void
.end method

.method public setOnSmoothScrollListener(Lcom/coui/appcompat/widget/COUISlideView$OnSmoothScrollListener;)V
    .locals 0
    .param p1, "l"    # Lcom/coui/appcompat/widget/COUISlideView$OnSmoothScrollListener;

    .line 1722
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISlideView;->mOnSmoothScrollListener:Lcom/coui/appcompat/widget/COUISlideView$OnSmoothScrollListener;

    .line 1723
    return-void
.end method

.method public setSlideEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 850
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUISlideView;->mSlideEnable:Z

    .line 851
    return-void
.end method

.method public setSlideTextColor(I)V
    .locals 2
    .param p1, "slideTextColor"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1816
    iget v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mSlideTextColor:I

    if-eq v0, p1, :cond_0

    .line 1817
    iput p1, p0, Lcom/coui/appcompat/widget/COUISlideView;->mSlideTextColor:I

    .line 1818
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coui/appcompat/widget/COUISlideView;->mSlideTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1819
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISlideView;->invalidate()V

    .line 1821
    :cond_0
    return-void
.end method

.method public setSlideViewScrollX(I)V
    .locals 2
    .param p1, "x"    # I

    .line 1645
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mScrollAll:Z

    if-eqz v0, :cond_0

    .line 1646
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISlideView;->getScrollY()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/widget/COUISlideView;->scrollTo(II)V

    goto :goto_0

    .line 1648
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mSlideView:Landroid/view/View;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISlideView;->mSlideView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/view/View;->scrollTo(II)V

    .line 1650
    :goto_0
    return-void
.end method

.method public setUseDefaultBackground(Z)V
    .locals 0
    .param p1, "use"    # Z

    .line 513
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUISlideView;->mUseDefaultBackGround:Z

    .line 514
    return-void
.end method

.method public shrink()V
    .locals 3

    .line 958
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_0

    .line 959
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    .line 962
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISlideView;->getSlideViewScrollX()I

    move-result v0

    if-eqz v0, :cond_3

    .line 963
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mOnSmoothScrollListener:Lcom/coui/appcompat/widget/COUISlideView$OnSmoothScrollListener;

    if-eqz v0, :cond_2

    .line 964
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mSmoothScrollRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 965
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mSmoothScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUISlideView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 967
    :cond_1
    new-instance v0, Lcom/coui/appcompat/widget/COUISlideView$2;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/widget/COUISlideView$2;-><init>(Lcom/coui/appcompat/widget/COUISlideView;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mSmoothScrollRunnable:Ljava/lang/Runnable;

    .line 976
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mSmoothScrollRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lcom/coui/appcompat/widget/COUISlideView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 978
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/coui/appcompat/widget/COUISlideView;->smoothScrollTo(II)V

    .line 980
    :cond_3
    return-void
.end method

.method public smoothScrollTo(II)V
    .locals 9
    .param p1, "destX"    # I
    .param p2, "destY"    # I

    .line 1613
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISlideView;->getSlideViewScrollX()I

    move-result v6

    .line 1614
    .local v6, "scrollX":I
    sub-int v7, p1, v6

    .line 1616
    .local v7, "delta":I
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    .line 1617
    .local v0, "duration":I
    const/16 v1, 0xc8

    if-le v0, v1, :cond_0

    .line 1618
    const/16 v0, 0xc8

    .line 1620
    .end local v0    # "duration":I
    .local v8, "duration":I
    :cond_0
    move v8, v0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move v1, v6

    move v3, v7

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1621
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISlideView;->invalidate()V

    .line 1622
    return-void
.end method

.method public startDeleteAnimation(Landroid/view/View;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;

    .line 1492
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISlideView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    neg-int v0, v0

    :goto_0
    move v6, v0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mHolderWidth:I

    goto :goto_0

    .line 1493
    .local v6, "currentTranslateX":I
    :goto_1
    const/4 v0, 0x0

    .line 1494
    .local v0, "currentTranslateY":F
    const/4 v10, 0x0

    .line 1495
    .local v10, "targetTranslateY":F
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISlideView;->getLayoutDirection()I

    move-result v2

    if-ne v2, v1, :cond_1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISlideView;->getWidth()I

    move-result v1

    neg-int v1, v1

    :goto_2
    move v7, v1

    goto :goto_3

    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISlideView;->getWidth()I

    move-result v1

    goto :goto_2

    .line 1496
    .local v7, "targetTranslateX":I
    :goto_3
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISlideView;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/COUISlideView;->mInitialHeight:I

    .line 1497
    new-instance v1, Lcom/coui/appcompat/widget/COUISlideView$3;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISlideView;->getHeight()I

    move-result v8

    const/4 v9, 0x0

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v2 .. v9}, Lcom/coui/appcompat/widget/COUISlideView$3;-><init>(Lcom/coui/appcompat/widget/COUISlideView;Landroid/view/View;Landroid/view/View;IIII)V

    .line 1506
    .local v1, "animation":Lcom/coui/appcompat/widget/COUISlideDeleteAnimation;
    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUISlideDeleteAnimation;->startAnimation()V

    .line 1508
    return-void
.end method

.method public startDeleteAnimation(Landroid/view/View;FFFF)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "startDx"    # F
    .param p3, "startDy"    # F
    .param p4, "targetX"    # F
    .param p5, "targetY"    # F

    .line 1545
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mhasStartAnimation:Z

    if-eqz v0, :cond_0

    .line 1546
    return-void

    .line 1548
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mhasStartAnimation:Z

    .line 1549
    new-instance v0, Lcom/coui/appcompat/widget/COUISlideView$5;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/coui/appcompat/widget/COUISlideView$5;-><init>(Lcom/coui/appcompat/widget/COUISlideView;Landroid/view/View;FFFF)V

    .line 1571
    .local v0, "rv":Lcom/coui/appcompat/widget/COUIDeleteAnimation;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/widget/COUIDeleteAnimation;->setDuration(J)V

    .line 1572
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIDeleteAnimation;->start()V

    .line 1574
    return-void
.end method

.method public startDeleteSlideAnimation(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .line 1517
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mSlideDelete:Z

    .line 1518
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISlideView;->getSlideViewScrollX()I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/COUISlideView;->mCurrentTranslateX:I

    .line 1519
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISlideView;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISlideView;->getWidth()I

    move-result v0

    neg-int v0, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISlideView;->getWidth()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mTargetTranslateX:I

    .line 1520
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISlideView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISlideView;->mInitialHeight:I

    .line 1521
    new-instance v0, Lcom/coui/appcompat/widget/COUISlideView$4;

    iget v5, p0, Lcom/coui/appcompat/widget/COUISlideView;->mCurrentTranslateX:I

    iget v6, p0, Lcom/coui/appcompat/widget/COUISlideView;->mTargetTranslateX:I

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISlideView;->getHeight()I

    move-result v7

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v1 .. v8}, Lcom/coui/appcompat/widget/COUISlideView$4;-><init>(Lcom/coui/appcompat/widget/COUISlideView;Landroid/view/View;Landroid/view/View;IIII)V

    .line 1530
    .local v0, "animation":Lcom/coui/appcompat/widget/COUISlideDeleteAnimation;
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUISlideDeleteAnimation;->startAnimation()V

    .line 1531
    return-void
.end method
