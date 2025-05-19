.class public Landroidx/widget/COUIDrawerLayout;
.super Landroid/view/ViewGroup;
.source "COUIDrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/widget/COUIDrawerLayout$ChildAccessibilityDelegate;,
        Landroidx/widget/COUIDrawerLayout$AccessibilityDelegate;,
        Landroidx/widget/COUIDrawerLayout$LayoutParams;,
        Landroidx/widget/COUIDrawerLayout$ViewDragCallback;,
        Landroidx/widget/COUIDrawerLayout$SavedState;,
        Landroidx/widget/COUIDrawerLayout$SimpleDrawerListener;,
        Landroidx/widget/COUIDrawerLayout$DrawerListener;,
        Landroidx/widget/COUIDrawerLayout$BlankClickedListener;
    }
.end annotation


# static fields
.field private static final ALLOW_EDGE_LOCK:Z = false

.field static final CAN_HIDE_DESCENDANTS:Z

.field private static final CHILDREN_DISALLOW_INTERCEPT:Z = true

.field private static final DEFAULT_SCRIM_COLOR:I = -0x67000000

.field public static final DIRECTION_CLOSE:I = 0x2

.field public static final DIRECTION_MIDDLE:I = 0x1

.field public static final DIRECTION_NOT_SETTLING:I = -0x1

.field public static final DIRECTION_OPEN:I = 0x0

.field private static final DRAWER_ELEVATION:I = 0xa

.field private static final FEEDBACK_OFFSET:I = 0x64

.field static final LAYOUT_ATTRS:[I

.field public static final LOCK_MODE_LOCKED_CLOSED:I = 0x1

.field public static final LOCK_MODE_LOCKED_OPEN:I = 0x2

.field public static final LOCK_MODE_UNDEFINED:I = 0x3

.field public static final LOCK_MODE_UNLOCKED:I = 0x0

.field private static final MIN_DRAWER_MARGIN:I = 0x40

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field private static final PEEK_DELAY:I = 0xa0

.field private static final SET_DRAWER_SHADOW_FROM_ELEVATION:Z

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DrawerLayout"

.field private static final THEME_ATTRS:[I

.field private static final TOUCH_SLOP_SENSITIVITY:F = 1.0f

.field private static final TRIGGER_ACTION_OFFSET:I = 0x64


# instance fields
.field private mAlreadyOffset:I

.field private mBlankClickedListener:Landroidx/widget/COUIDrawerLayout$BlankClickedListener;

.field private final mBottomCallback:Landroidx/widget/COUIDrawerLayout$ViewDragCallback;

.field private final mBottomDragger:Landroidx/customview/widget/ViewDragHelper;

.field private mBottomDrawerSettle:Z

.field private final mChildAccessibilityDelegate:Landroidx/widget/COUIDrawerLayout$ChildAccessibilityDelegate;

.field private mChildHitRect:Landroid/graphics/Rect;

.field private mChildInvertedMatrix:Landroid/graphics/Matrix;

.field private mChildrenCanceledTouch:Z

.field private mDisableFastCloseFeedbackSpring:Lcom/facebook/rebound/Spring;

.field private mDisallowInterceptRequested:Z

.field private mDragRect:Landroid/graphics/Rect;

.field private mDrawStatusBarBackground:Z

.field private mDrawer:Landroid/view/View;

.field private mDrawerElevation:F

.field private mDrawerState:I

.field private mEnableFastDismiss:Z

.field private mFeedbackSpringConfig:Lcom/facebook/rebound/SpringConfig;

.field private mFirstLayout:Z

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mLastInsets:Ljava/lang/Object;

.field private final mLeftCallback:Landroidx/widget/COUIDrawerLayout$ViewDragCallback;

.field private final mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

.field private mListener:Landroidx/widget/COUIDrawerLayout$DrawerListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/widget/COUIDrawerLayout$DrawerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLockModeBottom:I

.field private mLockModeEnd:I

.field private mLockModeLeft:I

.field private mLockModeRight:I

.field private mLockModeStart:I

.field private mMinDrawerMargin:I

.field private mMinOffsetTop:I

.field private final mNonDrawerViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mRightCallback:Landroidx/widget/COUIDrawerLayout$ViewDragCallback;

.field private final mRightDragger:Landroidx/customview/widget/ViewDragHelper;

.field private mScreenHeight:I

.field private mScrimColor:I

.field private mScrimOpacity:F

.field private mScrimPaint:Landroid/graphics/Paint;

.field private mSettlingDirection:I

.field private mShadowBottom:Landroid/graphics/drawable/Drawable;

.field private mShadowBottomResolved:Landroid/graphics/drawable/Drawable;

.field private mShadowEnd:Landroid/graphics/drawable/Drawable;

.field private mShadowLeft:Landroid/graphics/drawable/Drawable;

.field private mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

.field private mShadowRight:Landroid/graphics/drawable/Drawable;

.field private mShadowRightResolved:Landroid/graphics/drawable/Drawable;

.field private mShadowStart:Landroid/graphics/drawable/Drawable;

.field private mSpringSystem:Lcom/facebook/rebound/SpringSystem;

.field private mStanderOffsetToStartAnimation:I

.field private mStatusBarBackground:Landroid/graphics/drawable/Drawable;

.field private mTitleBottom:Ljava/lang/CharSequence;

.field private mTitleLeft:Ljava/lang/CharSequence;

.field private mTitleRight:Ljava/lang/CharSequence;

.field private mTouchDownInBottomDrag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 110
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x1010434

    aput v3, v1, v2

    sput-object v1, Landroidx/widget/COUIDrawerLayout;->THEME_ATTRS:[I

    .line 194
    new-array v1, v0, [I

    const v3, 0x10100b3

    aput v3, v1, v2

    sput-object v1, Landroidx/widget/COUIDrawerLayout;->LAYOUT_ATTRS:[I

    .line 201
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v1, v3, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    sput-boolean v1, Landroidx/widget/COUIDrawerLayout;->CAN_HIDE_DESCENDANTS:Z

    .line 206
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    sput-boolean v0, Landroidx/widget/COUIDrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 357
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/widget/COUIDrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 358
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

    .line 364
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/widget/COUIDrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 365
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyle"    # I

    .line 377
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 209
    new-instance v0, Landroidx/widget/COUIDrawerLayout$ChildAccessibilityDelegate;

    invoke-direct {v0}, Landroidx/widget/COUIDrawerLayout$ChildAccessibilityDelegate;-><init>()V

    iput-object v0, p0, Landroidx/widget/COUIDrawerLayout;->mChildAccessibilityDelegate:Landroidx/widget/COUIDrawerLayout$ChildAccessibilityDelegate;

    .line 215
    const/high16 v0, -0x67000000

    iput v0, p0, Landroidx/widget/COUIDrawerLayout;->mScrimColor:I

    .line 217
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/widget/COUIDrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    .line 225
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/widget/COUIDrawerLayout;->mDragRect:Landroid/graphics/Rect;

    .line 226
    const/4 v0, 0x0

    iput v0, p0, Landroidx/widget/COUIDrawerLayout;->mMinOffsetTop:I

    .line 232
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/widget/COUIDrawerLayout;->mFirstLayout:Z

    .line 233
    iput-boolean v1, p0, Landroidx/widget/COUIDrawerLayout;->mEnableFastDismiss:Z

    .line 235
    const/4 v2, 0x3

    iput v2, p0, Landroidx/widget/COUIDrawerLayout;->mLockModeLeft:I

    .line 237
    iput v2, p0, Landroidx/widget/COUIDrawerLayout;->mLockModeRight:I

    .line 239
    iput v2, p0, Landroidx/widget/COUIDrawerLayout;->mLockModeStart:I

    .line 241
    iput v2, p0, Landroidx/widget/COUIDrawerLayout;->mLockModeEnd:I

    .line 243
    iput v2, p0, Landroidx/widget/COUIDrawerLayout;->mLockModeBottom:I

    .line 271
    const/4 v3, 0x0

    iput-object v3, p0, Landroidx/widget/COUIDrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    .line 272
    iput-object v3, p0, Landroidx/widget/COUIDrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    .line 273
    iput-object v3, p0, Landroidx/widget/COUIDrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    .line 274
    iput-object v3, p0, Landroidx/widget/COUIDrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    .line 275
    iput-object v3, p0, Landroidx/widget/COUIDrawerLayout;->mShadowBottom:Landroid/graphics/drawable/Drawable;

    .line 2938
    invoke-static {}, Lcom/facebook/rebound/SpringSystem;->create()Lcom/facebook/rebound/SpringSystem;

    move-result-object v4

    iput-object v4, p0, Landroidx/widget/COUIDrawerLayout;->mSpringSystem:Lcom/facebook/rebound/SpringSystem;

    .line 2939
    iget-object v4, p0, Landroidx/widget/COUIDrawerLayout;->mSpringSystem:Lcom/facebook/rebound/SpringSystem;

    invoke-virtual {v4}, Lcom/facebook/rebound/SpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object v4

    iput-object v4, p0, Landroidx/widget/COUIDrawerLayout;->mDisableFastCloseFeedbackSpring:Lcom/facebook/rebound/Spring;

    .line 2940
    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    invoke-static {v4, v5, v6, v7}, Lcom/facebook/rebound/SpringConfig;->fromBouncinessAndSpeed(DD)Lcom/facebook/rebound/SpringConfig;

    move-result-object v4

    iput-object v4, p0, Landroidx/widget/COUIDrawerLayout;->mFeedbackSpringConfig:Lcom/facebook/rebound/SpringConfig;

    .line 378
    const/high16 v4, 0x40000

    invoke-virtual {p0, v4}, Landroidx/widget/COUIDrawerLayout;->setDescendantFocusability(I)V

    .line 379
    invoke-virtual {p0}, Landroidx/widget/COUIDrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    .line 380
    .local v4, "density":F
    const/high16 v5, 0x42800000    # 64.0f

    mul-float/2addr v5, v4

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Landroidx/widget/COUIDrawerLayout;->mMinDrawerMargin:I

    .line 381
    const/high16 v5, 0x43c80000    # 400.0f

    mul-float/2addr v5, v4

    .line 383
    .local v5, "minVel":F
    invoke-static {p1}, Landroidx/widget/COUIDrawerLayout;->getScreenHeight(Landroid/content/Context;)I

    move-result v7

    iput v7, p0, Landroidx/widget/COUIDrawerLayout;->mScreenHeight:I

    .line 384
    new-instance v7, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;

    invoke-direct {v7, p0, v2}, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;-><init>(Landroidx/widget/COUIDrawerLayout;I)V

    iput-object v7, p0, Landroidx/widget/COUIDrawerLayout;->mLeftCallback:Landroidx/widget/COUIDrawerLayout$ViewDragCallback;

    .line 385
    new-instance v2, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;

    const/4 v7, 0x5

    invoke-direct {v2, p0, v7}, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;-><init>(Landroidx/widget/COUIDrawerLayout;I)V

    iput-object v2, p0, Landroidx/widget/COUIDrawerLayout;->mRightCallback:Landroidx/widget/COUIDrawerLayout$ViewDragCallback;

    .line 386
    new-instance v2, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;

    const/16 v7, 0x50

    invoke-direct {v2, p0, v7}, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;-><init>(Landroidx/widget/COUIDrawerLayout;I)V

    iput-object v2, p0, Landroidx/widget/COUIDrawerLayout;->mBottomCallback:Landroidx/widget/COUIDrawerLayout$ViewDragCallback;

    .line 388
    iget-object v2, p0, Landroidx/widget/COUIDrawerLayout;->mLeftCallback:Landroidx/widget/COUIDrawerLayout$ViewDragCallback;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {p0, v7, v2}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object v2

    iput-object v2, p0, Landroidx/widget/COUIDrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    .line 389
    iget-object v2, p0, Landroidx/widget/COUIDrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v2, v1}, Landroidx/customview/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 390
    iget-object v2, p0, Landroidx/widget/COUIDrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v2, v5}, Landroidx/customview/widget/ViewDragHelper;->setMinVelocity(F)V

    .line 391
    iget-object v2, p0, Landroidx/widget/COUIDrawerLayout;->mLeftCallback:Landroidx/widget/COUIDrawerLayout$ViewDragCallback;

    iget-object v8, p0, Landroidx/widget/COUIDrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v2, v8}, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->setDragger(Landroidx/customview/widget/ViewDragHelper;)V

    .line 393
    iget-object v2, p0, Landroidx/widget/COUIDrawerLayout;->mRightCallback:Landroidx/widget/COUIDrawerLayout$ViewDragCallback;

    invoke-static {p0, v7, v2}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object v2

    iput-object v2, p0, Landroidx/widget/COUIDrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    .line 394
    iget-object v2, p0, Landroidx/widget/COUIDrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    const/4 v8, 0x2

    invoke-virtual {v2, v8}, Landroidx/customview/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 395
    iget-object v2, p0, Landroidx/widget/COUIDrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v2, v5}, Landroidx/customview/widget/ViewDragHelper;->setMinVelocity(F)V

    .line 396
    iget-object v2, p0, Landroidx/widget/COUIDrawerLayout;->mRightCallback:Landroidx/widget/COUIDrawerLayout$ViewDragCallback;

    iget-object v8, p0, Landroidx/widget/COUIDrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v2, v8}, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->setDragger(Landroidx/customview/widget/ViewDragHelper;)V

    .line 398
    iget-object v2, p0, Landroidx/widget/COUIDrawerLayout;->mBottomCallback:Landroidx/widget/COUIDrawerLayout$ViewDragCallback;

    invoke-static {p0, v7, v2}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object v2

    iput-object v2, p0, Landroidx/widget/COUIDrawerLayout;->mBottomDragger:Landroidx/customview/widget/ViewDragHelper;

    .line 399
    iget-object v2, p0, Landroidx/widget/COUIDrawerLayout;->mBottomDragger:Landroidx/customview/widget/ViewDragHelper;

    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Landroidx/customview/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 400
    iget-object v2, p0, Landroidx/widget/COUIDrawerLayout;->mBottomDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v2, v5}, Landroidx/customview/widget/ViewDragHelper;->setMinVelocity(F)V

    .line 401
    iget-object v2, p0, Landroidx/widget/COUIDrawerLayout;->mBottomCallback:Landroidx/widget/COUIDrawerLayout$ViewDragCallback;

    iget-object v7, p0, Landroidx/widget/COUIDrawerLayout;->mBottomDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v2, v7}, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->setDragger(Landroidx/customview/widget/ViewDragHelper;)V

    .line 404
    invoke-virtual {p0, v1}, Landroidx/widget/COUIDrawerLayout;->setFocusableInTouchMode(Z)V

    .line 406
    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 409
    new-instance v1, Landroidx/widget/COUIDrawerLayout$AccessibilityDelegate;

    invoke-direct {v1, p0}, Landroidx/widget/COUIDrawerLayout$AccessibilityDelegate;-><init>(Landroidx/widget/COUIDrawerLayout;)V

    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 410
    invoke-virtual {p0, v0}, Landroidx/widget/COUIDrawerLayout;->setMotionEventSplittingEnabled(Z)V

    .line 411
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 412
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 413
    new-instance v1, Landroidx/widget/COUIDrawerLayout$1;

    invoke-direct {v1, p0}, Landroidx/widget/COUIDrawerLayout$1;-><init>(Landroidx/widget/COUIDrawerLayout;)V

    invoke-virtual {p0, v1}, Landroidx/widget/COUIDrawerLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 421
    const/16 v1, 0x500

    invoke-virtual {p0, v1}, Landroidx/widget/COUIDrawerLayout;->setSystemUiVisibility(I)V

    .line 423
    sget-object v1, Landroidx/widget/COUIDrawerLayout;->THEME_ATTRS:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 425
    .local v1, "a":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/widget/COUIDrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 428
    nop

    .line 429
    .end local v1    # "a":Landroid/content/res/TypedArray;
    goto :goto_0

    .line 427
    .restart local v1    # "a":Landroid/content/res/TypedArray;
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    .line 430
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_0
    iput-object v3, p0, Landroidx/widget/COUIDrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 434
    :cond_1
    :goto_0
    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr v0, v4

    iput v0, p0, Landroidx/widget/COUIDrawerLayout;->mDrawerElevation:F

    .line 436
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/widget/COUIDrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    .line 438
    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v0, v4

    add-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, p0, Landroidx/widget/COUIDrawerLayout;->mStanderOffsetToStartAnimation:I

    .line 439
    invoke-direct {p0}, Landroidx/widget/COUIDrawerLayout;->initFeedbackAnimation()V

    .line 440
    return-void
.end method

.method static synthetic access$002(Landroidx/widget/COUIDrawerLayout;I)I
    .locals 0
    .param p0, "x0"    # Landroidx/widget/COUIDrawerLayout;
    .param p1, "x1"    # I

    .line 107
    iput p1, p0, Landroidx/widget/COUIDrawerLayout;->mSettlingDirection:I

    return p1
.end method

.method static synthetic access$100(Landroidx/widget/COUIDrawerLayout;)I
    .locals 1
    .param p0, "x0"    # Landroidx/widget/COUIDrawerLayout;

    .line 107
    iget v0, p0, Landroidx/widget/COUIDrawerLayout;->mStanderOffsetToStartAnimation:I

    return v0
.end method

