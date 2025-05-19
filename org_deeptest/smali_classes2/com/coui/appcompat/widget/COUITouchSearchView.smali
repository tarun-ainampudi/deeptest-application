.class public Lcom/coui/appcompat/widget/COUITouchSearchView;
.super Landroid/view/View;
.source "COUITouchSearchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/COUITouchSearchView$Key;,
        Lcom/coui/appcompat/widget/COUITouchSearchView$TouchSearchActionListener;
    }
.end annotation


# static fields
.field private static final BG_ALIGN_MIDDLE:I = 0x0

.field private static final BG_ALIGN_RIGHT:I = 0x2

.field public static final CHAR_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private static final COLLATOR_INSTANCE:Ljava/text/Collator;

.field private static final DEBUG:Z = false

.field private static final ENABLED:I = 0x0

.field private static final ENABLED_MASK:I = 0x20

.field private static final INVALID_POINTER:I = -0x1

.field public static final KEY_PADDING_X:I = 0x1b

.field private static final MAX_NAME_NUM:I = 0x7

.field public static final MAX_SECTIONS_NUM:I = 0x1e

.field public static final MAX_SECTIONS_NUM_WITH_DOT:I = 0x17

.field public static final MIN_SECTIONS_NUM:I = 0x5

.field private static final PFLAG_DRAWABLE_STATE_DIRTY:I = 0x400

.field private static final PFLAG_PRESSED:I = 0x4000

.field private static final SEARCH_OFFSET:I = 0x1

.field private static final TAG:Ljava/lang/String; = "COUITouchSearchView"

.field private static final VIEW_STATE_ACCELERATED:I = 0x40

.field private static final VIEW_STATE_ACTIVATED:I = 0x20

.field private static final VIEW_STATE_DRAG_CAN_ACCEPT:I = 0x100

.field private static final VIEW_STATE_DRAG_HOVERED:I = 0x200

.field private static final VIEW_STATE_ENABLED:I = 0x8

.field private static final VIEW_STATE_FOCUSED:I = 0x4

.field private static final VIEW_STATE_HOVERED:I = 0x80

