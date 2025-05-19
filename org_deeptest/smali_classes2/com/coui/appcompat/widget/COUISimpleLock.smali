.class public Lcom/coui/appcompat/widget/COUISimpleLock;
.super Landroid/view/View;
.source "COUISimpleLock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/COUISimpleLock$SimpleLockTouchHelper;
    }
.end annotation


# static fields
.field public static final DEFAULTTYPE:I = 0x0

.field private static final FOURCIRCLE:I = 0x4

.field private static final FOURINTERVAL:I = 0x3

.field private static final SIXCIRCLE:I = 0x6

.field public static final SIXCIRCLETYPE:I = 0x1

.field private static final SIXINTERVAL:I = 0x5

.field private static final TAG:Ljava/lang/String; = "COUISimpleLock"


# instance fields
.field private final ADD_ANIMATION:I

.field private final CLEAR_ALL_ANIMATION:I

.field private final DELAY_FOUR:[F

.field private final DELAY_SIX:[F

.field private final DELETE_ANIMATION:I

.field private final DRAW_ALL_ANIMATION:I

.field private final FAILED_ANIMATION:I

.field private final FALL_HEIGHT:I

.field private final FALL_SPEED:I

.field private final MORPHING_FILLED_TO_OUTLINED_TIME:I

.field private final MORPHING_OUTLINED_TO_FILLED_TIME:I

.field private final SHAKE_AND_FALL_TIME:I

.field private final SHAKE_X_POINT:[F

.field private animationMode:I

.field private fail_lastDraw:Z

.field private fto_lastDraw:Z

.field private isFingerprintMode:Z

.field private mAddAnimator:Landroid/animation/ValueAnimator;

.field private mCodeImageStart:I

.field public mCodeNumber:I

.field private mContentHeight:I

.field private mContentWidth:I

.field private mContext:Landroid/content/Context;

.field private mDecription:Ljava/lang/String;

.field private mDeleteAnimator:Landroid/animation/ValueAnimator;

.field private mDrawFailedAnimation:Z

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableHeight:I

.field private mDrawableWidth:I

.field private mFailedAnimator:Landroid/animation/Animator;

.field private mFilledRectangleDrawable:Landroid/graphics/drawable/Drawable;

.field private mIsLinearMotorVersion:Z

.field private mIsVibrator:Z

.field private mNumberStrList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOpacity:I

.field private mOutlinedRectangleDrawable:Landroid/graphics/drawable/Drawable;

.field private mRectangleNum:I

.field private mRectanglePadding:I

.field private mRectangleType:I

.field private mRectanglesNumber:I

.field private mRectanglesWidth:I

.field private mScaleX:F

.field private mScaleY:F

.field private mStyle:I

.field private mTouchHelper:Lcom/coui/appcompat/widget/COUISimpleLock$SimpleLockTouchHelper;

.field private mTransitionX:F

.field private mTransitionY:F

.field private otf_lastDraw:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 149
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUISimpleLock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 156
    sget v0, Lcoui/support/appcompat/R$attr;->couiSimpleLockStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/COUISimpleLock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 171
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mCodeNumber:I

    .line 84
    const/4 v1, 0x1

    iput v1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->DELETE_ANIMATION:I

    .line 85
    const/4 v2, 0x2

    iput v2, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->ADD_ANIMATION:I

    .line 86
    const/4 v2, 0x3

    iput v2, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->CLEAR_ALL_ANIMATION:I

    .line 87
    const/4 v3, 0x4

    iput v3, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->DRAW_ALL_ANIMATION:I

    .line 88
    const/4 v4, 0x5

    iput v4, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->FAILED_ANIMATION:I

    .line 90
    const/16 v5, 0xe6

    iput v5, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->MORPHING_OUTLINED_TO_FILLED_TIME:I

    .line 91
    iput v5, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->MORPHING_FILLED_TO_OUTLINED_TIME:I

    .line 92
    const/16 v5, 0x320

    iput v5, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->SHAKE_AND_FALL_TIME:I

    .line 93
    const/16 v5, 0xfa

    iput v5, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->FALL_SPEED:I

    .line 94
    const/16 v5, 0x96

    iput v5, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->FALL_HEIGHT:I

    .line 96
    const/16 v5, 0x8

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    iput-object v5, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->SHAKE_X_POINT:[F

    .line 97
    new-array v5, v3, [F

    fill-array-data v5, :array_1

    iput-object v5, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->DELAY_FOUR:[F

    .line 98
    const/4 v5, 0x6

    new-array v6, v5, [F

    fill-array-data v6, :array_2

    iput-object v6, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->DELAY_SIX:[F

    .line 101
    const/4 v6, 0x0

    iput v6, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mRectanglesWidth:I

    .line 106
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 113
    iput-boolean v6, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->fto_lastDraw:Z

    .line 114
    iput-boolean v6, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->otf_lastDraw:Z

    .line 115
    iput-boolean v6, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->fail_lastDraw:Z

    .line 118
    iput v6, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->animationMode:I

    .line 121
    iput-boolean v6, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDrawFailedAnimation:Z

    .line 123
    iput-object v7, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mAddAnimator:Landroid/animation/ValueAnimator;

    .line 124
    iput-object v7, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDeleteAnimator:Landroid/animation/ValueAnimator;

    .line 125
    iput-object v7, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mFailedAnimator:Landroid/animation/Animator;

    .line 126
    const/4 v8, 0x0

    iput v8, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mScaleX:F

    .line 127
    iput v8, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mScaleY:F

    .line 128
    iput v6, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mOpacity:I

    .line 129
    iput v8, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mTransitionX:F

    .line 130
    iput v8, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mTransitionY:F

    .line 131
    iput-boolean v6, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->isFingerprintMode:Z

    .line 132
    iput v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mRectangleType:I

    .line 133
    iput v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mRectangleNum:I

    .line 136
    iput-object v7, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mNumberStrList:Ljava/util/LinkedList;

    .line 137
    iput-object v7, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mTouchHelper:Lcom/coui/appcompat/widget/COUISimpleLock$SimpleLockTouchHelper;

    .line 138
    iput-object v7, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDecription:Ljava/lang/String;

    .line 140
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mIsVibrator:Z

    .line 172
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mStyle:I

    goto :goto_0

    .line 175
    :cond_0
    iput p3, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mStyle:I

    .line 177
    :goto_0
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mContext:Landroid/content/Context;

    .line 178
    invoke-static {p0, v6}, Lcom/coui/appcompat/util/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    .line 179
    sget-object v0, Lcoui/support/appcompat/R$styleable;->COUISimpleLock:[I

    invoke-virtual {p1, p2, v0, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 180
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v7, Lcoui/support/appcompat/R$styleable;->COUISimpleLock_couiRectanglePadding:I

    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mRectanglePadding:I

    .line 181
    sget v7, Lcoui/support/appcompat/R$styleable;->COUISimpleLock_couiOutLinedRectangleIconDrawable:I

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mOutlinedRectangleDrawable:Landroid/graphics/drawable/Drawable;

    .line 182
    sget v7, Lcoui/support/appcompat/R$styleable;->COUISimpleLock_couiFilledRectangleIconDrawable:I

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mFilledRectangleDrawable:Landroid/graphics/drawable/Drawable;

    .line 183
    sget v7, Lcoui/support/appcompat/R$styleable;->COUISimpleLock_couiCircleNum:I

    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    iput v6, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mRectangleType:I

    .line 185
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 186
    iget-object v6, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mFilledRectangleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_2

    .line 187
    iget-object v6, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mFilledRectangleDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v6, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 188
    iget-object v6, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    iput v6, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDrawableWidth:I

    .line 189
    iget-object v6, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    iput v6, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDrawableHeight:I

    .line 190
    iget v6, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mRectangleType:I

    if-nez v6, :cond_1

    .line 191
    iput v3, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mRectangleNum:I

    .line 192
    iget v4, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDrawableWidth:I

    mul-int/2addr v4, v3

    iget v3, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mRectanglePadding:I

    mul-int/2addr v3, v2

    add-int/2addr v4, v3

    iput v4, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mRectanglesWidth:I

    goto :goto_1

    .line 193
    :cond_1
    iget v2, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mRectangleType:I

    if-ne v2, v1, :cond_2

    .line 194
    iput v5, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mRectangleNum:I

    .line 195
    iget v2, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDrawableWidth:I

    mul-int/2addr v2, v5

    iget v3, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mRectanglePadding:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mRectanglesWidth:I

    .line 201
    :cond_2
    :goto_1
    new-instance v2, Lcom/coui/appcompat/widget/COUISimpleLock$SimpleLockTouchHelper;

    invoke-direct {v2, p0, p0}, Lcom/coui/appcompat/widget/COUISimpleLock$SimpleLockTouchHelper;-><init>(Lcom/coui/appcompat/widget/COUISimpleLock;Landroid/view/View;)V

    iput-object v2, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mTouchHelper:Lcom/coui/appcompat/widget/COUISimpleLock$SimpleLockTouchHelper;

    .line 202
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mTouchHelper:Lcom/coui/appcompat/widget/COUISimpleLock$SimpleLockTouchHelper;

    invoke-static {p0, v2}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 203
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mNumberStrList:Ljava/util/LinkedList;

    .line 204
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mNumberStrList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 205
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcoui/support/appcompat/R$string;->coui_simple_lock_access_description:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDecription:Ljava/lang/String;

    .line 206
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/COUISimpleLock;->setImportantForAccessibility(I)V

    .line 208
    invoke-static {p1}, Lcom/coui/appcompat/util/VibrateUtils;->isLinearMotorVersion(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mIsLinearMotorVersion:Z

    .line 209
    return-void

    :array_0
    .array-data 4
        0x0
        0x41f00000    # 30.0f
        -0x3e200000    # -28.0f
        0x41600000    # 14.0f
        -0x3f000000    # -8.0f
        0x40800000    # 4.0f
        -0x3fc00000    # -3.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x421a0000    # 38.5f
        0x42b60000    # 91.0f
        0x427c0000    # 63.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x421a0000    # 38.5f
        0x42b60000    # 91.0f
        0x427c0000    # 63.0f
        0x421a0000    # 38.5f
        0x428c0000    # 70.0f
    .end array-data
.end method

.method static synthetic access$002(Lcom/coui/appcompat/widget/COUISimpleLock;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISimpleLock;
    .param p1, "x1"    # Z

    .line 63
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->otf_lastDraw:Z

    return p1
.end method

.method static synthetic access$100(Lcom/coui/appcompat/widget/COUISimpleLock;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISimpleLock;

    .line 63
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDrawFailedAnimation:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/coui/appcompat/widget/COUISimpleLock;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISimpleLock;

    .line 63
    iget v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDrawableHeight:I

    return v0
.end method

.method static synthetic access$102(Lcom/coui/appcompat/widget/COUISimpleLock;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISimpleLock;
    .param p1, "x1"    # Z

    .line 63
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDrawFailedAnimation:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/coui/appcompat/widget/COUISimpleLock;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISimpleLock;

    .line 63
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDecription:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/coui/appcompat/widget/COUISimpleLock;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISimpleLock;
    .param p1, "x1"    # Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDecription:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/coui/appcompat/widget/COUISimpleLock;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISimpleLock;

    .line 63
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mNumberStrList:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/coui/appcompat/widget/COUISimpleLock;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISimpleLock;

    .line 63
    iget v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mRectangleNum:I

    return v0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/widget/COUISimpleLock;)Landroid/animation/Animator;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISimpleLock;

    .line 63
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mFailedAnimator:Landroid/animation/Animator;

    return-object v0
.end method

.method static synthetic access$202(Lcom/coui/appcompat/widget/COUISimpleLock;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISimpleLock;
    .param p1, "x1"    # Landroid/animation/Animator;

    .line 63
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mFailedAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$302(Lcom/coui/appcompat/widget/COUISimpleLock;I)I
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISimpleLock;
    .param p1, "x1"    # I

    .line 63
    iput p1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->animationMode:I

    return p1
.end method

.method static synthetic access$400(Lcom/coui/appcompat/widget/COUISimpleLock;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISimpleLock;

    .line 63
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mIsVibrator:Z

    return v0
.end method

.method static synthetic access$402(Lcom/coui/appcompat/widget/COUISimpleLock;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISimpleLock;
    .param p1, "x1"    # Z

    .line 63
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mIsVibrator:Z

    return p1
.end method

.method static synthetic access$502(Lcom/coui/appcompat/widget/COUISimpleLock;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISimpleLock;
    .param p1, "x1"    # Z

    .line 63
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->fto_lastDraw:Z

    return p1
.end method

.method static synthetic access$602(Lcom/coui/appcompat/widget/COUISimpleLock;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISimpleLock;
    .param p1, "x1"    # Z

    .line 63
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->fail_lastDraw:Z

    return p1
.end method

.method static synthetic access$700(Lcom/coui/appcompat/widget/COUISimpleLock;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISimpleLock;

    .line 63
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->isFingerprintMode:Z

    return v0
.end method

.method static synthetic access$702(Lcom/coui/appcompat/widget/COUISimpleLock;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISimpleLock;
    .param p1, "x1"    # Z

    .line 63
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->isFingerprintMode:Z

    return p1
.end method

.method static synthetic access$800(Lcom/coui/appcompat/widget/COUISimpleLock;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISimpleLock;

    .line 63
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISimpleLock;->performFeedback()V

    return-void
.end method

.method static synthetic access$900(Lcom/coui/appcompat/widget/COUISimpleLock;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISimpleLock;

    .line 63
    iget v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mContentWidth:I

    return v0
.end method

.method private createMorphingAnimationFilledToOutLined()Landroid/animation/ValueAnimator;
    .locals 3

    .line 848
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDeleteAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 849
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDeleteAnimator:Landroid/animation/ValueAnimator;

    return-object v0

    .line 852
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDeleteAnimator:Landroid/animation/ValueAnimator;

    .line 853
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDeleteAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xe6

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 854
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDeleteAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/widget/COUISimpleLock$3;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/COUISimpleLock$3;-><init>(Lcom/coui/appcompat/widget/COUISimpleLock;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 864
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDeleteAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/widget/COUISimpleLock$4;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/COUISimpleLock$4;-><init>(Lcom/coui/appcompat/widget/COUISimpleLock;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 886
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDeleteAnimator:Landroid/animation/ValueAnimator;

    return-object v0

    nop

    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method private createMorphingAnimationOutLinedToFilled()Landroid/animation/ValueAnimator;
    .locals 3

    .line 797
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mAddAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 798
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mAddAnimator:Landroid/animation/ValueAnimator;

    return-object v0

    .line 800
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mAddAnimator:Landroid/animation/ValueAnimator;

    .line 801
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mAddAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xe6

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 802
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mAddAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/widget/COUISimpleLock$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/COUISimpleLock$1;-><init>(Lcom/coui/appcompat/widget/COUISimpleLock;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 811
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mAddAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/widget/COUISimpleLock$2;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/COUISimpleLock$2;-><init>(Lcom/coui/appcompat/widget/COUISimpleLock;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 844
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mAddAnimator:Landroid/animation/ValueAnimator;

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method private drawAllCodeAnimation(Landroid/graphics/Canvas;I)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "number"    # I

    .line 288
    iget v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mCodeImageStart:I

    .line 289
    .local v0, "left":I
    const/4 v8, 0x0

    .line 290
    .local v8, "top":I
    iget v1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDrawableHeight:I

    add-int v9, v8, v1

    .line 291
    .local v9, "bottom":I
    const/4 v1, 0x0

    .line 292
    .local v1, "right":I
    const/4 v2, -0x1

    .line 294
    .local v2, "count":I
    iget-boolean v3, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->otf_lastDraw:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 295
    iget v3, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mCodeNumber:I

    invoke-direct {p0, p1, v3}, Lcom/coui/appcompat/widget/COUISimpleLock;->drawPreviousState(Landroid/graphics/Canvas;I)V

    .line 296
    iput v4, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->animationMode:I

    .line 297
    return-void

    .line 299
    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISimpleLock;->judgeType()I

    move-result v10

    .line 301
    .end local v2    # "count":I
    .local v10, "count":I
    nop

    .local v4, "i":I
    :goto_0
    move v11, v4

    .end local v4    # "i":I
    .local v11, "i":I
    if-ge v11, v10, :cond_3

    .line 302
    iget v2, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDrawableWidth:I

    add-int v12, v0, v2

    .line 304
    .end local v1    # "right":I
    .local v12, "right":I
    move-object v1, p0

    move-object v2, p1

    move v3, v0

    move v4, v8

    move v5, v12

    move v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/coui/appcompat/widget/COUISimpleLock;->drawOutLinedRectangle(Landroid/graphics/Canvas;IIII)V

    .line 306
    if-gt v11, p2, :cond_1

    .line 307
    move-object v1, p0

    move-object v2, p1

    move v3, v0

    move v4, v8

    move v5, v12

    move v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/coui/appcompat/widget/COUISimpleLock;->drawFilledRectangle(Landroid/graphics/Canvas;IIII)V

    .line 309
    :cond_1
    if-le v11, p2, :cond_2

    .line 310
    iget v7, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mOpacity:I

    move-object v1, p0

    move-object v2, p1

    move v3, v8

    move v4, v0

    move v5, v12

    move v6, v9

    invoke-direct/range {v1 .. v7}, Lcom/coui/appcompat/widget/COUISimpleLock;->drawFilledRectangle(Landroid/graphics/Canvas;IIIII)V

    .line 313
    :cond_2
    iget v1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mRectanglePadding:I

    add-int v0, v12, v1

    .line 301
    add-int/lit8 v4, v11, 0x1

    move v1, v12

    goto :goto_0

    .line 315
    .end local v11    # "i":I
    .end local v12    # "right":I
    .restart local v1    # "right":I
    :cond_3
    return-void
.end method

.method private drawClearAllAnimation(Landroid/graphics/Canvas;I)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "number"    # I

    .line 319
    iget v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mCodeImageStart:I

    .line 320
    .local v0, "left":I
    const/4 v8, 0x0

    .line 321
    .local v8, "top":I
    iget v1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDrawableHeight:I

    add-int v9, v8, v1

    .line 322
    .local v9, "bottom":I
    const/4 v1, 0x0

    .line 323
    .local v1, "right":I
    const/4 v2, -0x1

    .line 324
    .local v2, "count":I
    iget-boolean v3, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->fto_lastDraw:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 325
    iget v3, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mCodeNumber:I

    invoke-direct {p0, p1, v3}, Lcom/coui/appcompat/widget/COUISimpleLock;->drawPreviousState(Landroid/graphics/Canvas;I)V

    .line 326
    iput v4, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->animationMode:I

    .line 327
    return-void

    .line 330
    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISimpleLock;->judgeType()I

    move-result v10

    .line 332
    .end local v2    # "count":I
    .local v10, "count":I
    nop

    .local v4, "i":I
    :goto_0
    move v11, v4

    .end local v4    # "i":I
    .local v11, "i":I
    if-ge v11, v10, :cond_2

    .line 333
    iget v2, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDrawableWidth:I

    add-int v12, v0, v2

    .line 335
    .end local v1    # "right":I
    .local v12, "right":I
    move-object v1, p0

    move-object v2, p1

    move v3, v0

    move v4, v8

    move v5, v12

    move v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/coui/appcompat/widget/COUISimpleLock;->drawOutLinedRectangle(Landroid/graphics/Canvas;IIII)V

    .line 337
    if-gt v11, p2, :cond_1

    .line 338
    iget v7, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mOpacity:I

    move-object v1, p0

    move-object v2, p1

    move v3, v8

    move v4, v0

    move v5, v12

    move v6, v9

    invoke-direct/range {v1 .. v7}, Lcom/coui/appcompat/widget/COUISimpleLock;->drawFilledRectangle(Landroid/graphics/Canvas;IIIII)V

    .line 341
    :cond_1
    iget v1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mRectanglePadding:I

    add-int v0, v12, v1

    .line 332
    add-int/lit8 v4, v11, 0x1

    move v1, v12

    goto :goto_0

    .line 344
    .end local v11    # "i":I
    .end local v12    # "right":I
    .restart local v1    # "right":I
    :cond_2
    return-void
.end method

.method private drawFailedAnimation(Landroid/graphics/Canvas;I)V
    .locals 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "number"    # I

    .line 381
    move-object/from16 v9, p0

    iget v0, v9, Lcom/coui/appcompat/widget/COUISimpleLock;->mCodeImageStart:I

    .line 382
    .local v0, "left":I
    const/4 v10, 0x0

    .line 383
    .local v10, "top":I
    iget v1, v9, Lcom/coui/appcompat/widget/COUISimpleLock;->mDrawableHeight:I

    add-int v11, v10, v1

    .line 384
    .local v11, "bottom":I
    const/4 v1, 0x0

    .line 385
    .local v1, "right":I
    const/4 v12, 0x0

    .line 386
    .local v12, "x":F
    const/4 v13, 0x0

    .line 388
    .local v13, "y":F
    const/4 v2, -0x1

    .line 390
    .local v2, "count":I
    iget-boolean v3, v9, Lcom/coui/appcompat/widget/COUISimpleLock;->fail_lastDraw:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 391
    iput v4, v9, Lcom/coui/appcompat/widget/COUISimpleLock;->animationMode:I

    .line 392
    iput-boolean v4, v9, Lcom/coui/appcompat/widget/COUISimpleLock;->mDrawFailedAnimation:Z

    .line 393
    const/4 v3, -0x1

    iput v3, v9, Lcom/coui/appcompat/widget/COUISimpleLock;->mCodeNumber:I

    .line 394
    iget v3, v9, Lcom/coui/appcompat/widget/COUISimpleLock;->mCodeNumber:I

    move-object/from16 v14, p1

    invoke-direct {v9, v14, v3}, Lcom/coui/appcompat/widget/COUISimpleLock;->drawPreviousState(Landroid/graphics/Canvas;I)V

    .line 395
    return-void

    .line 398
    :cond_0
    move-object/from16 v14, p1

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISimpleLock;->judgeType()I

    move-result v15

    .line 400
    .end local v2    # "count":I
    .local v15, "count":I
    move/from16 v16, v0

    .end local v0    # "left":I
    .local v4, "i":I
    .local v16, "left":I
    :goto_0
    move v8, v4

    .end local v4    # "i":I
    .local v8, "i":I
    if-ge v8, v15, :cond_2

    .line 401
    iget v0, v9, Lcom/coui/appcompat/widget/COUISimpleLock;->mDrawableWidth:I

    add-int v17, v16, v0

    .line 402
    .end local v1    # "right":I
    .local v17, "right":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v10

    move/from16 v3, v16

    move/from16 v4, v17

    move v5, v11

    move v6, v12

    move v7, v13

    invoke-direct/range {v0 .. v7}, Lcom/coui/appcompat/widget/COUISimpleLock;->drawOutLinedRectangleShake(Landroid/graphics/Canvas;IIIIFF)V

    .line 403
    move/from16 v7, p2

    if-gt v8, v7, :cond_1

    .line 404
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v10

    move/from16 v3, v16

    move/from16 v4, v17

    move v5, v11

    move v6, v12

    move v7, v13

    move/from16 v18, v8

    .end local v8    # "i":I
    .local v18, "i":I
    invoke-direct/range {v0 .. v8}, Lcom/coui/appcompat/widget/COUISimpleLock;->drawFilledRectangleShakeAndFall(Landroid/graphics/Canvas;IIIIFFI)V

    goto :goto_1

    .line 406
    .end local v18    # "i":I
    .restart local v8    # "i":I
    :cond_1
    move/from16 v18, v8

    .end local v8    # "i":I
    .restart local v18    # "i":I
    :goto_1
    iget v0, v9, Lcom/coui/appcompat/widget/COUISimpleLock;->mDrawableWidth:I

    add-int v0, v16, v0

    iget v1, v9, Lcom/coui/appcompat/widget/COUISimpleLock;->mRectanglePadding:I

    add-int v16, v0, v1

    .line 400
    add-int/lit8 v4, v18, 0x1

    move/from16 v1, v17

    goto :goto_0

    .line 408
    .end local v17    # "right":I
    .end local v18    # "i":I
    .restart local v1    # "right":I
    :cond_2
    return-void
.end method

.method private drawFilledRectangle(Landroid/graphics/Canvas;IIII)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 444
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mFilledRectangleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 445
    int-to-float v0, p2

    iget v1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mTransitionX:F

    add-float/2addr v0, v1

    float-to-int p2, v0

    .line 446
    int-to-float v0, p4

    iget v1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mTransitionX:F

    add-float/2addr v0, v1

    float-to-int p4, v0

    .line 447
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 448
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 449
    return-void
.end method

.method private drawFilledRectangle(Landroid/graphics/Canvas;IIIII)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "top"    # I
    .param p3, "left"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "opacity"    # I

    .line 523
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mFilledRectangleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 524
    int-to-float v0, p3

    iget v1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mTransitionX:F

    add-float/2addr v0, v1

    float-to-int p3, v0

    .line 525
    int-to-float v0, p4

    iget v1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mTransitionX:F

    add-float/2addr v0, v1

    float-to-int p4, v0

    .line 526
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p3, p2, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 527
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-lez p6, :cond_0

    const/16 v1, 0x8c

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 528
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 529
    return-void
.end method

.method private drawFilledRectangleShakeAndFall(Landroid/graphics/Canvas;IIIIFFI)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "top"    # I
    .param p3, "left"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "scaleX"    # F
    .param p7, "scaleY"    # F
    .param p8, "count"    # I

    .line 510
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mFilledRectangleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 511
    int-to-float v0, p3

    iget v1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mTransitionX:F

    add-float/2addr v0, v1

    float-to-int p3, v0

    .line 512
    int-to-float v0, p4

    iget v1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mTransitionX:F

    add-float/2addr v0, v1

    float-to-int p4, v0

    .line 513
    int-to-float v0, p2

    iget v1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mTransitionY:F

    invoke-direct {p0, p8, v1}, Lcom/coui/appcompat/widget/COUISimpleLock;->getDelayFallHeight(IF)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int p2, v0

    .line 514
    int-to-float v0, p5

    iget v1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mTransitionY:F

    invoke-direct {p0, p8, v1}, Lcom/coui/appcompat/widget/COUISimpleLock;->getDelayFallHeight(IF)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int p5, v0

    .line 515
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p3, p2, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 516
    iget v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mTransitionY:F

    invoke-direct {p0, p8, v0}, Lcom/coui/appcompat/widget/COUISimpleLock;->getDelayFallHeight(IF)F

    move-result v0

    const/high16 v1, 0x43160000    # 150.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    const/high16 v0, 0x430c0000    # 140.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    .line 517
    .local v0, "alpha":I
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-lez v0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 518
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 519
    return-void
.end method

.method private drawFilledToOutLined(Landroid/graphics/Canvas;I)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "number"    # I

    .line 412
    iget v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mCodeImageStart:I

    .line 413
    .local v0, "left":I
    const/4 v8, 0x0

    .line 414
    .local v8, "top":I
    iget v1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDrawableHeight:I

    add-int v9, v8, v1

    .line 415
    .local v9, "bottom":I
    const/4 v1, 0x0

    .line 416
    .local v1, "right":I
    const/4 v2, -0x1

    .line 418
    .local v2, "count":I
    iget-boolean v3, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->fto_lastDraw:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 419
    iput v4, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->animationMode:I

    .line 420
    iget v3, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mCodeNumber:I

    invoke-direct {p0, p1, v3}, Lcom/coui/appcompat/widget/COUISimpleLock;->drawPreviousState(Landroid/graphics/Canvas;I)V

    .line 421
    return-void

    .line 424
    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISimpleLock;->judgeType()I

    move-result v10

    .line 426
    .end local v2    # "count":I
    .local v10, "count":I
    nop

    .local v4, "i":I
    :goto_0
    move v11, v4

    .end local v4    # "i":I
    .local v11, "i":I
    if-ge v11, v10, :cond_3

    .line 427
    iget v2, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDrawableWidth:I

    add-int v12, v0, v2

    .line 429
    .end local v1    # "right":I
    .local v12, "right":I
    move-object v1, p0

    move-object v2, p1

    move v3, v0

    move v4, v8

    move v5, v12

    move v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/coui/appcompat/widget/COUISimpleLock;->drawOutLinedRectangle(Landroid/graphics/Canvas;IIII)V

    .line 431
    if-ge v11, p2, :cond_1

    .line 432
    move-object v1, p0

    move-object v2, p1

    move v3, v0

    move v4, v8

    move v5, v12

    move v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/coui/appcompat/widget/COUISimpleLock;->drawFilledRectangle(Landroid/graphics/Canvas;IIII)V

    .line 434
    :cond_1
    if-ne v11, p2, :cond_2

    .line 435
    iget v7, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mOpacity:I

    move-object v1, p0

    move-object v2, p1

    move v3, v8

    move v4, v0

    move v5, v12

    move v6, v9

    invoke-direct/range {v1 .. v7}, Lcom/coui/appcompat/widget/COUISimpleLock;->drawFilledRectangle(Landroid/graphics/Canvas;IIIII)V

    .line 437
    :cond_2
    iget v1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mRectanglePadding:I

    add-int v0, v12, v1

    .line 426
    add-int/lit8 v4, v11, 0x1

    move v1, v12

    goto :goto_0

    .line 439
    .end local v11    # "i":I
    .end local v12    # "right":I
    .restart local v1    # "right":I
    :cond_3
    return-void
.end method

.method private drawOutLinedRectangle(Landroid/graphics/Canvas;IIII)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 454
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mOutlinedRectangleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 455
    int-to-float v0, p2

    iget v1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mTransitionX:F

    add-float/2addr v0, v1

    float-to-int p2, v0

    .line 456
    int-to-float v0, p4

    iget v1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mTransitionX:F

    add-float/2addr v0, v1

    float-to-int p4, v0

    .line 457
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 458
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 459
    return-void
.end method

.method private drawOutLinedRectangleShake(Landroid/graphics/Canvas;IIIIFF)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "top"    # I
    .param p3, "left"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "scaleX"    # F
    .param p7, "scaleY"    # F

    .line 501
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mOutlinedRectangleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 502
    int-to-float v0, p3

    iget v1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mTransitionX:F

    add-float/2addr v0, v1

    float-to-int p3, v0

    .line 503
    int-to-float v0, p4

    iget v1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mTransitionX:F

    add-float/2addr v0, v1

    float-to-int p4, v0

    .line 504
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p3, p2, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 505
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 506
    return-void
.end method

.method private drawOutLinedToFilled(Landroid/graphics/Canvas;I)V
    .locals 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "number"    # I

    .line 462
    move-object/from16 v9, p0

    move/from16 v10, p2

    iget v0, v9, Lcom/coui/appcompat/widget/COUISimpleLock;->mCodeImageStart:I

    .line 463
    .local v0, "left":I
    const/4 v11, 0x0

    .line 464
    .local v11, "top":I
    iget v1, v9, Lcom/coui/appcompat/widget/COUISimpleLock;->mDrawableHeight:I

    add-int v12, v11, v1

    .line 465
    .local v12, "bottom":I
    const/4 v1, 0x0

    .line 466
    .local v1, "right":I
    const/4 v2, -0x1

    .line 467
    .local v2, "count":I
    const/4 v13, 0x0

    .line 468
    .local v13, "x":F
    const/4 v14, 0x0

    .line 470
    .local v14, "y":F
    iget-boolean v3, v9, Lcom/coui/appcompat/widget/COUISimpleLock;->otf_lastDraw:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 471
    iput v4, v9, Lcom/coui/appcompat/widget/COUISimpleLock;->animationMode:I

    .line 472
    iget v3, v9, Lcom/coui/appcompat/widget/COUISimpleLock;->mCodeNumber:I

    move-object/from16 v15, p1

    invoke-direct {v9, v15, v3}, Lcom/coui/appcompat/widget/COUISimpleLock;->drawPreviousState(Landroid/graphics/Canvas;I)V

    .line 473
    return-void

    .line 476
    :cond_0
    move-object/from16 v15, p1

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISimpleLock;->judgeType()I

    move-result v8

    .line 478
    .end local v2    # "count":I
    .local v8, "count":I
    move/from16 v16, v0

    .end local v0    # "left":I
    .local v4, "i":I
    .local v16, "left":I
    :goto_0
    move v7, v4

    .end local v4    # "i":I
    .local v7, "i":I
    if-ge v7, v8, :cond_4

    .line 479
    iget v0, v9, Lcom/coui/appcompat/widget/COUISimpleLock;->mDrawableWidth:I

    add-int v17, v16, v0

    .line 481
    .end local v1    # "right":I
    .local v17, "right":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    move v3, v11

    move/from16 v4, v17

    move v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/widget/COUISimpleLock;->drawOutLinedRectangle(Landroid/graphics/Canvas;IIII)V

    .line 483
    if-ge v7, v10, :cond_1

    .line 484
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    move v3, v11

    move/from16 v4, v17

    move v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/widget/COUISimpleLock;->drawFilledRectangle(Landroid/graphics/Canvas;IIII)V

    .line 487
    :cond_1
    if-ne v7, v10, :cond_2

    .line 488
    iget v6, v9, Lcom/coui/appcompat/widget/COUISimpleLock;->mOpacity:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move/from16 v3, v16

    move/from16 v4, v17

    move v5, v12

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/widget/COUISimpleLock;->drawFilledRectangle(Landroid/graphics/Canvas;IIIII)V

    .line 491
    :cond_2
    iget-boolean v0, v9, Lcom/coui/appcompat/widget/COUISimpleLock;->mDrawFailedAnimation:Z

    if-eqz v0, :cond_3

    .line 492
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move/from16 v3, v16

    move/from16 v4, v17

    move v5, v12

    move v6, v13

    move/from16 v18, v7

    .end local v7    # "i":I
    .local v18, "i":I
    move v7, v14

    move/from16 v19, v8

    .end local v8    # "count":I
    .local v19, "count":I
    move/from16 v8, v18

    invoke-direct/range {v0 .. v8}, Lcom/coui/appcompat/widget/COUISimpleLock;->drawFilledRectangleShakeAndFall(Landroid/graphics/Canvas;IIIIFFI)V

    goto :goto_1

    .line 495
    .end local v18    # "i":I
    .end local v19    # "count":I
    .restart local v7    # "i":I
    .restart local v8    # "count":I
    :cond_3
    move/from16 v18, v7

    move/from16 v19, v8

    .end local v7    # "i":I
    .end local v8    # "count":I
    .restart local v18    # "i":I
    .restart local v19    # "count":I
    :goto_1
    iget v0, v9, Lcom/coui/appcompat/widget/COUISimpleLock;->mDrawableWidth:I

    add-int v0, v16, v0

    iget v1, v9, Lcom/coui/appcompat/widget/COUISimpleLock;->mRectanglePadding:I

    add-int v16, v0, v1

    .line 478
    add-int/lit8 v4, v18, 0x1

    move/from16 v1, v17

    move/from16 v8, v19

    goto :goto_0

    .line 497
    .end local v17    # "right":I
    .end local v18    # "i":I
    .end local v19    # "count":I
    .restart local v1    # "right":I
    .restart local v8    # "count":I
    :cond_4
    move/from16 v19, v8

    .end local v8    # "count":I
    .restart local v19    # "count":I
    return-void
.end method

.method private drawPreviousState(Landroid/graphics/Canvas;I)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "number"    # I

    .line 266
    iget v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mCodeImageStart:I

    .line 267
    .local v0, "left":I
    const/4 v7, 0x0

    .line 268
    .local v7, "top":I
    iget v1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDrawableHeight:I

    add-int v8, v7, v1

    .line 269
    .local v8, "bottom":I
    const/4 v1, 0x0

    .line 270
    .local v1, "right":I
    const/4 v2, -0x1

    .line 271
    .local v2, "count":I
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISimpleLock;->judgeType()I

    move-result v9

    .line 274
    .end local v2    # "count":I
    .local v9, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    move v10, v2

    .end local v2    # "i":I
    .local v10, "i":I
    if-ge v10, v9, :cond_2

    .line 275
    iget v2, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDrawableWidth:I

    add-int v11, v0, v2

    .line 276
    .end local v1    # "right":I
    .local v11, "right":I
    if-gt v10, p2, :cond_0

    .line 277
    move-object v1, p0

    move-object v2, p1

    move v3, v0

    move v4, v7

    move v5, v11

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/coui/appcompat/widget/COUISimpleLock;->drawFilledRectangle(Landroid/graphics/Canvas;IIII)V

    .line 279
    :cond_0
    if-le v10, p2, :cond_1

    .line 280
    move-object v1, p0

    move-object v2, p1

    move v3, v0

    move v4, v7

    move v5, v11

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/coui/appcompat/widget/COUISimpleLock;->drawOutLinedRectangle(Landroid/graphics/Canvas;IIII)V

    .line 282
    :cond_1
    iget v1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mRectanglePadding:I

    add-int v0, v11, v1

    .line 274
    add-int/lit8 v2, v10, 0x1

    move v1, v11

    goto :goto_0

    .line 284
    .end local v10    # "i":I
    .end local v11    # "right":I
    .restart local v1    # "right":I
    :cond_2
    return-void
.end method

.method private getDelayFallHeight(IF)F
    .locals 4
    .param p1, "i"    # I
    .param p2, "transitionY"    # F

    .line 532
    const/4 v0, 0x0

    .line 533
    .local v0, "mDelayHeight":F
    iget v1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mRectangleNum:I

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    .line 534
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->DELAY_FOUR:[F

    aget v1, v1, p1

    sub-float v0, p2, v1

    .line 535
    cmpl-float v1, v0, v2

    if-ltz v1, :cond_0

    move v2, v0

    nop

    :cond_0
    return v2

    .line 536
    :cond_1
    iget v1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mRectangleNum:I

    const/4 v3, 0x6

    if-ne v1, v3, :cond_3

    .line 537
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->DELAY_SIX:[F

    aget v1, v1, p1

    sub-float v0, p2, v1

    .line 538
    cmpl-float v1, v0, v2

    if-ltz v1, :cond_2

    move v2, v0

    nop

    :cond_2
    return v2

    .line 540
    :cond_3
    return p2
.end method

.method private judgeType()I
    .locals 3

    .line 238
    const/4 v0, -0x1

    .line 239
    .local v0, "count":I
    iget v1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mRectangleNum:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 240
    const/4 v0, 0x4

    goto :goto_0

    .line 241
    :cond_0
    iget v1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mRectangleNum:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 242
    const/4 v0, 0x6

    .line 244
    :cond_1
    :goto_0
    return v0
.end method

.method private performFeedback()V
    .locals 2

    .line 975
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mIsLinearMotorVersion:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 976
    const/16 v0, 0x130

    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/widget/COUISimpleLock;->performHapticFeedback(II)Z

    goto :goto_0

    .line 979
    :cond_0
    const/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/widget/COUISimpleLock;->performHapticFeedback(II)Z

    .line 982
    :goto_0
    return-void
.end method


# virtual methods
.method public createFailedAnimator()Landroid/animation/Animator;
    .locals 4

    .line 896
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mFailedAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 897
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mFailedAnimator:Landroid/animation/Animator;

    return-object v0

    .line 900
    :cond_0
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 901
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/coui/appcompat/widget/COUISimpleLock$5;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/COUISimpleLock$5;-><init>(Lcom/coui/appcompat/widget/COUISimpleLock;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 911
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 912
    .local v1, "animatorY":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/coui/appcompat/widget/COUISimpleLock$6;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/widget/COUISimpleLock$6;-><init>(Lcom/coui/appcompat/widget/COUISimpleLock;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 921
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 922
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 924
    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 925
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 927
    new-instance v2, Lcom/coui/appcompat/widget/COUISimpleLock$7;

    invoke-direct {v2, p0, v1}, Lcom/coui/appcompat/widget/COUISimpleLock$7;-><init>(Lcom/coui/appcompat/widget/COUISimpleLock;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 970
    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mFailedAnimator:Landroid/animation/Animator;

    .line 971
    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x41f00000    # 30.0f
        -0x3e200000    # -28.0f
        0x41600000    # 14.0f
        -0x3f000000    # -8.0f
        0x40800000    # 4.0f
        -0x3fc00000    # -3.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x437a0000    # 250.0f
    .end array-data
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 986
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mTouchHelper:Lcom/coui/appcompat/widget/COUISimpleLock$SimpleLockTouchHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mTouchHelper:Lcom/coui/appcompat/widget/COUISimpleLock$SimpleLockTouchHelper;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUISimpleLock$SimpleLockTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 987
    const/4 v0, 0x1

    return v0

    .line 989
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getAddAnimator()Landroid/animation/Animator;
    .locals 1

    .line 360
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISimpleLock;->createMorphingAnimationOutLinedToFilled()Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public getDeleteAnimator()Landroid/animation/Animator;
    .locals 1

    .line 368
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISimpleLock;->createMorphingAnimationFilledToOutLined()Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public getFailedAnimator()Landroid/animation/Animator;
    .locals 1

    .line 351
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mIsVibrator:Z

    .line 352
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISimpleLock;->createFailedAnimator()Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 214
    iget v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->animationMode:I

    packed-switch v0, :pswitch_data_0

    .line 231
    iget v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mCodeNumber:I

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUISimpleLock;->drawPreviousState(Landroid/graphics/Canvas;I)V

    goto :goto_0

    .line 228
    :pswitch_0
    iget v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mCodeNumber:I

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUISimpleLock;->drawFailedAnimation(Landroid/graphics/Canvas;I)V

    .line 229
    goto :goto_0

    .line 225
    :pswitch_1
    iget v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mRectanglesNumber:I

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUISimpleLock;->drawAllCodeAnimation(Landroid/graphics/Canvas;I)V

    .line 226
    goto :goto_0

    .line 222
    :pswitch_2
    iget v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mRectanglesNumber:I

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUISimpleLock;->drawClearAllAnimation(Landroid/graphics/Canvas;I)V

    .line 223
    goto :goto_0

    .line 219
    :pswitch_3
    iget v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mCodeNumber:I

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUISimpleLock;->drawOutLinedToFilled(Landroid/graphics/Canvas;I)V

    .line 220
    goto :goto_0

    .line 216
    :pswitch_4
    iget v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mCodeNumber:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUISimpleLock;->drawFilledToOutLined(Landroid/graphics/Canvas;I)V

    .line 217
    nop

    .line 235
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 546
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mContentWidth:I

    .line 547
    iget v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mContentWidth:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mRectanglesWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mCodeImageStart:I

    .line 548
    iget v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mContentWidth:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDrawableHeight:I

    add-int/lit16 v1, v1, 0x96

    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/widget/COUISimpleLock;->setMeasuredDimension(II)V

    .line 549
    return-void
.end method

.method public refresh()V
    .locals 7

    .line 1095
    const/4 v0, 0x0

    .line 1096
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISimpleLock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mStyle:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    .line 1097
    .local v1, "styleAttrType":Ljava/lang/String;
    const-string v2, "attr"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 1098
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mContext:Landroid/content/Context;

    sget-object v5, Lcoui/support/appcompat/R$styleable;->COUISimpleLock:[I

    iget v6, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mStyle:I

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0

    .line 1099
    :cond_0
    const-string v2, "style"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1100
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mContext:Landroid/content/Context;

    sget-object v5, Lcoui/support/appcompat/R$styleable;->COUISimpleLock:[I

    iget v6, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mStyle:I

    invoke-virtual {v2, v4, v5, v3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1102
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 1103
    sget v2, Lcoui/support/appcompat/R$styleable;->COUISimpleLock_couiOutLinedRectangleIconDrawable:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mOutlinedRectangleDrawable:Landroid/graphics/drawable/Drawable;

    .line 1104
    sget v2, Lcoui/support/appcompat/R$styleable;->COUISimpleLock_couiFilledRectangleIconDrawable:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mFilledRectangleDrawable:Landroid/graphics/drawable/Drawable;

    .line 1105
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1107
    :cond_2
    return-void
.end method

.method public reset()V
    .locals 2

    .line 735
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDeleteAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDeleteAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDeleteAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 738
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mAddAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mAddAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 739
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mAddAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 741
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mFailedAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mFailedAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 742
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mFailedAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 744
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mCodeNumber:I

    .line 745
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->animationMode:I

    .line 746
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mNumberStrList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 747
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDrawFailedAnimation:Z

    .line 748
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISimpleLock;->invalidate()V

    .line 749
    return-void
.end method

.method public setAllCode(Z)V
    .locals 5
    .param p1, "drawAll"    # Z

    .line 611
    iget v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mRectangleNum:I

    const/4 v1, 0x5

    const/4 v2, 0x3

    const/4 v3, 0x6

    const/4 v4, 0x4

    if-ne v0, v4, :cond_1

    .line 612
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDrawFailedAnimation:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mCodeNumber:I

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mFailedAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mFailedAnimator:Landroid/animation/Animator;

    .line 613
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 614
    :cond_0
    return-void

    .line 616
    :cond_1
    iget v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mRectangleNum:I

    if-ne v0, v3, :cond_3

    .line 617
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDrawFailedAnimation:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mCodeNumber:I

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mFailedAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mFailedAnimator:Landroid/animation/Animator;

    .line 618
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 619
    :cond_2
    return-void

    .line 623
    :cond_3
    if-eqz p1, :cond_8

    .line 624
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDeleteAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDeleteAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 625
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDeleteAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 627
    :cond_4
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mAddAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mAddAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 628
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mAddAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 630
    :cond_5
    iput v4, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->animationMode:I

    .line 631
    iget v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mCodeNumber:I

    iput v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mRectanglesNumber:I

    .line 632
    iget v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mRectangleNum:I

    if-ne v0, v4, :cond_6

    .line 633
    iput v2, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mCodeNumber:I

    goto :goto_0

    .line 634
    :cond_6
    iget v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mRectangleNum:I

    if-ne v0, v3, :cond_7

    .line 635
    iput v1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mCodeNumber:I

    .line 637
    :cond_7
    :goto_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISimpleLock;->createMorphingAnimationOutLinedToFilled()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mAddAnimator:Landroid/animation/ValueAnimator;

    .line 638
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mAddAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 640
    :cond_8
    return-void
.end method

.method public setClearAll(Z)V
    .locals 4
    .param p1, "clear"    # Z

    .line 699
    iget v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mRectangleNum:I

    const/4 v1, 0x3

    const/4 v2, -0x1

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    .line 700
    iget v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mCodeNumber:I

    if-eq v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDrawFailedAnimation:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mCodeNumber:I

    if-gt v0, v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mFailedAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mFailedAnimator:Landroid/animation/Animator;

    .line 701
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 702
    :cond_0
    return-void

    .line 704
    :cond_1
    iget v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mRectangleNum:I

    const/4 v3, 0x6

    if-ne v0, v3, :cond_3

    .line 705
    iget v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mCodeNumber:I

    if-eq v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDrawFailedAnimation:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mCodeNumber:I

    const/4 v3, 0x5

    if-gt v0, v3, :cond_2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mFailedAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mFailedAnimator:Landroid/animation/Animator;

    .line 706
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 707
    :cond_2
    return-void

    .line 710
    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDeleteAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDeleteAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 711
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDeleteAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 713
    :cond_4
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mAddAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mAddAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 714
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mAddAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 719
    :cond_5
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mNumberStrList:Ljava/util/LinkedList;

    if-eqz v0, :cond_6

    .line 720
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mNumberStrList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 724
    :cond_6
    iput v1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->animationMode:I

    .line 725
    iget v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mCodeNumber:I

    iput v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mRectanglesNumber:I

    .line 726
    iput v2, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mCodeNumber:I

    .line 727
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISimpleLock;->createMorphingAnimationFilledToOutLined()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDeleteAnimator:Landroid/animation/ValueAnimator;

    .line 728
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDeleteAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 729
    return-void
.end method

.method public setDeleteLast(Z)V
    .locals 6
    .param p1, "delete"    # Z

    .line 657
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mNumberStrList:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mNumberStrList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mNumberStrList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    .line 659
    .local v0, "numberStr":Ljava/lang/String;
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDecription:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mNumberStrList:Ljava/util/LinkedList;

    if-eqz v1, :cond_0

    .line 660
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDecription:Ljava/lang/String;

    const/16 v2, 0x79

    iget v3, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mRectangleNum:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDecription:Ljava/lang/String;

    .line 661
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mNumberStrList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 662
    .local v1, "size":I
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDecription:Ljava/lang/String;

    const/16 v3, 0x78

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 663
    .local v2, "description":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/COUISimpleLock;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 667
    .end local v0    # "numberStr":Ljava/lang/String;
    .end local v1    # "size":I
    .end local v2    # "description":Ljava/lang/String;
    :cond_0
    iget v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mRectangleNum:I

    const/4 v1, 0x4

    const/4 v2, -0x1

    if-ne v0, v1, :cond_2

    .line 668
    iget v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mCodeNumber:I

    if-eq v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDrawFailedAnimation:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mCodeNumber:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mFailedAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mFailedAnimator:Landroid/animation/Animator;

    .line 669
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 670
    :cond_1
    return-void

    .line 672
    :cond_2
    iget v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mRectangleNum:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    .line 673
    iget v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mCodeNumber:I

    if-eq v0, v2, :cond_3

    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDrawFailedAnimation:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mCodeNumber:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_3

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mFailedAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mFailedAnimator:Landroid/animation/Animator;

    .line 674
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 675
    :cond_3
    return-void

    .line 678
    :cond_4
    iget v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mCodeNumber:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mCodeNumber:I

    .line 679
    iget v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mCodeNumber:I

    if-lt v0, v2, :cond_7

    .line 680
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDeleteAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDeleteAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 681
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDeleteAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 683
    :cond_5
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mAddAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mAddAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 684
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mAddAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 686
    :cond_6
    iput v1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->animationMode:I

    .line 687
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISimpleLock;->createMorphingAnimationFilledToOutLined()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDeleteAnimator:Landroid/animation/ValueAnimator;

    .line 688
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDeleteAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 690
    :cond_7
    iput v2, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mCodeNumber:I

    .line 692
    :goto_0
    return-void
.end method

.method public setFailed(Z)V
    .locals 0
    .param p1, "failed"    # Z

    .line 647
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDrawFailedAnimation:Z

    .line 648
    return-void
.end method

.method public setFilledRectangleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 1084
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mFilledRectangleDrawable:Landroid/graphics/drawable/Drawable;

    .line 1085
    return-void
.end method

.method public setFingerprintRecognition(Z)V
    .locals 0
    .param p1, "isFingerprint"    # Z

    .line 376
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->isFingerprintMode:Z

    .line 377
    return-void
.end method

.method public setInternalTranslationX(F)V
    .locals 0
    .param p1, "translationX"    # F

    .line 784
    iput p1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mTransitionX:F

    .line 785
    return-void
.end method

.method public setInternalTranslationY(F)V
    .locals 0
    .param p1, "translationY"    # F

    .line 793
    iput p1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mTransitionY:F

    .line 794
    return-void
.end method

.method public setOneCode(I)V
    .locals 6
    .param p1, "number"    # I

    .line 557
    iget v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mRectangleNum:I

    const/4 v1, 0x5

    const/4 v2, 0x6

    const/4 v3, 0x3

    const/4 v4, 0x4

    if-ne v0, v4, :cond_0

    .line 558
    iget v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mCodeNumber:I

    if-le v0, v3, :cond_1

    .line 559
    return-void

    .line 561
    :cond_0
    iget v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mRectangleNum:I

    if-ne v0, v2, :cond_1

    .line 562
    iget v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mCodeNumber:I

    if-le v0, v1, :cond_1

    .line 563
    return-void

    .line 574
    :cond_1
    iget v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mRectangleNum:I

    const/4 v5, -0x1

    if-ne v0, v4, :cond_2

    .line 575
    iget v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mCodeNumber:I

    if-ne v0, v3, :cond_3

    .line 576
    iput v5, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mCodeNumber:I

    goto :goto_0

    .line 578
    :cond_2
    iget v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mRectangleNum:I

    if-ne v0, v2, :cond_3

    .line 579
    iget v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mCodeNumber:I

    if-ne v0, v1, :cond_3

    .line 580
    iput v5, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mCodeNumber:I

    .line 583
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDeleteAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDeleteAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 584
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDeleteAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 586
    :cond_4
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mAddAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mAddAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 587
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mAddAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 589
    :cond_5
    const/4 v0, 0x2

    iput v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->animationMode:I

    .line 590
    iget v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mCodeNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mCodeNumber:I

    .line 591
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISimpleLock;->createMorphingAnimationOutLinedToFilled()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mAddAnimator:Landroid/animation/ValueAnimator;

    .line 592
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mAddAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 595
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mNumberStrList:Ljava/util/LinkedList;

    if-eqz v0, :cond_7

    .line 596
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 597
    .local v0, "numberStr":Ljava/lang/String;
    iget v1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mCodeNumber:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mRectangleNum:I

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_6

    .line 598
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mNumberStrList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_1

    .line 600
    :cond_6
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mNumberStrList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 604
    .end local v0    # "numberStr":Ljava/lang/String;
    :cond_7
    :goto_1
    return-void
.end method

.method public setOpacity(I)V
    .locals 0
    .param p1, "opacity"    # I

    .line 775
    iput p1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mOpacity:I

    .line 776
    return-void
.end method

.method public setOutlinedRectangleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 1080
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mOutlinedRectangleDrawable:Landroid/graphics/drawable/Drawable;

    .line 1081
    return-void
.end method

.method public setRectanglePadding(I)V
    .locals 0
    .param p1, "padding"    # I

    .line 1076
    iput p1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mRectanglePadding:I

    .line 1077
    return-void
.end method

.method public setRectangleType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 1088
    iput p1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mRectangleType:I

    .line 1089
    return-void
.end method

.method public setScaleX(F)V
    .locals 0
    .param p1, "scaleX"    # F

    .line 757
    iput p1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mScaleX:F

    .line 758
    return-void
.end method

.method public setScaleY(F)V
    .locals 0
    .param p1, "scaleY"    # F

    .line 766
    iput p1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mScaleY:F

    .line 767
    return-void
.end method

.method public setSimpleLockType(I)V
    .locals 2
    .param p1, "flag"    # I

    .line 253
    if-nez p1, :cond_0

    .line 254
    const/4 v0, 0x4

    iput v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mRectangleNum:I

    .line 255
    iget v1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDrawableWidth:I

    mul-int/2addr v1, v0

    iget v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mRectanglePadding:I

    mul-int/lit8 v0, v0, 0x3

    add-int/2addr v1, v0

    iput v1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mRectanglesWidth:I

    goto :goto_0

    .line 256
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 257
    const/4 v0, 0x6

    iput v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mRectangleNum:I

    .line 258
    iget v1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mDrawableWidth:I

    mul-int/2addr v1, v0

    iget v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mRectanglePadding:I

    mul-int/lit8 v0, v0, 0x5

    add-int/2addr v1, v0

    iput v1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mRectanglesWidth:I

    .line 260
    :cond_1
    :goto_0
    iget v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mContentWidth:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mRectanglesWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/coui/appcompat/widget/COUISimpleLock;->mCodeImageStart:I

    .line 261
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISimpleLock;->invalidate()V

    .line 262
    return-void
.end method