.method static synthetic access$200(Landroidx/widget/COUIDrawerLayout;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/widget/COUIDrawerLayout;

    .line 107
    iget-boolean v0, p0, Landroidx/widget/COUIDrawerLayout;->mEnableFastDismiss:Z

    return v0
.end method

.method static synthetic access$300(Landroidx/widget/COUIDrawerLayout;)I
    .locals 1
    .param p0, "x0"    # Landroidx/widget/COUIDrawerLayout;

    .line 107
    iget v0, p0, Landroidx/widget/COUIDrawerLayout;->mScreenHeight:I

    return v0
.end method

.method static synthetic access$400(Landroidx/widget/COUIDrawerLayout;)I
    .locals 1
    .param p0, "x0"    # Landroidx/widget/COUIDrawerLayout;

    .line 107
    iget v0, p0, Landroidx/widget/COUIDrawerLayout;->mMinOffsetTop:I

    return v0
.end method

.method static synthetic access$500(Landroidx/widget/COUIDrawerLayout;)Lcom/facebook/rebound/Spring;
    .locals 1
    .param p0, "x0"    # Landroidx/widget/COUIDrawerLayout;

    .line 107
    iget-object v0, p0, Landroidx/widget/COUIDrawerLayout;->mDisableFastCloseFeedbackSpring:Lcom/facebook/rebound/Spring;

    return-object v0
.end method

.method static synthetic access$600(Landroidx/widget/COUIDrawerLayout;)I
    .locals 1
    .param p0, "x0"    # Landroidx/widget/COUIDrawerLayout;

    .line 107
    iget v0, p0, Landroidx/widget/COUIDrawerLayout;->mAlreadyOffset:I

    return v0
.end method

.method static synthetic access$602(Landroidx/widget/COUIDrawerLayout;I)I
    .locals 0
    .param p0, "x0"    # Landroidx/widget/COUIDrawerLayout;
    .param p1, "x1"    # I

    .line 107
    iput p1, p0, Landroidx/widget/COUIDrawerLayout;->mAlreadyOffset:I

    return p1
.end method

.method static synthetic access$700(Landroidx/widget/COUIDrawerLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroidx/widget/COUIDrawerLayout;

    .line 107
    iget-object v0, p0, Landroidx/widget/COUIDrawerLayout;->mDrawer:Landroid/view/View;

    return-object v0
.end method

.method private dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "child"    # Landroid/view/View;

    .line 874
    invoke-virtual {p2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 875
    .local v0, "childMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-nez v1, :cond_0

    .line 876
    invoke-direct {p0, p1, p2}, Landroidx/widget/COUIDrawerLayout;->getTransformedMotionEvent(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 877
    .local v1, "transformedEvent":Landroid/view/MotionEvent;
    invoke-virtual {p2, v1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 878
    .local v2, "handled":Z
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 879
    .end local v1    # "transformedEvent":Landroid/view/MotionEvent;
    goto :goto_0

    .line 880
    .end local v2    # "handled":Z
    :cond_0
    invoke-virtual {p0}, Landroidx/widget/COUIDrawerLayout;->getScrollX()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 881
    .local v1, "offsetX":F
    invoke-virtual {p0}, Landroidx/widget/COUIDrawerLayout;->getScrollY()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 882
    .local v2, "offsetY":F
    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 883
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 884
    .local v3, "handled":Z
    neg-float v4, v1

    neg-float v5, v2

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 886
    move v2, v3

    .end local v1    # "offsetX":F
    .end local v3    # "handled":Z
    .local v2, "handled":Z
    :goto_0
    return v2
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 3010
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 3011
    .local v0, "windowManager":Landroid/view/WindowManager;
    const/4 v1, 0x0

    .line 3012
    .local v1, "defaultDisplay":Landroid/view/Display;
    if-eqz v0, :cond_0

    .line 3013
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 3015
    :cond_0
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 3016
    .local v2, "outPoint":Landroid/graphics/Point;
    if-eqz v1, :cond_1

    .line 3017
    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 3019
    :cond_1
    iget v3, v2, Landroid/graphics/Point;->y:I

    return v3
.end method

.method private getTransformedMotionEvent(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "child"    # Landroid/view/View;

    .line 894
    invoke-virtual {p0}, Landroidx/widget/COUIDrawerLayout;->getScrollX()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 895
    .local v0, "offsetX":F
    invoke-virtual {p0}, Landroidx/widget/COUIDrawerLayout;->getScrollY()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 896
    .local v1, "offsetY":F
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 897
    .local v2, "transformedEvent":Landroid/view/MotionEvent;
    invoke-virtual {v2, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 898
    invoke-virtual {p2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    .line 899
    .local v3, "childMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v3}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v4

    if-nez v4, :cond_1

    .line 900
    iget-object v4, p0, Landroidx/widget/COUIDrawerLayout;->mChildInvertedMatrix:Landroid/graphics/Matrix;

    if-nez v4, :cond_0

    .line 901
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v4, p0, Landroidx/widget/COUIDrawerLayout;->mChildInvertedMatrix:Landroid/graphics/Matrix;

    .line 903
    :cond_0
    iget-object v4, p0, Landroidx/widget/COUIDrawerLayout;->mChildInvertedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 904
    iget-object v4, p0, Landroidx/widget/COUIDrawerLayout;->mChildInvertedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 906
    :cond_1
    return-object v2
.end method

.method static gravityToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "gravity"    # I

    .line 1118
    and-int/lit8 v0, p0, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1119
    const-string v0, "LEFT"

    return-object v0

    .line 1121
    :cond_0
    and-int/lit8 v0, p0, 0x5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 1122
    const-string v0, "RIGHT"

    return-object v0

    .line 1124
    :cond_1
    and-int/lit8 v0, p0, 0x50

    const/16 v1, 0x50

    if-ne v0, v1, :cond_2

    .line 1125
    const-string v0, "BOTTOM"

    return-object v0

    .line 1127
    :cond_2
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static hasOpaqueBackground(Landroid/view/View;)Z
    .locals 4
    .param p0, "v"    # Landroid/view/View;

    .line 1460
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1461
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1462
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    .line 1464
    :cond_1
    return v1
.end method

.method private hasPeekingDrawer()Z
    .locals 5

    .line 2090
    invoke-virtual {p0}, Landroidx/widget/COUIDrawerLayout;->getChildCount()I

    move-result v0

    .line 2091
    .local v0, "childCount":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 2092
    invoke-virtual {p0, v2}, Landroidx/widget/COUIDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/widget/COUIDrawerLayout$LayoutParams;

    .line 2093
    .local v3, "lp":Landroidx/widget/COUIDrawerLayout$LayoutParams;
    iget-boolean v4, v3, Landroidx/widget/COUIDrawerLayout$LayoutParams;->isPeeking:Z

    if-eqz v4, :cond_0

    .line 2094
    const/4 v1, 0x1

    return v1

    .line 2091
    .end local v3    # "lp":Landroidx/widget/COUIDrawerLayout$LayoutParams;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2097
    .end local v2    # "i":I
    :cond_1
    return v1
.end method

.method private hasVisibleDrawer()Z
    .locals 1

    .line 2160
    invoke-virtual {p0}, Landroidx/widget/COUIDrawerLayout;->findVisibleDrawer()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static includeChildForAccessibility(Landroid/view/View;)Z
    .locals 2
    .param p0, "child"    # Landroid/view/View;

    .line 2305
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 2307
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private initFeedbackAnimation()V
    .locals 2

    .line 2946
    iget-object v0, p0, Landroidx/widget/COUIDrawerLayout;->mDisableFastCloseFeedbackSpring:Lcom/facebook/rebound/Spring;

    iget-object v1, p0, Landroidx/widget/COUIDrawerLayout;->mFeedbackSpringConfig:Lcom/facebook/rebound/SpringConfig;

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    .line 2947
    iget-object v0, p0, Landroidx/widget/COUIDrawerLayout;->mDisableFastCloseFeedbackSpring:Lcom/facebook/rebound/Spring;

    new-instance v1, Landroidx/widget/COUIDrawerLayout$2;

    invoke-direct {v1, p0}, Landroidx/widget/COUIDrawerLayout$2;-><init>(Landroidx/widget/COUIDrawerLayout;)V

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    .line 2974
    return-void
.end method

.method private isInBoundsOfChild(FFLandroid/view/View;)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "child"    # Landroid/view/View;

    .line 861
    iget-object v0, p0, Landroidx/widget/COUIDrawerLayout;->mChildHitRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 862
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/widget/COUIDrawerLayout;->mChildHitRect:Landroid/graphics/Rect;

    .line 864
    :cond_0
    iget-object v0, p0, Landroidx/widget/COUIDrawerLayout;->mChildHitRect:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 865
    iget-object v0, p0, Landroidx/widget/COUIDrawerLayout;->mChildHitRect:Landroid/graphics/Rect;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method private isTouchPointInView(Landroid/view/View;FF)Z
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 2814
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2815
    return v0

    .line 2817
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 2818
    .local v1, "location":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2819
    aget v2, v1, v0

    .line 2820
    .local v2, "left":I
    const/4 v3, 0x1

    aget v4, v1, v3

    .line 2821
    .local v4, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v2

    .line 2822
    .local v5, "right":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v4

    .line 2823
    .local v6, "bottom":I
    int-to-float v7, v4

    cmpl-float v7, p3, v7

    if-ltz v7, :cond_1

    int-to-float v7, v6

    cmpg-float v7, p3, v7

    if-gtz v7, :cond_1

    int-to-float v7, v2

    cmpl-float v7, p2, v7

    if-ltz v7, :cond_1

    int-to-float v7, v5

    cmpg-float v7, p2, v7

    if-gtz v7, :cond_1

    move v0, v3

    nop

    :cond_1
    return v0
.end method

.method private mirror(Landroid/graphics/drawable/Drawable;I)Z
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "layoutDirection"    # I

    .line 1334
    if-eqz p1, :cond_1

    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableCompat;->isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1338
    :cond_0
    invoke-static {p1, p2}, Landroidx/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 1339
    const/4 v0, 0x1

    return v0

    .line 1335
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private resolveLeftShadow()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1292
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 1294
    .local v0, "layoutDirection":I
    if-nez v0, :cond_0

    .line 1295
    iget-object v1, p0, Landroidx/widget/COUIDrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1297
    iget-object v1, p0, Landroidx/widget/COUIDrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0}, Landroidx/widget/COUIDrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    .line 1298
    iget-object v1, p0, Landroidx/widget/COUIDrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    return-object v1

    .line 1301
    :cond_0
    iget-object v1, p0, Landroidx/widget/COUIDrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1303
    iget-object v1, p0, Landroidx/widget/COUIDrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0}, Landroidx/widget/COUIDrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    .line 1304
    iget-object v1, p0, Landroidx/widget/COUIDrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    return-object v1

    .line 1307
    :cond_1
    iget-object v1, p0, Landroidx/widget/COUIDrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    return-object v1
.end method

.method private resolveRightShadow()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1311
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 1312
    .local v0, "layoutDirection":I
    if-nez v0, :cond_0

    .line 1313
    iget-object v1, p0, Landroidx/widget/COUIDrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1315
    iget-object v1, p0, Landroidx/widget/COUIDrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0}, Landroidx/widget/COUIDrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    .line 1316
    iget-object v1, p0, Landroidx/widget/COUIDrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    return-object v1

    .line 1319
    :cond_0
    iget-object v1, p0, Landroidx/widget/COUIDrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1321
    iget-object v1, p0, Landroidx/widget/COUIDrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0}, Landroidx/widget/COUIDrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    .line 1322
    iget-object v1, p0, Landroidx/widget/COUIDrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    return-object v1

    .line 1325
    :cond_1
    iget-object v1, p0, Landroidx/widget/COUIDrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    return-object v1
.end method

.method private resolveShadowDrawables()V
    .locals 1

    .line 1283
    sget-boolean v0, Landroidx/widget/COUIDrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v0, :cond_0

    .line 1284
    return-void

    .line 1286
    :cond_0
    invoke-direct {p0}, Landroidx/widget/COUIDrawerLayout;->resolveLeftShadow()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/widget/COUIDrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    .line 1287
    invoke-direct {p0}, Landroidx/widget/COUIDrawerLayout;->resolveRightShadow()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/widget/COUIDrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    .line 1288
    iget-object v0, p0, Landroidx/widget/COUIDrawerLayout;->mShadowBottom:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroidx/widget/COUIDrawerLayout;->mShadowBottomResolved:Landroid/graphics/drawable/Drawable;

    .line 1289
    return-void
.end method

.method private updateChildrenImportantForAccessibility(Landroid/view/View;Z)V
    .locals 4
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "isDrawerOpen"    # Z

    .line 1005
    invoke-virtual {p0}, Landroidx/widget/COUIDrawerLayout;->getChildCount()I

    move-result v0

    .line 1006
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 1007
    invoke-virtual {p0, v1}, Landroidx/widget/COUIDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1008
    .local v2, "child":Landroid/view/View;
    if-nez p2, :cond_0

    invoke-virtual {p0, v2}, Landroidx/widget/COUIDrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    if-ne v2, p1, :cond_2

    .line 1011
    :cond_1
    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_1

    .line 1014
    :cond_2
    const/4 v3, 0x4

    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 1006
    .end local v2    # "child":Landroid/view/View;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1018
    .end local v1    # "i":I
    :cond_3
    return-void
.end method


# virtual methods
.method public addDrawerListener(Landroidx/widget/COUIDrawerLayout$DrawerListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/widget/COUIDrawerLayout$DrawerListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 586
    if-nez p1, :cond_0

    .line 587
    return-void

    .line 589
    :cond_0
    iget-object v0, p0, Landroidx/widget/COUIDrawerLayout;->mListeners:Ljava/util/List;

    if-nez v0, :cond_1

    .line 590
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/widget/COUIDrawerLayout;->mListeners:Ljava/util/List;

    .line 592
    :cond_1
    iget-object v0, p0, Landroidx/widget/COUIDrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 593
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 6
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 2126
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroidx/widget/COUIDrawerLayout;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-ne v0, v1, :cond_0

    .line 2127
    return-void

    .line 2132
    :cond_0
    invoke-virtual {p0}, Landroidx/widget/COUIDrawerLayout;->getChildCount()I

    move-result v0

    .line 2133
    .local v0, "childCount":I
    const/4 v1, 0x0

    .line 2134
    .local v1, "isDrawerOpen":Z
    const/4 v2, 0x0

    move v3, v1

    move v1, v2

    .local v1, "i":I
    .local v3, "isDrawerOpen":Z
    :goto_0
    if-ge v1, v0, :cond_3

    .line 2135
    invoke-virtual {p0, v1}, Landroidx/widget/COUIDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2136
    .local v4, "child":Landroid/view/View;
    invoke-virtual {p0, v4}, Landroidx/widget/COUIDrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2137
    invoke-virtual {p0, v4}, Landroidx/widget/COUIDrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2138
    const/4 v3, 0x1

    .line 2139
    invoke-virtual {v4, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_1

    .line 2142
    :cond_1
    iget-object v5, p0, Landroidx/widget/COUIDrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2134
    .end local v4    # "child":Landroid/view/View;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2146
    .end local v1    # "i":I
    :cond_3
    if-nez v3, :cond_5

    .line 2147
    iget-object v1, p0, Landroidx/widget/COUIDrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2148
    .local v1, "nonDrawerViewsCount":I
    nop

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_5

    .line 2149
    iget-object v4, p0, Landroidx/widget/COUIDrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 2150
    .restart local v4    # "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4

    .line 2151
    invoke-virtual {v4, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2148
    .end local v4    # "child":Landroid/view/View;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2156
    .end local v1    # "nonDrawerViewsCount":I
    .end local v2    # "i":I
    :cond_5
    iget-object v1, p0, Landroidx/widget/COUIDrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2157
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 2277
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2279
    invoke-virtual {p0}, Landroidx/widget/COUIDrawerLayout;->findOpenDrawer()Landroid/view/View;

    move-result-object v0

    .line 2280
    .local v0, "openDrawer":Landroid/view/View;
    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/widget/COUIDrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2288
    :cond_0
    const/4 v1, 0x1

    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_1

    .line 2283
    :cond_1
    :goto_0
    const/4 v1, 0x4

    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 2294
    :goto_1
    sget-boolean v1, Landroidx/widget/COUIDrawerLayout;->CAN_HIDE_DESCENDANTS:Z

    if-nez v1, :cond_2

    .line 2295
    iget-object v1, p0, Landroidx/widget/COUIDrawerLayout;->mChildAccessibilityDelegate:Landroidx/widget/COUIDrawerLayout$ChildAccessibilityDelegate;

    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 2297
    :cond_2
    return-void
.end method

.method cancelChildViewTouch()V
    .locals 11

    .line 2176
    iget-boolean v0, p0, Landroidx/widget/COUIDrawerLayout;->mChildrenCanceledTouch:Z

    if-nez v0, :cond_1

    .line 2177
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 2178
    .local v9, "now":J
    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v3, v9

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 2180
    .local v0, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual {p0}, Landroidx/widget/COUIDrawerLayout;->getChildCount()I

    move-result v1

    .line 2181
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2182
    invoke-virtual {p0, v2}, Landroidx/widget/COUIDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2181
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2184
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 2185
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/widget/COUIDrawerLayout;->mChildrenCanceledTouch:Z

    .line 2187
    .end local v0    # "cancelEvent":Landroid/view/MotionEvent;
    .end local v1    # "childCount":I
    .end local v9    # "now":J
    :cond_1
    return-void
.end method

.method checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z
    .locals 2
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "checkFor"    # I

    .line 1055
    invoke-virtual {p0, p1}, Landroidx/widget/COUIDrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v0

    .line 1056
    .local v0, "absGravity":I
    and-int v1, v0, p2

    if-ne v1, p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 2116
    instance-of v0, p1, Landroidx/widget/COUIDrawerLayout$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public closeDrawer(I)V
    .locals 1
    .param p1, "gravity"    # I

    .line 2004
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/widget/COUIDrawerLayout;->closeDrawer(IZ)V

    .line 2005
    return-void
.end method

.method public closeDrawer(IZ)V
    .locals 4
    .param p1, "gravity"    # I
    .param p2, "animate"    # Z

    .line 2015
    invoke-virtual {p0, p1}, Landroidx/widget/COUIDrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    .line 2016
    .local v0, "drawerView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2020
    invoke-virtual {p0, v0, p2}, Landroidx/widget/COUIDrawerLayout;->closeDrawer(Landroid/view/View;Z)V

    .line 2021
    return-void

    .line 2017
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No drawer view found with gravity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2018
    invoke-static {p1}, Landroidx/widget/COUIDrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public closeDrawer(Landroid/view/View;)V
    .locals 1
    .param p1, "drawerView"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1959
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/widget/COUIDrawerLayout;->closeDrawer(Landroid/view/View;Z)V

    .line 1960
    return-void
.end method

.method public closeDrawer(Landroid/view/View;Z)V
    .locals 4
    .param p1, "drawerView"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "animate"    # Z

    .line 1969
    invoke-virtual {p0, p1}, Landroidx/widget/COUIDrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1973
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/widget/COUIDrawerLayout$LayoutParams;

    .line 1974
    .local v0, "lp":Landroidx/widget/COUIDrawerLayout$LayoutParams;
    const/4 v1, 0x2

    iput v1, p0, Landroidx/widget/COUIDrawerLayout;->mSettlingDirection:I

    .line 1975
    iget-boolean v1, p0, Landroidx/widget/COUIDrawerLayout;->mFirstLayout:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 1976
    iput v3, v0, Landroidx/widget/COUIDrawerLayout$LayoutParams;->onScreen:F

    .line 1977
    iput v2, v0, Landroidx/widget/COUIDrawerLayout$LayoutParams;->openState:I

    goto :goto_0

    .line 1978
    :cond_0
    const/4 v1, 0x4

    if-eqz p2, :cond_3

    .line 1979
    iget v2, v0, Landroidx/widget/COUIDrawerLayout$LayoutParams;->openState:I

    or-int/2addr v1, v2

    iput v1, v0, Landroidx/widget/COUIDrawerLayout$LayoutParams;->openState:I

    .line 1981
    const/4 v1, 0x3

    invoke-virtual {p0, p1, v1}, Landroidx/widget/COUIDrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1982
    iget-object v1, p0, Landroidx/widget/COUIDrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    neg-int v2, v2

    .line 1983
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1982
    invoke-virtual {v1, p1, v2, v3}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0

    .line 1984
    :cond_1
    const/4 v1, 0x5

    invoke-virtual {p0, p1, v1}, Landroidx/widget/COUIDrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1985
    iget-object v1, p0, Landroidx/widget/COUIDrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p0}, Landroidx/widget/COUIDrawerLayout;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0

    .line 1987
    :cond_2
    iget-object v1, p0, Landroidx/widget/COUIDrawerLayout;->mBottomDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Landroidx/widget/COUIDrawerLayout;->getHeight()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0

    .line 1990
    :cond_3
    invoke-virtual {p0, p1, v3}, Landroidx/widget/COUIDrawerLayout;->moveDrawerToOffset(Landroid/view/View;F)V

    .line 1991
    iget v3, v0, Landroidx/widget/COUIDrawerLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v3, v2, p1}, Landroidx/widget/COUIDrawerLayout;->updateDrawerState(IILandroid/view/View;)V

    .line 1992
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1994
    :goto_0
    invoke-virtual {p0}, Landroidx/widget/COUIDrawerLayout;->invalidate()V

    .line 1995
    return-void

    .line 1970
    .end local v0    # "lp":Landroidx/widget/COUIDrawerLayout$LayoutParams;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not a sliding drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public closeDrawers()V
    .locals 1

    .line 1836
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/widget/COUIDrawerLayout;->closeDrawers(Z)V

    .line 1837
    return-void
.end method

.method closeDrawers(Z)V
    .locals 10
    .param p1, "peekingOnly"    # Z

    .line 1841
    const/4 v0, 0x0

    .line 1842
    .local v0, "needsInvalidate":Z
    invoke-virtual {p0}, Landroidx/widget/COUIDrawerLayout;->getChildCount()I

    move-result v1

    .line 1843
    .local v1, "childCount":I
    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    .local v0, "i":I
    .local v3, "needsInvalidate":Z
    :goto_0
    if-ge v0, v1, :cond_5

    .line 1844
    invoke-virtual {p0, v0}, Landroidx/widget/COUIDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1845
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/widget/COUIDrawerLayout$LayoutParams;

    .line 1847
    .local v5, "lp":Landroidx/widget/COUIDrawerLayout$LayoutParams;
    invoke-virtual {p0, v4}, Landroidx/widget/COUIDrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz p1, :cond_0

    iget-boolean v6, v5, Landroidx/widget/COUIDrawerLayout$LayoutParams;->isPeeking:Z

    if-nez v6, :cond_0

    .line 1848
    goto :goto_2

    .line 1851
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 1853
    .local v6, "childWidth":I
    const/4 v7, 0x3

    invoke-virtual {p0, v4, v7}, Landroidx/widget/COUIDrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1854
    iget-object v7, p0, Landroidx/widget/COUIDrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    neg-int v8, v6

    .line 1855
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v9

    .line 1854
    invoke-virtual {v7, v4, v8, v9}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v7

    or-int/2addr v3, v7

    goto :goto_1

    .line 1856
    :cond_1
    const/4 v7, 0x5

    invoke-virtual {p0, v4, v7}, Landroidx/widget/COUIDrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1857
    iget-object v7, p0, Landroidx/widget/COUIDrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    .line 1858
    invoke-virtual {p0}, Landroidx/widget/COUIDrawerLayout;->getWidth()I

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v9

    .line 1857
    invoke-virtual {v7, v4, v8, v9}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v7

    or-int/2addr v3, v7

    goto :goto_1

    .line 1860
    :cond_2
    iget-object v7, p0, Landroidx/widget/COUIDrawerLayout;->mBlankClickedListener:Landroidx/widget/COUIDrawerLayout$BlankClickedListener;

    if-eqz v7, :cond_3

    .line 1861
    iget-object v7, p0, Landroidx/widget/COUIDrawerLayout;->mBlankClickedListener:Landroidx/widget/COUIDrawerLayout$BlankClickedListener;

    invoke-interface {v7}, Landroidx/widget/COUIDrawerLayout$BlankClickedListener;->onBlankClicked()V

    goto :goto_1

    .line 1863
    :cond_3
    iget-object v7, p0, Landroidx/widget/COUIDrawerLayout;->mBottomDragger:Landroidx/customview/widget/ViewDragHelper;

    .line 1864
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {p0}, Landroidx/widget/COUIDrawerLayout;->getHeight()I

    move-result v9

    .line 1863
    invoke-virtual {v7, v4, v8, v9}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v7

    or-int/2addr v3, v7

    .line 1868
    :goto_1
    iput-boolean v2, v5, Landroidx/widget/COUIDrawerLayout$LayoutParams;->isPeeking:Z

    .line 1843
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Landroidx/widget/COUIDrawerLayout$LayoutParams;
    .end local v6    # "childWidth":I
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1871
    .end local v0    # "i":I
    :cond_5
    iget-object v0, p0, Landroidx/widget/COUIDrawerLayout;->mLeftCallback:Landroidx/widget/COUIDrawerLayout$ViewDragCallback;

    invoke-virtual {v0}, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->removeCallbacks()V

    .line 1872
    iget-object v0, p0, Landroidx/widget/COUIDrawerLayout;->mRightCallback:Landroidx/widget/COUIDrawerLayout$ViewDragCallback;

    invoke-virtual {v0}, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->removeCallbacks()V

    .line 1873
    iget-object v0, p0, Landroidx/widget/COUIDrawerLayout;->mBottomCallback:Landroidx/widget/COUIDrawerLayout$ViewDragCallback;

    invoke-virtual {v0}, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->removeCallbacks()V

    .line 1875
    if-eqz v3, :cond_6

    .line 1876
    invoke-virtual {p0}, Landroidx/widget/COUIDrawerLayout;->invalidate()V

    .line 1878
    :cond_6
    return-void
.end method

.method public computeScroll()V
    .locals 6

    .line 1443
    invoke-virtual {p0}, Landroidx/widget/COUIDrawerLayout;->getChildCount()I

    move-result v0

    .line 1444
    .local v0, "childCount":I
    const/4 v1, 0x0

    .line 1445
    .local v1, "scrimOpacity":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1446
    invoke-virtual {p0, v2}, Landroidx/widget/COUIDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/widget/COUIDrawerLayout$LayoutParams;

    iget v3, v3, Landroidx/widget/COUIDrawerLayout$LayoutParams;->onScreen:F

    .line 1447
    .local v3, "onscreen":F
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1445
    .end local v3    # "onscreen":F
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1449
    .end local v2    # "i":I
    :cond_0
    iput v1, p0, Landroidx/widget/COUIDrawerLayout;->mScrimOpacity:F

    .line 1451
    iget-object v2, p0, Landroidx/widget/COUIDrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/customview/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v2

    .line 1452
    .local v2, "leftDraggerSettling":Z
    iget-object v4, p0, Landroidx/widget/COUIDrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v4, v3}, Landroidx/customview/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v4

    .line 1453
    .local v4, "rightDraggerSettling":Z
    iget-object v5, p0, Landroidx/widget/COUIDrawerLayout;->mBottomDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v5, v3}, Landroidx/customview/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v3

    .line 1454
    .local v3, "bottomDraggerSettling":Z
    if-nez v2, :cond_1

    if-nez v4, :cond_1

    if-eqz v3, :cond_2

    .line 1455
    :cond_1
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1457
    :cond_2
    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1727
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    .line 1728
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_4

    iget v0, p0, Landroidx/widget/COUIDrawerLayout;->mScrimOpacity:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    goto :goto_2

    .line 1733
    :cond_0
    invoke-virtual {p0}, Landroidx/widget/COUIDrawerLayout;->getChildCount()I

    move-result v0

    .line 1734
    .local v0, "childrenCount":I
    if-eqz v0, :cond_3

    .line 1735
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 1736
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 1739
    .local v2, "y":F
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_3

    .line 1740
    invoke-virtual {p0, v3}, Landroidx/widget/COUIDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1744
    .local v4, "child":Landroid/view/View;
    invoke-direct {p0, v1, v2, v4}, Landroidx/widget/COUIDrawerLayout;->isInBoundsOfChild(FFLandroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0, v4}, Landroidx/widget/COUIDrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1745
    goto :goto_1

    .line 1749
    :cond_1
    invoke-direct {p0, p1, v4}, Landroidx/widget/COUIDrawerLayout;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1750
    const/4 v5, 0x1

    return v5

    .line 1739
    .end local v4    # "child":Landroid/view/View;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1754
    .end local v1    # "x":F
    .end local v2    # "y":F
    .end local v3    # "i":I
    :cond_3
    const/4 v1, 0x0

    return v1

    .line 1730
    .end local v0    # "childrenCount":I
    :cond_4
    :goto_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method dispatchOnDrawerClosed(Landroid/view/View;)V
    .locals 5
    .param p1, "drawerView"    # Landroid/view/View;

    .line 952
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/widget/COUIDrawerLayout$LayoutParams;

    .line 953
    .local v0, "lp":Landroidx/widget/COUIDrawerLayout$LayoutParams;
    const/16 v1, 0x50

    invoke-virtual {p0, p1, v1}, Landroidx/widget/COUIDrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget v1, v0, Landroidx/widget/COUIDrawerLayout$LayoutParams;->openState:I

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    .line 954
    iput v2, v0, Landroidx/widget/COUIDrawerLayout$LayoutParams;->openState:I

    .line 956
    :cond_0
    iget v1, v0, Landroidx/widget/COUIDrawerLayout$LayoutParams;->openState:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 957
    const/4 v1, 0x0

    iput v1, v0, Landroidx/widget/COUIDrawerLayout$LayoutParams;->openState:I

    .line 959
    iget-object v2, p0, Landroidx/widget/COUIDrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 962
    iget-object v2, p0, Landroidx/widget/COUIDrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 963
    .local v2, "listenerCount":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 964
    iget-object v4, p0, Landroidx/widget/COUIDrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/widget/COUIDrawerLayout$DrawerListener;

    invoke-interface {v4, p1}, Landroidx/widget/COUIDrawerLayout$DrawerListener;->onDrawerClosed(Landroid/view/View;)V

    .line 963
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 968
    .end local v2    # "listenerCount":I
    .end local v3    # "i":I
    :cond_1
    invoke-direct {p0, p1, v1}, Landroidx/widget/COUIDrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    .line 973
    invoke-virtual {p0}, Landroidx/widget/COUIDrawerLayout;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 974
    invoke-virtual {p0}, Landroidx/widget/COUIDrawerLayout;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 975
    .local v1, "rootView":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 976
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 980
    .end local v1    # "rootView":Landroid/view/View;
    :cond_2
    return-void
.end method

.method dispatchOnDrawerOpened(Landroid/view/View;)V
    .locals 5
    .param p1, "drawerView"    # Landroid/view/View;

    .line 983
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/widget/COUIDrawerLayout$LayoutParams;

    .line 984
    .local v0, "lp":Landroidx/widget/COUIDrawerLayout$LayoutParams;
    iget v1, v0, Landroidx/widget/COUIDrawerLayout$LayoutParams;->openState:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-nez v1, :cond_1

    .line 985
    iput v2, v0, Landroidx/widget/COUIDrawerLayout$LayoutParams;->openState:I

    .line 986
    iget-object v1, p0, Landroidx/widget/COUIDrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 989
    iget-object v1, p0, Landroidx/widget/COUIDrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 990
    .local v1, "listenerCount":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    .line 991
    iget-object v4, p0, Landroidx/widget/COUIDrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/widget/COUIDrawerLayout$DrawerListener;

    invoke-interface {v4, p1}, Landroidx/widget/COUIDrawerLayout$DrawerListener;->onDrawerOpened(Landroid/view/View;)V

    .line 990
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 995
    .end local v1    # "listenerCount":I
    .end local v3    # "i":I
    :cond_0
    invoke-direct {p0, p1, v2}, Landroidx/widget/COUIDrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    .line 998
    invoke-virtual {p0}, Landroidx/widget/COUIDrawerLayout;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 999
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Landroidx/widget/COUIDrawerLayout;->sendAccessibilityEvent(I)V

    .line 1002
    :cond_1
    return-void
.end method

.method dispatchOnDrawerSlide(Landroid/view/View;F)V
    .locals 3
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    .line 1021
    iget-object v0, p0, Landroidx/widget/COUIDrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1024
    iget-object v0, p0, Landroidx/widget/COUIDrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1025
    .local v0, "listenerCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1026
    iget-object v2, p0, Landroidx/widget/COUIDrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/widget/COUIDrawerLayout$DrawerListener;

    invoke-interface {v2, p1, p2}, Landroidx/widget/COUIDrawerLayout$DrawerListener;->onDrawerSlide(Landroid/view/View;F)V

    .line 1025
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1029
    .end local v0    # "listenerCount":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 30
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .line 1536
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-virtual/range {p0 .. p0}, Landroidx/widget/COUIDrawerLayout;->getHeight()I

    move-result v9

    .line 1537
    .local v9, "height":I
    invoke-virtual {v0, v8}, Landroidx/widget/COUIDrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v10

    .line 1538
    .local v10, "drawingContent":Z
    const/4 v1, 0x0

    .local v1, "clipLeft":I
    invoke-virtual/range {p0 .. p0}, Landroidx/widget/COUIDrawerLayout;->getWidth()I

    move-result v2

    .local v2, "clipRight":I
    invoke-virtual/range {p0 .. p0}, Landroidx/widget/COUIDrawerLayout;->getHeight()I

    move-result v3

    .line 1540
    .local v3, "clipBottom":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v11

    .line 1541
    .local v11, "restoreCount":I
    const/16 v4, 0x50

    const/4 v5, 0x5

    const/4 v6, 0x3

    if-eqz v10, :cond_9

    .line 1542
    invoke-virtual/range {p0 .. p0}, Landroidx/widget/COUIDrawerLayout;->getChildCount()I

    move-result v12

    .line 1543
    .local v12, "childCount":I
    const/4 v13, 0x0

    move v14, v3

    move v3, v2

    move v2, v1

    move v1, v13

    .local v1, "i":I
    .local v2, "clipLeft":I
    .local v3, "clipRight":I
    .local v14, "clipBottom":I
    :goto_0
    if-ge v1, v12, :cond_8

    .line 1544
    invoke-virtual {v0, v1}, Landroidx/widget/COUIDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 1545
    .local v15, "v":Landroid/view/View;
    if-eq v15, v8, :cond_7

    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v16

    if-nez v16, :cond_7

    .line 1546
    invoke-static {v15}, Landroidx/widget/COUIDrawerLayout;->hasOpaqueBackground(Landroid/view/View;)Z

    move-result v16

    if-nez v16, :cond_0

    invoke-virtual {v0, v15, v4}, Landroidx/widget/COUIDrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v16

    if-eqz v16, :cond_7

    :cond_0
    invoke-virtual {v0, v15}, Landroidx/widget/COUIDrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 1547
    invoke-virtual {v15}, Landroid/view/View;->getHeight()I

    move-result v4

    if-ge v4, v9, :cond_1

    .line 1548
    goto :goto_2

    .line 1550
    :cond_1
    invoke-virtual {v0, v15, v6}, Landroidx/widget/COUIDrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1551
    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    move-result v4

    .line 1552
    .local v4, "vright":I
    if-le v4, v2, :cond_2

    move v2, v4

    .line 1553
    .end local v4    # "vright":I
    :cond_2
    goto :goto_2

    :cond_3
    invoke-virtual {v0, v15, v5}, Landroidx/widget/COUIDrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1554
    invoke-virtual {v15}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 1555
    .local v4, "vleft":I
    if-ge v4, v3, :cond_4

    move v3, v4

    .line 1556
    .end local v4    # "vleft":I
    :cond_4
    goto :goto_2

    .line 1557
    :cond_5
    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1558
    .local v4, "vTop":I
    if-ge v4, v14, :cond_7

    .line 1559
    iget-object v5, v0, Landroidx/widget/COUIDrawerLayout;->mDragRect:Landroid/graphics/Rect;

    if-eqz v5, :cond_6

    iget-object v5, v0, Landroidx/widget/COUIDrawerLayout;->mDragRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    goto :goto_1

    :cond_6
    move v5, v13

    :goto_1
    add-int/2addr v4, v5

    .line 1543
    move v14, v4

    .end local v4    # "vTop":I
    .end local v15    # "v":Landroid/view/View;
    :cond_7
    :goto_2
    add-int/lit8 v1, v1, 0x1

    const/16 v4, 0x50

    const/4 v5, 0x5

    goto :goto_0

    .line 1563
    .end local v1    # "i":I
    :cond_8
    invoke-virtual {v7, v2, v13, v3, v14}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1565
    move v12, v2

    move v13, v3

    goto :goto_3

    .end local v12    # "childCount":I
    .end local v14    # "clipBottom":I
    .local v1, "clipLeft":I
    .local v2, "clipRight":I
    .local v3, "clipBottom":I
    :cond_9
    move v12, v1

    move v13, v2

    move v14, v3

    .end local v1    # "clipLeft":I
    .end local v2    # "clipRight":I
    .end local v3    # "clipBottom":I
    .local v12, "clipLeft":I
    .local v13, "clipRight":I
    .restart local v14    # "clipBottom":I
    :goto_3
    invoke-super/range {p0 .. p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v15

    .line 1566
    .local v15, "result":Z
    invoke-virtual {v7, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1568
    iget v1, v0, Landroidx/widget/COUIDrawerLayout;->mScrimOpacity:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_a

    if-eqz v10, :cond_a

    .line 1569
    iget v1, v0, Landroidx/widget/COUIDrawerLayout;->mScrimColor:I

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    ushr-int/lit8 v6, v1, 0x18

    .line 1570
    .local v6, "baseAlpha":I
    int-to-float v1, v6

    iget v2, v0, Landroidx/widget/COUIDrawerLayout;->mScrimOpacity:F

    mul-float/2addr v1, v2

    float-to-int v5, v1

    .line 1571
    .local v5, "imag":I
    shl-int/lit8 v1, v5, 0x18

    iget v2, v0, Landroidx/widget/COUIDrawerLayout;->mScrimColor:I

    const v3, 0xffffff

    and-int/2addr v2, v3

    or-int v4, v1, v2

    .line 1572
    .local v4, "color":I
    iget-object v1, v0, Landroidx/widget/COUIDrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1574
    int-to-float v2, v12

    int-to-float v1, v13

    invoke-virtual/range {p0 .. p0}, Landroidx/widget/COUIDrawerLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    move/from16 v20, v3

    iget-object v3, v0, Landroidx/widget/COUIDrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    move/from16 v16, v1

    move-object/from16 v1, p1

    move-object/from16 v18, v3

    move/from16 v17, v20

    const/4 v3, 0x0

    move/from16 v19, v4

    .end local v4    # "color":I
    .local v19, "color":I
    move/from16 v4, v16

    move/from16 v16, v5

    .end local v5    # "imag":I
    .local v16, "imag":I
    move/from16 v5, v17

    move/from16 v17, v6

    .end local v6    # "baseAlpha":I
    .local v17, "baseAlpha":I
    move-object/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1575
    .end local v16    # "imag":I
    .end local v17    # "baseAlpha":I
    .end local v19    # "color":I
    goto/16 :goto_4

    :cond_a
    iget-object v1, v0, Landroidx/widget/COUIDrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v1, :cond_b

    .line 1576
    invoke-virtual {v0, v8, v6}, Landroidx/widget/COUIDrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1577
    iget-object v1, v0, Landroidx/widget/COUIDrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 1578
    .local v1, "shadowWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v5

    .line 1579
    .local v5, "childRight":I
    iget-object v6, v0, Landroidx/widget/COUIDrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v6}, Landroidx/customview/widget/ViewDragHelper;->getEdgeSize()I

    move-result v6

    .line 1580
    .local v6, "drawerPeekDistance":I
    int-to-float v3, v5

    int-to-float v2, v6

    div-float/2addr v3, v2

    .line 1581
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1582
    .local v2, "alpha":F
    iget-object v3, v0, Landroidx/widget/COUIDrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v4

    move/from16 v21, v6

    .end local v6    # "drawerPeekDistance":I
    .local v21, "drawerPeekDistance":I
    add-int v6, v5, v1

    .line 1583
    move/from16 v22, v1

    .end local v1    # "shadowWidth":I
    .local v22, "shadowWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 1582
    invoke-virtual {v3, v5, v4, v6, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1584
    iget-object v1, v0, Landroidx/widget/COUIDrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1585
    iget-object v1, v0, Landroidx/widget/COUIDrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1586
    .end local v2    # "alpha":F
    .end local v5    # "childRight":I
    .end local v21    # "drawerPeekDistance":I
    .end local v22    # "shadowWidth":I
    goto/16 :goto_4

    :cond_b
    iget-object v1, v0, Landroidx/widget/COUIDrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_c

    .line 1587
    const/4 v1, 0x5

    invoke-virtual {v0, v8, v1}, Landroidx/widget/COUIDrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1588
    iget-object v1, v0, Landroidx/widget/COUIDrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 1589
    .restart local v1    # "shadowWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 1590
    .local v2, "childLeft":I
    invoke-virtual/range {p0 .. p0}, Landroidx/widget/COUIDrawerLayout;->getWidth()I

    move-result v3

    sub-int/2addr v3, v2

    .line 1591
    .local v3, "showing":I
    iget-object v5, v0, Landroidx/widget/COUIDrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v5}, Landroidx/customview/widget/ViewDragHelper;->getEdgeSize()I

    move-result v5

    .line 1592
    .local v5, "drawerPeekDistance":I
    int-to-float v6, v3

    int-to-float v4, v5

    div-float/2addr v6, v4

    .line 1593
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/4 v6, 0x0

    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 1594
    .local v4, "alpha":F
    iget-object v6, v0, Landroidx/widget/COUIDrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    move/from16 v23, v3

    .end local v3    # "showing":I
    .local v23, "showing":I
    sub-int v3, v2, v1

    move/from16 v24, v1

    .end local v1    # "shadowWidth":I
    .local v24, "shadowWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 1595
    move/from16 v25, v5

    .end local v5    # "drawerPeekDistance":I
    .local v25, "drawerPeekDistance":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 1594
    invoke-virtual {v6, v3, v1, v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1596
    iget-object v1, v0, Landroidx/widget/COUIDrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1597
    iget-object v1, v0, Landroidx/widget/COUIDrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1598
    .end local v2    # "childLeft":I
    .end local v4    # "alpha":F
    .end local v23    # "showing":I
    .end local v24    # "shadowWidth":I
    .end local v25    # "drawerPeekDistance":I
    goto :goto_4

    :cond_c
    iget-object v1, v0, Landroidx/widget/COUIDrawerLayout;->mShadowBottomResolved:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_d

    .line 1599
    const/16 v1, 0x50

    invoke-virtual {v0, v8, v1}, Landroidx/widget/COUIDrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1600
    iget-object v1, v0, Landroidx/widget/COUIDrawerLayout;->mShadowBottomResolved:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 1601
    .local v1, "shadowHeight":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1602
    .local v2, "childTop":I
    invoke-virtual/range {p0 .. p0}, Landroidx/widget/COUIDrawerLayout;->getHeight()I

    move-result v3

    sub-int/2addr v3, v2

    .line 1603
    .restart local v3    # "showing":I
    iget-object v4, v0, Landroidx/widget/COUIDrawerLayout;->mBottomDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v4}, Landroidx/customview/widget/ViewDragHelper;->getEdgeSize()I

    move-result v4

    .line 1604
    .local v4, "drawerPeekDistance":I
    int-to-float v5, v3

    int-to-float v6, v4

    div-float/2addr v5, v6

    .line 1605
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const/4 v6, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 1606
    .local v5, "alpha":F
    iget-object v6, v0, Landroidx/widget/COUIDrawerLayout;->mShadowBottomResolved:Landroid/graphics/drawable/Drawable;

    move/from16 v26, v3

    .end local v3    # "showing":I
    .local v26, "showing":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v3

    move/from16 v27, v4

    .end local v4    # "drawerPeekDistance":I
    .local v27, "drawerPeekDistance":I
    sub-int v4, v2, v1

    .line 1607
    move/from16 v28, v1

    .end local v1    # "shadowHeight":I
    .local v28, "shadowHeight":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v1

    move/from16 v29, v2

    .end local v2    # "childTop":I
    .local v29, "childTop":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 1606
    invoke-virtual {v6, v3, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1608
    iget-object v1, v0, Landroidx/widget/COUIDrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v3, v5, v2

    float-to-int v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1609
    iget-object v1, v0, Landroidx/widget/COUIDrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1611
    .end local v5    # "alpha":F
    .end local v26    # "showing":I
    .end local v27    # "drawerPeekDistance":I
    .end local v28    # "shadowHeight":I
    .end local v29    # "childTop":I
    :cond_d
    :goto_4
    return v15
.end method

.method public enableFastDismiss(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 2913
    iput-boolean p1, p0, Landroidx/widget/COUIDrawerLayout;->mEnableFastDismiss:Z

    .line 2914
    return-void
.end method

.method findDrawerWithGravity(I)Landroid/view/View;
    .locals 6
    .param p1, "gravity"    # I

    .line 1098
    nop

    .line 1099
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 1098
    invoke-static {p1, v0}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    and-int/lit8 v0, v0, 0x77

    .line 1100
    .local v0, "absGravity":I
    invoke-virtual {p0}, Landroidx/widget/COUIDrawerLayout;->getChildCount()I

    move-result v1

    .line 1101
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1102
    invoke-virtual {p0, v2}, Landroidx/widget/COUIDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1103
    .local v3, "child":Landroid/view/View;
    invoke-virtual {p0, v3}, Landroidx/widget/COUIDrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v4

    .line 1104
    .local v4, "childAbsGravity":I
    and-int/lit8 v5, v4, 0x77

    if-ne v5, v0, :cond_0

    .line 1105
    return-object v3

    .line 1101
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childAbsGravity":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1108
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method findOpenDrawer()Landroid/view/View;
    .locals 6

    .line 1060
    invoke-virtual {p0}, Landroidx/widget/COUIDrawerLayout;->getChildCount()I

    move-result v0

    .line 1061
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1062
    invoke-virtual {p0, v1}, Landroidx/widget/COUIDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1063
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/widget/COUIDrawerLayout$LayoutParams;

    .line 1064
    .local v3, "childLp":Landroidx/widget/COUIDrawerLayout$LayoutParams;
    iget v4, v3, Landroidx/widget/COUIDrawerLayout$LayoutParams;->openState:I

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_0

    .line 1065
    return-object v2

    .line 1067
    :cond_0
    const/16 v4, 0x50

    invoke-virtual {p0, v2, v4}, Landroidx/widget/COUIDrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v3, Landroidx/widget/COUIDrawerLayout$LayoutParams;->onScreen:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 1068
    return-object v2

    .line 1061
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childLp":Landroidx/widget/COUIDrawerLayout$LayoutParams;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1071
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method findVisibleDrawer()Landroid/view/View;
    .locals 4

    .line 2164
    invoke-virtual {p0}, Landroidx/widget/COUIDrawerLayout;->getChildCount()I

    move-result v0

    .line 2165
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2166
    invoke-virtual {p0, v1}, Landroidx/widget/COUIDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2167
    .local v2, "child":Landroid/view/View;
    invoke-virtual {p0, v2}, Landroidx/widget/COUIDrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Landroidx/widget/COUIDrawerLayout;->isDrawerVisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2168
    return-object v2

    .line 2165
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2171
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 2102
    new-instance v0, Landroidx/widget/COUIDrawerLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroidx/widget/COUIDrawerLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 2121
    new-instance v0, Landroidx/widget/COUIDrawerLayout$LayoutParams;

    invoke-virtual {p0}, Landroidx/widget/COUIDrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/widget/COUIDrawerLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 2107
    instance-of v0, p1, Landroidx/widget/COUIDrawerLayout$LayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/widget/COUIDrawerLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroidx/widget/COUIDrawerLayout$LayoutParams;

    invoke-direct {v0, v1}, Landroidx/widget/COUIDrawerLayout$LayoutParams;-><init>(Landroidx/widget/COUIDrawerLayout$LayoutParams;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/widget/COUIDrawerLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Landroidx/widget/COUIDrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroidx/widget/COUIDrawerLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/widget/COUIDrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-object v0
.end method

.method public getBottomDrawerActionOffset()I
    .locals 1

    .line 2845
    iget v0, p0, Landroidx/widget/COUIDrawerLayout;->mStanderOffsetToStartAnimation:I

    return v0
.end method

.method public getDrawerElevation()F
    .locals 1

    .line 466
    sget-boolean v0, Landroidx/widget/COUIDrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v0, :cond_0

    .line 467
    iget v0, p0, Landroidx/widget/COUIDrawerLayout;->mDrawerElevation:F

    return v0

    .line 469
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDrawerLockMode(I)I
    .locals 3
    .param p1, "edgeGravity"    # I

    .line 742
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 744
    .local v0, "layoutDirection":I
    const/4 v1, 0x3

    if-eq p1, v1, :cond_a

    const/4 v2, 0x5

    if-eq p1, v2, :cond_7

    const/16 v2, 0x50

    if-eq p1, v2, :cond_6

    const v2, 0x800003

    if-eq p1, v2, :cond_3

    const v2, 0x800005

    if-eq p1, v2, :cond_0

    goto :goto_4

    .line 776
    :cond_0
    iget v2, p0, Landroidx/widget/COUIDrawerLayout;->mLockModeEnd:I

    if-eq v2, v1, :cond_1

    .line 777
    iget v1, p0, Landroidx/widget/COUIDrawerLayout;->mLockModeEnd:I

    return v1

    .line 779
    :cond_1
    if-nez v0, :cond_2

    iget v2, p0, Landroidx/widget/COUIDrawerLayout;->mLockModeRight:I

    goto :goto_0

    :cond_2
    iget v2, p0, Landroidx/widget/COUIDrawerLayout;->mLockModeLeft:I

    .line 781
    .local v2, "endLockMode":I
    :goto_0
    if-eq v2, v1, :cond_d

    .line 782
    return v2

    .line 766
    .end local v2    # "endLockMode":I
    :cond_3
    iget v2, p0, Landroidx/widget/COUIDrawerLayout;->mLockModeStart:I

    if-eq v2, v1, :cond_4

    .line 767
    iget v1, p0, Landroidx/widget/COUIDrawerLayout;->mLockModeStart:I

    return v1

    .line 769
    :cond_4
    if-nez v0, :cond_5

    iget v2, p0, Landroidx/widget/COUIDrawerLayout;->mLockModeLeft:I

    goto :goto_1

    :cond_5
    iget v2, p0, Landroidx/widget/COUIDrawerLayout;->mLockModeRight:I

    .line 771
    .local v2, "startLockMode":I
    :goto_1
    if-eq v2, v1, :cond_d

    .line 772
    return v2

    .line 786
    .end local v2    # "startLockMode":I
    :cond_6
    iget v2, p0, Landroidx/widget/COUIDrawerLayout;->mLockModeBottom:I

    if-eq v2, v1, :cond_d

    .line 787
    iget v1, p0, Landroidx/widget/COUIDrawerLayout;->mLockModeBottom:I

    return v1

    .line 756
    :cond_7
    iget v2, p0, Landroidx/widget/COUIDrawerLayout;->mLockModeRight:I

    if-eq v2, v1, :cond_8

    .line 757
    iget v1, p0, Landroidx/widget/COUIDrawerLayout;->mLockModeRight:I

    return v1

    .line 759
    :cond_8
    if-nez v0, :cond_9

    iget v2, p0, Landroidx/widget/COUIDrawerLayout;->mLockModeEnd:I

    goto :goto_2

    :cond_9
    iget v2, p0, Landroidx/widget/COUIDrawerLayout;->mLockModeStart:I

    .line 761
    .local v2, "rightLockMode":I
    :goto_2
    if-eq v2, v1, :cond_d

    .line 762
    return v2

    .line 746
    .end local v2    # "rightLockMode":I
    :cond_a
    iget v2, p0, Landroidx/widget/COUIDrawerLayout;->mLockModeLeft:I

    if-eq v2, v1, :cond_b

    .line 747
    iget v1, p0, Landroidx/widget/COUIDrawerLayout;->mLockModeLeft:I

    return v1

    .line 749
    :cond_b
    if-nez v0, :cond_c

    iget v2, p0, Landroidx/widget/COUIDrawerLayout;->mLockModeStart:I

    goto :goto_3

    :cond_c
    iget v2, p0, Landroidx/widget/COUIDrawerLayout;->mLockModeEnd:I

    .line 751
    .local v2, "leftLockMode":I
    :goto_3
    if-eq v2, v1, :cond_d

    .line 752
    return v2

    .line 792
    .end local v2    # "leftLockMode":I
    :cond_d
    :goto_4
    const/4 v1, 0x0

    return v1
.end method

.method public getDrawerLockMode(Landroid/view/View;)I
    .locals 3
    .param p1, "drawerView"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 805
    invoke-virtual {p0, p1}, Landroidx/widget/COUIDrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 808
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/widget/COUIDrawerLayout$LayoutParams;

    iget v0, v0, Landroidx/widget/COUIDrawerLayout$LayoutParams;->gravity:I

    .line 809
    .local v0, "drawerGravity":I
    invoke-virtual {p0, v0}, Landroidx/widget/COUIDrawerLayout;->getDrawerLockMode(I)I

    move-result v1

    return v1

    .line 806
    .end local v0    # "drawerGravity":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not a drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDrawerTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "edgeGravity"    # I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 844
    nop

    .line 845
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 844
    invoke-static {p1, v0}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    .line 846
    .local v0, "absGravity":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 847
    iget-object v1, p0, Landroidx/widget/COUIDrawerLayout;->mTitleLeft:Ljava/lang/CharSequence;

    return-object v1

    .line 848
    :cond_0
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 849
    iget-object v1, p0, Landroidx/widget/COUIDrawerLayout;->mTitleRight:Ljava/lang/CharSequence;

    return-object v1

    .line 850
    :cond_1
    const/16 v1, 0x50

    if-ne v0, v1, :cond_2

    .line 851
    iget-object v1, p0, Landroidx/widget/COUIDrawerLayout;->mTitleBottom:Ljava/lang/CharSequence;

    return-object v1

    .line 853
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method getDrawerViewAbsoluteGravity(Landroid/view/View;)I
    .locals 2
    .param p1, "drawerView"    # Landroid/view/View;

    .line 1050
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/widget/COUIDrawerLayout$LayoutParams;

    iget v0, v0, Landroidx/widget/COUIDrawerLayout$LayoutParams;->gravity:I

    .line 1051
    .local v0, "gravity":I
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    return v1
.end method

.method getDrawerViewOffset(Landroid/view/View;)F
    .locals 1
    .param p1, "drawerView"    # Landroid/view/View;

    .line 1042
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/widget/COUIDrawerLayout$LayoutParams;

    iget v0, v0, Landroidx/widget/COUIDrawerLayout$LayoutParams;->onScreen:F

    return v0
.end method

.method public getSettlingDirection()I
    .locals 1

    .line 2982
    iget v0, p0, Landroidx/widget/COUIDrawerLayout;->mSettlingDirection:I

    return v0
.end method

.method public getStatusBarBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1485
    iget-object v0, p0, Landroidx/widget/COUIDrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method isContentView(Landroid/view/View;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 1615
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/widget/COUIDrawerLayout$LayoutParams;

    iget v0, v0, Landroidx/widget/COUIDrawerLayout$LayoutParams;->gravity:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDrawerOpen(I)Z
    .locals 2
    .param p1, "drawerGravity"    # I

    .line 2051
    invoke-virtual {p0, p1}, Landroidx/widget/COUIDrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    .line 2052
    .local v0, "drawerView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2053
    invoke-virtual {p0, v0}, Landroidx/widget/COUIDrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v1

    return v1

    .line 2055
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isDrawerOpen(Landroid/view/View;)Z
    .locals 3
    .param p1, "drawer"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2034
    invoke-virtual {p0, p1}, Landroidx/widget/COUIDrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2037
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/widget/COUIDrawerLayout$LayoutParams;

    .line 2038
    .local v0, "drawerLp":Landroidx/widget/COUIDrawerLayout$LayoutParams;
    iget v1, v0, Landroidx/widget/COUIDrawerLayout$LayoutParams;->openState:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 2035
    .end local v0    # "drawerLp":Landroidx/widget/COUIDrawerLayout$LayoutParams;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not a drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method isDrawerView(Landroid/view/View;)Z
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .line 1619
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/widget/COUIDrawerLayout$LayoutParams;

    iget v0, v0, Landroidx/widget/COUIDrawerLayout$LayoutParams;->gravity:I

    .line 1620
    .local v0, "gravity":I
    nop

    .line 1621
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    .line 1620
    invoke-static {v0, v1}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    .line 1622
    .local v1, "absGravity":I
    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 1624
    return v3

    .line 1626
    :cond_0
    and-int/lit8 v2, v1, 0x5

    if-eqz v2, :cond_1

    .line 1628
    return v3

    .line 1631
    :cond_1
    and-int/lit8 v2, v1, 0x50

    if-eqz v2, :cond_2

    .line 1633
    return v3

    .line 1635
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method public isDrawerVisible(I)Z
    .locals 2
    .param p1, "drawerGravity"    # I

    .line 2082
    invoke-virtual {p0, p1}, Landroidx/widget/COUIDrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    .line 2083
    .local v0, "drawerView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2084
    invoke-virtual {p0, v0}, Landroidx/widget/COUIDrawerLayout;->isDrawerVisible(Landroid/view/View;)Z

    move-result v1

    return v1

    .line 2086
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isDrawerVisible(Landroid/view/View;)Z
    .locals 3
    .param p1, "drawer"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2067
    invoke-virtual {p0, p1}, Landroidx/widget/COUIDrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2070
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/widget/COUIDrawerLayout$LayoutParams;

    iget v0, v0, Landroidx/widget/COUIDrawerLayout$LayoutParams;->onScreen:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2068
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not a drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method moveDrawerToOffset(Landroid/view/View;F)V
    .locals 6
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    .line 1075
    invoke-virtual {p0, p1}, Landroidx/widget/COUIDrawerLayout;->getDrawerViewOffset(Landroid/view/View;)F

    move-result v0

    .line 1076
    .local v0, "oldOffset":F
    const/16 v1, 0x50

    invoke-virtual {p0, p1, v1}, Landroidx/widget/COUIDrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1077
    sub-float v1, v0, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_1

    .line 1079
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1080
    .local v1, "width":I
    int-to-float v2, v1

    mul-float/2addr v2, v0

    float-to-int v2, v2

    .line 1081
    .local v2, "oldPos":I
    int-to-float v3, v1

    mul-float/2addr v3, p2

    float-to-int v3, v3

    .line 1082
    .local v3, "newPos":I
    sub-int v4, v3, v2

    .line 1084
    .local v4, "dx":I
    const/4 v5, 0x3

    .line 1085
    invoke-virtual {p0, p1, v5}, Landroidx/widget/COUIDrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1084
    move v5, v4

    goto :goto_0

    .line 1085
    :cond_1
    neg-int v5, v4

    .line 1084
    :goto_0
    invoke-virtual {p1, v5}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1088
    .end local v1    # "width":I
    .end local v2    # "oldPos":I
    .end local v3    # "newPos":I
    .end local v4    # "dx":I
    :goto_1
    invoke-virtual {p0, p1, p2}, Landroidx/widget/COUIDrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    .line 1089
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1138
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1139
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/widget/COUIDrawerLayout;->mFirstLayout:Z

    .line 1140
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1132
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1133
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/widget/COUIDrawerLayout;->mFirstLayout:Z

    .line 1134
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 1518
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 1519
    iget-boolean v0, p0, Landroidx/widget/COUIDrawerLayout;->mDrawStatusBarBackground:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/widget/COUIDrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 1521
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    .line 1522
    iget-object v0, p0, Landroidx/widget/COUIDrawerLayout;->mLastInsets:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/widget/COUIDrawerLayout;->mLastInsets:Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowInsets;

    .line 1523
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    goto :goto_1

    .line 1525
    :cond_1
    move v0, v2

    .line 1527
    .local v0, "inset":I
    :goto_1
    if-lez v0, :cond_2

    .line 1528
    iget-object v1, p0, Landroidx/widget/COUIDrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/widget/COUIDrawerLayout;->getWidth()I

    move-result v3

    invoke-virtual {v1, v2, v2, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1529
    iget-object v1, p0, Landroidx/widget/COUIDrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1532
    .end local v0    # "inset":I
    :cond_2
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1641
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1644
    .local v0, "action":I
    iget-object v1, p0, Landroidx/widget/COUIDrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v1, p1}, Landroidx/customview/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    iget-object v2, p0, Landroidx/widget/COUIDrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    .line 1645
    invoke-virtual {v2, p1}, Landroidx/customview/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 1646
    .local v1, "interceptForDrag":Z
    const/16 v2, 0x50

    invoke-virtual {p0, v2}, Landroidx/widget/COUIDrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v2

    .line 1647
    .local v2, "bottomView":Landroid/view/View;
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    .line 1648
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/widget/COUIDrawerLayout$LayoutParams;

    .line 1649
    .local v6, "layoutParams":Landroidx/widget/COUIDrawerLayout$LayoutParams;
    iget v7, v6, Landroidx/widget/COUIDrawerLayout$LayoutParams;->onScreen:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_1

    iget v7, v6, Landroidx/widget/COUIDrawerLayout$LayoutParams;->onScreen:F

    cmpl-float v7, v7, v3

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    move v7, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v7, v4

    :goto_1
    iput-boolean v7, p0, Landroidx/widget/COUIDrawerLayout;->mBottomDrawerSettle:Z

    .line 1650
    .end local v6    # "layoutParams":Landroidx/widget/COUIDrawerLayout$LayoutParams;
    goto :goto_2

    .line 1651
    :cond_2
    iput-boolean v4, p0, Landroidx/widget/COUIDrawerLayout;->mBottomDrawerSettle:Z

    .line 1654
    :goto_2
    iget-boolean v6, p0, Landroidx/widget/COUIDrawerLayout;->mBottomDrawerSettle:Z

    if-nez v6, :cond_3

    iget-boolean v6, p0, Landroidx/widget/COUIDrawerLayout;->mTouchDownInBottomDrag:Z

    if-eqz v6, :cond_3

    .line 1655
    iget-object v6, p0, Landroidx/widget/COUIDrawerLayout;->mBottomDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v6, p1}, Landroidx/customview/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    or-int/2addr v1, v6

    .line 1658
    :cond_3
    const/4 v6, 0x0

    .line 1660
    .local v6, "interceptBottomDrawer":Z
    const/4 v7, 0x0

    .line 1662
    .local v7, "interceptForTap":Z
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 1686
    :pswitch_0
    iget-object v3, p0, Landroidx/widget/COUIDrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    const/4 v8, 0x3

    invoke-virtual {v3, v8}, Landroidx/customview/widget/ViewDragHelper;->checkTouchSlop(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1687
    iget-object v3, p0, Landroidx/widget/COUIDrawerLayout;->mLeftCallback:Landroidx/widget/COUIDrawerLayout$ViewDragCallback;

    invoke-virtual {v3}, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->removeCallbacks()V

    .line 1688
    iget-object v3, p0, Landroidx/widget/COUIDrawerLayout;->mRightCallback:Landroidx/widget/COUIDrawerLayout$ViewDragCallback;

    invoke-virtual {v3}, Landroidx/widget/COUIDrawerLayout$ViewDragCallback;->removeCallbacks()V

    .line 1690
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 1691
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 1692
    .local v8, "y":F
    iget-boolean v9, p0, Landroidx/widget/COUIDrawerLayout;->mTouchDownInBottomDrag:Z

    if-eqz v9, :cond_6

    .line 1693
    const/4 v9, 0x0

    .line 1694
    .local v9, "isTouchInDragView":Z
    iget-object v10, p0, Landroidx/widget/COUIDrawerLayout;->mDragRect:Landroid/graphics/Rect;

    if-eqz v10, :cond_5

    .line 1695
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v10

    iget-object v11, p0, Landroidx/widget/COUIDrawerLayout;->mDragRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    cmpl-float v10, v3, v10

    if-lez v10, :cond_4

    .line 1696
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v10

    iget-object v11, p0, Landroidx/widget/COUIDrawerLayout;->mDragRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    cmpg-float v10, v3, v10

    if-gez v10, :cond_4

    .line 1697
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v10

    iget-object v11, p0, Landroidx/widget/COUIDrawerLayout;->mDragRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    cmpl-float v10, v8, v10

    if-lez v10, :cond_4

    .line 1698
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v10

    iget-object v11, p0, Landroidx/widget/COUIDrawerLayout;->mDragRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    cmpg-float v10, v8, v10

    if-gez v10, :cond_4

    move v10, v4

    goto :goto_3

    :cond_4
    move v10, v5

    :goto_3
    move v9, v10

    .line 1700
    :cond_5
    if-eqz v9, :cond_6

    .line 1701
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1702
    iget-object v10, p0, Landroidx/widget/COUIDrawerLayout;->mBottomDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v10, p1}, Landroidx/customview/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 1703
    const/4 v3, 0x1

    .line 1706
    move v6, v3

    .end local v3    # "x":F
    .end local v8    # "y":F
    .end local v9    # "isTouchInDragView":Z
    :cond_6
    goto :goto_4

    .line 1713
    :pswitch_1
    invoke-virtual {p0, v4}, Landroidx/widget/COUIDrawerLayout;->closeDrawers(Z)V

    .line 1714
    iput-boolean v5, p0, Landroidx/widget/COUIDrawerLayout;->mDisallowInterceptRequested:Z

    .line 1715
    iput-boolean v5, p0, Landroidx/widget/COUIDrawerLayout;->mChildrenCanceledTouch:Z

    goto :goto_4

    .line 1664
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    .line 1665
    .local v8, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 1666
    .local v9, "y":F
    iput v8, p0, Landroidx/widget/COUIDrawerLayout;->mInitialMotionX:F

    .line 1667
    iput v9, p0, Landroidx/widget/COUIDrawerLayout;->mInitialMotionY:F

    .line 1668
    iget v10, p0, Landroidx/widget/COUIDrawerLayout;->mScrimOpacity:F

    cmpl-float v3, v10, v3

    if-lez v3, :cond_7

    .line 1669
    iget-object v3, p0, Landroidx/widget/COUIDrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    float-to-int v10, v8

    float-to-int v11, v9

    invoke-virtual {v3, v10, v11}, Landroidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v3

    .line 1670
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_7

    invoke-virtual {p0, v3}, Landroidx/widget/COUIDrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1671
    const/4 v3, 0x1

    .line 1674
    move v7, v3

    .end local v3    # "child":Landroid/view/View;
    :cond_7
    iput-boolean v5, p0, Landroidx/widget/COUIDrawerLayout;->mDisallowInterceptRequested:Z

    .line 1675
    iput-boolean v5, p0, Landroidx/widget/COUIDrawerLayout;->mChildrenCanceledTouch:Z

    .line 1676
    iget-boolean v3, p0, Landroidx/widget/COUIDrawerLayout;->mBottomDrawerSettle:Z

    if-nez v3, :cond_8

    .line 1677
    iget-object v3, p0, Landroidx/widget/COUIDrawerLayout;->mDragRect:Landroid/graphics/Rect;

    float-to-int v10, v8

    float-to-int v11, v9

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {v3, v10, v11}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    iput-boolean v3, p0, Landroidx/widget/COUIDrawerLayout;->mTouchDownInBottomDrag:Z

    goto :goto_4

    .line 1679
    :cond_8
    iput-boolean v5, p0, Landroidx/widget/COUIDrawerLayout;->mTouchDownInBottomDrag:Z

    .line 1681
    nop

    .line 1718
    .end local v8    # "x":F
    .end local v9    # "y":F
    :cond_9
    :goto_4
    if-nez v1, :cond_b

    if-nez v7, :cond_b

    invoke-direct {p0}, Landroidx/widget/COUIDrawerLayout;->hasPeekingDrawer()Z

    move-result v3

    if-nez v3, :cond_b

    iget-boolean v3, p0, Landroidx/widget/COUIDrawerLayout;->mChildrenCanceledTouch:Z

    if-nez v3, :cond_b

    if-eqz v6, :cond_a

    goto :goto_5

    :cond_a
    move v4, v5

    nop

    :cond_b
    :goto_5
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 2191
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Landroidx/widget/COUIDrawerLayout;->hasVisibleDrawer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2192
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 2193
    const/4 v0, 0x1

    return v0

    .line 2195
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 2200
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 2201
    invoke-virtual {p0}, Landroidx/widget/COUIDrawerLayout;->findVisibleDrawer()Landroid/view/View;

    move-result-object v0

    .line 2202
    .local v0, "visibleDrawer":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/widget/COUIDrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    .line 2203
    invoke-virtual {p0}, Landroidx/widget/COUIDrawerLayout;->closeDrawers()V

    .line 2205
    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 2207
    .end local v0    # "visibleDrawer":Landroid/view/View;
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 20
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 1345
    move-object/from16 v0, p0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/widget/COUIDrawerLayout;->mInLayout:Z

    .line 1346
    sub-int v4, p4, p2

    .line 1347
    .local v4, "width":I
    invoke-virtual/range {p0 .. p0}, Landroidx/widget/COUIDrawerLayout;->getChildCount()I

    move-result v5

    .line 1348
    .local v5, "childCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v5, :cond_c

    .line 1349
    invoke-virtual {v0, v7}, Landroidx/widget/COUIDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1351
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_0

    .line 1352
    nop

    .line 1348
    .end local v4    # "width":I
    .end local v5    # "childCount":I
    .end local v8    # "child":Landroid/view/View;
    .local v16, "width":I
    .local v19, "childCount":I
    :goto_1
    move/from16 v16, v4

    move/from16 v19, v5

    goto/16 :goto_7

    .line 1355
    .end local v16    # "width":I
    .end local v19    # "childCount":I
    .restart local v4    # "width":I
    .restart local v5    # "childCount":I
    .restart local v8    # "child":Landroid/view/View;
    :cond_0
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/widget/COUIDrawerLayout$LayoutParams;

    .line 1357
    .local v9, "lp":Landroidx/widget/COUIDrawerLayout$LayoutParams;
    invoke-virtual {v0, v8}, Landroidx/widget/COUIDrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1358
    iget v10, v9, Landroidx/widget/COUIDrawerLayout$LayoutParams;->leftMargin:I

    iget v11, v9, Landroidx/widget/COUIDrawerLayout$LayoutParams;->topMargin:I

    iget v12, v9, Landroidx/widget/COUIDrawerLayout$LayoutParams;->leftMargin:I

    .line 1359
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    add-int/2addr v12, v13

    iget v13, v9, Landroidx/widget/COUIDrawerLayout$LayoutParams;->topMargin:I

    .line 1360
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v13, v14

    .line 1358
    invoke-virtual {v8, v10, v11, v12, v13}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 1362
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 1363
    .local v10, "childWidth":I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .line 1364
    .local v11, "childHeight":I
    const/4 v12, 0x0

    .line 1367
    .local v12, "childLeft":I
    const/4 v13, 0x3

    invoke-virtual {v0, v8, v13}, Landroidx/widget/COUIDrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1368
    neg-int v13, v10

    int-to-float v1, v10

    iget v6, v9, Landroidx/widget/COUIDrawerLayout$LayoutParams;->onScreen:F

    mul-float/2addr v1, v6

    float-to-int v1, v1

    add-int/2addr v13, v1

    .line 1369
    .end local v12    # "childLeft":I
    .local v13, "childLeft":I
    add-int v1, v10, v13

    int-to-float v1, v1

    int-to-float v6, v10

    div-float/2addr v1, v6

    goto :goto_2

    .line 1370
    .end local v13    # "childLeft":I
    .restart local v12    # "childLeft":I
    :cond_2
    const/4 v1, 0x5

    invoke-virtual {v0, v8, v1}, Landroidx/widget/COUIDrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1372
    int-to-float v1, v10

    iget v6, v9, Landroidx/widget/COUIDrawerLayout$LayoutParams;->onScreen:F

    mul-float/2addr v1, v6

    float-to-int v1, v1

    sub-int v13, v4, v1

    .line 1373
    .end local v12    # "childLeft":I
    .restart local v13    # "childLeft":I
    sub-int v1, v4, v13

    int-to-float v1, v1

    int-to-float v6, v10

    div-float/2addr v1, v6

    goto :goto_2

    .line 1375
    .end local v13    # "childLeft":I
    .restart local v12    # "childLeft":I
    :cond_3
    sub-int v1, p5, p3

    .line 1376
    .local v1, "height":I
    int-to-float v6, v11

    iget v13, v9, Landroidx/widget/COUIDrawerLayout$LayoutParams;->onScreen:F

    mul-float/2addr v6, v13

    float-to-int v6, v6

    sub-int v6, v1, v6

    .line 1377
    .local v6, "childTop":I
    sub-int v13, v1, v6

    int-to-float v13, v13

    move v15, v1

    .end local v1    # "height":I
    .local v15, "height":I
    int-to-float v1, v11

    div-float v1, v13, v1

    .line 1378
    .local v1, "newOffset":F
    invoke-virtual {v8}, Landroid/view/View;->getPaddingLeft()I

    move-result v13

    .line 1380
    .end local v6    # "childTop":I
    .end local v12    # "childLeft":I
    .end local v15    # "height":I
    .restart local v13    # "childLeft":I
    :goto_2
    iget v6, v9, Landroidx/widget/COUIDrawerLayout$LayoutParams;->onScreen:F

    cmpl-float v6, v1, v6

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    .line 1382
    .local v6, "changeOffset":Z
    :goto_3
    iget v12, v9, Landroidx/widget/COUIDrawerLayout$LayoutParams;->gravity:I

    and-int/lit8 v12, v12, 0x77

    .line 1384
    .local v12, "vgrav":I
    const/16 v2, 0x10

    if-eq v12, v2, :cond_6

    const/16 v2, 0x50

    if-eq v12, v2, :cond_5

    .line 1387
    iget v2, v9, Landroidx/widget/COUIDrawerLayout$LayoutParams;->topMargin:I

    add-int v3, v13, v10

    move/from16 v16, v4

    .end local v4    # "width":I
    .restart local v16    # "width":I
    iget v4, v9, Landroidx/widget/COUIDrawerLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v11

    invoke-virtual {v8, v13, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 1389
    nop

    .line 1420
    move/from16 v19, v5

    goto :goto_5

    .line 1393
    .end local v16    # "width":I
    .restart local v4    # "width":I
    :cond_5
    move/from16 v16, v4

    .end local v4    # "width":I
    .restart local v16    # "width":I
    sub-int v2, p5, p3

    .line 1394
    .local v2, "height":I
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/widget/COUIDrawerLayout$LayoutParams;

    .line 1395
    .local v3, "layoutParams":Landroidx/widget/COUIDrawerLayout$LayoutParams;
    int-to-float v4, v2

    move/from16 v17, v2

    .end local v2    # "height":I
    .local v17, "height":I
    iget v2, v3, Landroidx/widget/COUIDrawerLayout$LayoutParams;->onScreen:F

    move-object/from16 v18, v3

    .end local v3    # "layoutParams":Landroidx/widget/COUIDrawerLayout$LayoutParams;
    .local v18, "layoutParams":Landroidx/widget/COUIDrawerLayout$LayoutParams;
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    sub-float/2addr v4, v2

    float-to-int v2, v4

    .line 1396
    .local v2, "top":I
    add-int v3, v13, v10

    .line 1399
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v2

    move/from16 v19, v5

    .end local v5    # "childCount":I
    .restart local v19    # "childCount":I
    iget v5, v9, Landroidx/widget/COUIDrawerLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v4, v5

    .line 1396
    invoke-virtual {v8, v13, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 1400
    goto :goto_5

    .line 1404
    .end local v2    # "top":I
    .end local v16    # "width":I
    .end local v17    # "height":I
    .end local v18    # "layoutParams":Landroidx/widget/COUIDrawerLayout$LayoutParams;
    .end local v19    # "childCount":I
    .restart local v4    # "width":I
    .restart local v5    # "childCount":I
    :cond_6
    move/from16 v16, v4

    move/from16 v19, v5

    .end local v4    # "width":I
    .end local v5    # "childCount":I
    .restart local v16    # "width":I
    .restart local v19    # "childCount":I
    sub-int v2, p5, p3

    .line 1405
    .local v2, "height":I
    sub-int v3, v2, v11

    div-int/lit8 v3, v3, 0x2

    .line 1409
    .local v3, "childTop":I
    iget v4, v9, Landroidx/widget/COUIDrawerLayout$LayoutParams;->topMargin:I

    if-ge v3, v4, :cond_7

    .line 1410
    iget v3, v9, Landroidx/widget/COUIDrawerLayout$LayoutParams;->topMargin:I

    goto :goto_4

    .line 1411
    :cond_7
    add-int v4, v3, v11

    iget v5, v9, Landroidx/widget/COUIDrawerLayout$LayoutParams;->bottomMargin:I

    sub-int v5, v2, v5

    if-le v4, v5, :cond_8

    .line 1412
    iget v4, v9, Landroidx/widget/COUIDrawerLayout$LayoutParams;->bottomMargin:I

    sub-int v4, v2, v4

    sub-int v3, v4, v11

    .line 1414
    :cond_8
    :goto_4
    add-int v4, v13, v10

    add-int v5, v3, v11

    invoke-virtual {v8, v13, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 1416
    nop

    .line 1420
    .end local v2    # "height":I
    .end local v3    # "childTop":I
    :goto_5
    if-eqz v6, :cond_9

    .line 1421
    invoke-virtual {v0, v8, v1}, Landroidx/widget/COUIDrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    .line 1424
    :cond_9
    iget v2, v9, Landroidx/widget/COUIDrawerLayout$LayoutParams;->onScreen:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_a

    const/4 v2, 0x0

    goto :goto_6

    :cond_a
    const/4 v2, 0x4

    .line 1425
    .local v2, "newVisibility":I
    :goto_6
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v2, :cond_b

    .line 1426
    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1348
    .end local v1    # "newOffset":F
    .end local v2    # "newVisibility":I
    .end local v6    # "changeOffset":Z
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "lp":Landroidx/widget/COUIDrawerLayout$LayoutParams;
    .end local v10    # "childWidth":I
    .end local v11    # "childHeight":I
    .end local v12    # "vgrav":I
    .end local v13    # "childLeft":I
    :cond_b
    :goto_7
    add-int/lit8 v7, v7, 0x1

    move/from16 v4, v16

    move/from16 v5, v19

    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1430
    .end local v7    # "i":I
    .end local v16    # "width":I
    .end local v19    # "childCount":I
    .restart local v4    # "width":I
    .restart local v5    # "childCount":I
    :cond_c
    move/from16 v16, v4

    move/from16 v19, v5

    .end local v4    # "width":I
    .end local v5    # "childCount":I
    .restart local v16    # "width":I
    .restart local v19    # "childCount":I
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/widget/COUIDrawerLayout;->mInLayout:Z

    .line 1431
    iput-boolean v1, v0, Landroidx/widget/COUIDrawerLayout;->mFirstLayout:Z

    .line 1432
    return-void
.end method

.method protected onMeasure(II)V
    .locals 23
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 1145
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1146
    .local v1, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 1147
    .local v2, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 1148
    .local v3, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1150
    .local v4, "heightSize":I
    const/high16 v5, 0x40000000    # 2.0f

    if-ne v1, v5, :cond_0

    if-eq v2, v5, :cond_4

    .line 1151
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/widget/COUIDrawerLayout;->isInEditMode()Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 1156
    const/high16 v6, -0x80000000

    if-ne v1, v6, :cond_1

    .line 1157
    const/high16 v1, 0x40000000    # 2.0f

    goto :goto_0

    .line 1158
    :cond_1
    if-nez v1, :cond_2

    .line 1159
    const/high16 v1, 0x40000000    # 2.0f

    .line 1160
    const/16 v3, 0x12c

    .line 1162
    :cond_2
    :goto_0
    if-ne v2, v6, :cond_3

    .line 1163
    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_1

    .line 1164
    :cond_3
    if-nez v2, :cond_4

    .line 1165
    const/high16 v2, 0x40000000    # 2.0f

    .line 1166
    const/16 v4, 0x12c

    .line 1174
    :cond_4
    :goto_1
    invoke-virtual {v0, v3, v4}, Landroidx/widget/COUIDrawerLayout;->setMeasuredDimension(II)V

    .line 1176
    iget-object v6, v0, Landroidx/widget/COUIDrawerLayout;->mLastInsets:Ljava/lang/Object;

    if-eqz v6, :cond_5

    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    .line 1177
    .local v6, "applyInsets":Z
    :goto_2
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v9

    .line 1181
    .local v9, "layoutDirection":I
    const/4 v10, 0x0

    .line 1182
    .local v10, "hasDrawerOnLeftEdge":Z
    const/4 v11, 0x0

    .line 1183
    .local v11, "hasDrawerOnRightEdge":Z
    const/4 v12, 0x0

    .line 1184
    .local v12, "hasDrawerOnBottomEdge":Z
    invoke-virtual/range {p0 .. p0}, Landroidx/widget/COUIDrawerLayout;->getChildCount()I

    move-result v13

    .line 1185
    .local v13, "childCount":I
    move v14, v12

    move v12, v11

    move v11, v10

    const/4 v10, 0x0

    .local v10, "i":I
    .local v11, "hasDrawerOnLeftEdge":Z
    .local v12, "hasDrawerOnRightEdge":Z
    .local v14, "hasDrawerOnBottomEdge":Z
    :goto_3
    if-ge v10, v13, :cond_1e

    .line 1186
    invoke-virtual {v0, v10}, Landroidx/widget/COUIDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 1188
    .local v15, "child":Landroid/view/View;
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v5, 0x8

    if-ne v7, v5, :cond_6

    .line 1189
    nop

    .line 1185
    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v6

    move/from16 v20, v9

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v9, 0x0

    goto/16 :goto_8

    .line 1192
    :cond_6
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/widget/COUIDrawerLayout$LayoutParams;

    .line 1194
    .local v5, "lp":Landroidx/widget/COUIDrawerLayout$LayoutParams;
    if-eqz v6, :cond_10

    .line 1195
    iget v8, v5, Landroidx/widget/COUIDrawerLayout$LayoutParams;->gravity:I

    invoke-static {v8, v9}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v8

    .line 1196
    .local v8, "cgrav":I
    invoke-static {v15}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v16

    const/16 v7, 0x15

    if-eqz v16, :cond_b

    .line 1197
    move/from16 v17, v1

    .end local v1    # "widthMode":I
    .local v17, "widthMode":I
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v7, :cond_a

    .line 1198
    iget-object v1, v0, Landroidx/widget/COUIDrawerLayout;->mLastInsets:Ljava/lang/Object;

    check-cast v1, Landroid/view/WindowInsets;

    .line 1199
    .local v1, "wi":Landroid/view/WindowInsets;
    const/4 v7, 0x3

    if-ne v8, v7, :cond_7

    .line 1200
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v7

    .line 1201
    move/from16 v18, v2

    .end local v2    # "heightMode":I
    .local v18, "heightMode":I
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    .line 1202
    move/from16 v19, v6

    .end local v6    # "applyInsets":Z
    .local v19, "applyInsets":Z
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v6

    .line 1200
    move/from16 v20, v9

    const/4 v9, 0x0

    .end local v9    # "layoutDirection":I
    .local v20, "layoutDirection":I
    invoke-virtual {v1, v7, v2, v9, v6}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v1

    goto :goto_4

    .line 1203
    .end local v18    # "heightMode":I
    .end local v19    # "applyInsets":Z
    .end local v20    # "layoutDirection":I
    .restart local v2    # "heightMode":I
    .restart local v6    # "applyInsets":Z
    .restart local v9    # "layoutDirection":I
    :cond_7
    move/from16 v18, v2

    move/from16 v19, v6

    move/from16 v20, v9

    const/4 v9, 0x0

    .end local v2    # "heightMode":I
    .end local v6    # "applyInsets":Z
    .end local v9    # "layoutDirection":I
    .restart local v18    # "heightMode":I
    .restart local v19    # "applyInsets":Z
    .restart local v20    # "layoutDirection":I
    const/4 v2, 0x5

    if-ne v8, v2, :cond_8

    .line 1204
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    .line 1205
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v6

    .line 1206
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v7

    .line 1204
    invoke-virtual {v1, v9, v2, v6, v7}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v1

    goto :goto_4

    .line 1207
    :cond_8
    const/16 v2, 0x50

    if-ne v8, v2, :cond_9

    .line 1208
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v7

    invoke-virtual {v1, v2, v9, v6, v7}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v1

    .line 1210
    :cond_9
    :goto_4
    invoke-virtual {v15, v1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 1211
    .end local v1    # "wi":Landroid/view/WindowInsets;
    goto/16 :goto_6

    .line 1234
    .end local v8    # "cgrav":I
    .end local v18    # "heightMode":I
    .end local v19    # "applyInsets":Z
    .end local v20    # "layoutDirection":I
    .restart local v2    # "heightMode":I
    .restart local v6    # "applyInsets":Z
    .restart local v9    # "layoutDirection":I
    :cond_a
    move/from16 v18, v2

    move/from16 v19, v6

    move/from16 v20, v9

    const/4 v9, 0x0

    .end local v2    # "heightMode":I
    .end local v6    # "applyInsets":Z
    .end local v9    # "layoutDirection":I
    .restart local v18    # "heightMode":I
    .restart local v19    # "applyInsets":Z
    .restart local v20    # "layoutDirection":I
    goto/16 :goto_7

    .line 1213
    .end local v17    # "widthMode":I
    .end local v18    # "heightMode":I
    .end local v19    # "applyInsets":Z
    .end local v20    # "layoutDirection":I
    .local v1, "widthMode":I
    .restart local v2    # "heightMode":I
    .restart local v6    # "applyInsets":Z
    .restart local v8    # "cgrav":I
    .restart local v9    # "layoutDirection":I
    :cond_b
    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v6

    move/from16 v20, v9

    .end local v1    # "widthMode":I
    .end local v2    # "heightMode":I
    .end local v6    # "applyInsets":Z
    .end local v9    # "layoutDirection":I
    .restart local v17    # "widthMode":I
    .restart local v18    # "heightMode":I
    .restart local v19    # "applyInsets":Z
    .restart local v20    # "layoutDirection":I
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v7, :cond_f

    .line 1214
    iget-object v1, v0, Landroidx/widget/COUIDrawerLayout;->mLastInsets:Ljava/lang/Object;

    check-cast v1, Landroid/view/WindowInsets;

    .line 1215
    .local v1, "wi":Landroid/view/WindowInsets;
    const/4 v2, 0x3

    if-ne v8, v2, :cond_c

    .line 1216
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v2

    .line 1217
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v6

    .line 1218
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v7

    .line 1216
    const/4 v9, 0x0

    invoke-virtual {v1, v2, v6, v9, v7}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v1

    goto :goto_5

    .line 1219
    :cond_c
    const/4 v9, 0x0

    const/4 v2, 0x5

    if-ne v8, v2, :cond_d

    .line 1220
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    .line 1221
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v6

    .line 1222
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v7

    .line 1220
    invoke-virtual {v1, v9, v2, v6, v7}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v1

    goto :goto_5

    .line 1223
    :cond_d
    const/16 v2, 0x50

    if-ne v8, v2, :cond_e

    .line 1224
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v7

    invoke-virtual {v1, v2, v9, v6, v7}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v1

    .line 1226
    :cond_e
    :goto_5
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v2

    iput v2, v5, Landroidx/widget/COUIDrawerLayout$LayoutParams;->leftMargin:I

    .line 1227
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    iput v2, v5, Landroidx/widget/COUIDrawerLayout$LayoutParams;->topMargin:I

    .line 1228
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    iput v2, v5, Landroidx/widget/COUIDrawerLayout$LayoutParams;->rightMargin:I

    .line 1229
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    iput v2, v5, Landroidx/widget/COUIDrawerLayout$LayoutParams;->bottomMargin:I

    goto :goto_7

    .line 1234
    .end local v1    # "wi":Landroid/view/WindowInsets;
    .end local v8    # "cgrav":I
    :cond_f
    :goto_6
    const/4 v9, 0x0

    goto :goto_7

    .end local v17    # "widthMode":I
    .end local v18    # "heightMode":I
    .end local v19    # "applyInsets":Z
    .end local v20    # "layoutDirection":I
    .local v1, "widthMode":I
    .restart local v2    # "heightMode":I
    .restart local v6    # "applyInsets":Z
    .restart local v9    # "layoutDirection":I
    :cond_10
    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v6

    move/from16 v20, v9

    const/4 v9, 0x0

    .end local v1    # "widthMode":I
    .end local v2    # "heightMode":I
    .end local v6    # "applyInsets":Z
    .end local v9    # "layoutDirection":I
    .restart local v17    # "widthMode":I
    .restart local v18    # "heightMode":I
    .restart local v19    # "applyInsets":Z
    .restart local v20    # "layoutDirection":I
    :goto_7
    invoke-virtual {v0, v15}, Landroidx/widget/COUIDrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1236
    iget v1, v5, Landroidx/widget/COUIDrawerLayout$LayoutParams;->leftMargin:I

    sub-int v1, v3, v1

    iget v2, v5, Landroidx/widget/COUIDrawerLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1238
    .local v1, "contentWidthSpec":I
    iget v6, v5, Landroidx/widget/COUIDrawerLayout$LayoutParams;->topMargin:I

    sub-int v6, v4, v6

    iget v7, v5, Landroidx/widget/COUIDrawerLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v6, v7

    invoke-static {v6, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1240
    .local v6, "contentHeightSpec":I
    invoke-virtual {v15, v1, v6}, Landroid/view/View;->measure(II)V

    .line 1241
    .end local v1    # "contentWidthSpec":I
    .end local v6    # "contentHeightSpec":I
    nop

    .line 1185
    .end local v5    # "lp":Landroidx/widget/COUIDrawerLayout$LayoutParams;
    .end local v15    # "child":Landroid/view/View;
    .end local v17    # "widthMode":I
    .end local v18    # "heightMode":I
    .end local v19    # "applyInsets":Z
    .end local v20    # "layoutDirection":I
    .local v1, "widthMode":I
    .restart local v2    # "heightMode":I
    .local v6, "applyInsets":Z
    .restart local v9    # "layoutDirection":I
    :goto_8
    move/from16 v9, p1

    move/from16 v1, p2

    move/from16 v21, v3

    .end local v1    # "widthMode":I
    .end local v2    # "heightMode":I
    .end local v6    # "applyInsets":Z
    .end local v9    # "layoutDirection":I
    .restart local v17    # "widthMode":I
    .restart local v18    # "heightMode":I
    .restart local v19    # "applyInsets":Z
    .restart local v20    # "layoutDirection":I
    goto/16 :goto_f

    .line 1241
    .restart local v5    # "lp":Landroidx/widget/COUIDrawerLayout$LayoutParams;
    .restart local v15    # "child":Landroid/view/View;
    :cond_11
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v15}, Landroidx/widget/COUIDrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1242
    sget-boolean v1, Landroidx/widget/COUIDrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v1, :cond_12

    .line 1243
    invoke-static {v15}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v1

    iget v6, v0, Landroidx/widget/COUIDrawerLayout;->mDrawerElevation:F

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_12

    .line 1244
    iget v1, v0, Landroidx/widget/COUIDrawerLayout;->mDrawerElevation:F

    invoke-static {v15, v1}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 1247
    :cond_12
    nop

    .line 1248
    invoke-virtual {v0, v15}, Landroidx/widget/COUIDrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v1

    and-int/lit8 v1, v1, 0x77

    .line 1251
    .local v1, "childGravity":I
    const/4 v6, 0x3

    if-ne v1, v6, :cond_13

    const/4 v6, 0x1

    goto :goto_9

    :cond_13
    move v6, v9

    .line 1252
    .local v6, "isLeftEdgeDrawer":Z
    :goto_9
    const/4 v7, 0x5

    if-ne v1, v7, :cond_14

    const/4 v7, 0x1

    goto :goto_a

    :cond_14
    move v7, v9

    .line 1253
    .local v7, "isRightEdgeDrawer":Z
    :goto_a
    const/16 v8, 0x50

    if-ne v1, v8, :cond_15

    const/4 v8, 0x1

    goto :goto_b

    :cond_15
    move v8, v9

    .line 1255
    .local v8, "isBottomEdgeDrawer":Z
    :goto_b
    if-eqz v6, :cond_16

    if-nez v11, :cond_18

    :cond_16
    if-eqz v7, :cond_17

    if-nez v12, :cond_18

    :cond_17
    if-eqz v8, :cond_19

    if-nez v14, :cond_18

    .line 1261
    move/from16 v21, v3

    goto :goto_c

    .line 1257
    :cond_18
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v21, v3

    .end local v3    # "widthSize":I
    .local v21, "widthSize":I
    const-string v3, "Child drawer has absolute gravity "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1258
    invoke-static {v1}, Landroidx/widget/COUIDrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " but this "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "DrawerLayout"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " already has a "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "drawer view along that edge"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1261
    .end local v21    # "widthSize":I
    .restart local v3    # "widthSize":I
    :cond_19
    move/from16 v21, v3

    .end local v3    # "widthSize":I
    .restart local v21    # "widthSize":I
    :goto_c
    if-eqz v6, :cond_1a

    .line 1262
    const/4 v11, 0x1

    goto :goto_d

    .line 1263
    :cond_1a
    if-eqz v7, :cond_1b

    .line 1264
    const/4 v12, 0x1

    goto :goto_d

    .line 1266
    :cond_1b
    const/4 v14, 0x1

    .line 1268
    :goto_d
    if-eqz v8, :cond_1c

    move v2, v9

    goto :goto_e

    :cond_1c
    iget v3, v0, Landroidx/widget/COUIDrawerLayout;->mMinDrawerMargin:I

    iget v2, v5, Landroidx/widget/COUIDrawerLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v2

    iget v2, v5, Landroidx/widget/COUIDrawerLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    :goto_e
    iget v3, v5, Landroidx/widget/COUIDrawerLayout$LayoutParams;->width:I

    move/from16 v9, p1

    invoke-static {v9, v2, v3}, Landroidx/widget/COUIDrawerLayout;->getChildMeasureSpec(III)I

    move-result v2

    .line 1271
    .local v2, "drawerWidthSpec":I
    iget v3, v5, Landroidx/widget/COUIDrawerLayout$LayoutParams;->topMargin:I

    iget v0, v5, Landroidx/widget/COUIDrawerLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v0

    iget v0, v5, Landroidx/widget/COUIDrawerLayout$LayoutParams;->height:I

    move/from16 v22, v1

    move/from16 v1, p2

    .end local v1    # "childGravity":I
    .local v22, "childGravity":I
    invoke-static {v1, v3, v0}, Landroidx/widget/COUIDrawerLayout;->getChildMeasureSpec(III)I

    move-result v0

    .line 1273
    .local v0, "drawerHeightSpec":I
    invoke-virtual {v15, v2, v0}, Landroid/view/View;->measure(II)V

    .line 1274
    .end local v0    # "drawerHeightSpec":I
    .end local v2    # "drawerWidthSpec":I
    .end local v6    # "isLeftEdgeDrawer":Z
    .end local v7    # "isRightEdgeDrawer":Z
    .end local v8    # "isBottomEdgeDrawer":Z
    .end local v22    # "childGravity":I
    nop

    .line 1185
    .end local v5    # "lp":Landroidx/widget/COUIDrawerLayout$LayoutParams;
    .end local v15    # "child":Landroid/view/View;
    :goto_f
    add-int/lit8 v10, v10, 0x1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v6, v19

    move/from16 v9, v20

    move/from16 v3, v21

    move-object/from16 v0, p0

    const/high16 v5, 0x40000000    # 2.0f

    goto/16 :goto_3

    .line 1275
    .end local v21    # "widthSize":I
    .restart local v3    # "widthSize":I
    .restart local v5    # "lp":Landroidx/widget/COUIDrawerLayout$LayoutParams;
    .restart local v15    # "child":Landroid/view/View;
    :cond_1d
    move/from16 v9, p1

    move/from16 v1, p2

    move/from16 v21, v3

    .end local v3    # "widthSize":I
    .restart local v21    # "widthSize":I
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Child "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " does not have a valid layout_gravity - must be Gravity.LEFT, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Gravity.RIGHT or Gravity.NO_GRAVITY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1280
    .end local v5    # "lp":Landroidx/widget/COUIDrawerLayout$LayoutParams;
    .end local v10    # "i":I
    .end local v15    # "child":Landroid/view/View;
    .end local v17    # "widthMode":I
    .end local v18    # "heightMode":I
    .end local v19    # "applyInsets":Z
    .end local v20    # "layoutDirection":I
    .end local v21    # "widthSize":I
    .local v1, "widthMode":I
    .local v2, "heightMode":I
    .restart local v3    # "widthSize":I
    .local v6, "applyInsets":Z
    .restart local v9    # "layoutDirection":I
    :cond_1e
    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v21, v3

    move/from16 v19, v6

    move/from16 v20, v9

    move/from16 v9, p1

    move/from16 v1, p2

    .end local v1    # "widthMode":I
    .end local v2    # "heightMode":I
    .end local v3    # "widthSize":I
    .end local v6    # "applyInsets":Z
    .end local v9    # "layoutDirection":I
    .restart local v17    # "widthMode":I
    .restart local v18    # "heightMode":I
    .restart local v19    # "applyInsets":Z
    .restart local v20    # "layoutDirection":I
    .restart local v21    # "widthSize":I
    return-void

    .line 1169
    .end local v11    # "hasDrawerOnLeftEdge":Z
    .end local v12    # "hasDrawerOnRightEdge":Z
    .end local v13    # "childCount":I
    .end local v14    # "hasDrawerOnBottomEdge":Z
    .end local v17    # "widthMode":I
    .end local v18    # "heightMode":I
    .end local v19    # "applyInsets":Z
    .end local v20    # "layoutDirection":I
    .end local v21    # "widthSize":I
    .restart local v1    # "widthMode":I
    .restart local v2    # "heightMode":I
    .restart local v3    # "widthSize":I
    :cond_1f
    move/from16 v9, p1

    move v0, v1

    move/from16 v1, p2

    .end local v1    # "widthMode":I
    .local v0, "widthMode":I
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "DrawerLayout must be measured with MeasureSpec.EXACTLY."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Parcelable;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 2213
    instance-of v0, p1, Landroidx/widget/COUIDrawerLayout$SavedState;

    if-nez v0, :cond_0

    .line 2214
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2215
    return-void

    .line 2218
    :cond_0
    move-object v0, p1

    check-cast v0, Landroidx/widget/COUIDrawerLayout$SavedState;

    .line 2219
    .local v0, "ss":Landroidx/widget/COUIDrawerLayout$SavedState;
    invoke-virtual {v0}, Landroidx/widget/COUIDrawerLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2221
    iget v1, v0, Landroidx/widget/COUIDrawerLayout$SavedState;->openDrawerGravity:I

    if-eqz v1, :cond_1

    .line 2222
    iget v1, v0, Landroidx/widget/COUIDrawerLayout$SavedState;->openDrawerGravity:I

    invoke-virtual {p0, v1}, Landroidx/widget/COUIDrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v1

    .line 2223
    .local v1, "toOpen":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 2224
    iget v2, v0, Landroidx/widget/COUIDrawerLayout$SavedState;->openDrawerGravity:I

    iget v3, v0, Landroidx/widget/COUIDrawerLayout$SavedState;->onScreen:F

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Landroidx/widget/COUIDrawerLayout;->setDrawerAtOffset(IFZ)V

    .line 2228
    .end local v1    # "toOpen":Landroid/view/View;
    :cond_1
    iget v1, v0, Landroidx/widget/COUIDrawerLayout$SavedState;->lockModeLeft:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    .line 2229
    iget v1, v0, Landroidx/widget/COUIDrawerLayout$SavedState;->lockModeLeft:I

    invoke-virtual {p0, v1, v2}, Landroidx/widget/COUIDrawerLayout;->setDrawerLockMode(II)V

    .line 2231
    :cond_2
    iget v1, v0, Landroidx/widget/COUIDrawerLayout$SavedState;->lockModeRight:I

    if-eq v1, v2, :cond_3

    .line 2232
    iget v1, v0, Landroidx/widget/COUIDrawerLayout$SavedState;->lockModeRight:I

    const/4 v3, 0x5

    invoke-virtual {p0, v1, v3}, Landroidx/widget/COUIDrawerLayout;->setDrawerLockMode(II)V

    .line 2234
    :cond_3
    iget v1, v0, Landroidx/widget/COUIDrawerLayout$SavedState;->lockModeStart:I

    if-eq v1, v2, :cond_4

    .line 2235
    iget v1, v0, Landroidx/widget/COUIDrawerLayout$SavedState;->lockModeStart:I

    const v3, 0x800003

    invoke-virtual {p0, v1, v3}, Landroidx/widget/COUIDrawerLayout;->setDrawerLockMode(II)V

    .line 2237
    :cond_4
    iget v1, v0, Landroidx/widget/COUIDrawerLayout$SavedState;->lockModeEnd:I

    if-eq v1, v2, :cond_5

    .line 2238
    iget v1, v0, Landroidx/widget/COUIDrawerLayout$SavedState;->lockModeEnd:I

    const v3, 0x800005

    invoke-virtual {p0, v1, v3}, Landroidx/widget/COUIDrawerLayout;->setDrawerLockMode(II)V

    .line 2240
    :cond_5
    iget v1, v0, Landroidx/widget/COUIDrawerLayout$SavedState;->lockModeBottom:I

    if-eq v1, v2, :cond_6

    .line 2241
    iget v1, v0, Landroidx/widget/COUIDrawerLayout$SavedState;->lockModeBottom:I

    const/16 v2, 0x50

    invoke-virtual {p0, v1, v2}, Landroidx/widget/COUIDrawerLayout;->setDrawerLockMode(II)V

    .line 2243
    :cond_6
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .line 1513
    invoke-direct {p0}, Landroidx/widget/COUIDrawerLayout;->resolveShadowDrawables()V

    .line 1514
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 11

    .line 2247
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2248
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Landroidx/widget/COUIDrawerLayout$SavedState;

    invoke-direct {v1, v0}, Landroidx/widget/COUIDrawerLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2250
    .local v1, "ss":Landroidx/widget/COUIDrawerLayout$SavedState;
    invoke-virtual {p0}, Landroidx/widget/COUIDrawerLayout;->getChildCount()I

    move-result v2

    .line 2251
    .local v2, "childCount":I
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_4

    .line 2252
    invoke-virtual {p0, v4}, Landroidx/widget/COUIDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2253
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/widget/COUIDrawerLayout$LayoutParams;

    .line 2255
    .local v6, "lp":Landroidx/widget/COUIDrawerLayout$LayoutParams;
    iget v7, v6, Landroidx/widget/COUIDrawerLayout$LayoutParams;->openState:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    move v7, v8

    goto :goto_1

    :cond_0
    move v7, v3

    .line 2257
    .local v7, "isOpenedAndNotClosing":Z
    :goto_1
    iget v9, v6, Landroidx/widget/COUIDrawerLayout$LayoutParams;->openState:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    goto :goto_2

    :cond_1
    move v8, v3

    .line 2258
    .local v8, "isClosedAndOpening":Z
    :goto_2
    if-nez v7, :cond_3

    if-eqz v8, :cond_2

    goto :goto_3

    .line 2251
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "lp":Landroidx/widget/COUIDrawerLayout$LayoutParams;
    .end local v7    # "isOpenedAndNotClosing":Z
    .end local v8    # "isClosedAndOpening":Z
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2261
    .restart local v5    # "child":Landroid/view/View;
    .restart local v6    # "lp":Landroidx/widget/COUIDrawerLayout$LayoutParams;
    .restart local v7    # "isOpenedAndNotClosing":Z
    .restart local v8    # "isClosedAndOpening":Z
    :cond_3
    :goto_3
    iget v3, v6, Landroidx/widget/COUIDrawerLayout$LayoutParams;->gravity:I

    iput v3, v1, Landroidx/widget/COUIDrawerLayout$SavedState;->openDrawerGravity:I

    .line 2262
    iget v3, v6, Landroidx/widget/COUIDrawerLayout$LayoutParams;->onScreen:F

    iput v3, v1, Landroidx/widget/COUIDrawerLayout$SavedState;->onScreen:F

    .line 2263
    nop

    .line 2267
    .end local v4    # "i":I
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "lp":Landroidx/widget/COUIDrawerLayout$LayoutParams;
    .end local v7    # "isOpenedAndNotClosing":Z
    .end local v8    # "isClosedAndOpening":Z
    :cond_4
    iget v3, p0, Landroidx/widget/COUIDrawerLayout;->mLockModeLeft:I

    iput v3, v1, Landroidx/widget/COUIDrawerLayout$SavedState;->lockModeLeft:I

    .line 2268
    iget v3, p0, Landroidx/widget/COUIDrawerLayout;->mLockModeRight:I

    iput v3, v1, Landroidx/widget/COUIDrawerLayout$SavedState;->lockModeRight:I

    .line 2269
    iget v3, p0, Landroidx/widget/COUIDrawerLayout;->mLockModeStart:I

    iput v3, v1, Landroidx/widget/COUIDrawerLayout$SavedState;->lockModeStart:I

    .line 2270
    iget v3, p0, Landroidx/widget/COUIDrawerLayout;->mLockModeEnd:I

    iput v3, v1, Landroidx/widget/COUIDrawerLayout$SavedState;->lockModeEnd:I

    .line 2271
    iget v3, p0, Landroidx/widget/COUIDrawerLayout;->mLockModeBottom:I

    iput v3, v1, Landroidx/widget/COUIDrawerLayout$SavedState;->lockModeBottom:I

    .line 2272
    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1759
    iget-object v0, p0, Landroidx/widget/COUIDrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 1760
    iget-object v0, p0, Landroidx/widget/COUIDrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 1761
    iget-boolean v0, p0, Landroidx/widget/COUIDrawerLayout;->mBottomDrawerSettle:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/widget/COUIDrawerLayout;->mTouchDownInBottomDrag:Z

    if-eqz v0, :cond_0

    .line 1762
    iget-object v0, p0, Landroidx/widget/COUIDrawerLayout;->mBottomDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 1765
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1766
    .local v0, "action":I
    const/4 v1, 0x1

    .line 1768
    .local v1, "wantTouchEvents":Z
    and-int/lit16 v2, v0, 0xff

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v3, :cond_4

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    .line 1780
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 1781
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 1782
    .local v3, "y":F
    const/4 v6, 0x1

    .line 1783
    .local v6, "peekingOnly":Z
    iget-object v7, p0, Landroidx/widget/COUIDrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    float-to-int v8, v2

    float-to-int v9, v3

    invoke-virtual {v7, v8, v9}, Landroidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v7

    .line 1784
    .local v7, "touchedView":Landroid/view/View;
    invoke-virtual {p0}, Landroidx/widget/COUIDrawerLayout;->findOpenDrawer()Landroid/view/View;

    move-result-object v8

    .line 1785
    .local v8, "openDrawer":Landroid/view/View;
    if-eqz v7, :cond_2

    invoke-virtual {p0, v7}, Landroidx/widget/COUIDrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1786
    iget v9, p0, Landroidx/widget/COUIDrawerLayout;->mInitialMotionX:F

    sub-float v9, v2, v9

    .line 1787
    .local v9, "dx":F
    iget v10, p0, Landroidx/widget/COUIDrawerLayout;->mInitialMotionY:F

    sub-float v10, v3, v10

    .line 1788
    .local v10, "dy":F
    iget-object v11, p0, Landroidx/widget/COUIDrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v11}, Landroidx/customview/widget/ViewDragHelper;->getTouchSlop()I

    move-result v11

    .line 1789
    .local v11, "slop":I
    mul-float v12, v9, v9

    mul-float v13, v10, v10

    add-float/2addr v12, v13

    mul-int v13, v11, v11

    int-to-float v13, v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_2

    .line 1791
    if-eqz v8, :cond_2

    .line 1792
    invoke-virtual {p0, v8}, Landroidx/widget/COUIDrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_1

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    move v6, v4

    .line 1796
    .end local v9    # "dx":F
    .end local v10    # "dy":F
    .end local v11    # "slop":I
    :cond_2
    iget-boolean v4, p0, Landroidx/widget/COUIDrawerLayout;->mEnableFastDismiss:Z

    if-nez v4, :cond_3

    if-eqz v8, :cond_3

    if-nez v6, :cond_3

    .line 1797
    iput-object v8, p0, Landroidx/widget/COUIDrawerLayout;->mDrawer:Landroid/view/View;

    .line 1798
    iget-object v4, p0, Landroidx/widget/COUIDrawerLayout;->mDisableFastCloseFeedbackSpring:Lcom/facebook/rebound/Spring;

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    invoke-virtual {v4, v9, v10}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    goto :goto_1

    .line 1800
    :cond_3
    invoke-virtual {p0, v6}, Landroidx/widget/COUIDrawerLayout;->closeDrawers(Z)V

    .line 1802
    :goto_1
    iput-boolean v5, p0, Landroidx/widget/COUIDrawerLayout;->mDisallowInterceptRequested:Z

    .line 1803
    iput-boolean v5, p0, Landroidx/widget/COUIDrawerLayout;->mTouchDownInBottomDrag:Z

    .line 1804
    goto :goto_2

    .line 1770
    .end local v2    # "x":F
    .end local v3    # "y":F
    .end local v6    # "peekingOnly":Z
    .end local v7    # "touchedView":Landroid/view/View;
    .end local v8    # "openDrawer":Landroid/view/View;
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 1771
    .restart local v2    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 1772
    .restart local v3    # "y":F
    iput v2, p0, Landroidx/widget/COUIDrawerLayout;->mInitialMotionX:F

    .line 1773
    iput v3, p0, Landroidx/widget/COUIDrawerLayout;->mInitialMotionY:F

    .line 1774
    iput-boolean v5, p0, Landroidx/widget/COUIDrawerLayout;->mDisallowInterceptRequested:Z

    .line 1775
    iput-boolean v5, p0, Landroidx/widget/COUIDrawerLayout;->mChildrenCanceledTouch:Z

    .line 1776
    goto :goto_2

    .line 1808
    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_4
    invoke-virtual {p0, v4}, Landroidx/widget/COUIDrawerLayout;->closeDrawers(Z)V

    .line 1809
    iput-boolean v5, p0, Landroidx/widget/COUIDrawerLayout;->mDisallowInterceptRequested:Z

    .line 1810
    iput-boolean v5, p0, Landroidx/widget/COUIDrawerLayout;->mChildrenCanceledTouch:Z

    .line 1814
    :goto_2
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public openDrawer(I)V
    .locals 1
    .param p1, "gravity"    # I

    .line 1934
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/widget/COUIDrawerLayout;->openDrawer(IZ)V

    .line 1935
    return-void
.end method

.method public openDrawer(IZ)V
    .locals 4
    .param p1, "gravity"    # I
    .param p2, "animate"    # Z

    .line 1945
    invoke-virtual {p0, p1}, Landroidx/widget/COUIDrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    .line 1946
    .local v0, "drawerView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1950
    invoke-virtual {p0, v0, p2}, Landroidx/widget/COUIDrawerLayout;->openDrawer(Landroid/view/View;Z)V

    .line 1951
    return-void

    .line 1947
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No drawer view found with gravity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1948
    invoke-static {p1}, Landroidx/widget/COUIDrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public openDrawer(Landroid/view/View;)V
    .locals 1
    .param p1, "drawerView"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1886
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/widget/COUIDrawerLayout;->openDrawer(Landroid/view/View;Z)V

    .line 1887
    return-void
.end method

.method public openDrawer(Landroid/view/View;Z)V
    .locals 4
    .param p1, "drawerView"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "animate"    # Z

    .line 1896
    invoke-virtual {p0, p1}, Landroidx/widget/COUIDrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1900
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/widget/COUIDrawerLayout$LayoutParams;

    .line 1901
    .local v0, "lp":Landroidx/widget/COUIDrawerLayout$LayoutParams;
    const/4 v1, 0x0

    iput v1, p0, Landroidx/widget/COUIDrawerLayout;->mSettlingDirection:I

    .line 1902
    iget-boolean v2, p0, Landroidx/widget/COUIDrawerLayout;->mFirstLayout:Z

    if-eqz v2, :cond_0

    .line 1903
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroidx/widget/COUIDrawerLayout$LayoutParams;->onScreen:F

    .line 1904
    const/4 v1, 0x1

    iput v1, v0, Landroidx/widget/COUIDrawerLayout$LayoutParams;->openState:I

    .line 1906
    invoke-direct {p0, p1, v1}, Landroidx/widget/COUIDrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    goto :goto_0

    .line 1907
    :cond_0
    if-eqz p2, :cond_3

    .line 1908
    iget v2, v0, Landroidx/widget/COUIDrawerLayout$LayoutParams;->openState:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroidx/widget/COUIDrawerLayout$LayoutParams;->openState:I

    .line 1910
    const/4 v2, 0x3

    invoke-virtual {p0, p1, v2}, Landroidx/widget/COUIDrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1911
    iget-object v2, p0, Landroidx/widget/COUIDrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v2, p1, v1, v3}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0

    .line 1912
    :cond_1
    const/4 v2, 0x5

    invoke-virtual {p0, p1, v2}, Landroidx/widget/COUIDrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1913
    iget-object v1, p0, Landroidx/widget/COUIDrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p0}, Landroidx/widget/COUIDrawerLayout;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1914
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1913
    invoke-virtual {v1, p1, v2, v3}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0

    .line 1916
    :cond_2
    iget-object v2, p0, Landroidx/widget/COUIDrawerLayout;->mBottomDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v2, p1, v3, v1}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0

    .line 1919
    :cond_3
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1920
    .local v2, "slideOffset":F
    invoke-virtual {p0, p1, v2}, Landroidx/widget/COUIDrawerLayout;->moveDrawerToOffset(Landroid/view/View;F)V

    .line 1921
    iget v3, v0, Landroidx/widget/COUIDrawerLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v3, v1, p1}, Landroidx/widget/COUIDrawerLayout;->updateDrawerState(IILandroid/view/View;)V

    .line 1922
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1924
    .end local v2    # "slideOffset":F
    :goto_0
    invoke-virtual {p0}, Landroidx/widget/COUIDrawerLayout;->invalidate()V

    .line 1925
    return-void

    .line 1897
    .end local v0    # "lp":Landroidx/widget/COUIDrawerLayout$LayoutParams;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not a sliding drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeDrawerListener(Landroidx/widget/COUIDrawerLayout$DrawerListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/widget/COUIDrawerLayout$DrawerListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 603
    if-nez p1, :cond_0

    .line 604
    return-void

    .line 606
    :cond_0
    iget-object v0, p0, Landroidx/widget/COUIDrawerLayout;->mListeners:Ljava/util/List;

    if-nez v0, :cond_1

    .line 608
    return-void

    .line 610
    :cond_1
    iget-object v0, p0, Landroidx/widget/COUIDrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 611
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1
    .param p1, "disallowIntercept"    # Z

    .line 1824
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 1826
    iput-boolean p1, p0, Landroidx/widget/COUIDrawerLayout;->mDisallowInterceptRequested:Z

    .line 1827
    if-eqz p1, :cond_0

    .line 1828
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/widget/COUIDrawerLayout;->closeDrawers(Z)V

    .line 1830
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1436
    iget-boolean v0, p0, Landroidx/widget/COUIDrawerLayout;->mInLayout:Z

    if-nez v0, :cond_0

    .line 1437
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1439
    :cond_0
    return-void
.end method

.method public setBlankClickedListener(Landroidx/widget/COUIDrawerLayout$BlankClickedListener;)V
    .locals 0
    .param p1, "listener"    # Landroidx/widget/COUIDrawerLayout$BlankClickedListener;

    .line 3000
    iput-object p1, p0, Landroidx/widget/COUIDrawerLayout;->mBlankClickedListener:Landroidx/widget/COUIDrawerLayout$BlankClickedListener;

    .line 3001
    return-void
.end method

.method public setBottomDrawerActionOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .line 2835
    iput p1, p0, Landroidx/widget/COUIDrawerLayout;->mStanderOffsetToStartAnimation:I

    .line 2836
    return-void
.end method

.method public setChildInsets(Ljava/lang/Object;Z)V
    .locals 1
    .param p1, "insets"    # Ljava/lang/Object;
    .param p2, "draw"    # Z
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 478
    iput-object p1, p0, Landroidx/widget/COUIDrawerLayout;->mLastInsets:Ljava/lang/Object;

    .line 479
    iput-boolean p2, p0, Landroidx/widget/COUIDrawerLayout;->mDrawStatusBarBackground:Z

    .line 480
    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroidx/widget/COUIDrawerLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/widget/COUIDrawerLayout;->setWillNotDraw(Z)V

    .line 481
    invoke-virtual {p0}, Landroidx/widget/COUIDrawerLayout;->requestLayout()V

    .line 482
    return-void
.end method

.method public setDragRect(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "dragRect"    # Landroid/graphics/Rect;

    .line 2902
    iput-object p1, p0, Landroidx/widget/COUIDrawerLayout;->mDragRect:Landroid/graphics/Rect;

    .line 2903
    return-void
.end method

.method public setDrawerAtOffset(IFZ)V
    .locals 6
    .param p1, "gravity"    # I
    .param p2, "offset"    # F
    .param p3, "animate"    # Z

    .line 2856
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    .line 2857
    invoke-virtual {p0, p1, p3}, Landroidx/widget/COUIDrawerLayout;->openDrawer(IZ)V

    .line 2858
    return-void

    .line 2860
    :cond_0
    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-nez v1, :cond_1

    .line 2861
    invoke-virtual {p0, p1, p3}, Landroidx/widget/COUIDrawerLayout;->closeDrawer(IZ)V

    .line 2862
    return-void

    .line 2865
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/widget/COUIDrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v1

    .line 2866
    .local v1, "drawerView":Landroid/view/View;
    if-eqz v1, :cond_6

    .line 2871
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/widget/COUIDrawerLayout$LayoutParams;

    .line 2872
    .local v2, "lp":Landroidx/widget/COUIDrawerLayout$LayoutParams;
    const/4 v3, 0x1

    iput v3, p0, Landroidx/widget/COUIDrawerLayout;->mSettlingDirection:I

    .line 2873
    iget-boolean v4, p0, Landroidx/widget/COUIDrawerLayout;->mFirstLayout:Z

    const/4 v5, 0x2

    if-eqz v4, :cond_2

    .line 2874
    iput p2, v2, Landroidx/widget/COUIDrawerLayout$LayoutParams;->onScreen:F

    .line 2875
    iput v5, v2, Landroidx/widget/COUIDrawerLayout$LayoutParams;->openState:I

    .line 2877
    invoke-direct {p0, v1, v3}, Landroidx/widget/COUIDrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    goto :goto_0

    .line 2878
    :cond_2
    if-eqz p3, :cond_5

    .line 2879
    iget v3, v2, Landroidx/widget/COUIDrawerLayout$LayoutParams;->openState:I

    or-int/2addr v3, v5

    iput v3, v2, Landroidx/widget/COUIDrawerLayout$LayoutParams;->openState:I

    .line 2880
    const/4 v3, 0x3

    invoke-virtual {p0, v1, v3}, Landroidx/widget/COUIDrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2881
    iget-object v3, p0, Landroidx/widget/COUIDrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    sub-float/2addr v0, v4

    float-to-int v0, v0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v3, v1, v0, v4}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0

    .line 2882
    :cond_3
    const/4 v0, 0x5

    invoke-virtual {p0, v1, v0}, Landroidx/widget/COUIDrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2883
    iget-object v0, p0, Landroidx/widget/COUIDrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p0}, Landroidx/widget/COUIDrawerLayout;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p2

    float-to-int v3, v3

    .line 2884
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    .line 2883
    invoke-virtual {v0, v1, v3, v4}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0

    .line 2886
    :cond_4
    iget-object v0, p0, Landroidx/widget/COUIDrawerLayout;->mBottomDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroidx/widget/COUIDrawerLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p2

    sub-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v0, v1, v3, v4}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0

    .line 2889
    :cond_5
    invoke-virtual {p0, v1, p2}, Landroidx/widget/COUIDrawerLayout;->moveDrawerToOffset(Landroid/view/View;F)V

    .line 2890
    iget v0, v2, Landroidx/widget/COUIDrawerLayout$LayoutParams;->gravity:I

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, v1}, Landroidx/widget/COUIDrawerLayout;->updateDrawerState(IILandroid/view/View;)V

    .line 2891
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2893
    :goto_0
    invoke-virtual {p0}, Landroidx/widget/COUIDrawerLayout;->invalidate()V

    .line 2894
    return-void

    .line 2867
    .end local v2    # "lp":Landroidx/widget/COUIDrawerLayout$LayoutParams;
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No drawer view found with gravity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2868
    invoke-static {p1}, Landroidx/widget/COUIDrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDrawerElevation(F)V
    .locals 3
    .param p1, "elevation"    # F

    .line 449
    iput p1, p0, Landroidx/widget/COUIDrawerLayout;->mDrawerElevation:F

    .line 450
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroidx/widget/COUIDrawerLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 451
    invoke-virtual {p0, v0}, Landroidx/widget/COUIDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 452
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p0, v1}, Landroidx/widget/COUIDrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 453
    iget v2, p0, Landroidx/widget/COUIDrawerLayout;->mDrawerElevation:F

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 450
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 456
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public setDrawerListener(Landroidx/widget/COUIDrawerLayout$DrawerListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/widget/COUIDrawerLayout$DrawerListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 568
    iget-object v0, p0, Landroidx/widget/COUIDrawerLayout;->mListener:Landroidx/widget/COUIDrawerLayout$DrawerListener;

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Landroidx/widget/COUIDrawerLayout;->mListener:Landroidx/widget/COUIDrawerLayout$DrawerListener;

    invoke-virtual {p0, v0}, Landroidx/widget/COUIDrawerLayout;->removeDrawerListener(Landroidx/widget/COUIDrawerLayout$DrawerListener;)V

    .line 571
    :cond_0
    if-eqz p1, :cond_1

    .line 572
    invoke-virtual {p0, p1}, Landroidx/widget/COUIDrawerLayout;->addDrawerListener(Landroidx/widget/COUIDrawerLayout$DrawerListener;)V

    .line 576
    :cond_1
    iput-object p1, p0, Landroidx/widget/COUIDrawerLayout;->mListener:Landroidx/widget/COUIDrawerLayout$DrawerListener;

    .line 577
    return-void
.end method

.method public setDrawerLockMode(I)V
    .locals 1
    .param p1, "lockMode"    # I

    .line 627
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroidx/widget/COUIDrawerLayout;->setDrawerLockMode(II)V

    .line 628
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroidx/widget/COUIDrawerLayout;->setDrawerLockMode(II)V

    .line 629
    const/16 v0, 0x50

    invoke-virtual {p0, p1, v0}, Landroidx/widget/COUIDrawerLayout;->setDrawerLockMode(II)V

    .line 630
    return-void
.end method

.method public setDrawerLockMode(II)V
    .locals 4
    .param p1, "lockMode"    # I
    .param p2, "edgeGravity"    # I

    .line 651
    nop

    .line 652
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 651
    invoke-static {p2, v0}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    .line 654
    .local v0, "absGravity":I
    const/4 v1, 0x5

    const/4 v2, 0x3

    if-eq p2, v2, :cond_4

    if-eq p2, v1, :cond_3

    const/16 v3, 0x50

    if-eq p2, v3, :cond_2

    const v3, 0x800003

    if-eq p2, v3, :cond_1

    const v3, 0x800005

    if-eq p2, v3, :cond_0

    goto :goto_0

    .line 665
    :cond_0
    iput p1, p0, Landroidx/widget/COUIDrawerLayout;->mLockModeEnd:I

    .line 666
    goto :goto_0

    .line 662
    :cond_1
    iput p1, p0, Landroidx/widget/COUIDrawerLayout;->mLockModeStart:I

    .line 663
    goto :goto_0

    .line 668
    :cond_2
    iput p1, p0, Landroidx/widget/COUIDrawerLayout;->mLockModeBottom:I

    goto :goto_0

    .line 659
    :cond_3
    iput p1, p0, Landroidx/widget/COUIDrawerLayout;->mLockModeRight:I

    .line 660
    goto :goto_0

    .line 656
    :cond_4
    iput p1, p0, Landroidx/widget/COUIDrawerLayout;->mLockModeLeft:I

    .line 657
    nop

    .line 672
    :goto_0
    if-eqz p1, :cond_7

    .line 675
    if-eq v0, v2, :cond_6

    if-eq v0, v1, :cond_5

    .line 683
    iget-object v1, p0, Landroidx/widget/COUIDrawerLayout;->mBottomDragger:Landroidx/customview/widget/ViewDragHelper;

    goto :goto_1

    .line 680
    :cond_5
    iget-object v1, p0, Landroidx/widget/COUIDrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    .line 681
    .local v1, "helper":Landroidx/customview/widget/ViewDragHelper;
    goto :goto_1

    .line 677
    .end local v1    # "helper":Landroidx/customview/widget/ViewDragHelper;
    :cond_6
    iget-object v1, p0, Landroidx/widget/COUIDrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    .line 678
    .restart local v1    # "helper":Landroidx/customview/widget/ViewDragHelper;
    nop

    .line 683
    :goto_1
    nop

    .line 687
    invoke-virtual {v1}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    .line 689
    .end local v1    # "helper":Landroidx/customview/widget/ViewDragHelper;
    :cond_7
    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 691
    :pswitch_0
    invoke-virtual {p0, v0}, Landroidx/widget/COUIDrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v1

    .line 692
    .local v1, "toOpen":Landroid/view/View;
    if-eqz v1, :cond_8

    .line 693
    invoke-virtual {p0, v1}, Landroidx/widget/COUIDrawerLayout;->openDrawer(Landroid/view/View;)V

    goto :goto_2

    .line 697
    .end local v1    # "toOpen":Landroid/view/View;
    :pswitch_1
    invoke-virtual {p0, v0}, Landroidx/widget/COUIDrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v1

    .line 698
    .local v1, "toClose":Landroid/view/View;
    if-eqz v1, :cond_8

    .line 699
    invoke-virtual {p0, v1}, Landroidx/widget/COUIDrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 704
    .end local v1    # "toClose":Landroid/view/View;
    :cond_8
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDrawerLockMode(ILandroid/view/View;)V
    .locals 3
    .param p1, "lockMode"    # I
    .param p2, "drawerView"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 725
    invoke-virtual {p0, p2}, Landroidx/widget/COUIDrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 729
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/widget/COUIDrawerLayout$LayoutParams;

    iget v0, v0, Landroidx/widget/COUIDrawerLayout$LayoutParams;->gravity:I

    .line 730
    .local v0, "gravity":I
    invoke-virtual {p0, p1, v0}, Landroidx/widget/COUIDrawerLayout;->setDrawerLockMode(II)V

    .line 731
    return-void

    .line 726
    .end local v0    # "gravity":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "drawer with appropriate layout_gravity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDrawerShadow(II)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "gravity"    # I

    .line 540
    invoke-virtual {p0}, Landroidx/widget/COUIDrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroidx/widget/COUIDrawerLayout;->setDrawerShadow(Landroid/graphics/drawable/Drawable;I)V

    .line 541
    return-void
.end method

.method public setDrawerShadow(Landroid/graphics/drawable/Drawable;I)V
    .locals 2
    .param p1, "shadowDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "gravity"    # I

    .line 504
    sget-boolean v0, Landroidx/widget/COUIDrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v0, :cond_0

    .line 506
    return-void

    .line 508
    :cond_0
    const v0, 0x800003

    and-int v1, p2, v0

    if-ne v1, v0, :cond_1

    .line 509
    iput-object p1, p0, Landroidx/widget/COUIDrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 510
    :cond_1
    const v0, 0x800005

    and-int v1, p2, v0

    if-ne v1, v0, :cond_2

    .line 511
    iput-object p1, p0, Landroidx/widget/COUIDrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 512
    :cond_2
    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 513
    iput-object p1, p0, Landroidx/widget/COUIDrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 514
    :cond_3
    and-int/lit8 v0, p2, 0x5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 515
    iput-object p1, p0, Landroidx/widget/COUIDrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 516
    :cond_4
    and-int/lit8 v0, p2, 0x50

    const/16 v1, 0x50

    if-ne v0, v1, :cond_5

    .line 517
    iput-object p1, p0, Landroidx/widget/COUIDrawerLayout;->mShadowBottom:Landroid/graphics/drawable/Drawable;

    .line 521
    :goto_0
    invoke-direct {p0}, Landroidx/widget/COUIDrawerLayout;->resolveShadowDrawables()V

    .line 522
    invoke-virtual {p0}, Landroidx/widget/COUIDrawerLayout;->invalidate()V

    .line 523
    return-void

    .line 519
    :cond_5
    return-void
.end method

.method public setDrawerTitle(ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "edgeGravity"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 823
    nop

    .line 824
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 823
    invoke-static {p1, v0}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    .line 825
    .local v0, "absGravity":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 826
    iput-object p2, p0, Landroidx/widget/COUIDrawerLayout;->mTitleLeft:Ljava/lang/CharSequence;

    goto :goto_0

    .line 827
    :cond_0
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 828
    iput-object p2, p0, Landroidx/widget/COUIDrawerLayout;->mTitleRight:Ljava/lang/CharSequence;

    goto :goto_0

    .line 829
    :cond_1
    const/16 v1, 0x50

    if-ne v0, v1, :cond_2

    .line 830
    iput-object p2, p0, Landroidx/widget/COUIDrawerLayout;->mTitleBottom:Ljava/lang/CharSequence;

    .line 832
    :cond_2
    :goto_0
    return-void
.end method

.method setDrawerViewOffset(Landroid/view/View;F)V
    .locals 2
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    .line 1032
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/widget/COUIDrawerLayout$LayoutParams;

    .line 1033
    .local v0, "lp":Landroidx/widget/COUIDrawerLayout$LayoutParams;
    iget v1, v0, Landroidx/widget/COUIDrawerLayout$LayoutParams;->onScreen:F

    cmpl-float v1, p2, v1

    if-nez v1, :cond_0

    .line 1034
    return-void

    .line 1037
    :cond_0
    iput p2, v0, Landroidx/widget/COUIDrawerLayout$LayoutParams;->onScreen:F

    .line 1038
    invoke-virtual {p0, p1, p2}, Landroidx/widget/COUIDrawerLayout;->dispatchOnDrawerSlide(Landroid/view/View;F)V

    .line 1039
    return-void
.end method

.method public setOffsetMinTop(I)V
    .locals 0
    .param p1, "maxOffset"    # I

    .line 2992
    iput p1, p0, Landroidx/widget/COUIDrawerLayout;->mMinOffsetTop:I

    .line 2993
    return-void
.end method

.method public setScrimColor(I)V
    .locals 0
    .param p1, "color"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 549
    iput p1, p0, Landroidx/widget/COUIDrawerLayout;->mScrimColor:I

    .line 550
    invoke-virtual {p0}, Landroidx/widget/COUIDrawerLayout;->invalidate()V

    .line 551
    return-void
.end method

.method public setStatusBarBackground(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 1495
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/widget/COUIDrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroidx/widget/COUIDrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 1496
    invoke-virtual {p0}, Landroidx/widget/COUIDrawerLayout;->invalidate()V

    .line 1497
    return-void
.end method

.method public setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1474
    iput-object p1, p0, Landroidx/widget/COUIDrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 1475
    invoke-virtual {p0}, Landroidx/widget/COUIDrawerLayout;->invalidate()V

    .line 1476
    return-void
.end method

.method public setStatusBarBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1507
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Landroidx/widget/COUIDrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 1508
    invoke-virtual {p0}, Landroidx/widget/COUIDrawerLayout;->invalidate()V

    .line 1509
    return-void
.end method

.method updateDrawerState(IILandroid/view/View;)V
    .locals 8
    .param p1, "forGravity"    # I
    .param p2, "activeState"    # I
    .param p3, "activeDrawer"    # Landroid/view/View;

    .line 914
    iget-object v0, p0, Landroidx/widget/COUIDrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroidx/customview/widget/ViewDragHelper;->getViewDragState()I

    move-result v0

    .line 915
    .local v0, "leftState":I
    iget-object v1, p0, Landroidx/widget/COUIDrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v1}, Landroidx/customview/widget/ViewDragHelper;->getViewDragState()I

    move-result v1

    .line 916
    .local v1, "rightState":I
    iget-object v2, p0, Landroidx/widget/COUIDrawerLayout;->mBottomDragger:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v2}, Landroidx/customview/widget/ViewDragHelper;->getViewDragState()I

    move-result v2

    .line 919
    .local v2, "bottomState":I
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_3

    if-eq v1, v4, :cond_3

    if-ne v2, v4, :cond_0

    goto :goto_1

    .line 921
    :cond_0
    if-eq v0, v3, :cond_2

    if-eq v1, v3, :cond_2

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 924
    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    .line 922
    :cond_2
    :goto_0
    const/4 v4, 0x2

    goto :goto_2

    .line 920
    :cond_3
    :goto_1
    const/4 v4, 0x1

    .line 924
    .local v4, "state":I
    :goto_2
    nop

    .line 926
    if-eqz p3, :cond_6

    if-nez p2, :cond_6

    .line 927
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/widget/COUIDrawerLayout$LayoutParams;

    .line 928
    .local v5, "lp":Landroidx/widget/COUIDrawerLayout$LayoutParams;
    iget v6, v5, Landroidx/widget/COUIDrawerLayout$LayoutParams;->onScreen:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_4

    .line 929
    invoke-virtual {p0, p3}, Landroidx/widget/COUIDrawerLayout;->dispatchOnDrawerClosed(Landroid/view/View;)V

    goto :goto_3

    .line 930
    :cond_4
    iget v6, v5, Landroidx/widget/COUIDrawerLayout$LayoutParams;->onScreen:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-nez v6, :cond_5

    .line 931
    invoke-virtual {p0, p3}, Landroidx/widget/COUIDrawerLayout;->dispatchOnDrawerOpened(Landroid/view/View;)V

    goto :goto_3

    .line 933
    :cond_5
    iget v6, v5, Landroidx/widget/COUIDrawerLayout$LayoutParams;->openState:I

    and-int/2addr v3, v6

    iput v3, v5, Landroidx/widget/COUIDrawerLayout$LayoutParams;->openState:I

    .line 937
    .end local v5    # "lp":Landroidx/widget/COUIDrawerLayout$LayoutParams;
    :cond_6
    :goto_3
    iget v3, p0, Landroidx/widget/COUIDrawerLayout;->mDrawerState:I

    if-eq v4, v3, :cond_7

    .line 938
    iput v4, p0, Landroidx/widget/COUIDrawerLayout;->mDrawerState:I

    .line 940
    iget-object v3, p0, Landroidx/widget/COUIDrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v3, :cond_7

    .line 943
    iget-object v3, p0, Landroidx/widget/COUIDrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 944
    .local v3, "listenerCount":I
    add-int/lit8 v5, v3, -0x1

    .local v5, "i":I
    :goto_4
    if-ltz v5, :cond_7

    .line 945
    iget-object v6, p0, Landroidx/widget/COUIDrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/widget/COUIDrawerLayout$DrawerListener;

    invoke-interface {v6, v4}, Landroidx/widget/COUIDrawerLayout$DrawerListener;->onDrawerStateChanged(I)V

    .line 944
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .line 949
    .end local v3    # "listenerCount":I
    .end local v5    # "i":I
    :cond_7
    return-void
.end method