.field private static final VIEW_STATE_IDS:[I

.field private static final VIEW_STATE_PRESSED:I = 0x10

.field private static final VIEW_STATE_SELECTED:I = 0x2

.field private static final VIEW_STATE_WINDOW_FOCUSED:I = 0x1

.field private static final WELL_DRAWABLE_POSITION:I

.field private static sSTYLEABLELENGTH:I

.field private static sVIEWSETS:[[I

.field private static sVIEWSTATESETS:[[[I


# instance fields
.field private mActivePointerId:I

.field private mBackgroundAlignMode:I

.field private mBackgroundLeftMargin:I

.field private mBackgroundRightMargin:I

.field private mBackgroundWidth:I

.field private mCOUITouchFirstPopTopBg:Landroid/graphics/drawable/Drawable;

.field private mCellHeight:I

.field private mCellWidth:I

.field private mCollectHighLight:Z

.field private mContext:Landroid/content/Context;

.field private mDefaultTextColor:Landroid/content/res/ColorStateList;

.field private mDefaultTextSize:I

.field private mDismissTask:Ljava/lang/Runnable;

.field private mDisplayKey:Ljava/lang/CharSequence;

.field private mDot:Ljava/lang/CharSequence;

.field private mDotDrawable:Landroid/graphics/drawable/Drawable;

.field private mDotDrawableHeight:I

.field private mDotDrawableWidth:I

.field private mDotDrawables:[Landroid/graphics/drawable/Drawable;

.field private final mFirstAlphaListener:Lcom/facebook/rebound/SpringListener;

.field private mFirstIsCharacter:Z

.field private mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

.field private mFirstLayout:Z

.field private final mFirstSpring:Lcom/facebook/rebound/Spring;

.field private mFontFace:Landroid/graphics/Typeface;

.field private mFrameChanged:Z

.field private mHandler:Landroid/os/Handler;

.field private mIconState:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation
.end field

.field private mInnerClosing:Z

.field private mKEYS:[Ljava/lang/String;

.field private mKey:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/widget/COUITouchSearchView$Key;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyCollectDrawable:Landroid/graphics/drawable/Drawable;

.field private mKeyDrawableHeight:I

.field private mKeyDrawableNames:[Ljava/lang/String;

.field private mKeyDrawableOffset:I

.field private mKeyDrawableWidth:I

.field private mKeyDrawables:[Landroid/graphics/drawable/Drawable;

.field private mKeyIndices:I

.field private mKeyPaddingX:I

.field private mKeyPaddingY:I

.field private mKeyPressedDrawables:[Landroid/graphics/drawable/Drawable;

.field private mKeyText:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/widget/COUITouchSearchView$Key;",
            ">;"
        }
    .end annotation
.end field

.field private mKeys:[Lcom/coui/appcompat/widget/COUITouchSearchView$Key;

.field private mLastKeyIndices:I

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLocationInScreen:[I

.field private mPopupFirstTextHeight:I

.field private mPopupFirstTextView:Landroid/widget/TextView;

.field private mPopupFirstTextWidth:I

.field private mPopupSecondTextHeight:I

.field private mPopupSecondTextViewSize:I

.field private mPopupSecondTextWidth:I

.field private mPopupWinSecondNameMaxHeight:I

.field private mPopupWindowEndMargin:I

.field private mPopupWindowFirstKeyTextSize:I

.field private mPopupWindowFirstLocalx:I

.field private mPopupWindowFirstLocaly:I

.field private mPopupWindowFirstTextColor:I

.field private mPopupWindowMinTop:I

.field private mPopupWindowSecondLocalx:I

.field private mPopupWindowSecondLocaly:I

.field private mPositionRect:Landroid/graphics/Rect;

.field private mPreviousIndex:I

.field protected mPrivateFlags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollViewHeight:I

.field private mSecondKeyContainer:Landroid/view/ViewGroup;

.field private mSecondKeyPopupWindow:Landroid/widget/PopupWindow;

.field private mSecondKeyScrollView:Landroid/widget/ScrollView;

.field private mSecondPopupMargin:I

.field private mSecondPopupOffset:I

.field private mSections:[Ljava/lang/String;

.field private final mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

.field private mStyle:I

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTouchFlag:Z

.field private mTouchSearchActionListener:Lcom/coui/appcompat/widget/COUITouchSearchView$TouchSearchActionListener;

.field private mUNIONKEYS:[Ljava/lang/String;

.field private mUnionEnable:Z

.field private mUserTextColor:Landroid/content/res/ColorStateList;

.field private mUserTextSize:I

.field private mWhetherDrawDot:Z

.field private mWhetherUnion:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 98
    new-instance v0, Lcom/coui/appcompat/widget/COUITouchSearchView$1;

    invoke-direct {v0}, Lcom/coui/appcompat/widget/COUITouchSearchView$1;-><init>()V

    sput-object v0, Lcom/coui/appcompat/widget/COUITouchSearchView;->CHAR_COMPARATOR:Ljava/util/Comparator;

    .line 164
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/widget/COUITouchSearchView;->COLLATOR_INSTANCE:Ljava/text/Collator;

    .line 166
    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/coui/appcompat/widget/COUITouchSearchView;->VIEW_STATE_IDS:[I

    .line 361
    sget-object v0, Lcoui/support/appcompat/R$styleable;->ViewDrawableStates:[I

    array-length v0, v0

    sput v0, Lcom/coui/appcompat/widget/COUITouchSearchView;->sSTYLEABLELENGTH:I

    .line 362
    sget-object v0, Lcom/coui/appcompat/widget/COUITouchSearchView;->VIEW_STATE_IDS:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    .line 363
    .local v0, "NUM_BITS":I
    sget v1, Lcom/coui/appcompat/widget/COUITouchSearchView;->sSTYLEABLELENGTH:I

    if-ne v0, v1, :cond_6

    .line 366
    sget-object v1, Lcom/coui/appcompat/widget/COUITouchSearchView;->VIEW_STATE_IDS:[I

    array-length v1, v1

    new-array v1, v1, [I

    .line 367
    .local v1, "orderedIds":[I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    sget v4, Lcom/coui/appcompat/widget/COUITouchSearchView;->sSTYLEABLELENGTH:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_2

    .line 368
    sget-object v4, Lcoui/support/appcompat/R$styleable;->ViewDrawableStates:[I

    aget v4, v4, v3

    .line 369
    .local v4, "viewState":I
    move v6, v2

    .local v6, "j":I
    :goto_1
    sget-object v7, Lcom/coui/appcompat/widget/COUITouchSearchView;->VIEW_STATE_IDS:[I

    array-length v7, v7

    if-ge v6, v7, :cond_1

    .line 370
    sget-object v7, Lcom/coui/appcompat/widget/COUITouchSearchView;->VIEW_STATE_IDS:[I

    aget v7, v7, v6

    if-ne v7, v4, :cond_0

    .line 371
    mul-int/lit8 v7, v3, 0x2

    aput v4, v1, v7

    .line 372
    mul-int/lit8 v7, v3, 0x2

    add-int/2addr v7, v5

    sget-object v8, Lcom/coui/appcompat/widget/COUITouchSearchView;->VIEW_STATE_IDS:[I

    add-int/lit8 v9, v6, 0x1

    aget v8, v8, v9

    aput v8, v1, v7

    .line 369
    :cond_0
    add-int/lit8 v6, v6, 0x2

    goto :goto_1

    .line 367
    .end local v4    # "viewState":I
    .end local v6    # "j":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 376
    .end local v3    # "i":I
    :cond_2
    shl-int v3, v5, v0

    new-array v3, v3, [[[I

    sput-object v3, Lcom/coui/appcompat/widget/COUITouchSearchView;->sVIEWSTATESETS:[[[I

    .line 377
    shl-int v3, v5, v0

    new-array v3, v3, [[I

    sput-object v3, Lcom/coui/appcompat/widget/COUITouchSearchView;->sVIEWSETS:[[I

    .line 378
    move v3, v2

    .restart local v3    # "i":I
    :goto_2
    sget-object v4, Lcom/coui/appcompat/widget/COUITouchSearchView;->sVIEWSETS:[[I

    array-length v4, v4

    if-ge v3, v4, :cond_5

    .line 379
    invoke-static {v3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v4

    .line 380
    .local v4, "numBits":I
    sget-object v5, Lcom/coui/appcompat/widget/COUITouchSearchView;->sVIEWSETS:[[I

    new-array v6, v4, [I

    aput-object v6, v5, v3

    .line 381
    const/4 v5, 0x0

    .line 382
    .local v5, "pos":I
    move v6, v5

    move v5, v2

    .local v5, "j":I
    .local v6, "pos":I
    :goto_3
    array-length v7, v1

    if-ge v5, v7, :cond_4

    .line 383
    add-int/lit8 v7, v5, 0x1

    aget v7, v1, v7

    and-int/2addr v7, v3

    if-eqz v7, :cond_3

    .line 384
    sget-object v7, Lcom/coui/appcompat/widget/COUITouchSearchView;->sVIEWSETS:[[I

    aget-object v7, v7, v3

    add-int/lit8 v8, v6, 0x1

    .local v8, "pos":I
    aget v9, v1, v5

    aput v9, v7, v6

    .line 382
    move v6, v8

    .end local v8    # "pos":I
    :cond_3
    add-int/lit8 v5, v5, 0x2

    goto :goto_3

    .line 378
    .end local v4    # "numBits":I
    .end local v5    # "j":I
    .end local v6    # "pos":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 388
    .end local v0    # "NUM_BITS":I
    .end local v1    # "orderedIds":[I
    .end local v3    # "i":I
    :cond_5
    return-void

    .line 364
    .restart local v0    # "NUM_BITS":I
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "VIEW_STATE_IDS array length does not match ViewDrawableStates style array"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :array_0
    .array-data 4
        0x101009d
        0x1
        0x10100a1
        0x2
        0x101009c
        0x4
        0x101009e
        0x8
        0x10100a7
        0x10
        0x10102fe
        0x20
        0x101031b
        0x40
        0x1010367
        0x80
        0x1010368
        0x100
        0x1010369
        0x200
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 394
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUITouchSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 395
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 401
    sget v0, Lcoui/support/appcompat/R$attr;->couiTouchSearchViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/COUITouchSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 402
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 416
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPrivateFlags:Ljava/util/List;

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mIconState:Ljava/util/List;

    .line 202
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyDrawableOffset:I

    .line 221
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mWhetherDrawDot:Z

    .line 247
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mFirstLayout:Z

    .line 251
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mTouchFlag:Z

    .line 255
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mFrameChanged:Z

    .line 261
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mWhetherUnion:Z

    .line 262
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mUnionEnable:Z

    .line 264
    const-string v2, ""

    iput-object v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mDisplayKey:Ljava/lang/CharSequence;

    .line 301
    const/4 v2, -0x1

    iput v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mActivePointerId:I

    .line 303
    iput v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mBackgroundWidth:I

    .line 309
    iput v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyIndices:I

    .line 310
    iput v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mLastKeyIndices:I

    .line 312
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyCollectDrawable:Landroid/graphics/drawable/Drawable;

    .line 313
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    .line 314
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyText:Ljava/util/ArrayList;

    .line 315
    iput v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPreviousIndex:I

    .line 316
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mFirstIsCharacter:Z

    .line 317
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mCollectHighLight:Z

    .line 318
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mInnerClosing:Z

    .line 320
    iput-object v3, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    .line 321
    iput-object v3, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mUserTextColor:Landroid/content/res/ColorStateList;

    .line 322
    iput-object v3, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 324
    iput v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mDefaultTextSize:I

    .line 325
    iput v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mUserTextSize:I

    .line 326
    iput-object v3, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mFontFace:Landroid/graphics/Typeface;

    .line 332
    invoke-static {}, Lcom/facebook/rebound/SpringSystem;->create()Lcom/facebook/rebound/SpringSystem;

    move-result-object v3

    iput-object v3, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

    .line 333
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

    invoke-virtual {v3}, Lcom/facebook/rebound/BaseSpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object v3

    iput-object v3, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mFirstSpring:Lcom/facebook/rebound/Spring;

    .line 335
    new-instance v3, Lcom/coui/appcompat/widget/COUITouchSearchView$2;

    invoke-direct {v3, p0}, Lcom/coui/appcompat/widget/COUITouchSearchView$2;-><init>(Lcom/coui/appcompat/widget/COUITouchSearchView;)V

    iput-object v3, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mFirstAlphaListener:Lcom/facebook/rebound/SpringListener;

    .line 345
    new-instance v3, Lcom/coui/appcompat/widget/COUITouchSearchView$3;

    invoke-direct {v3, p0}, Lcom/coui/appcompat/widget/COUITouchSearchView$3;-><init>(Lcom/coui/appcompat/widget/COUITouchSearchView;)V

    iput-object v3, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mDismissTask:Ljava/lang/Runnable;

    .line 354
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mHandler:Landroid/os/Handler;

    .line 355
    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mLocationInScreen:[I

    .line 417
    invoke-static {p0, v0}, Lcom/coui/appcompat/util/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    .line 418
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mContext:Landroid/content/Context;

    .line 419
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 420
    .local v3, "resources":Landroid/content/res/Resources;
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v4

    if-eqz v4, :cond_0

    .line 421
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mStyle:I

    goto :goto_0

    .line 423
    :cond_0
    iput p3, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mStyle:I

    .line 426
    :goto_0
    sget-object v4, Lcoui/support/appcompat/R$styleable;->COUITouchSearchView:[I

    invoke-virtual {p1, p2, v4, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 427
    .local v4, "a":Landroid/content/res/TypedArray;
    sget v5, Lcoui/support/appcompat/R$styleable;->COUITouchSearchView_couiUnionEnable:I

    invoke-virtual {v4, v5, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mUnionEnable:Z

    .line 429
    sget v1, Lcoui/support/appcompat/R$styleable;->COUITouchSearchView_couiBackgroundAlignMode:I

    invoke-virtual {v4, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mBackgroundAlignMode:I

    .line 430
    sget v1, Lcoui/support/appcompat/R$styleable;->COUITouchSearchView_couiMarginLeft:I

    invoke-virtual {v4, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mBackgroundLeftMargin:I

    .line 431
    sget v1, Lcoui/support/appcompat/R$styleable;->COUITouchSearchView_couiMarginRigh:I

    invoke-virtual {v4, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mBackgroundRightMargin:I

    .line 433
    sget v1, Lcoui/support/appcompat/R$styleable;->COUITouchSearchView_couiPopupWinFirstHeight:I

    invoke-virtual {v4, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupFirstTextHeight:I

    .line 434
    iget v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupFirstTextHeight:I

    if-ne v2, v1, :cond_1

    .line 435
    sget v1, Lcoui/support/appcompat/R$dimen;->coui_touchsearch_popup_first_default_height:I

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupFirstTextHeight:I

    .line 437
    :cond_1
    sget v1, Lcoui/support/appcompat/R$styleable;->COUITouchSearchView_couiPopupWinFirstWidth:I

    invoke-virtual {v4, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupFirstTextWidth:I

    .line 438
    iget v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupFirstTextWidth:I

    if-ne v2, v1, :cond_2

    .line 439
    sget v1, Lcoui/support/appcompat/R$dimen;->coui_touchsearch_popup_first_default_width:I

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupFirstTextWidth:I

    .line 442
    :cond_2
    sget v1, Lcoui/support/appcompat/R$styleable;->COUITouchSearchView_couiPopupWinSecondHeight:I

    invoke-virtual {v4, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupSecondTextHeight:I

    .line 443
    iget v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupSecondTextHeight:I

    if-ne v2, v1, :cond_3

    .line 444
    iget v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupFirstTextHeight:I

    iput v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupSecondTextHeight:I

    .line 446
    :cond_3
    sget v1, Lcoui/support/appcompat/R$styleable;->COUITouchSearchView_couiPopupWinSecondWidth:I

    invoke-virtual {v4, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupSecondTextWidth:I

    .line 447
    iget v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupSecondTextWidth:I

    if-ne v2, v1, :cond_4

    .line 448
    iget v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupFirstTextWidth:I

    iput v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupSecondTextWidth:I

    .line 451
    :cond_4
    sget v1, Lcoui/support/appcompat/R$styleable;->COUITouchSearchView_couiPopupWinSecondOffset:I

    invoke-virtual {v4, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mSecondPopupOffset:I

    .line 452
    iget v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mSecondPopupOffset:I

    if-ne v2, v1, :cond_5

    .line 453
    sget v1, Lcoui/support/appcompat/R$dimen;->coui_touchsearch_popupwin_default_offset:I

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mSecondPopupOffset:I

    .line 456
    :cond_5
    sget v1, Lcoui/support/appcompat/R$styleable;->COUITouchSearchView_couiPopupWinSecondMargin:I

    invoke-virtual {v4, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mSecondPopupMargin:I

    .line 457
    iget v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mSecondPopupMargin:I

    if-ne v2, v1, :cond_6

    .line 458
    sget v1, Lcoui/support/appcompat/R$dimen;->coui_touchsearch_popupwin_second_marginEnd:I

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mSecondPopupMargin:I

    .line 461
    :cond_6
    sget v1, Lcoui/support/appcompat/R$styleable;->COUITouchSearchView_couiPopupWinMinTop:I

    invoke-virtual {v4, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupWindowMinTop:I

    .line 462
    iget v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupWindowMinTop:I

    if-ne v2, v1, :cond_7

    .line 463
    sget v1, Lcoui/support/appcompat/R$integer;->coui_touchsearch_popupwin_default_top_mincoordinate:I

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupWindowMinTop:I

    .line 466
    :cond_7
    sget v1, Lcoui/support/appcompat/R$styleable;->COUITouchSearchView_couiPopupWinSecondTextSize:I

    invoke-virtual {v4, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupSecondTextViewSize:I

    .line 467
    iget v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupSecondTextViewSize:I

    if-ne v2, v1, :cond_8

    .line 468
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcoui/support/appcompat/R$dimen;->coui_touchsearch_popupwin_second_textsize:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupSecondTextViewSize:I

    .line 470
    :cond_8
    sget v1, Lcoui/support/appcompat/R$dimen;->coui_touchsearch_popupname_max_height:I

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupWinSecondNameMaxHeight:I

    .line 471
    sget v1, Lcoui/support/appcompat/R$styleable;->COUITouchSearchView_couiPopupWinFirstTextSize:I

    invoke-virtual {v4, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupWindowFirstKeyTextSize:I

    .line 472
    iget v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupWindowFirstKeyTextSize:I

    if-ne v2, v1, :cond_9

    .line 473
    sget v1, Lcoui/support/appcompat/R$dimen;->coui_touchsearch_popupwin_first_textsize:I

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupWindowFirstKeyTextSize:I

    .line 476
    :cond_9
    sget v1, Lcoui/support/appcompat/R$color;->coui_touchsearch_popup_text_color:I

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupWindowFirstTextColor:I

    .line 477
    sget v1, Lcoui/support/appcompat/R$styleable;->COUITouchSearchView_couiPopupWinFirstTextColor:I

    iget v5, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupWindowFirstTextColor:I

    invoke-virtual {v4, v1, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupWindowFirstTextColor:I

    .line 478
    iget v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mBackgroundRightMargin:I

    sget v5, Lcoui/support/appcompat/R$dimen;->coui_touchsearch_right_margin:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    add-int/2addr v1, v5

    iput v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mBackgroundRightMargin:I

    .line 480
    sget v1, Lcoui/support/appcompat/R$dimen;->coui_touchsearch_popupwin_right_margin:I

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupWindowEndMargin:I

    .line 481
    sget v1, Lcoui/support/appcompat/R$dimen;->coui_touchsearch_char_offset:I

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyDrawableOffset:I

    .line 484
    sget v1, Lcoui/support/appcompat/R$string;->coui_touchsearch_dot:I

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mDot:Ljava/lang/CharSequence;

    .line 485
    sget v1, Lcoui/support/appcompat/R$drawable;->coui_touchsearch_point:I

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mDotDrawable:Landroid/graphics/drawable/Drawable;

    .line 486
    sget v1, Lcoui/support/appcompat/R$styleable;->COUITouchSearchView_couiKeyCollect:I

    invoke-virtual {v4, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyCollectDrawable:Landroid/graphics/drawable/Drawable;

    .line 487
    sget v1, Lcoui/support/appcompat/R$styleable;->COUITouchSearchView_couiKeyTextColor:I

    invoke-virtual {v4, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    .line 488
    sget v1, Lcoui/support/appcompat/R$styleable;->COUITouchSearchView_couiFirstIsCharacter:I

    invoke-virtual {v4, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mFirstIsCharacter:Z

    .line 489
    sget v0, Lcoui/support/appcompat/R$drawable;->coui_touchsearch_first_popup_bg:I

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mCOUITouchFirstPopTopBg:Landroid/graphics/drawable/Drawable;

    .line 491
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyCollectDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 492
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyCollectDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyDrawableWidth:I

    .line 493
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyCollectDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyDrawableHeight:I

    .line 495
    :cond_a
    sget v0, Lcoui/support/appcompat/R$styleable;->COUITouchSearchView_couiKeyTextSize:I

    invoke-virtual {v4, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mDefaultTextSize:I

    .line 496
    iget v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mDefaultTextSize:I

    if-ne v2, v0, :cond_b

    .line 497
    sget v0, Lcoui/support/appcompat/R$dimen;->coui_touchsearch_key_textsize:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mDefaultTextSize:I

    .line 499
    :cond_b
    iget v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mBackgroundWidth:I

    if-ne v2, v0, :cond_c

    .line 500
    sget v0, Lcoui/support/appcompat/R$dimen;->coui_touchsearch_background_width:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mBackgroundWidth:I

    .line 504
    :cond_c
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mFirstIsCharacter:Z

    if-nez v0, :cond_d

    .line 505
    sget v0, Lcoui/support/appcompat/R$array;->normal_touchsearch_keys:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKEYS:[Ljava/lang/String;

    goto :goto_1

    .line 507
    :cond_d
    sget v0, Lcoui/support/appcompat/R$array;->special_touchsearch_keys:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKEYS:[Ljava/lang/String;

    .line 510
    :goto_1
    sget v0, Lcoui/support/appcompat/R$array;->union_touchsearch_keys:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mUNIONKEYS:[Ljava/lang/String;

    .line 512
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUITouchSearchView;->initPopupWindow(Landroid/content/Context;)V

    .line 513
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 514
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mWhetherUnion:Z

    if-nez v0, :cond_e

    .line 515
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->initIconState()V

    goto :goto_2

    .line 517
    :cond_e
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->initUnionState()V

    .line 519
    :goto_2
    return-void
.end method

.method static synthetic access$000()Ljava/text/Collator;
    .locals 1

    .line 75
    sget-object v0, Lcom/coui/appcompat/widget/COUITouchSearchView;->COLLATOR_INSTANCE:Ljava/text/Collator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/widget/COUITouchSearchView;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUITouchSearchView;

    .line 75
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/widget/COUITouchSearchView;)Lcom/facebook/rebound/Spring;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUITouchSearchView;

    .line 75
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mFirstSpring:Lcom/facebook/rebound/Spring;

    return-object v0
.end method

.method static synthetic access$400(Lcom/coui/appcompat/widget/COUITouchSearchView;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUITouchSearchView;

    .line 75
    iget v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mUserTextSize:I

    return v0
.end method

.method static synthetic access$500(Lcom/coui/appcompat/widget/COUITouchSearchView;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUITouchSearchView;

    .line 75
    iget v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mDefaultTextSize:I

    return v0
.end method

.method static synthetic access$600(Lcom/coui/appcompat/widget/COUITouchSearchView;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUITouchSearchView;

    .line 75
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic access$602(Lcom/coui/appcompat/widget/COUITouchSearchView;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUITouchSearchView;
    .param p1, "x1"    # Landroid/content/res/ColorStateList;

    .line 75
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    return-object p1
.end method

.method static synthetic access$700(Lcom/coui/appcompat/widget/COUITouchSearchView;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUITouchSearchView;

    .line 75
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mUserTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/coui/appcompat/widget/COUITouchSearchView;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUITouchSearchView;

    .line 75
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/coui/appcompat/widget/COUITouchSearchView;)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUITouchSearchView;

    .line 75
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mFontFace:Landroid/graphics/Typeface;

    return-object v0
.end method

.method private displayChange(Ljava/lang/CharSequence;)Z
    .locals 2
    .param p1, "willDisplay"    # Ljava/lang/CharSequence;

    .line 1267
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mDisplayKey:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mDot:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private drawKeys(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1382
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->isSectionsValidate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1383
    return-void

    .line 1388
    :cond_0
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mFirstIsCharacter:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1389
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyText:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1390
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->getLeft()I

    move-result v0

    .line 1391
    .local v0, "left":I
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->getTop()I

    move-result v1

    .line 1392
    .local v1, "top":I
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyCollectDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyDrawableWidth:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyDrawableHeight:I

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1393
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyCollectDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1396
    .end local v0    # "left":I
    .end local v1    # "top":I
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKEYS:[Ljava/lang/String;

    array-length v0, v0

    .line 1401
    .local v0, "keysCount":I
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->getCharacterStartIndex()I

    move-result v1

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 1403
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyText:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;

    invoke-static {v2}, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->access$300(Lcom/coui/appcompat/widget/COUITouchSearchView$Key;)Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    .line 1404
    .local v2, "mFmi":Landroid/graphics/Paint$FontMetricsInt;
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyText:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;

    invoke-static {v3}, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->access$300(Lcom/coui/appcompat/widget/COUITouchSearchView$Key;)Landroid/text/TextPaint;

    move-result-object v3

    .line 1405
    .local v3, "paint":Landroid/text/TextPaint;
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKEYS:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 1406
    .local v4, "character":Ljava/lang/String;
    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 1407
    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    .line 1408
    .local v5, "textWidth":I
    iget-object v6, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;

    invoke-virtual {v6}, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->getLeft()I

    move-result v6

    iget v7, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyDrawableWidth:I

    sub-int/2addr v7, v5

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    .line 1409
    .local v6, "textX":I
    iget-object v7, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;

    invoke-virtual {v7}, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->getTop()I

    move-result v7

    iget v8, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyDrawableHeight:I

    iget v9, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v10, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v9, v10

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    iget v9, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v8, v9

    add-int/2addr v7, v8

    .line 1410
    .local v7, "textY":I
    int-to-float v8, v6

    int-to-float v9, v7

    invoke-virtual {p1, v4, v8, v9, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1401
    .end local v2    # "mFmi":Landroid/graphics/Paint$FontMetricsInt;
    .end local v3    # "paint":Landroid/text/TextPaint;
    .end local v4    # "character":Ljava/lang/String;
    .end local v5    # "textWidth":I
    .end local v6    # "textX":I
    .end local v7    # "textY":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1413
    .end local v1    # "i":I
    :cond_3
    add-int/lit8 v1, v0, -0x1

    .line 1414
    .local v1, "j":I
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyText:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1415
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyText:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;

    invoke-static {v2}, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->access$300(Lcom/coui/appcompat/widget/COUITouchSearchView$Key;)Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    .line 1416
    .restart local v2    # "mFmi":Landroid/graphics/Paint$FontMetricsInt;
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyText:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;

    invoke-static {v3}, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->access$300(Lcom/coui/appcompat/widget/COUITouchSearchView$Key;)Landroid/text/TextPaint;

    move-result-object v3

    .line 1417
    .restart local v3    # "paint":Landroid/text/TextPaint;
    const-string v4, "#"

    .line 1418
    .restart local v4    # "character":Ljava/lang/String;
    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    .line 1419
    .restart local v5    # "textWidth":I
    iget-object v6, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;

    invoke-virtual {v6}, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->getLeft()I

    move-result v6

    iget v7, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyDrawableWidth:I

    sub-int/2addr v7, v5

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    .line 1420
    .restart local v6    # "textX":I
    iget-object v7, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;

    invoke-virtual {v7}, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->getTop()I

    move-result v7

    iget v8, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyDrawableHeight:I

    iget v9, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v10, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v9, v10

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    iget v9, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v8, v9

    add-int/2addr v7, v8

    .line 1421
    .restart local v7    # "textY":I
    int-to-float v8, v6

    int-to-float v9, v7

    invoke-virtual {p1, v4, v8, v9, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1424
    .end local v2    # "mFmi":Landroid/graphics/Paint$FontMetricsInt;
    .end local v3    # "paint":Landroid/text/TextPaint;
    .end local v4    # "character":Ljava/lang/String;
    .end local v5    # "textWidth":I
    .end local v6    # "textX":I
    .end local v7    # "textY":I
    :cond_4
    return-void
.end method

.method private drawUnionKeys(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1334
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mFirstIsCharacter:Z

    if-nez v0, :cond_0

    .line 1335
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyText:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1336
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->getLeft()I

    move-result v0

    .line 1337
    .local v0, "left":I
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->getTop()I

    move-result v1

    .line 1338
    .local v1, "top":I
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyCollectDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyDrawableWidth:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyDrawableHeight:I

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1339
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyCollectDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1342
    .end local v0    # "left":I
    .end local v1    # "top":I
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mUNIONKEYS:[Ljava/lang/String;

    array-length v0, v0

    .line 1344
    .local v0, "keysCount":I
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->getCharacterStartIndex()I

    move-result v1

    .local v1, "i":I
    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_2

    .line 1345
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyText:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;

    invoke-static {v2}, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->access$300(Lcom/coui/appcompat/widget/COUITouchSearchView$Key;)Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    .line 1346
    .local v2, "mFmi":Landroid/graphics/Paint$FontMetricsInt;
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyText:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;

    invoke-static {v3}, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->access$300(Lcom/coui/appcompat/widget/COUITouchSearchView$Key;)Landroid/text/TextPaint;

    move-result-object v3

    .line 1347
    .local v3, "paint":Landroid/text/TextPaint;
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKEYS:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 1348
    .local v4, "character":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 1349
    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    .line 1350
    .local v5, "textWidth":I
    iget-object v6, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;

    invoke-virtual {v6}, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->getLeft()I

    move-result v6

    iget v7, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyDrawableWidth:I

    sub-int/2addr v7, v5

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    .line 1351
    .local v6, "textX":I
    iget-object v7, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;

    invoke-virtual {v7}, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->getTop()I

    move-result v7

    iget v8, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyDrawableHeight:I

    iget v9, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v10, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v9, v10

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    iget v9, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v8, v9

    add-int/2addr v7, v8

    .line 1352
    .local v7, "textY":I
    int-to-float v8, v6

    int-to-float v9, v7

    invoke-virtual {p1, v4, v8, v9, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1344
    .end local v2    # "mFmi":Landroid/graphics/Paint$FontMetricsInt;
    .end local v3    # "paint":Landroid/text/TextPaint;
    .end local v4    # "character":Ljava/lang/String;
    .end local v5    # "textWidth":I
    .end local v6    # "textX":I
    .end local v7    # "textY":I
    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 1356
    .end local v1    # "i":I
    :cond_2
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->getCharacterStartIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .restart local v1    # "i":I
    :goto_1
    add-int/lit8 v2, v0, -0x2

    if-ge v1, v2, :cond_4

    .line 1357
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyText:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1358
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->getLeft()I

    move-result v2

    .line 1359
    .local v2, "left":I
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;

    invoke-virtual {v3}, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->getTop()I

    move-result v3

    .line 1360
    .local v3, "top":I
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mDotDrawable:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyDrawableWidth:I

    add-int/2addr v5, v2

    iget v6, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyDrawableHeight:I

    add-int/2addr v6, v3

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1361
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mDotDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1356
    .end local v2    # "left":I
    .end local v3    # "top":I
    :cond_3
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 1365
    .end local v1    # "i":I
    :cond_4
    add-int/lit8 v1, v0, -0x1

    .line 1366
    .local v1, "j":I
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyText:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1367
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyText:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;

    invoke-static {v2}, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->access$300(Lcom/coui/appcompat/widget/COUITouchSearchView$Key;)Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    .line 1368
    .local v2, "mFmi":Landroid/graphics/Paint$FontMetricsInt;
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyText:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;

    invoke-static {v3}, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->access$300(Lcom/coui/appcompat/widget/COUITouchSearchView$Key;)Landroid/text/TextPaint;

    move-result-object v3

    .line 1369
    .local v3, "paint":Landroid/text/TextPaint;
    const-string v4, "#"

    .line 1370
    .restart local v4    # "character":Ljava/lang/String;
    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    .line 1371
    .restart local v5    # "textWidth":I
    iget-object v6, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;

    invoke-virtual {v6}, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->getLeft()I

    move-result v6

    iget v7, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyDrawableWidth:I

    sub-int/2addr v7, v5

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    .line 1372
    .restart local v6    # "textX":I
    iget-object v7, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;

    invoke-virtual {v7}, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->getTop()I

    move-result v7

    iget v8, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyDrawableHeight:I

    iget v9, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v10, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v9, v10

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    iget v9, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v8, v9

    add-int/2addr v7, v8

    .line 1373
    .restart local v7    # "textY":I
    int-to-float v8, v6

    int-to-float v9, v7

    invoke-virtual {p1, v4, v8, v9, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1376
    .end local v2    # "mFmi":Landroid/graphics/Paint$FontMetricsInt;
    .end local v3    # "paint":Landroid/text/TextPaint;
    .end local v4    # "character":Ljava/lang/String;
    .end local v5    # "textWidth":I
    .end local v6    # "textX":I
    .end local v7    # "textY":I
    :cond_5
    return-void
.end method

.method private findCell(IIIILjava/util/ArrayList;)I
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "start"    # I
    .param p4, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/widget/COUITouchSearchView$Key;",
            ">;)I"
        }
    .end annotation

    .line 1063
    .local p5, "mkeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/coui/appcompat/widget/COUITouchSearchView$Key;>;"
    if-le p3, p4, :cond_0

    .line 1064
    const/4 v0, -0x1

    return v0

    .line 1066
    :cond_0
    add-int v0, p3, p4

    div-int/lit8 v0, v0, 0x2

    .line 1072
    .local v0, "middle":I
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->getTop()I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyPaddingY:I

    sub-int/2addr v1, v2

    .line 1073
    .local v1, "top":I
    iget v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mCellHeight:I

    add-int/2addr v2, v1

    .line 1075
    .local v2, "bottom":I
    if-lt p2, v1, :cond_1

    if-ge p2, v2, :cond_1

    .line 1076
    return v0

    .line 1077
    :cond_1
    if-ge p2, v1, :cond_2

    .line 1078
    add-int/lit8 p4, v0, -0x1

    .line 1079
    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/coui/appcompat/widget/COUITouchSearchView;->findCell(IIIILjava/util/ArrayList;)I

    move-result v3

    return v3

    .line 1081
    :cond_2
    add-int/lit8 p3, v0, 0x1

    .line 1082
    move-object v4, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move-object v9, p5

    invoke-direct/range {v4 .. v9}, Lcom/coui/appcompat/widget/COUITouchSearchView;->findCell(IIIILjava/util/ArrayList;)I

    move-result v3

    return v3
.end method

.method static getCharPositionInArray([Ljava/lang/String;IILjava/lang/String;)I
    .locals 4
    .param p0, "charArray"    # [Ljava/lang/String;
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "whichChar"    # Ljava/lang/String;

    .line 794
    const/4 v0, -0x1

    if-eqz p0, :cond_7

    if-ltz p1, :cond_7

    if-ltz p2, :cond_7

    if-eqz p3, :cond_7

    const-string v1, ""

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 798
    :cond_0
    const-string v1, "#"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 799
    const/4 v0, 0x0

    return v0

    .line 801
    :cond_1
    if-le p1, p2, :cond_2

    .line 802
    const-string v1, "COUITouchSearchView"

    const-string v2, "getCharPositionInArray --- not find , return -1"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    return v0

    .line 806
    :cond_2
    add-int v1, p1, p2

    div-int/lit8 v1, v1, 0x2

    .line 807
    .local v1, "middle":I
    if-le v1, p2, :cond_3

    .line 808
    return v0

    .line 811
    :cond_3
    array-length v2, p0

    if-ne v2, v1, :cond_4

    .line 812
    return v0

    .line 815
    :cond_4
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p3, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 816
    .local v0, "lowerCharSequence":Ljava/lang/CharSequence;
    sget-object v2, Lcom/coui/appcompat/widget/COUITouchSearchView;->COLLATOR_INSTANCE:Ljava/text/Collator;

    aget-object v3, p0, v1

    invoke-virtual {v2, v0, v3}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_5

    .line 817
    return v1

    .line 818
    :cond_5
    sget-object v2, Lcom/coui/appcompat/widget/COUITouchSearchView;->COLLATOR_INSTANCE:Ljava/text/Collator;

    aget-object v3, p0, v1

    invoke-virtual {v2, v0, v3}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_6

    .line 819
    add-int/lit8 p1, v1, 0x1

    .line 820
    invoke-static {p0, p1, p2, p3}, Lcom/coui/appcompat/widget/COUITouchSearchView;->getCharPositionInArray([Ljava/lang/String;IILjava/lang/String;)I

    move-result v2

    return v2

    .line 822
    :cond_6
    add-int/lit8 p2, v1, -0x1

    .line 823
    invoke-static {p0, p1, p2, p3}, Lcom/coui/appcompat/widget/COUITouchSearchView;->getCharPositionInArray([Ljava/lang/String;IILjava/lang/String;)I

    move-result v2

    return v2

    .line 795
    .end local v0    # "lowerCharSequence":Ljava/lang/CharSequence;
    .end local v1    # "middle":I
    :cond_7
    :goto_0
    const-string v1, "COUITouchSearchView"

    const-string v2, "getCharPositionInArray --- error,  return -1"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    return v0
.end method

.method static getCharPositionInArray([Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p0, "charArray"    # [Ljava/lang/String;
    .param p1, "whichChar"    # Ljava/lang/String;

    .line 781
    const/4 v0, -0x1

    if-eqz p1, :cond_3

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    if-nez p0, :cond_0

    goto :goto_1

    .line 784
    :cond_0
    array-length v1, p0

    .line 785
    .local v1, "charCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 786
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    aget-object v4, p0, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 787
    return v2

    .line 785
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 790
    .end local v2    # "i":I
    :cond_2
    return v0

    .line 782
    .end local v1    # "charCount":I
    :cond_3
    :goto_1
    return v0
.end method

.method private getCharacterStartIndex()I
    .locals 1

    .line 755
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mFirstIsCharacter:Z

    if-nez v0, :cond_0

    .line 756
    const/4 v0, 0x1

    return v0

    .line 758
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getKeyIndices(IILjava/util/ArrayList;)I
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/widget/COUITouchSearchView$Key;",
            ">;)I"
        }
    .end annotation

    .line 1094
    .local p3, "mkeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/coui/appcompat/widget/COUITouchSearchView$Key;>;"
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKEYS:[Ljava/lang/String;

    array-length v0, v0

    .line 1098
    .local v0, "keyCount":I
    add-int/lit8 v5, v0, -0x1

    const/4 v4, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/coui/appcompat/widget/COUITouchSearchView;->findCell(IIIILjava/util/ArrayList;)I

    move-result v1

    .line 1102
    .local v1, "primaryIndex":I
    const/4 v2, -0x1

    if-ne v2, v1, :cond_2

    .line 1103
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;

    invoke-virtual {v3}, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->getTop()I

    move-result v3

    iget v4, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyPaddingY:I

    sub-int/2addr v3, v4

    if-ge p2, v3, :cond_0

    .line 1104
    const/4 v1, 0x0

    goto :goto_0

    .line 1105
    :cond_0
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;

    invoke-virtual {v3}, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->getTop()I

    move-result v3

    iget v4, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyPaddingY:I

    sub-int/2addr v3, v4

    if-le p2, v3, :cond_1

    .line 1106
    add-int/lit8 v1, v0, -0x1

    goto :goto_0

    .line 1107
    :cond_1
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->getTop()I

    move-result v2

    iget v3, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyPaddingY:I

    sub-int/2addr v2, v3

    if-le p2, v2, :cond_2

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->getTop()I

    move-result v2

    iget v3, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyPaddingY:I

    sub-int/2addr v2, v3

    if-ge p2, v2, :cond_2

    .line 1108
    div-int/lit8 v1, v0, 0x2

    .line 1112
    :cond_2
    :goto_0
    return v1
.end method

.method private initIconState()V
    .locals 7

    .line 628
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKEYS:[Ljava/lang/String;

    array-length v0, v0

    .line 629
    .local v0, "length":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 630
    return-void

    .line 632
    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 633
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 634
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    new-instance v4, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;

    invoke-direct {v4, p0}, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;-><init>(Lcom/coui/appcompat/widget/COUITouchSearchView;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 636
    .end local v2    # "i":I
    :cond_1
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mFontFace:Landroid/graphics/Typeface;

    .line 637
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyText:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 638
    iget-boolean v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mFirstIsCharacter:Z

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 639
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyCollectDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 640
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyText:Ljava/util/ArrayList;

    new-instance v4, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;

    iget-object v5, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyCollectDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v4, p0, v5, v3}, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;-><init>(Lcom/coui/appcompat/widget/COUITouchSearchView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    :cond_2
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->getCharacterStartIndex()I

    move-result v2

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 649
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyText:Ljava/util/ArrayList;

    new-instance v5, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;

    iget-object v6, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKEYS:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-direct {v5, p0, v3, v6}, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;-><init>(Lcom/coui/appcompat/widget/COUITouchSearchView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 651
    .end local v2    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyText:Ljava/util/ArrayList;

    new-instance v4, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;

    const-string v5, "#"

    invoke-direct {v4, p0, v3, v5}, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;-><init>(Lcom/coui/appcompat/widget/COUITouchSearchView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 652
    move v2, v1

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v0, :cond_4

    .line 653
    sget-object v3, Lcom/coui/appcompat/widget/COUITouchSearchView;->sVIEWSTATESETS:[[[I

    sget-object v4, Lcom/coui/appcompat/widget/COUITouchSearchView;->sVIEWSETS:[[I

    array-length v4, v4

    new-array v4, v4, [[I

    aput-object v4, v3, v2

    .line 654
    sget-object v3, Lcom/coui/appcompat/widget/COUITouchSearchView;->sVIEWSETS:[[I

    sget-object v4, Lcom/coui/appcompat/widget/COUITouchSearchView;->sVIEWSTATESETS:[[[I

    aget-object v4, v4, v2

    sget-object v5, Lcom/coui/appcompat/widget/COUITouchSearchView;->sVIEWSETS:[[I

    array-length v5, v5

    invoke-static {v3, v1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 652
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 656
    .end local v2    # "i":I
    :cond_4
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mIconState:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 657
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPrivateFlags:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 658
    move v2, v1

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v0, :cond_6

    .line 659
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mIconState:Ljava/util/List;

    sget v4, Lcom/coui/appcompat/widget/COUITouchSearchView;->sSTYLEABLELENGTH:I

    new-array v4, v4, [I

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 660
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPrivateFlags:Ljava/util/List;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 661
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyText:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;

    invoke-virtual {v3}, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/coui/appcompat/widget/COUITouchSearchView;->refreshIconState(ILandroid/graphics/drawable/Drawable;)V

    .line 662
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_5

    .line 663
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/COUITouchSearchView;->getIconState(I)[I

    move-result-object v4

    iget-object v5, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    .line 664
    .local v3, "color":I
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyText:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;

    invoke-static {v4}, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->access$300(Lcom/coui/appcompat/widget/COUITouchSearchView$Key;)Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 658
    .end local v3    # "color":I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 667
    .end local v2    # "i":I
    :cond_6
    return-void
.end method

.method private initPopupWindow(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .line 522
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 523
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcoui/support/appcompat/R$layout;->coui_touchsearch_poppup_firstkey:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 524
    .local v0, "contentView":Landroid/view/View;
    sget v1, Lcoui/support/appcompat/R$id;->touchsearch_popup_content_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupFirstTextView:Landroid/widget/TextView;

    .line 525
    const/4 v1, 0x4

    .line 526
    .local v1, "scaleLevel":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->fontScale:F

    .line 527
    .local v3, "fontScale":F
    iget v4, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupWindowFirstKeyTextSize:I

    int-to-float v4, v4

    invoke-static {v4, v3, v1}, Lcom/coui/appcompat/util/COUIChangeTextUtil;->getSuitableFontSize(FFI)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupWindowFirstKeyTextSize:I

    .line 528
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupFirstTextView:Landroid/widget/TextView;

    iget v5, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupWindowFirstKeyTextSize:I

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 529
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupFirstTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 530
    .local v4, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v5, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupFirstTextHeight:I

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 531
    iget v5, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupFirstTextWidth:I

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 532
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupFirstTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 533
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupFirstTextView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mCOUITouchFirstPopTopBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 535
    new-instance v5, Landroid/widget/PopupWindow;

    invoke-direct {v5, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    .line 536
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupFirstTextView:Landroid/widget/TextView;

    invoke-static {v5, v6}, Lcom/coui/appcompat/util/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    .line 537
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    iget v7, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupFirstTextWidth:I

    invoke-virtual {v5, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 538
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    iget v7, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupFirstTextHeight:I

    invoke-virtual {v5, v7}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 539
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 540
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 541
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 544
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 545
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 546
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 548
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v7, Lcoui/support/appcompat/R$layout;->coui_touchsearch_second_name:I

    invoke-virtual {v5, v7, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 549
    .local v5, "secondKeyContent":Landroid/view/View;
    sget v7, Lcoui/support/appcompat/R$id;->touchsearch_popup_content_scrollview:I

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ScrollView;

    iput-object v7, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mSecondKeyScrollView:Landroid/widget/ScrollView;

    .line 550
    sget v7, Lcoui/support/appcompat/R$id;->touchsearch_popup_content_name:I

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mSecondKeyContainer:Landroid/view/ViewGroup;

    .line 551
    new-instance v7, Landroid/widget/PopupWindow;

    invoke-direct {v7, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mSecondKeyPopupWindow:Landroid/widget/PopupWindow;

    .line 552
    iget-object v7, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mSecondKeyPopupWindow:Landroid/widget/PopupWindow;

    iget v8, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupFirstTextWidth:I

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 553
    iget-object v7, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mSecondKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v5}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 554
    iget-object v7, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mSecondKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v6}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 555
    iget-object v7, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mSecondKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 556
    iget-object v7, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mSecondKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 557
    iget-object v7, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mSecondKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 559
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-le v6, v7, :cond_0

    .line 560
    iget-object v6, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6, v2}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    .line 561
    iget-object v6, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6, v2}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    .line 562
    iget-object v6, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mSecondKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6, v2}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    .line 563
    iget-object v6, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mSecondKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6, v2}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    .line 565
    :cond_0
    return-void
.end method

.method private initUnionState()V
    .locals 7

    .line 570
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mUNIONKEYS:[Ljava/lang/String;

    array-length v0, v0

    .line 571
    .local v0, "length":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 572
    return-void

    .line 574
    :cond_0
    iget-boolean v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mFirstIsCharacter:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 575
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyCollectDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 576
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyText:Ljava/util/ArrayList;

    new-instance v4, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;

    iget-object v5, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyCollectDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v4, p0, v5, v3}, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;-><init>(Lcom/coui/appcompat/widget/COUITouchSearchView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->getCharacterStartIndex()I

    move-result v2

    .local v2, "i":I
    :goto_0
    add-int/lit8 v4, v0, -0x1

    if-ge v2, v4, :cond_2

    .line 580
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyText:Ljava/util/ArrayList;

    new-instance v5, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;

    iget-object v6, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mUNIONKEYS:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-direct {v5, p0, v3, v6}, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;-><init>(Lcom/coui/appcompat/widget/COUITouchSearchView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 582
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mDotDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_c

    .line 583
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->getCharacterStartIndex()I

    move-result v2

    add-int/2addr v2, v1

    .restart local v2    # "i":I
    :goto_1
    move v1, v2

    .end local v2    # "i":I
    .local v1, "i":I
    add-int/lit8 v2, v0, -0x2

    if-ge v1, v2, :cond_c

    .line 584
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyText:Ljava/util/ArrayList;

    new-instance v4, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;

    iget-object v5, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mDotDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v4, p0, v5, v3}, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;-><init>(Lcom/coui/appcompat/widget/COUITouchSearchView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    new-instance v2, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;-><init>(Lcom/coui/appcompat/widget/COUITouchSearchView;)V

    .line 586
    .local v2, "key":Lcom/coui/appcompat/widget/COUITouchSearchView$Key;
    const/4 v4, 0x2

    if-eq v1, v4, :cond_b

    const/4 v4, 0x4

    if-eq v1, v4, :cond_a

    const/4 v4, 0x6

    if-eq v1, v4, :cond_9

    const/16 v4, 0x8

    if-eq v1, v4, :cond_8

    const/16 v4, 0xa

    if-eq v1, v4, :cond_7

    const/16 v4, 0xc

    if-eq v1, v4, :cond_6

    const/16 v4, 0xe

    if-eq v1, v4, :cond_5

    const/16 v4, 0x10

    if-eq v1, v4, :cond_4

    const/16 v4, 0x12

    if-eq v1, v4, :cond_3

    .end local v2    # "key":Lcom/coui/appcompat/widget/COUITouchSearchView$Key;
    goto :goto_2

    .line 618
    .restart local v2    # "key":Lcom/coui/appcompat/widget/COUITouchSearchView$Key;
    :cond_3
    const-string v4, "X"

    iput-object v4, v2, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->mKeyOne:Ljava/lang/CharSequence;

    .line 619
    const-string v4, "Y"

    iput-object v4, v2, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->mKeyTwo:Ljava/lang/CharSequence;

    goto :goto_2

    .line 614
    :cond_4
    const-string v4, "U"

    iput-object v4, v2, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->mKeyOne:Ljava/lang/CharSequence;

    .line 615
    const-string v4, "V"

    iput-object v4, v2, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->mKeyTwo:Ljava/lang/CharSequence;

    .line 616
    goto :goto_2

    .line 611
    :cond_5
    const-string v4, "S"

    iput-object v4, v2, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->mKeyOne:Ljava/lang/CharSequence;

    .line 612
    goto :goto_2

    .line 607
    :cond_6
    const-string v4, "P"

    iput-object v4, v2, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->mKeyOne:Ljava/lang/CharSequence;

    .line 608
    const-string v4, "Q"

    iput-object v4, v2, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->mKeyTwo:Ljava/lang/CharSequence;

    .line 609
    goto :goto_2

    .line 603
    :cond_7
    const-string v4, "M"

    iput-object v4, v2, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->mKeyOne:Ljava/lang/CharSequence;

    .line 604
    const-string v4, "N"

    iput-object v4, v2, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->mKeyTwo:Ljava/lang/CharSequence;

    .line 605
    goto :goto_2

    .line 599
    :cond_8
    const-string v4, "J"

    iput-object v4, v2, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->mKeyOne:Ljava/lang/CharSequence;

    .line 600
    const-string v4, "K"

    iput-object v4, v2, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->mKeyTwo:Ljava/lang/CharSequence;

    .line 601
    goto :goto_2

    .line 596
    :cond_9
    const-string v4, "H"

    iput-object v4, v2, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->mKeyOne:Ljava/lang/CharSequence;

    .line 597
    goto :goto_2

    .line 592
    :cond_a
    const-string v4, "E"

    iput-object v4, v2, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->mKeyOne:Ljava/lang/CharSequence;

    .line 593
    const-string v4, "F"

    iput-object v4, v2, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->mKeyTwo:Ljava/lang/CharSequence;

    .line 594
    goto :goto_2

    .line 588
    :cond_b
    const-string v4, "B"

    iput-object v4, v2, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->mKeyOne:Ljava/lang/CharSequence;

    .line 589
    const-string v4, "C"

    iput-object v4, v2, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->mKeyTwo:Ljava/lang/CharSequence;

    .line 590
    nop

    .line 583
    .end local v2    # "key":Lcom/coui/appcompat/widget/COUITouchSearchView$Key;
    :goto_2
    add-int/lit8 v2, v1, 0x2

    goto/16 :goto_1

    .line 624
    .end local v1    # "i":I
    :cond_c
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyText:Ljava/util/ArrayList;

    new-instance v2, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;

    const-string v4, "#"

    invoke-direct {v2, p0, v3, v4}, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;-><init>(Lcom/coui/appcompat/widget/COUITouchSearchView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    return-void
.end method

.method private invalidateKey(II)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1175
    const-string v0, "ACTION_MOVE11"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalidateKey x = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  y = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->isSectionsValidate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1186
    return-void

    .line 1195
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->getKeyIndices(IILjava/util/ArrayList;)I

    move-result v0

    .line 1199
    .local v0, "index":I
    iget-boolean v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mWhetherUnion:Z

    if-nez v1, :cond_1

    .line 1200
    iput v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyIndices:I

    .line 1201
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKEYS:[Ljava/lang/String;

    iget v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyIndices:I

    aget-object v1, v1, v2

    goto :goto_0

    .line 1203
    :cond_1
    new-instance v1, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;-><init>(Lcom/coui/appcompat/widget/COUITouchSearchView;)V

    .line 1204
    .local v1, "key":Lcom/coui/appcompat/widget/COUITouchSearchView$Key;
    iput v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyIndices:I

    .line 1205
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mUNIONKEYS:[Ljava/lang/String;

    iget v3, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyIndices:I

    aget-object v2, v2, v3

    iput-object v2, v1, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->mKeyLabel:Ljava/lang/CharSequence;

    .line 1206
    iget v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mCellHeight:I

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mDot:Ljava/lang/CharSequence;

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->getTextToDisplay(IIILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1212
    .local v1, "willDisplay":Ljava/lang/CharSequence;
    :goto_0
    invoke-direct {p0, v1}, Lcom/coui/appcompat/widget/COUITouchSearchView;->displayChange(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1214
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    iget v4, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyIndices:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;

    invoke-virtual {v3}, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->getLeft()I

    move-result v3

    iget v4, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyPaddingX:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    iget v5, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyIndices:I

    .line 1215
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;

    invoke-virtual {v4}, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->getTop()I

    move-result v4

    .line 1214
    invoke-direct {p0, v2, v3, v4}, Lcom/coui/appcompat/widget/COUITouchSearchView;->onKeyChanged(Ljava/lang/CharSequence;II)V

    .line 1216
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mDisplayKey:Ljava/lang/CharSequence;

    .line 1217
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mTouchSearchActionListener:Lcom/coui/appcompat/widget/COUITouchSearchView$TouchSearchActionListener;

    if-eqz v2, :cond_2

    .line 1218
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mTouchSearchActionListener:Lcom/coui/appcompat/widget/COUITouchSearchView$TouchSearchActionListener;

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mDisplayKey:Ljava/lang/CharSequence;

    invoke-interface {v2, v3}, Lcom/coui/appcompat/widget/COUITouchSearchView$TouchSearchActionListener;->onKey(Ljava/lang/CharSequence;)V

    .line 1220
    :cond_2
    invoke-direct {p0, v1}, Lcom/coui/appcompat/widget/COUITouchSearchView;->invalidateTouchBarText(Ljava/lang/CharSequence;)V

    .line 1222
    :cond_3
    return-void
.end method

.method private invalidateTouchBarText(Ljava/lang/CharSequence;)V
    .locals 7
    .param p1, "willDisplay"    # Ljava/lang/CharSequence;

    .line 1225
    const-string v0, "ACTION_MOVE11"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalidateTouchBarText mKeyIndices = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyIndices:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    iget v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyIndices:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPreviousIndex:I

    const/4 v2, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyIndices:I

    if-eq v2, v0, :cond_0

    .line 1232
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->performFeedback()V

    .line 1235
    :cond_0
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mWhetherUnion:Z

    if-nez v0, :cond_4

    .line 1236
    iget v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyIndices:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPreviousIndex:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyIndices:I

    if-eq v2, v0, :cond_2

    .line 1238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mCollectHighLight:Z

    .line 1239
    iget v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyIndices:I

    invoke-direct {p0, v1, v0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->setIconPressed(IZ)V

    .line 1240
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyText:Ljava/util/ArrayList;

    iget v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyIndices:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1241
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyText:Ljava/util/ArrayList;

    iget v3, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyIndices:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->getText()Ljava/lang/String;

    move-result-object v1

    .line 1242
    .local v1, "text":Ljava/lang/String;
    iget v3, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyIndices:I

    invoke-virtual {p0, v3, v0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->refreshIconState(ILandroid/graphics/drawable/Drawable;)V

    .line 1243
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_1

    .line 1244
    iget v3, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyIndices:I

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/widget/COUITouchSearchView;->getIconState(I)[I

    move-result-object v3

    .line 1245
    .local v3, "state":[I
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    iget-object v5, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    .line 1246
    .local v4, "color":I
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyText:Ljava/util/ArrayList;

    iget v6, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyIndices:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;

    invoke-static {v5}, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->access$300(Lcom/coui/appcompat/widget/COUITouchSearchView$Key;)Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 1247
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->invalidate()V

    .line 1249
    .end local v3    # "state":[I
    .end local v4    # "color":I
    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->update()V

    .line 1255
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v1    # "text":Ljava/lang/String;
    :cond_2
    iget v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPreviousIndex:I

    if-eq v2, v0, :cond_3

    iget v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyIndices:I

    iget v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPreviousIndex:I

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPreviousIndex:I

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKEYS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 1257
    iget v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPreviousIndex:I

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->setItemRestore(I)V

    .line 1259
    :cond_3
    iget v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyIndices:I

    iput v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPreviousIndex:I

    .line 1261
    :cond_4
    return-void
.end method

.method private isSectionsValidate()Z
    .locals 3

    .line 1676
    const/4 v0, 0x0

    .line 1677
    .local v0, "mSectionsFlag":Z
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mSections:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1678
    const/4 v0, 0x1

    goto :goto_0

    .line 1679
    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mSections:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mSections:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1

    .line 1680
    const/4 v0, 0x1

    .line 1682
    :cond_1
    :goto_0
    return v0
.end method

.method private onKeyChanged(Ljava/lang/CharSequence;II)V
    .locals 3
    .param p1, "display"    # Ljava/lang/CharSequence;
    .param p2, "keyX"    # I
    .param p3, "keyY"    # I

    .line 1290
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 1291
    return-void

    .line 1297
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupFirstTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1299
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mLocationInScreen:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    add-int/2addr v0, p3

    iget v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupWindowFirstLocaly:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupFirstTextHeight:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyDrawableHeight:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 1300
    .local v0, "textViewOffSet":I
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupFirstTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1301
    .local v1, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1302
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupFirstTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1303
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->startFirstAnimationToShow()V

    .line 1305
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1271
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 1272
    .local v0, "pointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1277
    .local v1, "pointerId":I
    iget v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    .line 1281
    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1282
    .local v2, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mActivePointerId:I

    .line 1287
    .end local v2    # "newPointerIndex":I
    :cond_1
    return-void
.end method

.method private performFeedback()V
    .locals 1

    .line 1324
    const/16 v0, 0x12e

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->performHapticFeedback(I)Z

    .line 1325
    return-void
.end method

.method private setIconPressed(IZ)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "pressed"    # Z

    .line 730
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPrivateFlags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 731
    .local v0, "privateFlags":I
    if-eqz p2, :cond_0

    .line 732
    or-int/lit16 v0, v0, 0x4000

    goto :goto_0

    .line 734
    :cond_0
    and-int/lit16 v0, v0, -0x4001

    .line 736
    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPrivateFlags:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 737
    return-void
.end method

.method private setItemRestore(I)V
    .locals 4
    .param p1, "index"    # I

    .line 740
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->setIconPressed(IZ)V

    .line 741
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyText:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 742
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->refreshIconState(ILandroid/graphics/drawable/Drawable;)V

    .line 743
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->update()V

    .line 744
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    .line 745
    const/4 v1, 0x0

    .line 746
    .local v1, "state":[I
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUITouchSearchView;->getIconState(I)[I

    move-result-object v1

    .line 747
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    .line 748
    .local v2, "color":I
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyText:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;

    invoke-static {v3}, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->access$300(Lcom/coui/appcompat/widget/COUITouchSearchView$Key;)Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 749
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->update()V

    .line 751
    .end local v1    # "state":[I
    .end local v2    # "color":I
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->invalidate()V

    .line 752
    return-void
.end method

.method private startFirstAnimationToDismiss()V
    .locals 4

    .line 1773
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mFirstSpring:Lcom/facebook/rebound/Spring;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    .line 1774
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mDismissTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1775
    return-void
.end method

.method private startFirstAnimationToShow()V
    .locals 4

    .line 1778
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1779
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    iget v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupWindowFirstLocalx:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupWindowFirstLocaly:I

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1781
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mFirstSpring:Lcom/facebook/rebound/Spring;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)Lcom/facebook/rebound/Spring;

    .line 1782
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mFirstSpring:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    .line 1783
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mDismissTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1784
    return-void
.end method

.method private update()V
    .locals 9

    .line 864
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->whetherUnion()V

    .line 868
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->isSectionsValidate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 869
    return-void

    .line 872
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKEYS:[Ljava/lang/String;

    array-length v0, v0

    .line 873
    .local v0, "keysCount":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->getPaddingTop()I

    move-result v1

    .line 874
    .local v1, "topPadding":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 879
    .local v2, "exactHeight":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mCellWidth:I

    .line 880
    div-int v3, v2, v0

    iput v3, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mCellHeight:I

    .line 882
    rem-int v3, v2, v0

    .line 883
    .local v3, "residual":I
    shr-int/lit8 v4, v3, 0x1

    add-int/2addr v1, v4

    .line 885
    iget v4, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mCellHeight:I

    iget v5, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyDrawableHeight:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyPaddingY:I

    .line 892
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPositionRect:Landroid/graphics/Rect;

    if-eqz v4, :cond_1

    .line 893
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPositionRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPositionRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPositionRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyDrawableWidth:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iput v4, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyPaddingX:I

    .line 897
    :cond_1
    const/4 v4, 0x0

    .line 898
    .local v4, "x":I
    move v5, v1

    .line 900
    .local v5, "y":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v0, :cond_2

    .line 901
    iget-object v7, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;

    iget v8, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyPaddingX:I

    add-int/2addr v8, v4

    invoke-virtual {v7, v8}, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->setLeft(I)V

    .line 902
    iget-object v7, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;

    iget v8, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyPaddingY:I

    add-int/2addr v8, v5

    invoke-virtual {v7, v8}, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->setTop(I)V

    .line 903
    iget v7, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mCellHeight:I

    add-int/2addr v5, v7

    .line 900
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 906
    .end local v6    # "i":I
    :cond_2
    return-void
.end method

.method private updateBackGroundBound()V
    .locals 6

    .line 1049
    iget v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mBackgroundAlignMode:I

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 1050
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mBackgroundWidth:I

    sub-int/2addr v0, v2

    div-int/2addr v0, v1

    .line 1051
    .local v0, "exactleft":I
    iget v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mBackgroundWidth:I

    add-int/2addr v1, v0

    goto :goto_0

    .line 1052
    .end local v0    # "exactleft":I
    :cond_0
    iget v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mBackgroundAlignMode:I

    if-ne v0, v1, :cond_1

    .line 1053
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mBackgroundRightMargin:I

    sub-int v1, v0, v1

    .line 1054
    .local v1, "exactright":I
    iget v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mBackgroundWidth:I

    sub-int v0, v1, v0

    goto :goto_0

    .line 1056
    .end local v1    # "exactright":I
    :cond_1
    iget v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mBackgroundLeftMargin:I

    .line 1057
    .restart local v0    # "exactleft":I
    iget v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mBackgroundWidth:I

    add-int/2addr v1, v0

    .line 1059
    .restart local v1    # "exactright":I
    :goto_0
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-direct {v2, v0, v3, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPositionRect:Landroid/graphics/Rect;

    .line 1060
    return-void
.end method

.method private updatePopupWindow()V
    .locals 5

    .line 1015
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 1016
    return-void

    .line 1019
    :cond_0
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1020
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mLocationInScreen:[I

    aget v0, v0, v2

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupWindowEndMargin:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupWindowFirstLocalx:I

    .line 1021
    iget v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupWindowFirstLocalx:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupFirstTextWidth:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mSecondPopupMargin:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupWindowSecondLocalx:I

    goto :goto_0

    .line 1023
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mLocationInScreen:[I

    aget v0, v0, v2

    iget v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupWindowEndMargin:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupFirstTextWidth:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupWindowFirstLocalx:I

    .line 1024
    iget v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupWindowFirstLocalx:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mSecondPopupMargin:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupSecondTextWidth:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupWindowSecondLocalx:I

    .line 1027
    :goto_0
    iget v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupFirstTextHeight:I

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    .line 1031
    .local v0, "newHeight":I
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mLocationInScreen:[I

    aget v1, v2, v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->getHeight()I

    move-result v2

    sub-int v2, v0, v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupWindowFirstLocaly:I

    .line 1032
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v1

    if-eq v1, v0, :cond_2

    .line 1033
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    iget v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupWindowFirstLocalx:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupWindowFirstLocaly:I

    iget v4, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupFirstTextWidth:I

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_1

    .line 1034
    :cond_2
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1035
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    iget v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupFirstTextWidth:I

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1036
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1041
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mSecondKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1042
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->updateSecondPopup()V

    .line 1044
    :cond_4
    return-void
.end method

.method private updateSecondPopup()V
    .locals 5

    .line 1841
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mSecondKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1842
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mSecondKeyPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupWindowSecondLocalx:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupWindowSecondLocaly:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupSecondTextWidth:I

    iget v4, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mScrollViewHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    .line 1844
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mSecondKeyPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupSecondTextWidth:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1845
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mSecondKeyPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mScrollViewHeight:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1846
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mSecondKeyPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    iget v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupWindowSecondLocalx:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupWindowSecondLocaly:I

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1848
    :goto_0
    return-void
.end method

.method private whetherUnion()V
    .locals 4

    .line 828
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mUnionEnable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 829
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mWhetherUnion:Z

    .line 830
    return-void

    .line 833
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    .line 838
    .local v0, "exactHeight":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mCellWidth:I

    .line 839
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKEYS:[Ljava/lang/String;

    array-length v2, v2

    div-int v2, v0, v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mCellHeight:I

    .line 849
    iget v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mCellHeight:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyDrawableHeight:I

    if-ge v2, v3, :cond_1

    iget v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mCellHeight:I

    if-gez v2, :cond_1

    .line 851
    iget v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mCellHeight:I

    iput v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyDrawableHeight:I

    .line 852
    iget v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mCellHeight:I

    iput v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyDrawableWidth:I

    .line 853
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mWhetherUnion:Z

    goto :goto_0

    .line 855
    :cond_1
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mWhetherUnion:Z

    .line 860
    :goto_0
    return-void
.end method


# virtual methods
.method public closing()V
    .locals 3

    .line 1434
    iget v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPreviousIndex:I

    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyIndices:I

    iget v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPreviousIndex:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPreviousIndex:I

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKEYS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1435
    iget v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPreviousIndex:I

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->setItemRestore(I)V

    .line 1438
    :cond_0
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mWhetherUnion:Z

    if-nez v0, :cond_2

    .line 1439
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKEYS:[Ljava/lang/String;

    array-length v0, v0

    .line 1440
    .local v0, "size":I
    iget v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyIndices:I

    if-le v2, v1, :cond_1

    iget v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyIndices:I

    if-ge v2, v0, :cond_1

    .line 1441
    iget v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyIndices:I

    invoke-direct {p0, v2}, Lcom/coui/appcompat/widget/COUITouchSearchView;->setItemRestore(I)V

    .line 1442
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->update()V

    .line 1444
    :cond_1
    iput v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPreviousIndex:I

    .line 1446
    .end local v0    # "size":I
    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1447
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->startFirstAnimationToDismiss()V

    .line 1449
    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mSecondKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1450
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mSecondKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1452
    :cond_4
    return-void
.end method

.method protected getIconState(I)[I
    .locals 3
    .param p1, "index"    # I

    .line 684
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPrivateFlags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 685
    .local v0, "privateFlags":I
    and-int/lit16 v1, v0, 0x400

    if-nez v1, :cond_0

    goto :goto_0

    .line 688
    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mIconState:Ljava/util/List;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/coui/appcompat/widget/COUITouchSearchView;->onCreateIconState(II)[I

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 689
    and-int/lit16 v0, v0, -0x401

    .line 690
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPrivateFlags:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 692
    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mIconState:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    return-object v1
.end method

.method public getPopupWindow()Landroid/widget/PopupWindow;
    .locals 1

    .line 969
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mFirstKeyPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public getTouchSearchActionListener()Lcom/coui/appcompat/widget/COUITouchSearchView$TouchSearchActionListener;
    .locals 1

    .line 993
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mTouchSearchActionListener:Lcom/coui/appcompat/widget/COUITouchSearchView$TouchSearchActionListener;

    return-object v0
.end method

.method protected iconStateChanged(ILandroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 677
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUITouchSearchView;->getIconState(I)[I

    move-result-object v0

    .line 678
    .local v0, "state":[I
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 679
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 681
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 769
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 770
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mFirstSpring:Lcom/facebook/rebound/Spring;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mFirstAlphaListener:Lcom/facebook/rebound/SpringListener;

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    .line 771
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mFirstSpring:Lcom/facebook/rebound/Spring;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)Lcom/facebook/rebound/Spring;

    .line 772
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 1852
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mTouchSearchActionListener:Lcom/coui/appcompat/widget/COUITouchSearchView$TouchSearchActionListener;

    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/coui/appcompat/widget/COUITouchSearchView$TouchSearchActionListener;->onNameClick(Ljava/lang/CharSequence;)V

    .line 1853
    return-void
.end method

.method protected onCreateIconState(II)[I
    .locals 7
    .param p1, "index"    # I
    .param p2, "extraSpace"    # I

    .line 697
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPrivateFlags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 698
    .local v0, "mViewFlags":I
    const/4 v1, 0x0

    .line 699
    .local v1, "iconState":[I
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPrivateFlags:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 700
    .local v2, "privateFlags":I
    const/4 v3, 0x0

    .line 701
    .local v3, "viewStateIndex":I
    and-int/lit16 v4, v2, 0x4000

    if-eqz v4, :cond_0

    .line 702
    or-int/lit8 v3, v3, 0x10

    .line 704
    :cond_0
    and-int/lit8 v4, v0, 0x20

    if-nez v4, :cond_1

    .line 705
    or-int/lit8 v3, v3, 0x8

    .line 707
    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->hasWindowFocus()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 708
    or-int/lit8 v3, v3, 0x1

    .line 711
    :cond_2
    sget-object v4, Lcom/coui/appcompat/widget/COUITouchSearchView;->sVIEWSTATESETS:[[[I

    aget-object v4, v4, p1

    aget-object v1, v4, v3

    .line 716
    if-nez p2, :cond_3

    .line 717
    return-object v1

    .line 720
    :cond_3
    if-eqz v1, :cond_4

    .line 721
    array-length v4, v1

    add-int/2addr v4, p2

    new-array v4, v4, [I

    .line 722
    .local v4, "fullState":[I
    array-length v5, v1

    const/4 v6, 0x0

    invoke-static {v1, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 724
    .end local v4    # "fullState":[I
    :cond_4
    new-array v4, p2, [I

    .line 726
    .restart local v4    # "fullState":[I
    :goto_0
    return-object v4
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 775
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 776
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mFirstSpring:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->removeAllListeners()Lcom/facebook/rebound/Spring;

    .line 777
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->closing()V

    .line 778
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1313
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1314
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mWhetherUnion:Z

    if-nez v0, :cond_0

    .line 1315
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUITouchSearchView;->drawKeys(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 1317
    :cond_0
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUITouchSearchView;->drawUnionKeys(Landroid/graphics/Canvas;)V

    .line 1319
    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 997
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 1002
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mFirstLayout:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mFrameChanged:Z

    if-eqz v0, :cond_2

    .line 1003
    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->updateBackGroundBound()V

    .line 1004
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->update()V

    .line 1005
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mFirstLayout:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1006
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mFirstLayout:Z

    .line 1008
    :cond_1
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mFrameChanged:Z

    if-eqz v0, :cond_2

    .line 1009
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mFrameChanged:Z

    .line 1012
    :cond_2
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 764
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mFrameChanged:Z

    .line 765
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 766
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "me"    # Landroid/view/MotionEvent;

    .line 1129
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 1130
    .local v0, "index":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1131
    .local v1, "pointerId":I
    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 1133
    return v2

    .line 1135
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 1137
    .local v3, "action":I
    and-int/lit16 v4, v3, 0xff

    const/4 v5, 0x6

    const/4 v6, 0x1

    if-eq v4, v5, :cond_1

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 1154
    :pswitch_0
    const/4 v4, -0x1

    iput v4, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mActivePointerId:I

    .line 1155
    iput-boolean v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mTouchFlag:Z

    .line 1156
    const-string v2, ""

    iput-object v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mDisplayKey:Ljava/lang/CharSequence;

    .line 1157
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mSecondKeyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1158
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->startFirstAnimationToDismiss()V

    goto :goto_0

    .line 1139
    :pswitch_1
    iput-boolean v6, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mTouchFlag:Z

    .line 1140
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mActivePointerId:I

    .line 1141
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mLocationInScreen:[I

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/COUITouchSearchView;->getLocationOnScreen([I)V

    .line 1142
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->updatePopupWindow()V

    .line 1145
    :pswitch_2
    iget v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mActivePointerId:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 1146
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    .line 1147
    .local v4, "x":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v5, v5

    .line 1148
    .local v5, "y":I
    const-string v7, "ACTION_MOVE11"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "x = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "  y = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    invoke-direct {p0, v4, v5}, Lcom/coui/appcompat/widget/COUITouchSearchView;->invalidateKey(II)V

    .line 1150
    goto :goto_0

    .line 1162
    .end local v2    # "pointerIndex":I
    .end local v4    # "x":I
    .end local v5    # "y":I
    :cond_1
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUITouchSearchView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1168
    :cond_2
    :goto_0
    return v6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public refresh()V
    .locals 7

    .line 1974
    const/4 v0, 0x0

    .line 1975
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mStyle:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    .line 1976
    .local v1, "styleAttrType":Ljava/lang/String;
    const-string v2, "attr"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 1977
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mContext:Landroid/content/Context;

    sget-object v5, Lcoui/support/appcompat/R$styleable;->COUITouchSearchView:[I

    iget v6, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mStyle:I

    invoke-virtual {v2, v3, v5, v6, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0

    .line 1978
    :cond_0
    const-string v2, "style"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1979
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mContext:Landroid/content/Context;

    sget-object v5, Lcoui/support/appcompat/R$styleable;->COUITouchSearchView:[I

    iget v6, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mStyle:I

    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1981
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 1982
    sget v2, Lcoui/support/appcompat/R$styleable;->COUITouchSearchView_couiKeyCollect:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyCollectDrawable:Landroid/graphics/drawable/Drawable;

    .line 1983
    sget v2, Lcoui/support/appcompat/R$styleable;->COUITouchSearchView_couiKeyTextColor:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 1984
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcoui/support/appcompat/R$drawable;->coui_touchsearch_first_popup_bg:I

    iget-object v5, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mCOUITouchFirstPopTopBg:Landroid/graphics/drawable/Drawable;

    .line 1985
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1987
    :cond_2
    move v2, v4

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKEYS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_4

    .line 1988
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mIconState:Ljava/util/List;

    sget v5, Lcom/coui/appcompat/widget/COUITouchSearchView;->sSTYLEABLELENGTH:I

    new-array v5, v5, [I

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1989
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPrivateFlags:Ljava/util/List;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1990
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyText:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;

    invoke-virtual {v3}, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/coui/appcompat/widget/COUITouchSearchView;->refreshIconState(ILandroid/graphics/drawable/Drawable;)V

    .line 1991
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_3

    .line 1992
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/COUITouchSearchView;->getIconState(I)[I

    move-result-object v5

    iget-object v6, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    .line 1993
    .local v3, "color":I
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyText:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;

    invoke-static {v5}, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->access$300(Lcom/coui/appcompat/widget/COUITouchSearchView$Key;)Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 1987
    .end local v3    # "color":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1996
    .end local v2    # "i":I
    :cond_4
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->invalidate()V

    .line 1997
    return-void
.end method

.method protected refreshIconState(ILandroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 670
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPrivateFlags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 671
    .local v0, "privateFlags":I
    or-int/lit16 v0, v0, 0x400

    .line 672
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPrivateFlags:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 673
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/widget/COUITouchSearchView;->iconStateChanged(ILandroid/graphics/drawable/Drawable;)V

    .line 674
    return-void
.end method

.method public setBackgroundAlignMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 1870
    iput p1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mBackgroundAlignMode:I

    .line 1871
    return-void
.end method

.method public setBackgroundLeftMargin(I)V
    .locals 0
    .param p1, "margin"    # I

    .line 1879
    iput p1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mBackgroundLeftMargin:I

    .line 1880
    return-void
.end method

.method public setBackgroundRightMargin(I)V
    .locals 0
    .param p1, "margin"    # I

    .line 1888
    iput p1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mBackgroundRightMargin:I

    .line 1889
    return-void
.end method

.method public setCharTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .line 1654
    if-eqz p1, :cond_0

    .line 1655
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mUserTextColor:Landroid/content/res/ColorStateList;

    .line 1657
    :cond_0
    return-void
.end method

.method public setCharTextSize(I)V
    .locals 0
    .param p1, "size"    # I

    .line 1665
    if-eqz p1, :cond_0

    .line 1666
    iput p1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mUserTextSize:I

    .line 1668
    :cond_0
    return-void
.end method

.method public setDefaultTextColor(Landroid/content/res/ColorStateList;)V
    .locals 5
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .line 1951
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 1952
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKEYS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 1953
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mIconState:Ljava/util/List;

    sget v3, Lcom/coui/appcompat/widget/COUITouchSearchView;->sSTYLEABLELENGTH:I

    new-array v3, v3, [I

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1954
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPrivateFlags:Ljava/util/List;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1955
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyText:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/coui/appcompat/widget/COUITouchSearchView;->refreshIconState(ILandroid/graphics/drawable/Drawable;)V

    .line 1956
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_0

    .line 1957
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/COUITouchSearchView;->getIconState(I)[I

    move-result-object v3

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    .line 1958
    .local v2, "textColor":I
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyText:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;

    invoke-static {v3}, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->access$300(Lcom/coui/appcompat/widget/COUITouchSearchView$Key;)Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 1952
    .end local v2    # "textColor":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1961
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->invalidate()V

    .line 1962
    return-void
.end method

.method public setDefaultTextSize(I)V
    .locals 0
    .param p1, "size"    # I

    .line 1970
    iput p1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mDefaultTextSize:I

    .line 1971
    return-void
.end method

.method public setFirstKeyIsCharacter(Z)V
    .locals 0
    .param p1, "isCharacter"    # Z

    .line 1861
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mFirstIsCharacter:Z

    .line 1862
    return-void
.end method

.method public setFirstKeyPopupDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 1491
    if-eqz p1, :cond_0

    .line 1492
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupFirstTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1493
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupFirstTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1495
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupFirstTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyText:Ljava/util/ArrayList;

    iget v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyIndices:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;

    iget-object v1, v1, Lcom/coui/appcompat/widget/COUITouchSearchView$Key;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1496
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupFirstTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mCOUITouchFirstPopTopBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1498
    :goto_0
    return-void
.end method

.method public setFirstKeyPopupWindowSize(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1474
    iget v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupFirstTextWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupFirstTextHeight:I

    if-eq v0, p2, :cond_1

    .line 1475
    :cond_0
    iput p1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupFirstTextWidth:I

    .line 1476
    iput p2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupFirstTextHeight:I

    .line 1477
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupFirstTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1478
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1479
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1480
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupFirstTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1481
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->updatePopupWindow()V

    .line 1483
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void
.end method

.method public setKeyCollectDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 1942
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyCollectDrawable:Landroid/graphics/drawable/Drawable;

    .line 1943
    return-void
.end method

.method public setName([Ljava/lang/String;)V
    .locals 11
    .param p1, "firstname"    # [Ljava/lang/String;

    .line 1792
    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    .line 1793
    .local v1, "length":I
    :goto_0
    if-nez v1, :cond_1

    .line 1794
    return-void

    .line 1797
    :cond_1
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mSecondKeyContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 1798
    .local v2, "childCount":I
    const/4 v3, 0x1

    if-le v1, v2, :cond_3

    .line 1799
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    iget v5, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupFirstTextWidth:I

    iget v6, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupFirstTextHeight:I

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1800
    .local v4, "nameTextLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    move v5, v0

    .local v5, "i":I
    :goto_1
    sub-int v6, v1, v2

    if-ge v5, v6, :cond_2

    .line 1801
    iget-object v6, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v7, Lcoui/support/appcompat/R$layout;->coui_touchsearch_popup_content_item:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1802
    .local v6, "textview":Landroid/widget/TextView;
    iget v7, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupSecondTextViewSize:I

    .line 1803
    .local v7, "textSize":I
    iget-object v8, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->fontScale:F

    .line 1804
    .local v8, "fontScale":F
    const/4 v9, 0x4

    .line 1805
    .local v9, "scaleLevel":I
    int-to-float v10, v7

    invoke-static {v10, v8, v9}, Lcom/coui/appcompat/util/COUIChangeTextUtil;->getSuitableFontSize(FFI)F

    move-result v10

    float-to-int v7, v10

    .line 1806
    int-to-float v10, v7

    invoke-virtual {v6, v0, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1807
    iget-object v10, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mSecondKeyContainer:Landroid/view/ViewGroup;

    invoke-virtual {v10, v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1808
    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1800
    .end local v6    # "textview":Landroid/widget/TextView;
    .end local v7    # "textSize":I
    .end local v8    # "fontScale":F
    .end local v9    # "scaleLevel":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1810
    .end local v4    # "nameTextLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v5    # "i":I
    :cond_2
    goto :goto_3

    .line 1811
    :cond_3
    move v4, v0

    .local v4, "i":I
    :goto_2
    sub-int v5, v2, v1

    if-ge v4, v5, :cond_4

    .line 1812
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mSecondKeyContainer:Landroid/view/ViewGroup;

    sub-int v6, v2, v4

    sub-int/2addr v6, v3

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1811
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1816
    .end local v4    # "i":I
    :cond_4
    :goto_3
    nop

    .local v0, "i":I
    :goto_4
    if-ge v0, v1, :cond_5

    .line 1817
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mSecondKeyContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1818
    .local v4, "textView":Landroid/widget/TextView;
    aget-object v5, p1, v0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1816
    .end local v4    # "textView":Landroid/widget/TextView;
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1820
    .end local v0    # "i":I
    :cond_5
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupFirstTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1821
    .local v0, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1823
    .local v4, "firstKeyTopMargin":I
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mSecondKeyScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v5}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1824
    iget v5, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupSecondTextHeight:I

    mul-int/2addr v5, v1

    iput v5, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mScrollViewHeight:I

    .line 1825
    iget v5, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mScrollViewHeight:I

    iget v6, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupWinSecondNameMaxHeight:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mScrollViewHeight:I

    .line 1826
    iget v5, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mScrollViewHeight:I

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1827
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mSecondKeyScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v5, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1828
    iget v5, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupWindowFirstLocaly:I

    add-int/2addr v5, v4

    iget v6, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mScrollViewHeight:I

    iget v7, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupFirstTextHeight:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupWindowSecondLocaly:I

    .line 1830
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mLocationInScreen:[I

    aget v5, v5, v3

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mSecondPopupOffset:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mScrollViewHeight:I

    sub-int/2addr v5, v6

    .line 1831
    .local v5, "maxY":I
    iget-object v6, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mLocationInScreen:[I

    aget v3, v6, v3

    iget v6, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mSecondPopupOffset:I

    sub-int/2addr v3, v6

    .line 1832
    .local v3, "minY":I
    iget v6, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupWindowSecondLocaly:I

    if-ge v6, v3, :cond_6

    .line 1833
    iput v3, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupWindowSecondLocaly:I

    goto :goto_5

    .line 1834
    :cond_6
    iget v6, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupWindowSecondLocaly:I

    if-le v6, v5, :cond_7

    .line 1835
    iput v5, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupWindowSecondLocaly:I

    .line 1837
    :cond_7
    :goto_5
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->updateSecondPopup()V

    .line 1838
    return-void
.end method

.method public setPopText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "character"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 946
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->startFirstAnimationToShow()V

    .line 947
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupFirstTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 948
    const/16 v0, 0x41

    .line 949
    .local v0, "charA":C
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyIndices:I

    .line 950
    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 951
    const/4 v1, 0x1

    iput v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyIndices:I

    .line 953
    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKEYS:[Ljava/lang/String;

    array-length v1, v1

    .line 954
    .local v1, "keysCount":I
    iget v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyIndices:I

    if-ltz v2, :cond_3

    iget v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyIndices:I

    add-int/lit8 v3, v1, -0x1

    if-le v2, v3, :cond_1

    goto :goto_0

    .line 957
    :cond_1
    iget v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mLastKeyIndices:I

    iget v3, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyIndices:I

    if-eq v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mWhetherUnion:Z

    if-nez v2, :cond_2

    .line 958
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->update()V

    .line 960
    :cond_2
    iget v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyIndices:I

    iput v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mLastKeyIndices:I

    .line 961
    return-void

    .line 955
    :cond_3
    :goto_0
    return-void
.end method

.method public setPopupSecondTextHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .line 1897
    iput p1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupSecondTextHeight:I

    .line 1898
    return-void
.end method

.method public setPopupSecondTextViewSize(I)V
    .locals 0
    .param p1, "size"    # I

    .line 1933
    iput p1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupSecondTextViewSize:I

    .line 1934
    return-void
.end method

.method public setPopupSecondTextWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .line 1906
    iput p1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupSecondTextWidth:I

    .line 1907
    return-void
.end method

.method public setPopupTextView(Ljava/lang/String;)V
    .locals 0
    .param p1, "character"    # Ljava/lang/String;

    .line 914
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->startFirstAnimationToShow()V

    .line 915
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUITouchSearchView;->setTouchBarSelectedText(Ljava/lang/String;)V

    .line 916
    return-void
.end method

.method public setPopupWindowFirstTextSize(I)V
    .locals 3
    .param p1, "textSize"    # I

    .line 1518
    iget v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupWindowFirstKeyTextSize:I

    if-eq v0, p1, :cond_0

    .line 1519
    iput p1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupWindowFirstKeyTextSize:I

    .line 1520
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupFirstTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    iget v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupWindowFirstKeyTextSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1522
    :cond_0
    return-void
.end method

.method public setPopupWindowTextColor(I)V
    .locals 2
    .param p1, "textColor"    # I

    .line 1530
    iget v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupWindowFirstTextColor:I

    if-eq v0, p1, :cond_0

    .line 1531
    iput p1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupWindowFirstTextColor:I

    .line 1532
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupFirstTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupWindowFirstTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1533
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->invalidate()V

    .line 1535
    :cond_0
    return-void
.end method

.method public setPopupWindowTopMinCoordinate(I)V
    .locals 1
    .param p1, "top"    # I

    .line 1507
    iget v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupWindowMinTop:I

    if-eq v0, p1, :cond_0

    .line 1508
    iput p1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupWindowMinTop:I

    .line 1510
    :cond_0
    return-void
.end method

.method public setSecondPopupMargin(I)V
    .locals 0
    .param p1, "margin"    # I

    .line 1924
    iput p1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mSecondPopupMargin:I

    .line 1925
    return-void
.end method

.method public setSecondPopupOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .line 1915
    iput p1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mSecondPopupOffset:I

    .line 1916
    return-void
.end method

.method public setSmartShowMode([Ljava/lang/Object;[I)V
    .locals 12
    .param p1, "sections"    # [Ljava/lang/Object;
    .param p2, "counts"    # [I

    .line 1693
    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    const/4 v0, 0x0

    aget-object v1, p1, v0

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    .line 1700
    :cond_0
    const/4 v1, 0x0

    .line 1701
    .local v1, "start":I
    const/4 v2, 0x0

    .line 1703
    .local v2, "secStart":I
    array-length v3, p1

    .line 1704
    .local v3, "secLength":I
    array-length v4, p2

    .line 1705
    .local v4, "cntLength":I
    const/16 v5, 0x1e

    if-le v3, v5, :cond_6

    .line 1707
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mWhetherDrawDot:Z

    .line 1711
    const/16 v6, 0x2d

    .line 1712
    .local v6, "len":I
    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mSections:[Ljava/lang/String;

    .line 1713
    iget-object v7, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mSections:[Ljava/lang/String;

    aget-object v8, p1, v2

    check-cast v8, Ljava/lang/String;

    aput-object v8, v7, v0

    .line 1714
    iget-object v7, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mSections:[Ljava/lang/String;

    iget-object v8, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mDot:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    .line 1715
    iget-object v7, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mSections:[Ljava/lang/String;

    add-int/lit8 v8, v6, -0x1

    add-int/lit8 v9, v3, -0x1

    aget-object v9, p1, v9

    check-cast v9, Ljava/lang/String;

    aput-object v9, v7, v8

    .line 1716
    add-int/lit8 v1, v1, 0x2

    .line 1717
    add-int/2addr v2, v5

    .line 1718
    add-int/lit8 v4, v4, -0x1

    .line 1720
    invoke-virtual {p2}, [I->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    .line 1724
    .local v5, "cloneCnt":[I
    const/16 v7, 0x15

    .line 1725
    .local v7, "length":I
    :goto_0
    if-lez v7, :cond_3

    .line 1726
    const/4 v8, 0x0

    .line 1727
    .local v8, "pos":I
    const/4 v9, 0x0

    .line 1728
    .local v9, "max":I
    move v10, v8

    move v8, v2

    .local v8, "i":I
    .local v10, "pos":I
    :goto_1
    if-ge v8, v4, :cond_2

    .line 1729
    aget v11, v5, v8

    if-le v11, v9, :cond_1

    .line 1730
    aget v9, v5, v8

    .line 1731
    move v10, v8

    .line 1728
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1734
    .end local v8    # "i":I
    :cond_2
    aput v0, v5, v10

    .line 1735
    add-int/lit8 v7, v7, -0x1

    .line 1736
    .end local v9    # "max":I
    .end local v10    # "pos":I
    goto :goto_0

    .line 1738
    :cond_3
    move v0, v2

    .local v0, "j":I
    :goto_2
    if-ge v0, v4, :cond_5

    .line 1739
    aget v8, v5, v0

    if-nez v8, :cond_4

    .line 1740
    iget-object v8, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mSections:[Ljava/lang/String;

    aget-object v9, p1, v0

    check-cast v9, Ljava/lang/String;

    aput-object v9, v8, v1

    .line 1741
    iget-object v8, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mSections:[Ljava/lang/String;

    add-int/lit8 v9, v1, 0x1

    iget-object v10, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mDot:Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 1742
    add-int/lit8 v1, v1, 0x2

    .line 1738
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1747
    .end local v0    # "j":I
    .end local v5    # "cloneCnt":[I
    .end local v6    # "len":I
    .end local v7    # "length":I
    :cond_5
    goto :goto_4

    .line 1749
    :cond_6
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mWhetherDrawDot:Z

    .line 1752
    move v0, v3

    .line 1753
    .local v0, "size":I
    sub-int/2addr v0, v2

    .line 1755
    new-array v5, v0, [Ljava/lang/String;

    iput-object v5, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mSections:[Ljava/lang/String;

    .line 1757
    :goto_3
    if-ge v2, v3, :cond_7

    .line 1758
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mSections:[Ljava/lang/String;

    add-int/lit8 v6, v1, 0x1

    .local v6, "start":I
    add-int/lit8 v7, v2, 0x1

    .local v7, "secStart":I
    aget-object v2, p1, v2

    .end local v2    # "secStart":I
    check-cast v2, Ljava/lang/String;

    aput-object v2, v5, v1

    .line 1757
    move v1, v6

    move v2, v7

    goto :goto_3

    .line 1761
    .end local v0    # "size":I
    .end local v6    # "start":I
    .end local v7    # "secStart":I
    .restart local v2    # "secStart":I
    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mSections:[Ljava/lang/String;

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKEYS:[Ljava/lang/String;

    .line 1766
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->initIconState()V

    .line 1767
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->update()V

    .line 1768
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->invalidate()V

    .line 1769
    return-void

    .line 1694
    .end local v1    # "start":I
    .end local v2    # "secStart":I
    .end local v3    # "secLength":I
    .end local v4    # "cntLength":I
    :cond_8
    :goto_5
    const-string v0, " "

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mSections:[Ljava/lang/String;

    .line 1695
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->invalidate()V

    .line 1696
    return-void
.end method

.method public setTouchBarSelectedText(Ljava/lang/String;)V
    .locals 4
    .param p1, "character"    # Ljava/lang/String;

    .line 924
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPopupFirstTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 925
    const/16 v0, 0x41

    .line 926
    .local v0, "charA":C
    iget v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyIndices:I

    iput v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mPreviousIndex:I

    .line 927
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sub-int/2addr v1, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyIndices:I

    .line 928
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mDisplayKey:Ljava/lang/CharSequence;

    .line 929
    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 930
    iput v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyIndices:I

    .line 932
    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKEYS:[Ljava/lang/String;

    array-length v1, v1

    .line 933
    .local v1, "keysCount":I
    iget v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyIndices:I

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mKeyIndices:I

    add-int/lit8 v3, v1, -0x1

    if-le v2, v3, :cond_1

    goto :goto_0

    .line 936
    :cond_1
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUITouchSearchView;->invalidateTouchBarText(Ljava/lang/CharSequence;)V

    .line 937
    return-void

    .line 934
    :cond_2
    :goto_0
    return-void
.end method

.method public setTouchSearchActionListener(Lcom/coui/appcompat/widget/COUITouchSearchView$TouchSearchActionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/coui/appcompat/widget/COUITouchSearchView$TouchSearchActionListener;

    .line 984
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mTouchSearchActionListener:Lcom/coui/appcompat/widget/COUITouchSearchView$TouchSearchActionListener;

    .line 985
    return-void
.end method

.method public setUnionEnable(Z)V
    .locals 1
    .param p1, "unionEnable"    # Z

    .line 1460
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mUnionEnable:Z

    if-eq v0, p1, :cond_0

    .line 1461
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUITouchSearchView;->mUnionEnable:Z

    .line 1462
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->update()V

    .line 1463
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITouchSearchView;->invalidate()V

    .line 1465
    :cond_0
    return-void
.end method

.method public startPostDelayed()V
    .locals 0

    .line 976
    return-void
.end method
