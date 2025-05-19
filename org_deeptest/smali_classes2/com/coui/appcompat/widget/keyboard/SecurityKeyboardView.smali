.class public Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;
.super Landroid/view/View;
.source "SecurityKeyboardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;,
        Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$SwipeTracker;,
        Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$OnKeyboardCharListener;,
        Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$OnKeyboardActionListener;
    }
.end annotation


# static fields
.field public static final COMMON_KEY:I = 0x0

.field private static final DEBOUNCE_TIME:I = 0x46

.field private static final DEBUG:Z = false

.field private static final DELAY_AFTER_PREVIEW:I = 0x4b

.field private static final DELAY_BEFORE_PREVIEW:I = 0x0

.field public static final DELETE_KEY:I = 0x1

.field private static final ENABLED:I = 0x0

.field private static final ENABLED_MASK:I = 0x20

.field private static final KEYBOARD_STATE_CAPSLOCK:I = 0x2

.field private static final KEYBOARD_STATE_ERROR:I = -0x1

.field private static final KEYBOARD_STATE_NORMAL:I = 0x0

.field private static final KEYBOARD_STATE_SHIFTED:I = 0x1

.field private static final KEY_DELETE:[I

.field private static final LONGPRESS_TIMEOUT:I

.field private static final LONG_PRESSABLE_STATE_SET:[I

.field private static MAX_NEARBY_KEYS:I = 0x0

.field private static final MSG_LONGPRESS:I = 0x4

.field private static final MSG_REMOVE_PREVIEW:I = 0x2

.field private static final MSG_REPEAT:I = 0x3

.field private static final MSG_SHOW_PREVIEW:I = 0x1

.field private static final MULTITAP_INTERVAL:I = 0x320

.field private static final NOT_A_KEY:I = -0x1

.field public static final OK_KEY:I = 0x2

.field private static final PFLAG_DRAWABLE_STATE_DIRTY:I = 0x400

.field private static final PFLAG_PRESSED:I = 0x4000

.field private static final REPEAT_INTERVAL:I = 0x32

.field private static final REPEAT_START_DELAY:I = 0x190

.field public static final SECURITY_KEYBOARD:I = 0x1

.field private static STYLEABLE_LENGTH:I = 0x0

.field public static final TAG:Ljava/lang/String; = "SecurityKeyboardView"

.field public static final UNLOCK_KEYBOARD:I = 0x2

.field private static VIEW_SETS:[[I = null

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

.field private static VIEW_STATE_SETS:[[[I = null

.field private static final VIEW_STATE_WINDOW_FOCUSED:I = 0x1


# instance fields
.field private mAbortKey:Z

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBackgroundDimAmount:F

.field private mBgTopOffset:I

.field private mBuffer:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mClipRegion:Landroid/graphics/Rect;

.field private final mCoordinates:[I

.field private mCurrentKey:I

.field private mCurrentKeyIndex:I

.field private mCurrentKeyTime:J

.field private mDirtyRect:Landroid/graphics/Rect;

.field private mDisambiguateSwipe:Z

.field private mDistances:[I

.field private mDownKey:I

.field private mDownTime:J

.field private mDrawPending:Z

.field private mEndKeyBg:Landroid/graphics/drawable/Drawable;

.field private mEndLabelSize:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGoTextColor:Landroid/content/res/ColorStateList;

.field mHandler:Landroid/os/Handler;

.field private mHeadsetRequiredToHearPasswordsAnnounced:Z

.field private mIconState:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation
.end field

.field private mInMultiTap:Z

.field private mInvalidatedKey:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;

.field private mIsDownFlag:Z

.field private mIsEnable:Z

.field private mItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mItemBg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mItemTextColor:Landroid/content/res/ColorStateList;

.field private mKeyBackground:Landroid/graphics/drawable/Drawable;

.field private mKeyBoardViewType:I

.field private mKeyIndices:[I

.field private mKeyTextColor:I

.field private mKeyTextSize:I

.field private mKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

.field private mKeyboardActionListener:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$OnKeyboardActionListener;

.field private mKeyboardChanged:Z

.field private mKeyboardCharListener:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$OnKeyboardCharListener;

.field private mKeys:[Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;

.field private mLabelTextSize:I

.field private mLastCodeX:I

.field private mLastCodeY:I

.field private mLastKey:I

.field private mLastKeyTime:J

.field private mLastMoveTime:J

.field private mLastSentIndex:I

.field private mLastTapTime:J

.field private mLastX:I

.field private mLastY:I

.field private mLineWidth:F

.field private mLowerLetterSize:I

.field private mMiniKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

.field private mMiniKeyboardCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMiniKeyboardContainer:Landroid/view/View;

.field private mMiniKeyboardOffsetX:I

.field private mMiniKeyboardOffsetY:I

.field private mMiniKeyboardOnScreen:Z

.field private mNumberLetterSize:I

.field private mOldPointerCount:I

.field private mOldPointerX:F

.field private mOldPointerY:F

.field private mPadding:Landroid/graphics/Rect;

.field private mPaint:Landroid/graphics/Paint;

.field private mPopupKeyboard:Landroid/widget/PopupWindow;

.field private mPopupLayout:I

.field private mPopupParent:Landroid/view/View;

.field private mPopupPreviewX:I

.field private mPopupPreviewY:I

.field private mPopupX:I

.field private mPopupY:I

.field private mPossiblePoly:Z

.field private mPreviewCentered:Z

.field private mPreviewHeight:I

.field private mPreviewLabel:Ljava/lang/StringBuilder;

.field private mPreviewOffset:I

.field private mPreviewPopup:Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;

.field private mPreviewText:Landroid/widget/TextView;

.field private mPreviewTextSizeLarge:I

.field private mPreviewWidth:I

.field private mPreviousIndex:I

.field private mPreviousKey:I

.field protected mPrivateFlags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mProximityCorrectOn:Z

.field private mProximityThreshold:I

.field private mRefreshStyle:I

.field private mRepeatKeyIndex:I

.field private mShadowColor:I

.field private mShadowRadius:F

.field private mShowPreview:Z

.field private mShowTouchPoints:Z

.field private mSkipSymbolsLabelSize:I

.field private mSpaceLabelSize:I

.field private mSpecialItemBg:Landroid/graphics/drawable/Drawable;

.field private mSpecialItemSize:I

.field private mSpecialKeyBg:Landroid/graphics/drawable/Drawable;

.field private mSpecialKeyHeight:I

.field private mSpecialKeyWidth:I

.field private mSpecialSymbols:[Ljava/lang/String;

.field private mSpecialSymbolsOffset:I

.field private mStartX:I

.field private mStartY:I

.field private mSwipeThreshold:I

.field private mSwipeTracker:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$SwipeTracker;

.field private mSymbolsLabelSize:I

.field private mTapCount:I

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTypeface:Landroid/graphics/Typeface;

.field private mVerticalCorrection:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 174
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, -0x5

    aput v3, v1, v2

    sput-object v1, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->KEY_DELETE:[I

    .line 175
    new-array v1, v0, [I

    const v3, 0x101023c

    aput v3, v1, v2

    sput-object v1, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->LONG_PRESSABLE_STATE_SET:[I

    .line 276
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    sput v1, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->LONGPRESS_TIMEOUT:I

    .line 278
    const/16 v1, 0xc

    sput v1, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->MAX_NEARBY_KEYS:I

    .line 360
    const/16 v1, 0x14

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->VIEW_STATE_IDS:[I

    .line 376
    sget-object v1, Lcoui/support/appcompat/R$styleable;->ViewDrawableStates:[I

    array-length v1, v1

    sput v1, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->STYLEABLE_LENGTH:I

    .line 377
    sget-object v1, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->VIEW_STATE_IDS:[I

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    .line 378
    .local v1, "NUM_BITS":I
    sget v3, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->STYLEABLE_LENGTH:I

    if-ne v1, v3, :cond_6

    .line 381
    sget-object v3, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->VIEW_STATE_IDS:[I

    array-length v3, v3

    new-array v3, v3, [I

    .line 382
    .local v3, "orderedIds":[I
    move v4, v2

    .local v4, "i":I
    :goto_0
    sget v5, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->STYLEABLE_LENGTH:I

    if-ge v4, v5, :cond_2

    .line 383
    sget-object v5, Lcoui/support/appcompat/R$styleable;->ViewDrawableStates:[I

    aget v5, v5, v4

    .line 384
    .local v5, "viewState":I
    move v6, v2

    .local v6, "j":I
    :goto_1
    sget-object v7, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->VIEW_STATE_IDS:[I

    array-length v7, v7

    if-ge v6, v7, :cond_1

    .line 385
    sget-object v7, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->VIEW_STATE_IDS:[I

    aget v7, v7, v6

    if-ne v7, v5, :cond_0

    .line 386
    mul-int/lit8 v7, v4, 0x2

    aput v5, v3, v7

    .line 387
    mul-int/lit8 v7, v4, 0x2

    add-int/2addr v7, v0

    sget-object v8, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->VIEW_STATE_IDS:[I

    add-int/lit8 v9, v6, 0x1

    aget v8, v8, v9

    aput v8, v3, v7

    .line 384
    :cond_0
    add-int/lit8 v6, v6, 0x2

    goto :goto_1

    .line 382
    .end local v5    # "viewState":I
    .end local v6    # "j":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 391
    .end local v4    # "i":I
    :cond_2
    shl-int v4, v0, v1

    new-array v4, v4, [[[I

    sput-object v4, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->VIEW_STATE_SETS:[[[I

    .line 392
    shl-int/2addr v0, v1

    new-array v0, v0, [[I

    sput-object v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->VIEW_SETS:[[I

    .line 393
    move v0, v2

    .local v0, "i":I
    :goto_2
    sget-object v4, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->VIEW_SETS:[[I

    array-length v4, v4

    if-ge v0, v4, :cond_5

    .line 394
    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v4

    .line 395
    .local v4, "numBits":I
    sget-object v5, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->VIEW_SETS:[[I

    new-array v6, v4, [I

    aput-object v6, v5, v0

    .line 396
    const/4 v5, 0x0

    .line 397
    .local v5, "pos":I
    move v6, v5

    move v5, v2

    .local v5, "j":I
    .local v6, "pos":I
    :goto_3
    array-length v7, v3

    if-ge v5, v7, :cond_4

    .line 398
    add-int/lit8 v7, v5, 0x1

    aget v7, v3, v7

    and-int/2addr v7, v0

    if-eqz v7, :cond_3

    .line 399
    sget-object v7, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->VIEW_SETS:[[I

    aget-object v7, v7, v0

    add-int/lit8 v8, v6, 0x1

    .local v8, "pos":I
    aget v9, v3, v5

    aput v9, v7, v6

    .line 397
    move v6, v8

    .end local v8    # "pos":I
    :cond_3
    add-int/lit8 v5, v5, 0x2

    goto :goto_3

    .line 393
    .end local v4    # "numBits":I
    .end local v5    # "j":I
    .end local v6    # "pos":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 403
    .end local v0    # "i":I
    .end local v1    # "NUM_BITS":I
    .end local v3    # "orderedIds":[I
    :cond_5
    return-void

    .line 379
    .restart local v1    # "NUM_BITS":I
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "VIEW_STATE_IDS array length does not match ViewDrawableStates style array"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

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

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 449
    sget v0, Lcoui/support/appcompat/R$attr;->securityKeyboardViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 450
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 455
    sget v0, Lcoui/support/appcompat/R$style;->SecurityKeyboardView:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 456
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 473
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 178
    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCurrentKeyIndex:I

    .line 192
    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCoordinates:[I

    .line 228
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPreviewCentered:Z

    .line 229
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mShowPreview:Z

    .line 230
    iput-boolean v3, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mShowTouchPoints:Z

    .line 249
    iput v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCurrentKey:I

    .line 250
    iput v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mDownKey:I

    .line 253
    const/16 v4, 0xc

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyIndices:[I

    .line 257
    iput v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mRepeatKeyIndex:I

    .line 261
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mClipRegion:Landroid/graphics/Rect;

    .line 263
    new-instance v4, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$SwipeTracker;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$SwipeTracker;-><init>(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$1;)V

    iput-object v4, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSwipeTracker:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$SwipeTracker;

    .line 268
    iput v3, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mOldPointerCount:I

    .line 279
    sget v4, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->MAX_NEARBY_KEYS:I

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mDistances:[I

    .line 287
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v4, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    .line 296
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    .line 406
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPrivateFlags:Ljava/util/List;

    .line 408
    iput v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyBoardViewType:I

    .line 412
    iput-object v5, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSpecialKeyBg:Landroid/graphics/drawable/Drawable;

    .line 413
    iput-object v5, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mEndKeyBg:Landroid/graphics/drawable/Drawable;

    .line 414
    iput-object v5, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mTypeface:Landroid/graphics/Typeface;

    .line 417
    iput v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mLowerLetterSize:I

    .line 418
    iput v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mNumberLetterSize:I

    .line 419
    iput v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSpaceLabelSize:I

    .line 420
    iput v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mEndLabelSize:I

    .line 422
    iput v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSymbolsLabelSize:I

    .line 424
    iput v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSkipSymbolsLabelSize:I

    .line 425
    iput-boolean v3, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mIsEnable:Z

    .line 426
    iput v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPreviousKey:I

    .line 427
    iput-boolean v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mIsDownFlag:Z

    .line 428
    const/high16 v4, -0x40800000    # -1.0f

    iput v4, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mLineWidth:F

    .line 429
    iput v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSpecialKeyWidth:I

    .line 430
    iput v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSpecialKeyHeight:I

    .line 431
    iput-object v5, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSpecialSymbols:[Ljava/lang/String;

    .line 434
    iput v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSpecialItemSize:I

    .line 436
    iput v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mBgTopOffset:I

    .line 437
    iput v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPreviousIndex:I

    .line 438
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mItem:Ljava/util/ArrayList;

    .line 439
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mItemBg:Ljava/util/ArrayList;

    .line 441
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mIconState:Ljava/util/List;

    .line 474
    if-eqz p2, :cond_0

    .line 475
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mRefreshStyle:I

    .line 476
    iget v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mRefreshStyle:I

    if-nez v0, :cond_1

    .line 477
    iput p3, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mRefreshStyle:I

    goto :goto_0

    .line 480
    :cond_0
    iput p3, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mRefreshStyle:I

    .line 482
    :cond_1
    :goto_0
    sget-object v0, Lcoui/support/appcompat/R$styleable;->SecurityKeyboardView:[I

    sget v1, Lcoui/support/appcompat/R$style;->SecurityKeyboardView:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 485
    .local v0, "a":Landroid/content/res/TypedArray;
    const-string v1, "layout_inflater"

    .line 487
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 489
    .local v1, "inflate":Landroid/view/LayoutInflater;
    const/4 v4, 0x0

    .line 490
    .local v4, "previewLayout":I
    const/4 v6, 0x0

    .line 492
    .local v6, "keyTextSize":I
    sget v7, Lcoui/support/appcompat/R$styleable;->SecurityKeyboardView_couiSecurityKeyBackground:I

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    .line 493
    sget v7, Lcoui/support/appcompat/R$styleable;->SecurityKeyboardView_couiVerticalCorrection:I

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mVerticalCorrection:I

    .line 494
    sget v7, Lcoui/support/appcompat/R$styleable;->SecurityKeyboardView_couiKeyPreviewLayout:I

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 495
    sget v7, Lcoui/support/appcompat/R$styleable;->SecurityKeyboardView_couiKeyPreviewOffset:I

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPreviewOffset:I

    .line 496
    sget v7, Lcoui/support/appcompat/R$styleable;->SecurityKeyboardView_couiKeyPreviewHeight:I

    const/16 v8, 0x50

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPreviewHeight:I

    .line 497
    sget v7, Lcoui/support/appcompat/R$styleable;->SecurityKeyboardView_couiKeyPreviewWidth:I

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPreviewWidth:I

    .line 498
    sget v7, Lcoui/support/appcompat/R$styleable;->SecurityKeyboardView_couiSecurityKeyTextSize:I

    const/16 v8, 0x12

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyTextSize:I

    .line 499
    sget v7, Lcoui/support/appcompat/R$styleable;->SecurityKeyboardView_couiSecurityKeyTextColor:I

    const/high16 v8, -0x1000000

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    iput v7, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyTextColor:I

    .line 500
    sget v7, Lcoui/support/appcompat/R$styleable;->SecurityKeyboardView_couiLabelTextSize:I

    const/16 v8, 0xe

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mLabelTextSize:I

    .line 501
    sget v7, Lcoui/support/appcompat/R$styleable;->SecurityKeyboardView_couiPopupLayout:I

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPopupLayout:I

    .line 502
    sget v7, Lcoui/support/appcompat/R$styleable;->SecurityKeyboardView_couiShadowColor:I

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    iput v7, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mShadowColor:I

    .line 503
    sget v7, Lcoui/support/appcompat/R$styleable;->SecurityKeyboardView_couiShadowRadius:I

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mShadowRadius:F

    .line 505
    sget v7, Lcoui/support/appcompat/R$styleable;->SecurityKeyboardView_couiKeyBoardType:I

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyBoardViewType:I

    .line 506
    sget v7, Lcoui/support/appcompat/R$styleable;->SecurityKeyboardView_couiTextColor:I

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    iput-object v7, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 507
    sget v7, Lcoui/support/appcompat/R$styleable;->SecurityKeyboardView_couiGoTextColor:I

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    iput-object v7, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mGoTextColor:Landroid/content/res/ColorStateList;

    .line 509
    sget v7, Lcoui/support/appcompat/R$styleable;->SecurityKeyboardView_couiSpecialKeyBg:I

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSpecialKeyBg:Landroid/graphics/drawable/Drawable;

    .line 510
    sget v7, Lcoui/support/appcompat/R$styleable;->SecurityKeyboardView_couiEndKeyBg:I

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mEndKeyBg:Landroid/graphics/drawable/Drawable;

    .line 512
    sget v7, Lcoui/support/appcompat/R$styleable;->SecurityKeyboardView_couiItemSymbolsColor:I

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    iput-object v7, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mItemTextColor:Landroid/content/res/ColorStateList;

    .line 513
    sget v7, Lcoui/support/appcompat/R$styleable;->SecurityKeyboardView_couiSpecialItemBg:I

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSpecialItemBg:Landroid/graphics/drawable/Drawable;

    .line 515
    const/high16 v7, 0x3f000000    # 0.5f

    iput v7, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mBackgroundDimAmount:F

    .line 517
    new-instance v7, Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;

    invoke-direct {v7, p1}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPreviewPopup:Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;

    .line 518
    if-eqz v4, :cond_2

    .line 519
    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPreviewText:Landroid/widget/TextView;

    .line 520
    iget-object v7, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTextSize()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPreviewTextSizeLarge:I

    .line 521
    iget-object v7, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPreviewPopup:Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;

    iget-object v8, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;->setContentView(Landroid/view/View;)V

    .line 522
    iget-object v7, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPreviewPopup:Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;

    invoke-virtual {v7, v5}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 524
    :cond_2
    iput-boolean v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mShowPreview:Z

    .line 527
    :goto_1
    iget-object v7, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPreviewPopup:Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;

    invoke-virtual {v7, v2}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;->setTouchable(Z)V

    .line 528
    iget-object v7, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPreviewPopup:Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;

    new-instance v8, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$1;

    invoke-direct {v8, p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$1;-><init>(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;)V

    invoke-virtual {v7, v8}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;->setOnPreInvokePopupListener(Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow$OnPreInvokePopupListener;)V

    .line 536
    new-instance v7, Landroid/widget/PopupWindow;

    invoke-direct {v7, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    .line 537
    iget-object v7, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 540
    iput-object p0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPopupParent:Landroid/view/View;

    .line 543
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPaint:Landroid/graphics/Paint;

    .line 544
    iget-object v5, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 545
    iget-object v5, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPaint:Landroid/graphics/Paint;

    int-to-float v7, v6

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 546
    iget-object v5, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 547
    iget-object v5, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPaint:Landroid/graphics/Paint;

    const/16 v7, 0xff

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 549
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPadding:Landroid/graphics/Rect;

    .line 550
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    .line 552
    iget-object v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    .line 553
    iget-object v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 556
    :cond_3
    const/high16 v2, 0x43fa0000    # 500.0f

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v2

    float-to-int v2, v5

    iput v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSwipeThreshold:I

    .line 558
    iput-boolean v3, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mDisambiguateSwipe:Z

    .line 561
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v5, "accessibility"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    iput-object v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 562
    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mAudioManager:Landroid/media/AudioManager;

    .line 564
    invoke-direct {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->resetMultiTap()V

    .line 566
    invoke-virtual {p0, v3}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->setKeyboardType(I)V

    .line 567
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 568
    return-void
.end method

.method static synthetic access$100(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;
    .param p1, "x1"    # I

    .line 92
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->showKey(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    .line 92
    iget v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mStartX:I

    return v0
.end method

.method static synthetic access$1100(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    .line 92
    iget v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mStartY:I

    return v0
.end method

.method static synthetic access$1200(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;IIIJ)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # J

    .line 92
    invoke-direct/range {p0 .. p5}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->detectAndSendKey(IIIJ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;)Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$OnKeyboardActionListener;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    .line 92
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyboardActionListener:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$OnKeyboardActionListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    .line 92
    invoke-direct {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->dismissPopupKeyboard()V

    return-void
.end method

.method static synthetic access$1600(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    .line 92
    iget v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSpecialItemSize:I

    return v0
.end method

.method static synthetic access$1700(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    .line 92
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    .line 92
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPreviewText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    .line 92
    invoke-direct {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->repeatKey()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .line 92
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->openPopupIfRequired(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    .line 92
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPossiblePoly:Z

    return v0
.end method

.method static synthetic access$600(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;)Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$SwipeTracker;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    .line 92
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSwipeTracker:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$SwipeTracker;

    return-object v0
.end method

.method static synthetic access$700(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    .line 92
    iget v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSwipeThreshold:I

    return v0
.end method

.method static synthetic access$800(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    .line 92
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mDisambiguateSwipe:Z

    return v0
.end method

.method static synthetic access$900(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    .line 92
    iget v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mDownKey:I

    return v0
.end method

.method private adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "label"    # Ljava/lang/CharSequence;

    .line 944
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getNewShifted()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    .line 945
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 947
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 949
    :cond_0
    return-object p1
.end method

.method private checkMultiTap(JI)V
    .locals 8
    .param p1, "eventTime"    # J
    .param p3, "keyIndex"    # I

    .line 2066
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    return-void

    .line 2067
    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeys:[Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;

    aget-object v1, v1, p3

    .line 2068
    .local v1, "key":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    iget-object v2, v1, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->codes:[I

    array-length v2, v2

    const-wide/16 v3, 0x320

    const/4 v5, 0x1

    if-le v2, v5, :cond_2

    .line 2069
    iput-boolean v5, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mInMultiTap:Z

    .line 2070
    iget-wide v6, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mLastTapTime:J

    add-long/2addr v6, v3

    cmp-long v2, p1, v6

    if-gez v2, :cond_1

    iget v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mLastSentIndex:I

    if-ne p3, v2, :cond_1

    .line 2072
    iget v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mTapCount:I

    add-int/2addr v0, v5

    iget-object v2, v1, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->codes:[I

    array-length v2, v2

    rem-int/2addr v0, v2

    iput v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mTapCount:I

    .line 2073
    return-void

    .line 2075
    :cond_1
    iput v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mTapCount:I

    .line 2076
    return-void

    .line 2079
    :cond_2
    iget-wide v5, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mLastTapTime:J

    add-long/2addr v5, v3

    cmp-long v0, p1, v5

    if-gtz v0, :cond_3

    iget v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mLastSentIndex:I

    if-eq p3, v0, :cond_4

    .line 2080
    :cond_3
    invoke-direct {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->resetMultiTap()V

    .line 2082
    :cond_4
    return-void
.end method

.method private computeProximityThreshold(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;)V
    .locals 7
    .param p1, "keyboard"    # Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    .line 974
    if-nez p1, :cond_0

    return-void

    .line 975
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeys:[Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;

    .line 976
    .local v0, "keys":[Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    if-nez v0, :cond_1

    return-void

    .line 977
    :cond_1
    array-length v1, v0

    .line 978
    .local v1, "length":I
    const/4 v2, 0x0

    .line 979
    .local v2, "dimensionSum":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 980
    aget-object v4, v0, v3

    .line 981
    .local v4, "key":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    iget v5, v4, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->width:I

    iget v6, v4, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->height:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v6, v4, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->gap:I

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 979
    .end local v4    # "key":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 983
    .end local v3    # "i":I
    :cond_2
    if-ltz v2, :cond_4

    if-nez v1, :cond_3

    goto :goto_1

    .line 984
    :cond_3
    int-to-float v3, v2

    const v4, 0x3fb33333    # 1.4f

    mul-float/2addr v3, v4

    int-to-float v4, v1

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mProximityThreshold:I

    .line 985
    iget v3, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mProximityThreshold:I

    iget v4, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mProximityThreshold:I

    mul-int/2addr v3, v4

    iput v3, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mProximityThreshold:I

    .line 986
    return-void

    .line 983
    :cond_4
    :goto_1
    return-void
.end method

.method private detectAndSendKey(IIIJ)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "eventTime"    # J

    .line 1268
    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    iget-object v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeys:[Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;

    array-length v1, v1

    if-ge p1, v1, :cond_3

    .line 1269
    iget-object v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeys:[Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;

    aget-object v1, v1, p1

    .line 1270
    .local v1, "key":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    iget-object v2, v1, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->text:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 1271
    iget-object v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyboardActionListener:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$OnKeyboardActionListener;

    iget-object v3, v1, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->text:Ljava/lang/CharSequence;

    invoke-interface {v2, v3}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$OnKeyboardActionListener;->onText(Ljava/lang/CharSequence;)V

    .line 1272
    iget-object v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyboardActionListener:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$OnKeyboardActionListener;

    invoke-interface {v2, v0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$OnKeyboardActionListener;->onRelease(I)V

    goto :goto_1

    .line 1274
    :cond_0
    iget-object v2, v1, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->codes:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    .line 1276
    .local v2, "code":I
    sget v4, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->MAX_NEARBY_KEYS:I

    new-array v4, v4, [I

    .line 1277
    .local v4, "codes":[I
    invoke-static {v4, v0}, Ljava/util/Arrays;->fill([II)V

    .line 1278
    invoke-direct {p0, p2, p3, v4}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getKeyIndices(II[I)I

    .line 1280
    iget-boolean v5, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mInMultiTap:Z

    if-eqz v5, :cond_2

    .line 1281
    iget v5, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mTapCount:I

    if-eq v5, v0, :cond_1

    .line 1282
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyboardActionListener:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$OnKeyboardActionListener;

    const/4 v3, -0x5

    sget-object v5, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->KEY_DELETE:[I

    invoke-interface {v0, v3, v5}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$OnKeyboardActionListener;->onKey(I[I)V

    .line 1283
    invoke-direct {p0, v2, v1}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->sendCharToTarget(ILcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;)V

    goto :goto_0

    .line 1285
    :cond_1
    iput v3, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mTapCount:I

    .line 1287
    :goto_0
    iget-object v0, v1, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->codes:[I

    iget v3, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mTapCount:I

    aget v2, v0, v3

    .line 1290
    :cond_2
    invoke-direct {p0, v2, v1}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->sendCharToTarget(ILcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;)V

    .line 1291
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyboardActionListener:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$OnKeyboardActionListener;

    invoke-interface {v0, v2, v4}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$OnKeyboardActionListener;->onKey(I[I)V

    .line 1292
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyboardActionListener:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$OnKeyboardActionListener;

    invoke-interface {v0, v2}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$OnKeyboardActionListener;->onRelease(I)V

    .line 1295
    .end local v2    # "code":I
    .end local v4    # "codes":[I
    :goto_1
    iput p1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mLastSentIndex:I

    .line 1296
    iput-wide p4, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mLastTapTime:J

    .line 1298
    .end local v1    # "key":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    :cond_3
    return-void
.end method

.method private dismissPopupKeyboard()V
    .locals 1

    .line 2038
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2039
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2040
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mMiniKeyboardOnScreen:Z

    .line 2041
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->invalidateAllKeys()V

    .line 2043
    :cond_0
    return-void
.end method

.method private drawSpecialSymbol(Landroid/graphics/Canvas;I)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "translation"    # I

    .line 2088
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v3, 0x0

    .line 2089
    .local v3, "itemBgLeft":I
    const/4 v4, 0x0

    .line 2090
    .local v4, "itemBgRight":I
    const/4 v5, 0x0

    .line 2091
    .local v5, "itemBgTop":I
    const/4 v6, 0x0

    .line 2093
    .local v6, "itemBgBottom":I
    iget v7, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSpecialKeyHeight:I

    int-to-float v7, v7

    iget-object v8, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSpecialSymbols:[Ljava/lang/String;

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    int-to-float v8, v8

    iget v9, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mLineWidth:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    iget-object v8, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSpecialSymbols:[Ljava/lang/String;

    array-length v8, v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    .line 2095
    .local v7, "mAverageWidth":F
    const/4 v8, 0x0

    move v9, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v8

    .local v3, "i":I
    .local v4, "itemBgLeft":I
    .local v5, "itemBgRight":I
    .local v6, "itemBgTop":I
    .local v9, "itemBgBottom":I
    :goto_0
    iget-object v10, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSpecialSymbols:[Ljava/lang/String;

    array-length v10, v10

    if-ge v3, v10, :cond_1

    .line 2096
    iget-object v10, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;

    invoke-virtual {v10}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;->getItemBg()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 2097
    .local v10, "itemBg":Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_0

    .line 2099
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getPaddingLeft()I

    move-result v11

    add-int v11, v11, p2

    .line 2100
    .end local v4    # "itemBgLeft":I
    .local v11, "itemBgLeft":I
    iget v4, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSpecialKeyWidth:I

    add-int/2addr v4, v11

    .line 2101
    .end local v5    # "itemBgRight":I
    .local v4, "itemBgRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    int-to-float v12, v3

    mul-float/2addr v12, v7

    add-float/2addr v5, v12

    int-to-float v12, v3

    iget v13, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mLineWidth:F

    mul-float/2addr v12, v13

    add-float/2addr v5, v12

    float-to-int v5, v5

    .line 2102
    .end local v6    # "itemBgTop":I
    .local v5, "itemBgTop":I
    int-to-float v6, v5

    add-float/2addr v6, v7

    float-to-int v6, v6

    .line 2104
    .end local v9    # "itemBgBottom":I
    .local v6, "itemBgBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getPaddingTop()I

    move-result v9

    int-to-float v9, v9

    int-to-float v12, v3

    mul-float/2addr v12, v7

    add-float/2addr v9, v12

    int-to-float v12, v3

    iget v13, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mLineWidth:F

    mul-float/2addr v12, v13

    add-float/2addr v9, v12

    .line 2105
    .local v9, "touchTop":F
    add-float v12, v9, v7

    .line 2107
    .local v12, "touchBottom":F
    invoke-virtual {v10, v11, v5, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2108
    invoke-virtual {v10, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2109
    iget-object v13, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;

    invoke-virtual {v13, v12}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;->setBottom(F)V

    .line 2110
    iget-object v13, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;

    invoke-virtual {v13, v9}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;->setTop(F)V

    .line 2095
    move v9, v6

    move v6, v5

    move v5, v4

    move v4, v11

    .end local v10    # "itemBg":Landroid/graphics/drawable/Drawable;
    .end local v11    # "itemBgLeft":I
    .end local v12    # "touchBottom":F
    .local v4, "itemBgLeft":I
    .local v5, "itemBgRight":I
    .local v6, "itemBgTop":I
    .local v9, "itemBgBottom":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2116
    .end local v3    # "i":I
    :cond_1
    nop

    .local v8, "i":I
    :goto_1
    move v3, v8

    .end local v8    # "i":I
    .restart local v3    # "i":I
    iget-object v8, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSpecialSymbols:[Ljava/lang/String;

    array-length v8, v8

    if-ge v3, v8, :cond_3

    .line 2117
    iget-object v8, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;

    invoke-static {v8}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;->access$1500(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;)Landroid/text/TextPaint;

    move-result-object v8

    .line 2118
    .local v8, "paint":Landroid/text/TextPaint;
    invoke-virtual {v8}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v10

    .line 2119
    .local v10, "wordTextFontMetrics":Landroid/graphics/Paint$FontMetricsInt;
    iget-object v11, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSpecialSymbols:[Ljava/lang/String;

    aget-object v11, v11, v3

    .line 2120
    .local v11, "character":Ljava/lang/String;
    if-eqz v11, :cond_2

    .line 2121
    invoke-virtual {v8, v11}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v12

    float-to-int v12, v12

    .line 2122
    .local v12, "textWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getPaddingLeft()I

    move-result v13

    iget v14, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSpecialKeyWidth:I

    sub-int/2addr v14, v12

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    add-int v13, v13, p2

    .line 2123
    .local v13, "textX":I
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getPaddingTop()I

    move-result v14

    iget v15, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mBgTopOffset:I

    add-int/2addr v14, v15

    int-to-float v14, v14

    int-to-float v15, v3

    iget v2, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mLineWidth:F

    add-float/2addr v2, v7

    mul-float/2addr v15, v2

    add-float/2addr v14, v15

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v7, v2

    add-float/2addr v14, v2

    iget v2, v10, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v15, v10, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v2, v15

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v14, v2

    iget v2, v10, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    int-to-float v2, v2

    sub-float/2addr v14, v2

    float-to-int v2, v14

    .line 2126
    .local v2, "textY":I
    iget-object v14, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSpecialSymbols:[Ljava/lang/String;

    aget-object v14, v14, v3

    int-to-float v15, v13

    int-to-float v0, v2

    invoke-virtual {v1, v14, v15, v0, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2116
    .end local v2    # "textY":I
    .end local v8    # "paint":Landroid/text/TextPaint;
    .end local v10    # "wordTextFontMetrics":Landroid/graphics/Paint$FontMetricsInt;
    .end local v11    # "character":Ljava/lang/String;
    .end local v12    # "textWidth":I
    .end local v13    # "textX":I
    :cond_2
    add-int/lit8 v8, v3, 0x1

    move-object/from16 v0, p0

    goto :goto_1

    .line 2129
    .end local v3    # "i":I
    :cond_3
    return-void
.end method

.method private getIndexIndices(II)I
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 2249
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->isSecurityNumericKeyboard()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSpecialSymbols:[Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2252
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSpecialSymbols:[Ljava/lang/String;

    array-length v0, v0

    .line 2253
    .local v0, "count":I
    if-gtz v0, :cond_1

    .line 2254
    return v1

    .line 2256
    :cond_1
    const/4 v1, -0x1

    .line 2257
    .local v1, "nearest":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 2258
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getPaddingLeft()I

    move-result v3

    if-lt p1, v3, :cond_2

    iget v3, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSpecialKeyWidth:I

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    if-gt p1, v3, :cond_2

    int-to-float v3, p2

    iget-object v4, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mItem:Ljava/util/ArrayList;

    .line 2259
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;

    invoke-virtual {v4}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;->getTop()F

    move-result v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_2

    int-to-float v3, p2

    iget-object v4, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;

    invoke-virtual {v4}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;->getBottom()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_2

    .line 2260
    return v2

    .line 2257
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2263
    .end local v2    # "i":I
    :cond_3
    return v1

    .line 2250
    .end local v0    # "count":I
    .end local v1    # "nearest":I
    :cond_4
    :goto_1
    return v1
.end method

.method private getKeyIndices(II[I)I
    .locals 23
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "allKeys"    # [I

    .line 1207
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeys:[Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;

    .line 1208
    .local v4, "keys":[Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    const/4 v5, -0x1

    .line 1209
    .local v5, "primaryIndex":I
    const/4 v6, -0x1

    .line 1210
    .local v6, "closestKey":I
    iget v7, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mProximityThreshold:I

    const/4 v8, 0x1

    add-int/2addr v7, v8

    .line 1211
    .local v7, "closestKeyDist":I
    iget-object v9, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mDistances:[I

    const v10, 0x7fffffff

    invoke-static {v9, v10}, Ljava/util/Arrays;->fill([II)V

    .line 1212
    iget-object v9, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    invoke-virtual {v9, v1, v2}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->getNearestKeys(II)[I

    move-result-object v9

    .line 1213
    .local v9, "nearestKeyIndices":[I
    array-length v10, v9

    .line 1214
    .local v10, "keyCount":I
    move v12, v7

    move v7, v6

    move v6, v5

    const/4 v5, 0x0

    .local v5, "i":I
    .local v6, "primaryIndex":I
    .local v7, "closestKey":I
    .local v12, "closestKeyDist":I
    :goto_0
    if-ge v5, v10, :cond_a

    .line 1215
    aget v13, v9, v5

    aget-object v13, v4, v13

    .line 1216
    .local v13, "key":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    const/4 v14, 0x0

    .line 1217
    .local v14, "dist":I
    invoke-virtual {v13, v1, v2}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->isInside(II)Z

    move-result v15

    .line 1218
    .local v15, "isInside":Z
    if-eqz v15, :cond_0

    .line 1219
    aget v6, v9, v5

    .line 1223
    :cond_0
    const/16 v16, 0x0

    .line 1224
    .local v16, "isProximity":Z
    iget-boolean v8, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mProximityCorrectOn:Z

    if-eqz v8, :cond_1

    .line 1225
    invoke-virtual {v13, v1, v2}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->squaredDistanceFrom(II)I

    move-result v8

    move v14, v8

    iget v11, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mProximityThreshold:I

    if-lt v8, v11, :cond_2

    :cond_1
    if-eqz v15, :cond_3

    :cond_2
    const/4 v8, 0x1

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    .line 1227
    .end local v16    # "isProximity":Z
    .local v8, "isProximity":Z
    :goto_1
    if-eqz v8, :cond_9

    .line 1229
    iget-object v11, v13, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->codes:[I

    array-length v11, v11

    .line 1230
    .local v11, "nCodes":I
    if-ge v14, v12, :cond_4

    .line 1231
    move v12, v14

    .line 1232
    aget v7, v9, v5

    .line 1235
    :cond_4
    if-nez v3, :cond_5

    .line 1214
    .end local v8    # "isProximity":Z
    .end local v11    # "nCodes":I
    .end local v13    # "key":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    .end local v14    # "dist":I
    .end local v15    # "isInside":Z
    move-object/from16 v18, v4

    move/from16 v19, v6

    move/from16 v20, v7

    move-object/from16 v22, v9

    goto :goto_4

    .line 1237
    .restart local v8    # "isProximity":Z
    .restart local v11    # "nCodes":I
    .restart local v13    # "key":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    .restart local v14    # "dist":I
    .restart local v15    # "isInside":Z
    :cond_5
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_2
    move/from16 v17, v16

    move-object/from16 v18, v4

    .end local v4    # "keys":[Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    .end local v16    # "j":I
    .local v17, "j":I
    .local v18, "keys":[Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    iget-object v4, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mDistances:[I

    array-length v4, v4

    move/from16 v19, v6

    move/from16 v6, v17

    .end local v17    # "j":I
    .local v6, "j":I
    .local v19, "primaryIndex":I
    if-ge v6, v4, :cond_8

    .line 1238
    iget-object v4, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mDistances:[I

    aget v4, v4, v6

    if-le v4, v14, :cond_7

    .line 1240
    iget-object v4, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mDistances:[I

    move/from16 v20, v7

    .end local v7    # "closestKey":I
    .local v20, "closestKey":I
    iget-object v7, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mDistances:[I

    move/from16 v21, v8

    .end local v8    # "isProximity":Z
    .local v21, "isProximity":Z
    add-int v8, v6, v11

    move-object/from16 v22, v9

    .end local v9    # "nearestKeyIndices":[I
    .local v22, "nearestKeyIndices":[I
    iget-object v9, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mDistances:[I

    array-length v9, v9

    sub-int/2addr v9, v6

    sub-int/2addr v9, v11

    invoke-static {v4, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1242
    add-int v4, v6, v11

    array-length v7, v3

    sub-int/2addr v7, v6

    sub-int/2addr v7, v11

    invoke-static {v3, v6, v3, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1244
    const/4 v4, 0x0

    .local v4, "c":I
    :goto_3
    if-ge v4, v11, :cond_6

    .line 1245
    add-int v17, v6, v4

    iget-object v7, v13, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->codes:[I

    aget v7, v7, v4

    aput v7, v3, v17

    .line 1246
    iget-object v7, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mDistances:[I

    add-int v17, v6, v4

    aput v14, v7, v17

    .line 1244
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1248
    .end local v4    # "c":I
    :cond_6
    goto :goto_4

    .line 1237
    .end local v20    # "closestKey":I
    .end local v21    # "isProximity":Z
    .end local v22    # "nearestKeyIndices":[I
    .restart local v7    # "closestKey":I
    .restart local v8    # "isProximity":Z
    .restart local v9    # "nearestKeyIndices":[I
    :cond_7
    move/from16 v20, v7

    move/from16 v21, v8

    move-object/from16 v22, v9

    .end local v7    # "closestKey":I
    .end local v8    # "isProximity":Z
    .end local v9    # "nearestKeyIndices":[I
    .restart local v20    # "closestKey":I
    .restart local v21    # "isProximity":Z
    .restart local v22    # "nearestKeyIndices":[I
    add-int/lit8 v16, v6, 0x1

    move-object/from16 v4, v18

    move/from16 v6, v19

    goto :goto_2

    .line 1214
    .end local v6    # "j":I
    .end local v11    # "nCodes":I
    .end local v13    # "key":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    .end local v14    # "dist":I
    .end local v15    # "isInside":Z
    .end local v20    # "closestKey":I
    .end local v21    # "isProximity":Z
    .end local v22    # "nearestKeyIndices":[I
    .restart local v7    # "closestKey":I
    .restart local v9    # "nearestKeyIndices":[I
    :cond_8
    move/from16 v20, v7

    move-object/from16 v22, v9

    .end local v18    # "keys":[Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    .end local v19    # "primaryIndex":I
    .local v4, "keys":[Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    .local v6, "primaryIndex":I
    :goto_4
    move/from16 v7, v20

    .end local v4    # "keys":[Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    .end local v6    # "primaryIndex":I
    .end local v7    # "closestKey":I
    .end local v9    # "nearestKeyIndices":[I
    .restart local v18    # "keys":[Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    .restart local v19    # "primaryIndex":I
    .restart local v20    # "closestKey":I
    .restart local v22    # "nearestKeyIndices":[I
    goto :goto_5

    .end local v18    # "keys":[Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    .end local v19    # "primaryIndex":I
    .end local v20    # "closestKey":I
    .end local v22    # "nearestKeyIndices":[I
    .restart local v4    # "keys":[Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    .restart local v6    # "primaryIndex":I
    .restart local v7    # "closestKey":I
    .restart local v9    # "nearestKeyIndices":[I
    :cond_9
    move-object/from16 v18, v4

    move/from16 v19, v6

    move-object/from16 v22, v9

    .end local v4    # "keys":[Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    .end local v6    # "primaryIndex":I
    .end local v9    # "nearestKeyIndices":[I
    .restart local v18    # "keys":[Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    .restart local v19    # "primaryIndex":I
    .restart local v22    # "nearestKeyIndices":[I
    :goto_5
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v4, v18

    move/from16 v6, v19

    move-object/from16 v9, v22

    const/4 v8, 0x1

    goto/16 :goto_0

    .line 1253
    .end local v5    # "i":I
    .end local v18    # "keys":[Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    .end local v19    # "primaryIndex":I
    .end local v22    # "nearestKeyIndices":[I
    .restart local v4    # "keys":[Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    .restart local v6    # "primaryIndex":I
    .restart local v9    # "nearestKeyIndices":[I
    :cond_a
    move-object/from16 v18, v4

    move-object/from16 v22, v9

    .end local v4    # "keys":[Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    .end local v9    # "nearestKeyIndices":[I
    .restart local v18    # "keys":[Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    .restart local v22    # "nearestKeyIndices":[I
    const/4 v4, -0x1

    if-ne v6, v4, :cond_b

    .line 1254
    move v6, v7

    .line 1257
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->isSecurityNumericKeyboard()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1258
    iget v4, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSpecialKeyWidth:I

    if-gt v1, v4, :cond_c

    int-to-float v4, v2

    iget v5, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSpecialKeyHeight:I

    iget v8, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mVerticalCorrection:I

    add-int/2addr v5, v8

    int-to-float v5, v5

    iget v8, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mLineWidth:F

    sub-float/2addr v5, v8

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_c

    .line 1260
    const/4 v6, -0x1

    .line 1264
    :cond_c
    return v6
.end method

.method private getPreviewText(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "key"    # Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;

    .line 1304
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mInMultiTap:Z

    if-eqz v0, :cond_1

    .line 1306
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1307
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->codes:[I

    iget v3, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mTapCount:I

    if-gez v3, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mTapCount:I

    :goto_0
    aget v1, v2, v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1308
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1310
    :cond_1
    iget-object v0, p1, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private initGestureDetector()V
    .locals 3

    .line 606
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_0

    .line 607
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$3;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$3;-><init>(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 659
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 661
    :cond_0
    return-void
.end method

.method private initState()V
    .locals 7

    .line 2156
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSpecialSymbols:[Ljava/lang/String;

    array-length v0, v0

    .line 2157
    .local v0, "length":I
    if-gez v0, :cond_0

    .line 2158
    return-void

    .line 2161
    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 2162
    iget-object v3, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mItemBg:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSpecialItemBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2163
    iget-object v3, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mItem:Ljava/util/ArrayList;

    new-instance v4, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;

    iget-object v5, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mItemBg:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSpecialSymbols:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-direct {v4, p0, v5, v6}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;-><init>(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2161
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2166
    .end local v2    # "i":I
    :cond_1
    move v2, v1

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 2167
    sget-object v3, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->VIEW_STATE_SETS:[[[I

    sget-object v4, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->VIEW_SETS:[[I

    array-length v4, v4

    new-array v4, v4, [[I

    aput-object v4, v3, v2

    .line 2168
    sget-object v3, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->VIEW_SETS:[[I

    sget-object v4, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->VIEW_STATE_SETS:[[[I

    aget-object v4, v4, v2

    sget-object v5, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->VIEW_SETS:[[I

    array-length v5, v5

    invoke-static {v3, v1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2166
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2170
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mIconState:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 2171
    iget-object v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPrivateFlags:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 2172
    move v2, v1

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v0, :cond_4

    .line 2173
    iget-object v3, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mIconState:Ljava/util/List;

    sget v4, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->STYLEABLE_LENGTH:I

    new-array v4, v4, [I

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2174
    iget-object v3, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPrivateFlags:Ljava/util/List;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2175
    iget-object v3, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;

    invoke-virtual {v3}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;->getItemBg()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->refreshIconState(ILandroid/graphics/drawable/Drawable;)V

    .line 2176
    iget-object v3, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mItemTextColor:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_3

    .line 2177
    iget-object v3, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mItemTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getIconState(I)[I

    move-result-object v4

    iget-object v5, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mItemTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    .line 2178
    .local v3, "color":I
    iget-object v4, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;

    invoke-static {v4}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;->access$1500(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;)Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 2172
    .end local v3    # "color":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2181
    .end local v2    # "i":I
    :cond_4
    return-void
.end method

.method private isKeyPreview(I)Z
    .locals 8
    .param p1, "keyIndex"    # I

    .line 2432
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2433
    const-string v0, "SecurityKeyboardView"

    const-string v2, "handler is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2434
    return v1

    .line 2437
    :cond_0
    const-wide/16 v2, 0x4b

    const/4 v0, 0x2

    const/4 v4, -0x1

    if-ne p1, v4, :cond_1

    .line 2438
    const-string v4, "SecurityKeyboardView"

    const-string v5, "handler isn\'t null and keyIndex is -1"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2439
    iget-object v4, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mHandler:Landroid/os/Handler;

    .line 2440
    invoke-virtual {v5, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2439
    invoke-virtual {v4, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2442
    return v1

    .line 2444
    :cond_1
    iget-object v5, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeys:[Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;

    aget-object v5, v5, p1

    iget-object v5, v5, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->codes:[I

    aget v5, v5, v1

    .line 2445
    .local v5, "codes":I
    iget-object v6, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeys:[Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;

    aget-object v6, v6, p1

    iget-object v6, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->label:Ljava/lang/CharSequence;

    .line 2446
    .local v6, "label":Ljava/lang/CharSequence;
    if-eqz v6, :cond_2

    if-eq v5, v4, :cond_2

    const/4 v4, -0x5

    if-eq v5, v4, :cond_2

    const/4 v4, -0x2

    if-eq v5, v4, :cond_2

    const/16 v4, 0xa

    if-eq v5, v4, :cond_2

    const/16 v4, 0x20

    if-eq v5, v4, :cond_2

    const/4 v4, -0x6

    if-eq v5, v4, :cond_2

    const/4 v4, -0x7

    if-eq v5, v4, :cond_2

    .line 2453
    const/4 v0, 0x1

    return v0

    .line 2456
    :cond_2
    iget-object v4, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mHandler:Landroid/os/Handler;

    .line 2457
    invoke-virtual {v7, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2456
    invoke-virtual {v4, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2460
    return v1
.end method

.method private isSecurityKeyboard()Z
    .locals 2

    .line 2352
    iget v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyBoardViewType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isUnLockKeyboard()Z
    .locals 2

    .line 2348
    iget v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyBoardViewType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onBufferDraw()V
    .locals 28

    .line 1013
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyboardChanged:Z

    if-eqz v1, :cond_3

    .line 1014
    :cond_0
    iget-object v1, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyboardChanged:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 1015
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getWidth()I

    move-result v4

    if-ne v1, v4, :cond_1

    iget-object v1, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getHeight()I

    move-result v4

    if-eq v1, v4, :cond_2

    .line 1017
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getWidth()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1018
    .local v1, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getHeight()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1019
    .local v4, "height":I
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 1020
    new-instance v5, Landroid/graphics/Canvas;

    iget-object v6, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v5, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 1022
    .end local v1    # "width":I
    .end local v4    # "height":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->invalidateAllKeys()V

    .line 1023
    iput-boolean v3, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyboardChanged:Z

    .line 1026
    :cond_3
    iget-object v1, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    if-nez v1, :cond_4

    return-void

    .line 1028
    :cond_4
    iget-object v1, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 1029
    iget-object v1, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 1030
    .local v1, "canvas":Landroid/graphics/Canvas;
    iget-object v4, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 1032
    iget-object v10, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPaint:Landroid/graphics/Paint;

    .line 1034
    .local v10, "paint":Landroid/graphics/Paint;
    iget-object v4, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    .line 1036
    .local v4, "keyBackground":Landroid/graphics/drawable/Drawable;
    iget-object v11, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mClipRegion:Landroid/graphics/Rect;

    .line 1037
    .local v11, "clipRegion":Landroid/graphics/Rect;
    iget-object v12, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPadding:Landroid/graphics/Rect;

    .line 1038
    .local v12, "padding":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getPaddingLeft()I

    move-result v13

    .line 1039
    .local v13, "kbdPaddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getPaddingTop()I

    move-result v14

    .line 1040
    .local v14, "kbdPaddingTop":I
    iget-object v15, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeys:[Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;

    .line 1041
    .local v15, "keys":[Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    iget-object v9, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mInvalidatedKey:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;

    .line 1043
    .local v9, "invalidKey":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    iget v5, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyTextColor:I

    invoke-virtual {v10, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1044
    const/4 v5, 0x0

    .line 1045
    .local v5, "drawSingleKey":Z
    if-eqz v9, :cond_5

    invoke-virtual {v1, v11}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1047
    iget v6, v9, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->x:I

    add-int/2addr v6, v13

    sub-int/2addr v6, v2

    iget v7, v11, Landroid/graphics/Rect;->left:I

    if-gt v6, v7, :cond_5

    iget v6, v9, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->y:I

    add-int/2addr v6, v14

    sub-int/2addr v6, v2

    iget v7, v11, Landroid/graphics/Rect;->top:I

    if-gt v6, v7, :cond_5

    iget v6, v9, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->x:I

    iget v7, v9, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->width:I

    add-int/2addr v6, v7

    add-int/2addr v6, v13

    add-int/2addr v6, v2

    iget v7, v11, Landroid/graphics/Rect;->right:I

    if-lt v6, v7, :cond_5

    iget v6, v9, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->y:I

    iget v7, v9, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->height:I

    add-int/2addr v6, v7

    add-int/2addr v6, v14

    add-int/2addr v6, v2

    iget v7, v11, Landroid/graphics/Rect;->bottom:I

    if-lt v6, v7, :cond_5

    .line 1051
    const/4 v5, 0x1

    .line 1054
    .end local v5    # "drawSingleKey":Z
    .local v16, "drawSingleKey":Z
    :cond_5
    move/from16 v16, v5

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1055
    array-length v8, v15

    .line 1056
    .local v8, "keyCount":I
    move-object/from16 v17, v4

    move v4, v3

    .local v4, "i":I
    .local v17, "keyBackground":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-ge v4, v8, :cond_1e

    .line 1057
    aget-object v6, v15, v4

    .line 1058
    .local v6, "key":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    if-eqz v16, :cond_6

    if-eq v9, v6, :cond_6

    .line 1059
    nop

    .line 1056
    move/from16 v22, v8

    move-object/from16 v27, v9

    goto/16 :goto_9

    .line 1061
    :cond_6
    invoke-virtual {v6}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->getCurrentDrawableState()[I

    move-result-object v7

    .line 1063
    .local v7, "drawableState":[I
    const/16 v18, 0x0

    .line 1064
    .local v18, "color":I
    iget-object v5, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSpecialKeyBg:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_8

    iget-object v5, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->codes:[I

    aget v5, v5, v3

    const/4 v2, -0x1

    if-eq v5, v2, :cond_7

    iget-object v2, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->codes:[I

    aget v2, v2, v3

    const/4 v5, -0x5

    if-eq v2, v5, :cond_7

    iget-object v2, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->codes:[I

    aget v2, v2, v3

    const/4 v5, -0x2

    if-eq v2, v5, :cond_7

    iget-object v2, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->codes:[I

    aget v2, v2, v3

    const/4 v5, -0x6

    if-eq v2, v5, :cond_7

    iget-object v2, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->codes:[I

    aget v2, v2, v3

    const/4 v5, -0x7

    if-eq v2, v5, :cond_7

    .line 1069
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->isSecurityNumericKeyboard()Z

    move-result v2

    if-eqz v2, :cond_8

    add-int/lit8 v2, v8, -0x2

    if-eq v4, v2, :cond_7

    add-int/lit8 v2, v8, -0x6

    if-eq v4, v2, :cond_7

    add-int/lit8 v2, v8, -0xa

    if-ne v4, v2, :cond_8

    .line 1070
    :cond_7
    iget-object v2, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSpecialKeyBg:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 1071
    :cond_8
    iget-object v2, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mEndKeyBg:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_9

    iget-object v2, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->codes:[I

    aget v2, v2, v3

    const/16 v5, 0xa

    if-ne v2, v5, :cond_9

    .line 1072
    iget-object v2, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mEndKeyBg:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 1074
    :cond_9
    iget-object v2, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    .line 1077
    .end local v17    # "keyBackground":Landroid/graphics/drawable/Drawable;
    .local v2, "keyBackground":Landroid/graphics/drawable/Drawable;
    :goto_1
    iget-object v5, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->codes:[I

    aget v5, v5, v3

    const/16 v3, 0xa

    if-ne v5, v3, :cond_a

    .line 1078
    iget-object v3, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mGoTextColor:Landroid/content/res/ColorStateList;

    const/4 v5, 0x0

    invoke-virtual {v3, v7, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    goto :goto_2

    .line 1080
    :cond_a
    const/4 v5, 0x0

    iget-object v3, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v7, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    .line 1082
    .end local v18    # "color":I
    .local v3, "color":I
    :goto_2
    invoke-virtual {v10, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1084
    if-eqz v2, :cond_b

    .line 1085
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1090
    :cond_b
    iget-object v5, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->label:Ljava/lang/CharSequence;

    if-nez v5, :cond_c

    const/16 v19, 0x0

    goto :goto_3

    :cond_c
    iget-object v5, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-direct {v0, v5}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v19, v5

    :goto_3
    move-object/from16 v5, v19

    .line 1093
    .local v5, "label":Ljava/lang/String;
    if-eqz v2, :cond_e

    .line 1095
    move/from16 v20, v3

    .end local v3    # "color":I
    .local v20, "color":I
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 1096
    .local v3, "bounds":Landroid/graphics/Rect;
    move-object/from16 v21, v7

    .end local v7    # "drawableState":[I
    .local v21, "drawableState":[I
    iget v7, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->width:I

    move/from16 v22, v8

    .end local v8    # "keyCount":I
    .local v22, "keyCount":I
    iget v8, v3, Landroid/graphics/Rect;->right:I

    if-ne v7, v8, :cond_d

    iget v7, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->height:I

    iget v8, v3, Landroid/graphics/Rect;->bottom:I

    if-eq v7, v8, :cond_f

    .line 1098
    :cond_d
    iget v7, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->width:I

    iget v8, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->height:I

    move-object/from16 v23, v3

    const/4 v3, 0x0

    .end local v3    # "bounds":Landroid/graphics/Rect;
    .local v23, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v2, v3, v3, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_4

    .line 1103
    .end local v20    # "color":I
    .end local v21    # "drawableState":[I
    .end local v22    # "keyCount":I
    .end local v23    # "bounds":Landroid/graphics/Rect;
    .local v3, "color":I
    .restart local v7    # "drawableState":[I
    .restart local v8    # "keyCount":I
    :cond_e
    move/from16 v20, v3

    move-object/from16 v21, v7

    move/from16 v22, v8

    .end local v3    # "color":I
    .end local v7    # "drawableState":[I
    .end local v8    # "keyCount":I
    .restart local v20    # "color":I
    .restart local v21    # "drawableState":[I
    .restart local v22    # "keyCount":I
    :cond_f
    :goto_4
    iget v3, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->x:I

    add-int/2addr v3, v13

    int-to-float v3, v3

    iget v7, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->y:I

    add-int/2addr v7, v14

    int-to-float v7, v7

    invoke-virtual {v1, v3, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1105
    if-eqz v2, :cond_10

    .line 1106
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1110
    :cond_10
    if-eqz v5, :cond_1c

    .line 1113
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v7

    const/16 v8, 0x20

    if-eqz v7, :cond_11

    iget-object v7, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->codes:[I

    aget v7, v7, v3

    if-eq v7, v8, :cond_11

    .line 1115
    iget v7, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mLowerLetterSize:I

    int-to-float v7, v7

    invoke-virtual {v10, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1116
    invoke-virtual {v10, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    goto/16 :goto_7

    .line 1118
    :cond_11
    iget-object v7, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->codes:[I

    aget v7, v7, v3

    if-ne v7, v8, :cond_12

    .line 1119
    iget v7, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSpaceLabelSize:I

    int-to-float v7, v7

    invoke-virtual {v10, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1120
    invoke-virtual {v10, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    goto/16 :goto_7

    .line 1122
    :cond_12
    iget-object v7, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->codes:[I

    aget v7, v7, v3

    const/4 v8, -0x2

    if-eq v7, v8, :cond_17

    iget-object v7, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->codes:[I

    aget v7, v7, v3

    const/16 v8, 0xa

    if-eq v7, v8, :cond_17

    iget-object v7, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->codes:[I

    aget v7, v7, v3

    const/4 v8, -0x1

    if-eq v7, v8, :cond_17

    iget-object v7, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->codes:[I

    aget v7, v7, v3

    const/4 v8, -0x6

    if-ne v7, v8, :cond_13

    goto :goto_5

    .line 1133
    :cond_13
    iget-object v7, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->codes:[I

    aget v7, v7, v3

    const/4 v8, -0x7

    if-ne v7, v8, :cond_14

    .line 1134
    iget v7, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSkipSymbolsLabelSize:I

    int-to-float v7, v7

    invoke-virtual {v10, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1135
    invoke-virtual {v10, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    goto :goto_7

    .line 1138
    :cond_14
    iget v7, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mNumberLetterSize:I

    int-to-float v7, v7

    invoke-virtual {v10, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1139
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 1140
    invoke-virtual {v10, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    goto :goto_7

    .line 1141
    :cond_15
    const-string v3, "\u00b7"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1142
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v7, Lcoui/support/appcompat/R$dimen;->coui_password_kbd_symbols_center_dot:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v10, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1143
    const/4 v3, 0x1

    invoke-virtual {v10, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    goto :goto_7

    .line 1145
    :cond_16
    const/4 v3, 0x1

    iget v7, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSymbolsLabelSize:I

    int-to-float v7, v7

    invoke-virtual {v10, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1146
    const/4 v7, 0x0

    invoke-virtual {v10, v7}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    goto :goto_7

    .line 1125
    :cond_17
    :goto_5
    move v7, v3

    const/4 v3, 0x1

    iget v8, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mEndLabelSize:I

    int-to-float v8, v8

    invoke-virtual {v10, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1126
    iget-object v8, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->codes:[I

    aget v8, v8, v7

    const/16 v3, 0xa

    if-eq v8, v3, :cond_19

    iget-object v3, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->codes:[I

    aget v3, v3, v7

    const/4 v8, -0x2

    if-eq v3, v8, :cond_19

    iget-object v3, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->codes:[I

    aget v3, v3, v7

    const/4 v8, -0x6

    if-eq v3, v8, :cond_19

    iget-object v3, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->codes:[I

    aget v3, v3, v7

    const/4 v8, -0x7

    if-ne v3, v8, :cond_18

    goto :goto_6

    .line 1131
    :cond_18
    invoke-virtual {v10, v7}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    goto :goto_7

    .line 1129
    :cond_19
    :goto_6
    invoke-virtual {v10, v7}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 1149
    :goto_7
    iget-object v3, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mTypeface:Landroid/graphics/Typeface;

    if-eqz v3, :cond_1a

    .line 1150
    iget-object v3, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v10, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1153
    :cond_1a
    iget-object v3, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->codes:[I

    const/4 v7, 0x0

    aget v3, v3, v7

    const/16 v7, 0xa

    if-ne v3, v7, :cond_1b

    .line 1154
    iget-object v3, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v10, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1157
    :cond_1b
    invoke-virtual {v10}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    .line 1158
    .local v3, "fmi":Landroid/graphics/Paint$FontMetricsInt;
    const/4 v7, 0x0

    .line 1159
    .local v7, "textY":F
    iget v8, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->height:I

    move-object/from16 v24, v2

    .end local v2    # "keyBackground":Landroid/graphics/drawable/Drawable;
    .local v24, "keyBackground":Landroid/graphics/drawable/Drawable;
    iget v2, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v25, v7

    .end local v7    # "textY":F
    .local v25, "textY":F
    iget v7, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v2, v7

    sub-int/2addr v8, v2

    div-int/lit8 v8, v8, 0x2

    iget v2, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v8, v2

    iget v2, v12, Landroid/graphics/Rect;->bottom:I

    iget v7, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v7

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v8, v2

    int-to-float v2, v8

    .line 1162
    .end local v25    # "textY":F
    .local v2, "textY":F
    iget v7, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->width:I

    iget v8, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    iget v8, v12, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    iget v8, v12, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v1, v5, v7, v2, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1168
    .end local v2    # "textY":F
    .end local v3    # "fmi":Landroid/graphics/Paint$FontMetricsInt;
    nop

    .line 1182
    move-object/from16 v26, v5

    move-object/from16 v27, v9

    goto :goto_8

    .line 1168
    .end local v24    # "keyBackground":Landroid/graphics/drawable/Drawable;
    .local v2, "keyBackground":Landroid/graphics/drawable/Drawable;
    :cond_1c
    move-object/from16 v24, v2

    .end local v2    # "keyBackground":Landroid/graphics/drawable/Drawable;
    .restart local v24    # "keyBackground":Landroid/graphics/drawable/Drawable;
    iget-object v2, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1d

    .line 1170
    iget v2, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->width:I

    iget v3, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v12, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget-object v3, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 1171
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, v12, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    .line 1173
    .local v2, "drawableX":I
    iget v3, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->height:I

    iget v7, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v7

    iget v7, v12, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v7

    iget-object v7, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 1174
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    sub-int/2addr v3, v7

    div-int/lit8 v3, v3, 0x2

    iget v7, v12, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v7

    .line 1176
    .local v3, "drawableY":I
    int-to-float v7, v2

    int-to-float v8, v3

    invoke-virtual {v1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1177
    iget-object v7, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v8, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 1178
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    move-object/from16 v26, v5

    .end local v5    # "label":Ljava/lang/String;
    .local v26, "label":Ljava/lang/String;
    iget-object v5, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 1177
    move-object/from16 v27, v9

    const/4 v9, 0x0

    .end local v9    # "invalidKey":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    .local v27, "invalidKey":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    invoke-virtual {v7, v9, v9, v8, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1179
    iget-object v5, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1180
    neg-int v5, v2

    int-to-float v5, v5

    neg-int v7, v3

    int-to-float v7, v7

    invoke-virtual {v1, v5, v7}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_8

    .line 1182
    .end local v2    # "drawableX":I
    .end local v3    # "drawableY":I
    .end local v26    # "label":Ljava/lang/String;
    .end local v27    # "invalidKey":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    .restart local v5    # "label":Ljava/lang/String;
    .restart local v9    # "invalidKey":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    :cond_1d
    move-object/from16 v26, v5

    move-object/from16 v27, v9

    .end local v5    # "label":Ljava/lang/String;
    .end local v9    # "invalidKey":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    .restart local v26    # "label":Ljava/lang/String;
    .restart local v27    # "invalidKey":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    :goto_8
    iget v2, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->x:I

    neg-int v2, v2

    sub-int/2addr v2, v13

    int-to-float v2, v2

    iget v3, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->y:I

    neg-int v3, v3

    sub-int/2addr v3, v14

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1056
    move-object/from16 v17, v24

    .end local v6    # "key":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    .end local v20    # "color":I
    .end local v21    # "drawableState":[I
    .end local v24    # "keyBackground":Landroid/graphics/drawable/Drawable;
    .end local v26    # "label":Ljava/lang/String;
    .restart local v17    # "keyBackground":Landroid/graphics/drawable/Drawable;
    :goto_9
    add-int/lit8 v4, v4, 0x1

    move/from16 v8, v22

    move-object/from16 v9, v27

    const/4 v2, 0x1

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1184
    .end local v4    # "i":I
    .end local v22    # "keyCount":I
    .end local v27    # "invalidKey":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    .restart local v8    # "keyCount":I
    .restart local v9    # "invalidKey":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    :cond_1e
    move/from16 v22, v8

    move-object/from16 v27, v9

    .end local v8    # "keyCount":I
    .end local v9    # "invalidKey":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    .restart local v22    # "keyCount":I
    .restart local v27    # "invalidKey":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mInvalidatedKey:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;

    .line 1186
    iget-boolean v2, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mMiniKeyboardOnScreen:Z

    if-eqz v2, :cond_1f

    .line 1187
    iget v2, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mBackgroundDimAmount:F

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x18

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1188
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getWidth()I

    move-result v2

    int-to-float v7, v2

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getHeight()I

    move-result v2

    int-to-float v8, v2

    move-object v4, v1

    move/from16 v2, v22

    .end local v22    # "keyCount":I
    .local v2, "keyCount":I
    move-object/from16 v3, v27

    .end local v27    # "invalidKey":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    .local v3, "invalidKey":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    move-object v9, v10

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_a

    .line 1201
    .end local v2    # "keyCount":I
    .end local v3    # "invalidKey":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    .restart local v22    # "keyCount":I
    .restart local v27    # "invalidKey":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    :cond_1f
    move/from16 v2, v22

    move-object/from16 v3, v27

    .end local v22    # "keyCount":I
    .end local v27    # "invalidKey":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    .restart local v2    # "keyCount":I
    .restart local v3    # "invalidKey":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    :goto_a
    iget-object v4, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    .line 1202
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mDrawPending:Z

    .line 1203
    iget-object v4, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 1204
    return-void
.end method

.method private onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z
    .locals 20
    .param p1, "me"    # Landroid/view/MotionEvent;
    .param p2, "possiblePoly"    # Z

    .line 1701
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1702
    .local v0, "touchX":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1703
    .local v1, "touchY":I
    iget v2, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mVerticalCorrection:I

    neg-int v2, v2

    if-lt v1, v2, :cond_0

    .line 1704
    iget v2, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mVerticalCorrection:I

    add-int/2addr v1, v2

    .line 1705
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    .line 1706
    .local v8, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    .line 1707
    .local v9, "eventTime":J
    const/4 v11, 0x0

    invoke-direct {v6, v0, v1, v11}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getKeyIndices(II[I)I

    move-result v12

    .line 1710
    .local v12, "keyIndex":I
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->isKeyboardViewEnabled()Z

    move-result v2

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, -0x1

    if-nez v2, :cond_4

    iget-object v2, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeys:[Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;

    array-length v2, v2

    sub-int/2addr v2, v14

    if-eq v12, v2, :cond_4

    .line 1712
    iget-boolean v2, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mIsDownFlag:Z

    if-eqz v2, :cond_3

    iget v2, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPreviousKey:I

    if-eq v2, v15, :cond_3

    iget v2, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPreviousKey:I

    iget-object v3, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeys:[Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;

    array-length v3, v3

    sub-int/2addr v3, v14

    if-ne v2, v3, :cond_3

    .line 1713
    iget-object v2, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeys:[Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;

    iget v3, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPreviousKey:I

    aget-object v2, v2, v3

    iget-boolean v2, v2, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->pressed:Z

    if-eqz v2, :cond_2

    .line 1714
    iget-object v2, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeys:[Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;

    iget v3, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPreviousKey:I

    aget-object v2, v2, v3

    iget v3, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCurrentKeyIndex:I

    if-ne v3, v15, :cond_1

    goto :goto_0

    :cond_1
    move v14, v13

    :goto_0
    invoke-virtual {v2, v14}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->onReleased(Z)V

    .line 1715
    iput v15, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCurrentKeyIndex:I

    .line 1716
    iput-boolean v13, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mIsDownFlag:Z

    .line 1718
    :cond_2
    iget v2, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPreviousKey:I

    invoke-virtual {v6, v2}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->invalidateKey(I)V

    .line 1721
    :cond_3
    return v13

    .line 1724
    :cond_4
    move/from16 v4, p2

    iput-boolean v4, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPossiblePoly:Z

    .line 1727
    if-nez v8, :cond_5

    iget-object v2, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSwipeTracker:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$SwipeTracker;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$SwipeTracker;->clear()V

    .line 1728
    :cond_5
    iget-object v2, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSwipeTracker:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$SwipeTracker;

    invoke-virtual {v2, v7}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$SwipeTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1731
    iget-boolean v2, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mAbortKey:Z

    const/4 v3, 0x3

    if-eqz v2, :cond_6

    if-eqz v8, :cond_6

    if-eq v8, v3, :cond_6

    .line 1733
    return v14

    .line 1736
    :cond_6
    iget-object v2, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, v7}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    const/4 v5, 0x4

    if-eqz v2, :cond_7

    .line 1737
    invoke-direct {v6, v15}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->showPreview(I)V

    .line 1740
    iget-object v2, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1741
    iget-object v2, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1742
    return v14

    .line 1747
    :cond_7
    iget-boolean v2, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mMiniKeyboardOnScreen:Z

    if-eqz v2, :cond_8

    if-eq v8, v3, :cond_8

    .line 1748
    return v14

    .line 1751
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 1752
    .local v2, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 1755
    .local v3, "y":I
    invoke-direct {v6, v2, v3}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getIndexIndices(II)I

    move-result v11

    .line 1758
    .local v11, "touchIndex":I
    const-wide/16 v5, 0x0

    packed-switch v8, :pswitch_data_0

    .line 1951
    move-object/from16 v6, p0

    goto/16 :goto_5

    .line 1930
    :pswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->removeMessages()V

    .line 1931
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->dismissPopupKeyboard()V

    .line 1932
    move-object/from16 v6, p0

    iput-boolean v14, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mAbortKey:Z

    .line 1933
    invoke-direct {v6, v15}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->showPreview(I)V

    .line 1934
    iget v5, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCurrentKey:I

    invoke-virtual {v6, v5}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->invalidateKey(I)V

    .line 1937
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->isSecurityNumericKeyboard()Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 1938
    invoke-direct {v6, v2, v3}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getIndexIndices(II)I

    move-result v11

    .line 1939
    if-eq v15, v11, :cond_1e

    iget-object v5, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSpecialSymbols:[Ljava/lang/String;

    array-length v5, v5

    if-ge v11, v5, :cond_1e

    .line 1940
    invoke-direct {v6, v11}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->setItemRestore(I)V

    goto/16 :goto_5

    .line 1825
    :pswitch_1
    move-wide v13, v5

    move-object/from16 v6, p0

    const/4 v5, 0x0

    .line 1826
    .local v5, "continueLongPress":Z
    if-eq v12, v15, :cond_b

    .line 1827
    iget v13, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCurrentKey:I

    if-ne v13, v15, :cond_9

    .line 1828
    iput v12, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCurrentKey:I

    .line 1829
    iget-wide v13, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mDownTime:J

    sub-long v13, v9, v13

    iput-wide v13, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCurrentKeyTime:J

    .line 1846
    move/from16 v16, v2

    move/from16 v17, v3

    goto :goto_1

    .line 1831
    :cond_9
    iget v13, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCurrentKey:I

    if-ne v12, v13, :cond_a

    .line 1832
    iget-wide v13, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCurrentKeyTime:J

    move/from16 v16, v2

    move/from16 v17, v3

    .end local v2    # "x":I
    .end local v3    # "y":I
    .local v16, "x":I
    .local v17, "y":I
    iget-wide v2, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mLastMoveTime:J

    sub-long v2, v9, v2

    add-long/2addr v13, v2

    iput-wide v13, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCurrentKeyTime:J

    .line 1833
    const/4 v5, 0x1

    goto :goto_1

    .line 1834
    .end local v16    # "x":I
    .end local v17    # "y":I
    .restart local v2    # "x":I
    .restart local v3    # "y":I
    :cond_a
    move/from16 v16, v2

    move/from16 v17, v3

    .end local v2    # "x":I
    .end local v3    # "y":I
    .restart local v16    # "x":I
    .restart local v17    # "y":I
    iget v2, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mRepeatKeyIndex:I

    if-ne v2, v15, :cond_c

    .line 1835
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->resetMultiTap()V

    .line 1836
    iget v2, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCurrentKey:I

    iput v2, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mLastKey:I

    .line 1837
    iget v2, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mLastX:I

    iput v2, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mLastCodeX:I

    .line 1838
    iget v2, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mLastY:I

    iput v2, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mLastCodeY:I

    .line 1839
    iget-wide v2, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCurrentKeyTime:J

    add-long/2addr v2, v9

    iget-wide v13, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mLastMoveTime:J

    sub-long/2addr v2, v13

    iput-wide v2, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mLastKeyTime:J

    .line 1841
    iput v12, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCurrentKey:I

    .line 1842
    const-wide/16 v2, 0x0

    iput-wide v2, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCurrentKeyTime:J

    goto :goto_1

    .line 1846
    .end local v16    # "x":I
    .end local v17    # "y":I
    .restart local v2    # "x":I
    .restart local v3    # "y":I
    :cond_b
    move/from16 v16, v2

    move/from16 v17, v3

    .end local v2    # "x":I
    .end local v3    # "y":I
    .restart local v16    # "x":I
    .restart local v17    # "y":I
    :cond_c
    :goto_1
    if-nez v5, :cond_d

    .line 1848
    iget-object v2, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1850
    if-eq v12, v15, :cond_d

    .line 1851
    iget-object v2, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1852
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mHandler:Landroid/os/Handler;

    sget v13, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->LONGPRESS_TIMEOUT:I

    int-to-long v13, v13

    invoke-virtual {v3, v2, v13, v14}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1856
    .end local v2    # "msg":Landroid/os/Message;
    :cond_d
    iget v2, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCurrentKey:I

    if-eq v2, v15, :cond_e

    .line 1857
    iget v2, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCurrentKey:I

    iput v2, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPreviousKey:I

    .line 1860
    :cond_e
    iget v2, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCurrentKey:I

    invoke-direct {v6, v2}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->showPreview(I)V

    .line 1861
    iput-wide v9, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mLastMoveTime:J

    .line 1863
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->isSecurityNumericKeyboard()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1864
    iget v2, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPreviousIndex:I

    if-eq v11, v2, :cond_f

    if-eq v15, v11, :cond_f

    iget-object v2, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSpecialSymbols:[Ljava/lang/String;

    array-length v2, v2

    if-ge v11, v2, :cond_f

    .line 1865
    const/4 v2, 0x1

    invoke-direct {v6, v11, v2}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->setIconPressed(IZ)V

    .line 1866
    iget-object v2, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;->getItemBg()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1867
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v3, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;

    invoke-virtual {v3}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;->getText()Ljava/lang/String;

    move-result-object v3

    .line 1868
    .local v3, "text":Ljava/lang/String;
    invoke-virtual {v6, v11, v2}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->refreshIconState(ILandroid/graphics/drawable/Drawable;)V

    .line 1869
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->invalidate()V

    .line 1870
    if-eqz v3, :cond_f

    iget-object v13, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mItemTextColor:Landroid/content/res/ColorStateList;

    if-eqz v13, :cond_f

    .line 1872
    invoke-virtual {v6, v11}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getIconState(I)[I

    move-result-object v13

    .line 1873
    .local v13, "state":[I
    iget-object v14, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mItemTextColor:Landroid/content/res/ColorStateList;

    iget-object v15, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mItemTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v15}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v15

    invoke-virtual {v14, v13, v15}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v14

    .line 1874
    .local v14, "color":I
    iget-object v15, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;

    invoke-static {v15}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;->access$1500(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;)Landroid/text/TextPaint;

    move-result-object v15

    invoke-virtual {v15, v14}, Landroid/text/TextPaint;->setColor(I)V

    .line 1875
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->invalidate()V

    .line 1878
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v3    # "text":Ljava/lang/String;
    .end local v13    # "state":[I
    .end local v14    # "color":I
    :cond_f
    iget v2, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPreviousIndex:I

    const/4 v3, -0x1

    if-eq v3, v2, :cond_10

    iget v2, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPreviousIndex:I

    if-eq v11, v2, :cond_10

    iget v2, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPreviousIndex:I

    iget-object v3, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSpecialSymbols:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_10

    .line 1879
    iget v2, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPreviousIndex:I

    invoke-direct {v6, v2}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->setItemRestore(I)V

    .line 1881
    :cond_10
    iput v11, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPreviousIndex:I

    .line 1951
    .end local v5    # "continueLongPress":Z
    .end local v16    # "x":I
    .end local v17    # "y":I
    .local v2, "x":I
    .local v3, "y":I
    :cond_11
    move/from16 v2, v16

    move/from16 v3, v17

    goto/16 :goto_5

    .line 1887
    :pswitch_2
    move/from16 v16, v2

    move/from16 v17, v3

    move-object/from16 v6, p0

    .end local v2    # "x":I
    .end local v3    # "y":I
    .restart local v16    # "x":I
    .restart local v17    # "y":I
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->removeMessages()V

    .line 1888
    iget v2, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCurrentKey:I

    if-ne v12, v2, :cond_12

    .line 1889
    iget-wide v2, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCurrentKeyTime:J

    iget-wide v14, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mLastMoveTime:J

    sub-long v14, v9, v14

    add-long/2addr v2, v14

    iput-wide v2, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCurrentKeyTime:J

    goto :goto_2

    .line 1891
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->resetMultiTap()V

    .line 1892
    iget v2, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCurrentKey:I

    iput v2, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mLastKey:I

    .line 1893
    iget-wide v2, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCurrentKeyTime:J

    add-long/2addr v2, v9

    iget-wide v14, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mLastMoveTime:J

    sub-long/2addr v2, v14

    iput-wide v2, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mLastKeyTime:J

    .line 1894
    iput v12, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCurrentKey:I

    .line 1895
    const-wide/16 v2, 0x0

    iput-wide v2, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCurrentKeyTime:J

    .line 1897
    :goto_2
    iget-wide v2, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCurrentKeyTime:J

    iget-wide v14, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mLastKeyTime:J

    cmp-long v2, v2, v14

    if-gez v2, :cond_13

    iget-wide v2, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCurrentKeyTime:J

    const-wide/16 v14, 0x46

    cmp-long v2, v2, v14

    if-gez v2, :cond_13

    iget v2, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mLastKey:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_13

    .line 1899
    iget v2, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mLastKey:I

    iput v2, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCurrentKey:I

    .line 1900
    iget v0, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mLastCodeX:I

    .line 1901
    iget v1, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mLastCodeY:I

    .line 1903
    .end local v0    # "touchX":I
    .end local v1    # "touchY":I
    .local v14, "touchX":I
    .local v15, "touchY":I
    :cond_13
    move v14, v0

    move v15, v1

    const/4 v0, -0x1

    invoke-direct {v6, v0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->showPreview(I)V

    .line 1904
    iget-object v1, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyIndices:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 1906
    iget v1, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mRepeatKeyIndex:I

    if-ne v1, v0, :cond_14

    iget-boolean v0, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mMiniKeyboardOnScreen:Z

    if-nez v0, :cond_14

    iget-boolean v0, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mAbortKey:Z

    if-nez v0, :cond_14

    .line 1907
    iget v1, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCurrentKey:I

    move-object/from16 v0, p0

    move/from16 v5, v16

    .end local v16    # "x":I
    .local v5, "x":I
    move v2, v14

    move/from16 v18, v17

    .end local v17    # "y":I
    .local v18, "y":I
    move v3, v15

    move/from16 v19, v5

    .end local v5    # "x":I
    .local v19, "x":I
    move-wide v4, v9

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->detectAndSendKey(IIIJ)V

    goto :goto_3

    .line 1909
    .end local v18    # "y":I
    .end local v19    # "x":I
    .restart local v16    # "x":I
    .restart local v17    # "y":I
    :cond_14
    move/from16 v19, v16

    move/from16 v18, v17

    .end local v16    # "x":I
    .end local v17    # "y":I
    .restart local v18    # "y":I
    .restart local v19    # "x":I
    :goto_3
    invoke-virtual {v6, v12}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->invalidateKey(I)V

    .line 1910
    const/4 v0, -0x1

    iput v0, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mRepeatKeyIndex:I

    .line 1912
    iget v0, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCurrentKey:I

    iget-object v1, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeys:[Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_15

    .line 1913
    iput-boolean v13, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mIsDownFlag:Z

    .line 1916
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->isSecurityNumericKeyboard()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1917
    move/from16 v3, v18

    move/from16 v2, v19

    .end local v18    # "y":I
    .end local v19    # "x":I
    .restart local v2    # "x":I
    .restart local v3    # "y":I
    invoke-direct {v6, v2, v3}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getIndexIndices(II)I

    move-result v11

    .line 1918
    const/4 v0, -0x1

    if-eq v0, v11, :cond_1f

    iget-object v0, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSpecialSymbols:[Ljava/lang/String;

    array-length v0, v0

    if-ge v11, v0, :cond_1f

    .line 1919
    invoke-direct {v6, v11}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->setItemRestore(I)V

    .line 1920
    iget-object v0, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyboardActionListener:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$OnKeyboardActionListener;

    iget-object v1, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSpecialSymbols:[Ljava/lang/String;

    aget-object v1, v1, v11

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v4, 0x0

    invoke-interface {v0, v1, v4}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$OnKeyboardActionListener;->onKey(I[I)V

    .line 1921
    iget-object v0, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyboardActionListener:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$OnKeyboardActionListener;

    iget-object v1, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSpecialSymbols:[Ljava/lang/String;

    aget-object v1, v1, v11

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-interface {v0, v1}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$OnKeyboardActionListener;->onRelease(I)V

    .line 1922
    iget-object v0, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyboardCharListener:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$OnKeyboardCharListener;

    if-eqz v0, :cond_1f

    .line 1923
    iget-object v0, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyboardCharListener:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$OnKeyboardCharListener;

    iget-object v1, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSpecialSymbols:[Ljava/lang/String;

    aget-object v1, v1, v11

    invoke-interface {v0, v1, v13}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$OnKeyboardCharListener;->onCharacter(Ljava/lang/String;I)V

    goto/16 :goto_6

    .line 1951
    .end local v2    # "x":I
    .end local v3    # "y":I
    .restart local v18    # "y":I
    .restart local v19    # "x":I
    :cond_16
    move/from16 v3, v18

    move/from16 v2, v19

    .end local v18    # "y":I
    .end local v19    # "x":I
    .restart local v2    # "x":I
    .restart local v3    # "y":I
    goto/16 :goto_6

    .line 1760
    .end local v14    # "touchX":I
    .end local v15    # "touchY":I
    .restart local v0    # "touchX":I
    .restart local v1    # "touchY":I
    :pswitch_3
    move-object/from16 v6, p0

    iput-boolean v13, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mAbortKey:Z

    .line 1761
    iput v0, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mStartX:I

    .line 1762
    iput v1, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mStartY:I

    .line 1763
    iput v0, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mLastCodeX:I

    .line 1764
    iput v1, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mLastCodeY:I

    .line 1765
    const-wide/16 v4, 0x0

    iput-wide v4, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mLastKeyTime:J

    .line 1766
    iput-wide v4, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCurrentKeyTime:J

    .line 1767
    const/4 v4, -0x1

    iput v4, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mLastKey:I

    .line 1768
    iput v12, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCurrentKey:I

    .line 1769
    iput v12, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mDownKey:I

    .line 1770
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mDownTime:J

    .line 1771
    iget-wide v4, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mDownTime:J

    iput-wide v4, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mLastMoveTime:J

    .line 1772
    invoke-direct {v6, v9, v10, v12}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->checkMultiTap(JI)V

    .line 1774
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->isSecurityNumericKeyboard()Z

    move-result v4

    if-eqz v4, :cond_17

    const/4 v4, -0x1

    if-eq v4, v11, :cond_18

    iget-object v5, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSpecialSymbols:[Ljava/lang/String;

    array-length v5, v5

    if-ge v11, v5, :cond_18

    .line 1775
    iget-object v5, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyboardActionListener:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$OnKeyboardActionListener;

    invoke-interface {v5, v4}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$OnKeyboardActionListener;->onPress(I)V

    goto :goto_4

    .line 1777
    :cond_17
    const/4 v4, -0x1

    :cond_18
    iget-object v5, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyboardActionListener:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$OnKeyboardActionListener;

    if-eq v12, v4, :cond_19

    iget-object v4, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeys:[Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;

    aget-object v4, v4, v12

    iget-object v4, v4, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->codes:[I

    aget v13, v4, v13

    nop

    :cond_19
    invoke-interface {v5, v13}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$OnKeyboardActionListener;->onPress(I)V

    .line 1781
    :goto_4
    iget v4, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCurrentKey:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1a

    .line 1782
    iget v4, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCurrentKey:I

    iput v4, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPreviousKey:I

    .line 1784
    :cond_1a
    iget v4, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCurrentKey:I

    iget-object v5, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeys:[Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;

    array-length v5, v5

    const/4 v13, 0x1

    sub-int/2addr v5, v13

    if-ne v4, v5, :cond_1b

    .line 1785
    iput-boolean v13, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mIsDownFlag:Z

    .line 1788
    :cond_1b
    iget v4, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCurrentKey:I

    if-ltz v4, :cond_1c

    iget-object v4, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeys:[Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;

    iget v5, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCurrentKey:I

    aget-object v4, v4, v5

    iget-boolean v4, v4, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->repeatable:Z

    if-eqz v4, :cond_1c

    .line 1789
    iget v4, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCurrentKey:I

    iput v4, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mRepeatKeyIndex:I

    .line 1790
    iget-object v4, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 1791
    .local v4, "msg":Landroid/os/Message;
    iget-object v5, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mHandler:Landroid/os/Handler;

    const-wide/16 v13, 0x190

    invoke-virtual {v5, v4, v13, v14}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1792
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->repeatKey()Z

    .line 1794
    iget-boolean v5, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mAbortKey:Z

    if-eqz v5, :cond_1c

    .line 1795
    const/4 v5, -0x1

    iput v5, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mRepeatKeyIndex:I

    .line 1796
    goto :goto_5

    .line 1799
    .end local v4    # "msg":Landroid/os/Message;
    :cond_1c
    const/4 v5, -0x1

    iget v4, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCurrentKey:I

    if-eq v4, v5, :cond_1d

    .line 1800
    iget-object v4, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x4

    invoke-virtual {v4, v5, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1801
    .restart local v4    # "msg":Landroid/os/Message;
    iget-object v5, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mHandler:Landroid/os/Handler;

    sget v13, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->LONGPRESS_TIMEOUT:I

    int-to-long v13, v13

    invoke-virtual {v5, v4, v13, v14}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1803
    .end local v4    # "msg":Landroid/os/Message;
    :cond_1d
    invoke-direct {v6, v12}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->showPreview(I)V

    .line 1805
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->isSecurityNumericKeyboard()Z

    move-result v4

    if-eqz v4, :cond_1e

    const/4 v4, -0x1

    if-eq v4, v11, :cond_1e

    iget-object v4, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSpecialSymbols:[Ljava/lang/String;

    array-length v4, v4

    if-ge v11, v4, :cond_1e

    .line 1806
    iput v11, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPreviousIndex:I

    .line 1807
    invoke-direct {v6, v11}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->sendAccessibilityViewText(I)V

    .line 1808
    const/4 v4, 0x1

    invoke-direct {v6, v11, v4}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->setIconPressed(IZ)V

    .line 1809
    iget-object v4, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;

    invoke-virtual {v4}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;->getItemBg()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1810
    .local v4, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v5, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;

    invoke-virtual {v5}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;->getText()Ljava/lang/String;

    move-result-object v5

    .line 1811
    .local v5, "text":Ljava/lang/String;
    invoke-virtual {v6, v11, v4}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->refreshIconState(ILandroid/graphics/drawable/Drawable;)V

    .line 1812
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->invalidate()V

    .line 1813
    if-eqz v5, :cond_1e

    iget-object v13, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mItemTextColor:Landroid/content/res/ColorStateList;

    if-eqz v13, :cond_1e

    .line 1815
    invoke-virtual {v6, v11}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getIconState(I)[I

    move-result-object v13

    .line 1816
    .restart local v13    # "state":[I
    iget-object v14, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mItemTextColor:Landroid/content/res/ColorStateList;

    iget-object v15, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mItemTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v15}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v15

    invoke-virtual {v14, v13, v15}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v14

    .line 1817
    .local v14, "color":I
    iget-object v15, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;

    invoke-static {v15}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;->access$1500(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;)Landroid/text/TextPaint;

    move-result-object v15

    invoke-virtual {v15, v14}, Landroid/text/TextPaint;->setColor(I)V

    .line 1818
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->invalidate()V

    .line 1819
    .end local v13    # "state":[I
    .end local v14    # "color":I
    nop

    .line 1951
    .end local v4    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v5    # "text":Ljava/lang/String;
    :cond_1e
    :goto_5
    move v14, v0

    move v15, v1

    .end local v0    # "touchX":I
    .end local v1    # "touchY":I
    .local v14, "touchX":I
    .restart local v15    # "touchY":I
    :cond_1f
    :goto_6
    iput v14, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mLastX:I

    .line 1952
    iput v15, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mLastY:I

    .line 1953
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private openPopupIfRequired(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "me"    # Landroid/view/MotionEvent;

    .line 1524
    iget v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPopupLayout:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1525
    return v1

    .line 1527
    :cond_0
    iget v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCurrentKey:I

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCurrentKey:I

    iget-object v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeys:[Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    goto :goto_0

    .line 1531
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeys:[Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;

    iget v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCurrentKey:I

    aget-object v0, v0, v1

    .line 1532
    .local v0, "popupKey":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->onLongPress(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;)Z

    move-result v1

    .line 1533
    .local v1, "result":Z
    if-eqz v1, :cond_2

    .line 1534
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mAbortKey:Z

    .line 1535
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->showPreview(I)V

    .line 1537
    :cond_2
    return v1

    .line 1528
    .end local v0    # "popupKey":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    .end local v1    # "result":Z
    :cond_3
    :goto_0
    return v1
.end method

.method private removeMessages()V
    .locals 2

    .line 2024
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2025
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2026
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2027
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2029
    :cond_0
    return-void
.end method

.method private repeatKey()Z
    .locals 7

    .line 1984
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeys:[Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;

    iget v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mRepeatKeyIndex:I

    aget-object v0, v0, v1

    .line 1985
    .local v0, "key":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    iget v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCurrentKey:I

    iget v3, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->x:I

    iget v4, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->y:I

    iget-wide v5, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mLastTapTime:J

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->detectAndSendKey(IIIJ)V

    .line 1986
    const/4 v1, 0x1

    return v1
.end method

.method private resetMultiTap()V
    .locals 3

    .line 2059
    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mLastSentIndex:I

    .line 2060
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mTapCount:I

    .line 2061
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mLastTapTime:J

    .line 2062
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mInMultiTap:Z

    .line 2063
    return-void
.end method

.method private sendAccessibilityEventForUnicodeCharacter(II)V
    .locals 3
    .param p1, "eventType"    # I
    .param p2, "code"    # I

    .line 1451
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1452
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 1453
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1455
    const/16 v1, 0xa

    if-eq p2, v1, :cond_0

    packed-switch p2, :pswitch_data_0

    .line 1478
    int-to-char v1, p2

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1472
    :pswitch_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$string;->keyboardview_keycode_shift:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1473
    .local v1, "text":Ljava/lang/String;
    goto :goto_0

    .line 1469
    .end local v1    # "text":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$string;->keyboardview_keycode_mode_change:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1470
    .restart local v1    # "text":Ljava/lang/String;
    goto :goto_0

    .line 1460
    .end local v1    # "text":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$string;->keyboardview_keycode_cancel:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1461
    .restart local v1    # "text":Ljava/lang/String;
    goto :goto_0

    .line 1466
    .end local v1    # "text":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$string;->keyboardview_keycode_done:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1467
    .restart local v1    # "text":Ljava/lang/String;
    goto :goto_0

    .line 1463
    .end local v1    # "text":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$string;->keyboardview_keycode_delete:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1464
    .restart local v1    # "text":Ljava/lang/String;
    goto :goto_0

    .line 1457
    .end local v1    # "text":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$string;->keyboardview_keycode_alt:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1458
    .restart local v1    # "text":Ljava/lang/String;
    goto :goto_0

    .line 1475
    .end local v1    # "text":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$string;->keyboardview_keycode_enter:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1476
    .restart local v1    # "text":Ljava/lang/String;
    nop

    .line 1478
    :goto_0
    nop

    .line 1481
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1482
    iget-object v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1485
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v1    # "text":Ljava/lang/String;
    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private sendAccessibilityEventForUnicodeCharacter(IILcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;)V
    .locals 6
    .param p1, "eventType"    # I
    .param p2, "code"    # I
    .param p3, "key"    # Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;

    .line 2365
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2366
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 2367
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2368
    const/4 v1, 0x0

    .line 2369
    .local v1, "text":Ljava/lang/String;
    iget-object v2, p3, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->label:Ljava/lang/CharSequence;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p3, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-direct {p0, v2}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2370
    .local v2, "label":Ljava/lang/String;
    :goto_0
    const/16 v3, 0xa

    if-eq p2, v3, :cond_6

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    .line 2409
    int-to-char v4, p2

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 2390
    :pswitch_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getNewShifted()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 2391
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcoui/support/appcompat/R$string;->coui_keyboard_view_keycode_low_shift:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 2392
    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getNewShifted()I

    move-result v4

    if-nez v4, :cond_2

    .line 2393
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcoui/support/appcompat/R$string;->coui_keyboardview_keycode_initialcapitalization:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 2394
    :cond_2
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getNewShifted()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7

    .line 2395
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcoui/support/appcompat/R$string;->coui_keyboardview_keycode_capslock:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 2375
    :pswitch_1
    if-eqz v2, :cond_3

    const-string v4, "ABC"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2376
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcoui/support/appcompat/R$string;->coui_keyboardview_keycode_letters:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 2377
    :cond_3
    if-eqz v2, :cond_7

    const-string v4, "?#+"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2378
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcoui/support/appcompat/R$string;->coui_keyboardview_keycode_symbol:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 2372
    :pswitch_2
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcoui/support/appcompat/R$string;->keyboardview_keycode_delete:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2373
    goto :goto_1

    .line 2382
    :pswitch_3
    if-eqz v2, :cond_4

    const-string v4, "ABC"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2383
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcoui/support/appcompat/R$string;->coui_keyboardview_keycode_letters:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 2384
    :cond_4
    if-eqz v2, :cond_7

    const-string v4, "123"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2385
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcoui/support/appcompat/R$string;->coui_keyboardview_keycode_number:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 2402
    :pswitch_4
    if-eqz v2, :cond_5

    const-string v4, "?#+"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2403
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcoui/support/appcompat/R$string;->coui_keyboardview_keycode_symbol:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 2404
    :cond_5
    if-eqz v2, :cond_7

    const-string v4, "$\u00a5\u20ac"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2405
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcoui/support/appcompat/R$string;->coui_keyboardview_keycode_moresymbols:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 2399
    :cond_6
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcoui/support/appcompat/R$string;->keyboardview_keycode_enter:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2400
    nop

    .line 2411
    :cond_7
    :goto_1
    const/4 v4, -0x5

    if-eq p2, v4, :cond_b

    const/4 v4, -0x2

    if-eq p2, v4, :cond_b

    const/4 v4, -0x1

    if-eq p2, v4, :cond_b

    if-eq p2, v3, :cond_b

    const/4 v3, -0x6

    if-eq p2, v3, :cond_b

    const/4 v3, -0x7

    if-ne p2, v3, :cond_8

    goto :goto_2

    .line 2416
    :cond_8
    iget-object v3, p3, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->announceText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_9

    .line 2417
    iget-object v3, p3, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->announceText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2418
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 2419
    :cond_9
    iget-object v3, p3, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->label:Ljava/lang/CharSequence;

    if-eqz v3, :cond_a

    .line 2420
    iget-object v3, p3, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2421
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 2423
    :cond_a
    int-to-char v3, p2

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    .line 2424
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2425
    iget-object v3, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_3

    .line 2414
    :cond_b
    :goto_2
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 2429
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v1    # "text":Ljava/lang/String;
    .end local v2    # "label":Ljava/lang/String;
    :cond_c
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private sendAccessibilityViewText(I)V
    .locals 7
    .param p1, "index"    # I

    .line 1957
    const/4 v0, 0x0

    .line 1958
    .local v0, "ATTERRISK":I
    const/4 v1, 0x1

    .line 1959
    .local v1, "MINUS":I
    const/4 v2, 0x2

    .line 1960
    .local v2, "ATSYMBOL":I
    const/4 v3, 0x3

    .line 1961
    .local v3, "DOLLAR":I
    const/4 v4, 0x0

    .line 1962
    .local v4, "text":Ljava/lang/String;
    iget-object v5, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1963
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1974
    :pswitch_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcoui/support/appcompat/R$string;->coui_keyboardview_keycode_dollar:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1971
    :pswitch_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcoui/support/appcompat/R$string;->coui_keyboardview_keycode_atsymbol:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1972
    goto :goto_0

    .line 1968
    :pswitch_2
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcoui/support/appcompat/R$string;->coui_keyboardview_keycode_minus:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1969
    goto :goto_0

    .line 1965
    :pswitch_3
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcoui/support/appcompat/R$string;->coui_keyboardview_keycode_asterisk:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1966
    nop

    .line 1977
    :goto_0
    if-eqz v4, :cond_0

    .line 1978
    invoke-virtual {p0, v4}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1981
    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private sendCharToTarget(ILcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "key"    # Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;

    .line 2132
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyboardCharListener:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$OnKeyboardCharListener;

    if-nez v0, :cond_0

    .line 2133
    return-void

    .line 2135
    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_7

    const/4 v0, -0x2

    if-eq p1, v0, :cond_7

    const/4 v0, -0x6

    if-eq p1, v0, :cond_7

    const/4 v0, -0x7

    if-ne p1, v0, :cond_1

    goto :goto_2

    .line 2141
    :cond_1
    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    .line 2142
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyboardCharListener:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$OnKeyboardCharListener;

    const-string v1, ""

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$OnKeyboardCharListener;->onCharacter(Ljava/lang/String;I)V

    goto :goto_1

    .line 2143
    :cond_2
    const/16 v0, 0x20

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3

    .line 2144
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyboardCharListener:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$OnKeyboardCharListener;

    const-string v2, " "

    invoke-interface {v0, v2, v1}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$OnKeyboardCharListener;->onCharacter(Ljava/lang/String;I)V

    goto :goto_1

    .line 2145
    :cond_3
    const/4 v0, -0x5

    if-ne p1, v0, :cond_4

    .line 2146
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyboardCharListener:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$OnKeyboardCharListener;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$OnKeyboardCharListener;->onCharacter(Ljava/lang/String;I)V

    goto :goto_1

    .line 2148
    :cond_4
    iget-object v0, p2, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->label:Ljava/lang/CharSequence;

    if-nez v0, :cond_5

    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    iget-object v0, p2, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2149
    .local v0, "label":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_6

    .line 2150
    iget-object v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyboardCharListener:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$OnKeyboardCharListener;

    invoke-interface {v2, v0, v1}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$OnKeyboardCharListener;->onCharacter(Ljava/lang/String;I)V

    .line 2153
    .end local v0    # "label":Ljava/lang/String;
    :cond_6
    :goto_1
    return-void

    .line 2139
    :cond_7
    :goto_2
    return-void
.end method

.method private setIconPressed(IZ)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "pressed"    # Z

    .line 2238
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPrivateFlags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2239
    .local v0, "privateFlags":I
    if-eqz p2, :cond_0

    .line 2240
    or-int/lit16 v0, v0, 0x4000

    goto :goto_0

    .line 2242
    :cond_0
    and-int/lit16 v0, v0, -0x4001

    .line 2244
    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPrivateFlags:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2245
    return-void
.end method

.method private setItemRestore(I)V
    .locals 5
    .param p1, "index"    # I

    .line 2267
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->setIconPressed(IZ)V

    .line 2268
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;->getItemBg()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2269
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;->getText()Ljava/lang/String;

    move-result-object v1

    .line 2270
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->refreshIconState(ILandroid/graphics/drawable/Drawable;)V

    .line 2272
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mItemTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_0

    .line 2274
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getIconState(I)[I

    move-result-object v2

    .line 2275
    .local v2, "state":[I
    iget-object v3, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mItemTextColor:Landroid/content/res/ColorStateList;

    iget-object v4, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mItemTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    .line 2276
    .local v3, "color":I
    iget-object v4, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;

    invoke-static {v4}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;->access$1500(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$Item;)Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 2278
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->invalidate()V

    .line 2280
    .end local v2    # "state":[I
    .end local v3    # "color":I
    :cond_0
    return-void
.end method

.method private showKey(I)V
    .locals 14
    .param p1, "keyIndex"    # I

    .line 1374
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPreviewPopup:Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;

    .line 1375
    .local v0, "previewPopup":Landroid/widget/PopupWindow;
    iget-object v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeys:[Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;

    .line 1376
    .local v1, "keys":[Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    if-ltz p1, :cond_a

    iget-object v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeys:[Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;

    array-length v2, v2

    if-lt p1, v2, :cond_0

    goto/16 :goto_6

    .line 1377
    :cond_0
    aget-object v2, v1, p1

    .line 1378
    .local v2, "key":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    iget-object v3, v2, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v3, :cond_2

    .line 1379
    iget-object v3, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPreviewText:Landroid/widget/TextView;

    iget-object v8, v2, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_1

    iget-object v8, v2, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    iget-object v8, v2, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v3, v6, v6, v6, v8}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1381
    iget-object v3, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1383
    :cond_2
    iget-object v3, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v3, v6, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1384
    iget-object v3, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getPreviewText(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1385
    iget-object v3, v2, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v3, v4, :cond_3

    iget-object v3, v2, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->codes:[I

    array-length v3, v3

    if-ge v3, v5, :cond_3

    .line 1386
    iget-object v3, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPreviewText:Landroid/widget/TextView;

    iget v6, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyTextSize:I

    int-to-float v6, v6

    invoke-virtual {v3, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1387
    iget-object v3, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPreviewText:Landroid/widget/TextView;

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    .line 1389
    :cond_3
    iget-object v3, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPreviewText:Landroid/widget/TextView;

    iget v6, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPreviewTextSizeLarge:I

    int-to-float v6, v6

    invoke-virtual {v3, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1391
    iget-object v3, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPreviewText:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1394
    :goto_1
    iget-object v3, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1395
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 1394
    invoke-virtual {v3, v6, v8}, Landroid/widget/TextView;->measure(II)V

    .line 1398
    iget v3, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPreviewWidth:I

    .line 1399
    .local v3, "popupWidth":I
    iget v6, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPreviewHeight:I

    .line 1400
    .local v6, "popupHeight":I
    iget-object v8, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 1401
    .local v8, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v8, :cond_4

    .line 1402
    iput v3, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1403
    iput v6, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1405
    :cond_4
    iget-boolean v9, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPreviewCentered:Z

    if-nez v9, :cond_5

    .line 1407
    iget v9, v2, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->x:I

    iget v10, v2, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->width:I

    div-int/2addr v10, v5

    add-int/2addr v9, v10

    iget v10, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPreviewWidth:I

    div-int/2addr v10, v5

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getPaddingLeft()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPopupPreviewX:I

    .line 1408
    iget v9, v2, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->y:I

    sub-int/2addr v9, v6

    iget v10, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPreviewOffset:I

    add-int/2addr v9, v10

    iput v9, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPopupPreviewY:I

    goto :goto_2

    .line 1411
    :cond_5
    iget-object v9, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v9

    div-int/2addr v9, v5

    rsub-int v9, v9, 0xa0

    iput v9, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPopupPreviewX:I

    .line 1412
    iget-object v9, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    neg-int v9, v9

    iput v9, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPopupPreviewY:I

    .line 1414
    :goto_2
    iget-object v9, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1415
    iget-object v9, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCoordinates:[I

    invoke-virtual {p0, v9}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getLocationInWindow([I)V

    .line 1416
    iget-object v9, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCoordinates:[I

    aget v10, v9, v7

    iget v11, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mMiniKeyboardOffsetX:I

    add-int/2addr v10, v11

    aput v10, v9, v7

    .line 1417
    iget-object v9, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCoordinates:[I

    aget v10, v9, v4

    iget v11, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mMiniKeyboardOffsetY:I

    add-int/2addr v10, v11

    aput v10, v9, v4

    .line 1420
    iget-object v9, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iget v10, v2, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->popupResId:I

    if-eqz v10, :cond_6

    sget-object v10, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->LONG_PRESSABLE_STATE_SET:[I

    goto :goto_3

    :cond_6
    sget-object v10, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->EMPTY_STATE_SET:[I

    :goto_3
    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1422
    iget v9, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPopupPreviewX:I

    iget-object v10, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCoordinates:[I

    aget v10, v10, v7

    add-int/2addr v9, v10

    iput v9, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPopupPreviewX:I

    .line 1423
    iget v9, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPopupPreviewY:I

    iget-object v10, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCoordinates:[I

    aget v10, v10, v4

    add-int/2addr v9, v10

    iput v9, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPopupPreviewY:I

    .line 1426
    iget-object v9, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCoordinates:[I

    invoke-virtual {p0, v9}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getLocationOnScreen([I)V

    .line 1427
    iget v9, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPopupPreviewY:I

    iget-object v10, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCoordinates:[I

    aget v4, v10, v4

    add-int/2addr v9, v4

    if-gez v9, :cond_8

    .line 1430
    iget v4, v2, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->x:I

    iget v9, v2, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->width:I

    add-int/2addr v4, v9

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getWidth()I

    move-result v9

    div-int/2addr v9, v5

    const-wide/high16 v10, 0x4004000000000000L    # 2.5

    if-gt v4, v9, :cond_7

    .line 1431
    iget v4, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPopupPreviewX:I

    iget v5, v2, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->width:I

    int-to-double v12, v5

    mul-double/2addr v12, v10

    double-to-int v5, v12

    add-int/2addr v4, v5

    iput v4, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPopupPreviewX:I

    goto :goto_4

    .line 1433
    :cond_7
    iget v4, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPopupPreviewX:I

    iget v5, v2, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->width:I

    int-to-double v12, v5

    mul-double/2addr v12, v10

    double-to-int v5, v12

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPopupPreviewX:I

    .line 1435
    :goto_4
    iget v4, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPopupPreviewY:I

    add-int/2addr v4, v6

    iput v4, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPopupPreviewY:I

    .line 1438
    :cond_8
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1439
    iget v4, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPopupPreviewX:I

    iget v5, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPopupPreviewY:I

    invoke-virtual {v0, v4, v5, v3, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_5

    .line 1442
    :cond_9
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1443
    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1444
    iget-object v4, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPopupParent:Landroid/view/View;

    iget v5, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPopupPreviewX:I

    iget v9, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPopupPreviewY:I

    invoke-virtual {v0, v4, v7, v5, v9}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1447
    :goto_5
    iget-object v4, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1448
    return-void

    .line 1376
    .end local v2    # "key":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    .end local v3    # "popupWidth":I
    .end local v6    # "popupHeight":I
    .end local v8    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_a
    :goto_6
    return-void
.end method

.method private showPreview(I)V
    .locals 9
    .param p1, "keyIndex"    # I

    .line 1315
    iget v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCurrentKeyIndex:I

    .line 1316
    .local v0, "oldKeyIndex":I
    iget-object v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPreviewPopup:Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;

    .line 1318
    .local v1, "previewPopup":Landroid/widget/PopupWindow;
    iput p1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCurrentKeyIndex:I

    .line 1320
    iget-object v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeys:[Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;

    .line 1321
    .local v2, "keys":[Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    iget v3, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCurrentKeyIndex:I

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eq v0, v3, :cond_2

    .line 1322
    const/4 v3, 0x0

    if-eq v0, v5, :cond_1

    array-length v6, v2

    if-le v6, v0, :cond_1

    .line 1323
    aget-object v6, v2, v0

    .line 1324
    .local v6, "oldKey":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    iget v7, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCurrentKeyIndex:I

    if-ne v7, v5, :cond_0

    move v7, v4

    goto :goto_0

    :cond_0
    move v7, v3

    :goto_0
    invoke-virtual {v6, v7}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->onReleased(Z)V

    .line 1325
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->invalidateKey(I)V

    .line 1326
    iget-object v7, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->codes:[I

    aget v7, v7, v3

    .line 1327
    .local v7, "keyCode":I
    const/16 v8, 0x100

    invoke-direct {p0, v8, v7}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->sendAccessibilityEventForUnicodeCharacter(II)V

    .line 1330
    const/high16 v8, 0x10000

    invoke-direct {p0, v8, v7}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->sendAccessibilityEventForUnicodeCharacter(II)V

    .line 1333
    .end local v6    # "oldKey":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    .end local v7    # "keyCode":I
    :cond_1
    iget v6, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCurrentKeyIndex:I

    if-eq v6, v5, :cond_2

    array-length v6, v2

    iget v7, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCurrentKeyIndex:I

    if-le v6, v7, :cond_2

    .line 1334
    iget v6, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCurrentKeyIndex:I

    aget-object v6, v2, v6

    .line 1335
    .local v6, "newKey":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    invoke-virtual {v6}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->onPressed()V

    .line 1336
    iget v7, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCurrentKeyIndex:I

    invoke-virtual {p0, v7}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->invalidateKey(I)V

    .line 1337
    iget-object v7, v6, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->codes:[I

    aget v3, v7, v3

    .line 1339
    .local v3, "keyCode":I
    const/16 v7, 0x80

    invoke-direct {p0, v7, v3, v6}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->sendAccessibilityEventForUnicodeCharacter(IILcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;)V

    .line 1342
    const v7, 0x8000

    invoke-direct {p0, v7, v3, v6}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->sendAccessibilityEventForUnicodeCharacter(IILcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;)V

    .line 1348
    .end local v3    # "keyCode":I
    .end local v6    # "newKey":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    :cond_2
    iget v3, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCurrentKeyIndex:I

    invoke-direct {p0, v3}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->isKeyPreview(I)Z

    move-result v3

    .line 1350
    .local v3, "isKeyPreview":Z
    iget v6, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCurrentKeyIndex:I

    if-eq v0, v6, :cond_5

    iget-boolean v6, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mShowPreview:Z

    if-eqz v6, :cond_5

    if-eqz v3, :cond_5

    .line 1351
    iget-object v6, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1352
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1353
    if-ne p1, v5, :cond_3

    .line 1354
    iget-object v4, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    .line 1355
    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x4b

    .line 1354
    invoke-virtual {v4, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1359
    :cond_3
    if-eq p1, v5, :cond_5

    .line 1360
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4

    .line 1362
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->showKey(I)V

    goto :goto_1

    .line 1367
    :cond_4
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->showKey(I)V

    .line 1371
    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public clearPressState()V
    .locals 1

    .line 2467
    invoke-direct {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->removeMessages()V

    .line 2468
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->showPreview(I)V

    .line 2469
    return-void
.end method

.method public closing()V
    .locals 1

    .line 2010
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPreviewPopup:Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2011
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPreviewPopup:Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;->dismiss()V

    .line 2013
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPreviousKey:I

    .line 2015
    invoke-direct {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->removeMessages()V

    .line 2017
    invoke-direct {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->dismissPopupKeyboard()V

    .line 2018
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 2019
    iput-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 2020
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2021
    return-void
.end method

.method protected getIconState(I)[I
    .locals 3
    .param p1, "index"    # I

    .line 2198
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPrivateFlags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2199
    .local v0, "privateFlags":I
    and-int/lit16 v1, v0, 0x400

    if-nez v1, :cond_0

    goto :goto_0

    .line 2202
    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mIconState:Ljava/util/List;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->onCreateIconState(II)[I

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2203
    and-int/lit16 v0, v0, -0x401

    .line 2204
    iget-object v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPrivateFlags:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2207
    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mIconState:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    return-object v1
.end method

.method public getKeyboard()Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;
    .locals 1

    .line 776
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    return-object v0
.end method

.method public getNewShifted()I
    .locals 1

    .line 832
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    if-eqz v0, :cond_0

    .line 833
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->getNewShifted()I

    move-result v0

    return v0

    .line 835
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method protected getOnKeyboardActionListener()Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$OnKeyboardActionListener;
    .locals 1

    .line 669
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyboardActionListener:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$OnKeyboardActionListener;

    return-object v0
.end method

.method public handleBack()Z
    .locals 1

    .line 2051
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2052
    invoke-direct {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->dismissPopupKeyboard()V

    .line 2053
    const/4 v0, 0x1

    return v0

    .line 2055
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected iconStateChanged(ILandroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 2191
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getIconState(I)[I

    move-result-object v0

    .line 2192
    .local v0, "state":[I
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2193
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2195
    :cond_0
    return-void
.end method

.method public invalidateAllKeys()V
    .locals 4

    .line 1495
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->union(IIII)V

    .line 1496
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mDrawPending:Z

    .line 1497
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->invalidate()V

    .line 1498
    return-void
.end method

.method public invalidateKey(I)V
    .locals 7
    .param p1, "keyIndex"    # I

    .line 1509
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeys:[Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;

    if-nez v0, :cond_0

    return-void

    .line 1510
    :cond_0
    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeys:[Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 1513
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeys:[Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;

    aget-object v0, v0, p1

    .line 1514
    .local v0, "key":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    iput-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mInvalidatedKey:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;

    .line 1515
    iget-object v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    iget v2, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->x:I

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->y:I

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->x:I

    iget v5, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->width:I

    add-int/2addr v4, v5

    .line 1516
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->y:I

    iget v6, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->height:I

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    .line 1515
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->union(IIII)V

    .line 1517
    invoke-direct {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->onBufferDraw()V

    .line 1518
    iget v1, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->x:I

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->y:I

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->x:I

    iget v4, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->width:I

    add-int/2addr v3, v4

    .line 1519
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->y:I

    iget v5, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->height:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    .line 1518
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->invalidate(IIII)V

    .line 1520
    return-void

    .line 1511
    .end local v0    # "key":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;
    :cond_2
    :goto_0
    return-void
.end method

.method public isKeyboardViewEnabled()Z
    .locals 1

    .line 2286
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mIsEnable:Z

    return v0
.end method

.method public isPreviewEnabled()Z
    .locals 1

    .line 871
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mShowPreview:Z

    return v0
.end method

.method public isProximityCorrectionEnabled()Z
    .locals 1

    .line 919
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mProximityCorrectOn:Z

    return v0
.end method

.method public isSecurityNumericKeyboard()Z
    .locals 2

    .line 2361
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->getKeyboardType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShifted()Z
    .locals 1

    .line 858
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    if-eqz v0, :cond_0

    .line 859
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->isShifted()Z

    move-result v0

    return v0

    .line 861
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .line 573
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 574
    invoke-direct {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->initGestureDetector()V

    .line 575
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 576
    new-instance v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$2;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$2;-><init>(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mHandler:Landroid/os/Handler;

    .line 603
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 939
    invoke-direct {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->dismissPopupKeyboard()V

    .line 940
    return-void
.end method

.method protected onCreateIconState(II)[I
    .locals 7
    .param p1, "index"    # I
    .param p2, "extraSpace"    # I

    .line 2212
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPrivateFlags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2214
    .local v0, "mViewFlags":I
    iget-object v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPrivateFlags:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2215
    .local v1, "privateFlags":I
    const/4 v2, 0x0

    .line 2216
    .local v2, "viewStateIndex":I
    and-int/lit16 v3, v1, 0x4000

    if-eqz v3, :cond_0

    .line 2217
    or-int/lit8 v2, v2, 0x10

    .line 2218
    :cond_0
    and-int/lit8 v3, v0, 0x20

    if-nez v3, :cond_1

    .line 2219
    or-int/lit8 v2, v2, 0x8

    .line 2220
    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->hasWindowFocus()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2221
    or-int/lit8 v2, v2, 0x1

    .line 2223
    :cond_2
    sget-object v3, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->VIEW_STATE_SETS:[[[I

    aget-object v3, v3, p1

    aget-object v3, v3, v2

    .line 2224
    .local v3, "IconState":[I
    if-nez p2, :cond_3

    .line 2225
    return-object v3

    .line 2228
    :cond_3
    if-eqz v3, :cond_4

    .line 2229
    array-length v4, v3

    add-int/2addr v4, p2

    new-array v4, v4, [I

    .line 2230
    .local v4, "fullState":[I
    array-length v5, v3

    const/4 v6, 0x0

    invoke-static {v3, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 2232
    .end local v4    # "fullState":[I
    :cond_4
    new-array v4, p2, [I

    .line 2234
    .restart local v4    # "fullState":[I
    :goto_0
    return-object v4
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 2033
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2034
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->closing()V

    .line 2035
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1000
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1001
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mDrawPending:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyboardChanged:Z

    if-eqz v0, :cond_1

    .line 1002
    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->onBufferDraw()V

    .line 1004
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1006
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->isSecurityNumericKeyboard()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1007
    iget v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSpecialSymbolsOffset:I

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->drawSpecialSymbol(Landroid/graphics/Canvas;I)V

    .line 1010
    :cond_2
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1635
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1636
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1637
    .local v0, "action":I
    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1647
    :pswitch_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 1639
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1641
    goto :goto_0

    .line 1643
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1645
    nop

    .line 1651
    :goto_0
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1652
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1654
    .end local v0    # "action":I
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onLongPress(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;)Z
    .locals 11
    .param p1, "popupKey"    # Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;

    .line 1549
    iget v6, p1, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->popupResId:I

    .line 1551
    .local v6, "popupKeyboardId":I
    const/4 v7, 0x0

    if-eqz v6, :cond_4

    .line 1552
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    .line 1553
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    const v1, 0x1020026

    if-nez v0, :cond_2

    .line 1554
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/view/LayoutInflater;

    .line 1556
    .local v8, "inflater":Landroid/view/LayoutInflater;
    iget v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPopupLayout:I

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    .line 1557
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    iput-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mMiniKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    .line 1559
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    const v1, 0x1020027

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 1561
    .local v9, "closeButton":Landroid/view/View;
    if-eqz v9, :cond_0

    invoke-virtual {v9, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1562
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mMiniKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    new-instance v1, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$4;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$4;-><init>(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->setOnKeyboardActionListener(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$OnKeyboardActionListener;)V

    .line 1595
    iget-object v0, p1, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 1596
    new-instance v10, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p1, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    const/4 v4, -0x1

    .line 1597
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getPaddingRight()I

    move-result v2

    add-int v5, v0, v2

    move-object v0, v10

    move v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    goto :goto_0

    .line 1599
    :cond_1
    new-instance v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;-><init>(Landroid/content/Context;I)V

    .line 1601
    .local v0, "keyboard":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;
    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mMiniKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->setKeyboard(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;)V

    .line 1602
    iget-object v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mMiniKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    invoke-virtual {v1, p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->setPopupParent(Landroid/view/View;)V

    .line 1603
    iget-object v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    .line 1604
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getWidth()I

    move-result v2

    const/high16 v3, -0x80000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1605
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getHeight()I

    move-result v4

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1603
    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 1607
    iget-object v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    iget-object v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1608
    .end local v0    # "keyboard":Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;
    .end local v8    # "inflater":Landroid/view/LayoutInflater;
    .end local v9    # "closeButton":Landroid/view/View;
    goto :goto_1

    .line 1609
    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    iput-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mMiniKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    .line 1612
    :goto_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCoordinates:[I

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getLocationInWindow([I)V

    .line 1613
    iget v0, p1, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->x:I

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPopupX:I

    .line 1614
    iget v0, p1, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->y:I

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPopupY:I

    .line 1615
    iget v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPopupX:I

    iget v1, p1, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;->width:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPopupX:I

    .line 1616
    iget v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPopupY:I

    iget-object v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPopupY:I

    .line 1617
    iget v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPopupX:I

    iget-object v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCoordinates:[I

    aget v1, v1, v7

    add-int/2addr v0, v1

    .line 1618
    .local v0, "x":I
    iget v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPopupY:I

    iget-object v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mCoordinates:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    add-int/2addr v1, v2

    .line 1619
    .local v1, "y":I
    iget-object v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mMiniKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    if-gez v0, :cond_3

    move v4, v7

    goto :goto_2

    :cond_3
    move v4, v0

    :goto_2
    invoke-virtual {v2, v4, v1}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->setPopupOffset(II)V

    .line 1620
    iget-object v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mMiniKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getNewShifted()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->setNewShifted(I)V

    .line 1621
    iget-object v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1622
    iget-object v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1623
    iget-object v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1624
    iget-object v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v2, p0, v7, v0, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1625
    iput-boolean v3, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mMiniKeyboardOnScreen:Z

    .line 1627
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->invalidateAllKeys()V

    .line 1628
    return v3

    .line 1630
    .end local v0    # "x":I
    .end local v1    # "y":I
    :cond_4
    return v7
.end method

.method public onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 955
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    if-nez v0, :cond_0

    .line 956
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 958
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 962
    .local v0, "width":I
    iget-object v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->setMeasuredDimension(II)V

    .line 964
    .end local v0    # "width":I
    :goto_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 990
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 991
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    .line 995
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 996
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17
    .param p1, "me"    # Landroid/view/MotionEvent;

    .line 1662
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 1663
    .local v2, "pointerCount":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 1664
    .local v3, "action":I
    const/4 v4, 0x0

    .line 1665
    .local v4, "result":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v13

    .line 1667
    .local v13, "now":J
    iget v5, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mOldPointerCount:I

    const/4 v15, 0x0

    const/4 v12, 0x1

    if-eq v2, v5, :cond_2

    .line 1668
    if-ne v2, v12, :cond_1

    .line 1670
    const/4 v9, 0x0

    .line 1671
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v16

    .line 1670
    move-wide v5, v13

    move-wide v7, v13

    move/from16 v12, v16

    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v5

    .line 1672
    .local v5, "down":Landroid/view/MotionEvent;
    invoke-direct {v0, v5, v15}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v4

    .line 1673
    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    .line 1675
    const/4 v15, 0x1

    if-ne v3, v15, :cond_0

    .line 1676
    invoke-direct {v0, v1, v15}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v4

    .line 1678
    .end local v5    # "down":Landroid/view/MotionEvent;
    :cond_0
    goto :goto_0

    .line 1680
    :cond_1
    move v15, v12

    const/4 v9, 0x1

    iget v10, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mOldPointerX:F

    iget v11, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mOldPointerY:F

    .line 1681
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v12

    .line 1680
    move-wide v5, v13

    move-wide v7, v13

    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v5

    .line 1682
    .local v5, "up":Landroid/view/MotionEvent;
    invoke-direct {v0, v5, v15}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v4

    .line 1683
    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    .line 1684
    .end local v5    # "up":Landroid/view/MotionEvent;
    goto :goto_0

    .line 1686
    :cond_2
    move v5, v12

    if-ne v2, v5, :cond_3

    .line 1687
    invoke-direct {v0, v1, v15}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v4

    .line 1688
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mOldPointerX:F

    .line 1689
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mOldPointerY:F

    goto :goto_0

    .line 1692
    :cond_3
    const/4 v4, 0x1

    .line 1695
    :goto_0
    iput v2, v0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mOldPointerCount:I

    .line 1697
    return v4
.end method

.method public refresh()V
    .locals 7

    .line 2636
    const/4 v0, 0x0

    .line 2637
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mRefreshStyle:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    .line 2638
    .local v1, "styleAttrType":Ljava/lang/String;
    const-string v2, "attr"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 2639
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v5, Lcoui/support/appcompat/R$styleable;->SecurityKeyboardView:[I

    iget v6, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mRefreshStyle:I

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0

    .line 2641
    :cond_0
    const-string v2, "style"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2642
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v5, Lcoui/support/appcompat/R$styleable;->SecurityKeyboardView:[I

    iget v6, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mRefreshStyle:I

    invoke-virtual {v2, v4, v5, v3, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2646
    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 2647
    sget v2, Lcoui/support/appcompat/R$styleable;->SecurityKeyboardView_couiSecurityKeyBackground:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    .line 2648
    iget-object v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 2649
    iget-object v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2651
    :cond_2
    sget v2, Lcoui/support/appcompat/R$styleable;->SecurityKeyboardView_couiSecurityKeyTextColor:I

    const/high16 v3, -0x1000000

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyTextColor:I

    .line 2652
    sget v2, Lcoui/support/appcompat/R$styleable;->SecurityKeyboardView_couiTextColor:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 2653
    sget v2, Lcoui/support/appcompat/R$styleable;->SecurityKeyboardView_couiGoTextColor:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mGoTextColor:Landroid/content/res/ColorStateList;

    .line 2654
    sget v2, Lcoui/support/appcompat/R$styleable;->SecurityKeyboardView_couiEndKeyBg:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mEndKeyBg:Landroid/graphics/drawable/Drawable;

    .line 2655
    sget v2, Lcoui/support/appcompat/R$styleable;->SecurityKeyboardView_couiItemSymbolsColor:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mItemTextColor:Landroid/content/res/ColorStateList;

    .line 2656
    sget v2, Lcoui/support/appcompat/R$styleable;->SecurityKeyboardView_couiSpecialKeyBg:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSpecialKeyBg:Landroid/graphics/drawable/Drawable;

    .line 2657
    sget v2, Lcoui/support/appcompat/R$styleable;->SecurityKeyboardView_couiSpecialItemBg:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSpecialItemBg:Landroid/graphics/drawable/Drawable;

    .line 2658
    invoke-direct {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->initState()V

    .line 2659
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->invalidate()V

    .line 2660
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2662
    :cond_3
    return-void
.end method

.method protected refreshIconState(ILandroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 2184
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPrivateFlags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2185
    .local v0, "privateFlags":I
    or-int/lit16 v0, v0, 0x400

    .line 2186
    iget-object v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPrivateFlags:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2187
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->iconStateChanged(ILandroid/graphics/drawable/Drawable;)V

    .line 2188
    return-void
.end method

.method public setEndKeyBg(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "endKeyBgDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 739
    if-eqz p1, :cond_0

    .line 740
    iput-object p1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mEndKeyBg:Landroid/graphics/drawable/Drawable;

    .line 741
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->invalidate()V

    .line 743
    :cond_0
    return-void
.end method

.method public setGoTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "goTextColor"    # Landroid/content/res/ColorStateList;

    .line 717
    if-eqz p1, :cond_0

    .line 718
    iput-object p1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mGoTextColor:Landroid/content/res/ColorStateList;

    .line 719
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->invalidate()V

    .line 721
    :cond_0
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "itemTextColor"    # Landroid/content/res/ColorStateList;

    .line 750
    if-eqz p1, :cond_0

    .line 751
    iput-object p1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mItemTextColor:Landroid/content/res/ColorStateList;

    .line 752
    invoke-direct {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->initState()V

    .line 753
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->invalidate()V

    .line 755
    :cond_0
    return-void
.end method

.method public setKeyBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "keyBackgroundDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 683
    if-eqz p1, :cond_0

    .line 684
    iput-object p1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    .line 685
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 686
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->invalidate()V

    .line 688
    :cond_0
    return-void
.end method

.method public setKeyTextColor(I)V
    .locals 1
    .param p1, "keyTextColor"    # I

    .line 695
    iget v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyTextColor:I

    if-eq p1, v0, :cond_0

    .line 696
    iput p1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyTextColor:I

    .line 697
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->invalidate()V

    .line 699
    :cond_0
    return-void
.end method

.method public setKeyboard(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;)V
    .locals 4
    .param p1, "keyboard"    # Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    .line 788
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 789
    invoke-direct {p0, v1}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->showPreview(I)V

    .line 792
    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->removeMessages()V

    .line 793
    iput-object p1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    .line 794
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    .line 795
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;

    iput-object v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeys:[Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard$Key;

    .line 796
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->requestLayout()V

    .line 798
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyboardChanged:Z

    .line 799
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->invalidateAllKeys()V

    .line 800
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->computeProximityThreshold(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;)V

    .line 801
    iget-object v3, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 806
    iput v1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mRepeatKeyIndex:I

    .line 808
    iput-boolean v2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mAbortKey:Z

    .line 809
    return-void
.end method

.method public setKeyboardType(I)V
    .locals 2
    .param p1, "keyboardType"    # I

    .line 2317
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mTypeface:Landroid/graphics/Typeface;

    .line 2319
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_security_keyboard_lower_letter_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mLowerLetterSize:I

    .line 2321
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_security_keyboard_space_label_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSpaceLabelSize:I

    .line 2323
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_security_keyboard_lower_letter_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mNumberLetterSize:I

    .line 2325
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_security_keyboard_end_label_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mEndLabelSize:I

    .line 2327
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_security_numeric_keyboard_special_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSpecialItemSize:I

    .line 2329
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_password_kbd_symbols_special_symbols_textSize:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSymbolsLabelSize:I

    .line 2330
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_password_kbd_skip_symbols_key_labelSize:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSkipSymbolsLabelSize:I

    .line 2331
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_password_numeric_keyboard_line_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mLineWidth:F

    .line 2333
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$array;->coui_security_numeric_keyboard_special_symbol:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSpecialSymbols:[Ljava/lang/String;

    .line 2334
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_security_numeric_keyboard_special_symbol_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSpecialSymbolsOffset:I

    .line 2336
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_security_password_numeric_delete_dimen_keyWidth:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSpecialKeyWidth:I

    .line 2337
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_security_password_numeric_special_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSpecialKeyHeight:I

    .line 2339
    iget v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSpecialKeyWidth:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->getDensityScale(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSpecialKeyWidth:I

    .line 2340
    iget v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSpecialKeyHeight:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->getDensityScale(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSpecialKeyHeight:I

    .line 2341
    iget v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mLineWidth:F

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->getDensityScale(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mLineWidth:F

    .line 2342
    iget v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSpecialSymbolsOffset:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->getDensityScale(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSpecialSymbolsOffset:I

    .line 2344
    invoke-direct {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->initState()V

    .line 2345
    return-void
.end method

.method public setKeyboardViewEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 2292
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mIsEnable:Z

    .line 2293
    return-void
.end method

.method public setNewShifted(I)V
    .locals 1
    .param p1, "newshiftState"    # I

    .line 817
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    if-eqz v0, :cond_0

    .line 818
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->setNewShifted(I)V

    .line 819
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->invalidateAllKeys()V

    .line 821
    :cond_0
    return-void
.end method

.method public setOnKeyboardActionListener(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$OnKeyboardActionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$OnKeyboardActionListener;

    .line 675
    iput-object p1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyboardActionListener:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$OnKeyboardActionListener;

    .line 676
    return-void
.end method

.method public setOnKeyboardCharListener(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$OnKeyboardCharListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$OnKeyboardCharListener;

    .line 2301
    iput-object p1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyboardCharListener:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$OnKeyboardCharListener;

    .line 2302
    return-void
.end method

.method public setPopupOffset(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 907
    iput p1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mMiniKeyboardOffsetX:I

    .line 908
    iput p2, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mMiniKeyboardOffsetY:I

    .line 909
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPreviewPopup:Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 910
    const-string v0, "SecurityKeyboardView"

    const-string v1, "PopupView is Showing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPreviewPopup:Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;->dismiss()V

    .line 913
    :cond_0
    return-void
.end method

.method public setPopupParent(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 897
    iput-object p1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mPopupParent:Landroid/view/View;

    .line 898
    return-void
.end method

.method public setPreviewEnabled(Z)V
    .locals 0
    .param p1, "previewEnabled"    # Z

    .line 882
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mShowPreview:Z

    .line 883
    return-void
.end method

.method public setProximityCorrectionEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 930
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mProximityCorrectOn:Z

    .line 931
    return-void
.end method

.method public setShifted(Z)Z
    .locals 1
    .param p1, "shifted"    # Z

    .line 843
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    if-eqz v0, :cond_0

    .line 844
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyboard:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboard;->setShifted(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 846
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->invalidateAllKeys()V

    .line 847
    const/4 v0, 0x1

    return v0

    .line 850
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setSpecialItemBg(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "specialItemBgDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 762
    if-eqz p1, :cond_0

    .line 763
    iput-object p1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSpecialItemBg:Landroid/graphics/drawable/Drawable;

    .line 764
    invoke-direct {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->initState()V

    .line 765
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->invalidate()V

    .line 767
    :cond_0
    return-void
.end method

.method public setSpecialKeyBg(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "specialKeyBgDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 728
    if-eqz p1, :cond_0

    .line 729
    iput-object p1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mSpecialKeyBg:Landroid/graphics/drawable/Drawable;

    .line 730
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->invalidate()V

    .line 732
    :cond_0
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "textColor"    # Landroid/content/res/ColorStateList;

    .line 706
    if-eqz p1, :cond_0

    .line 707
    iput-object p1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 708
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->invalidate()V

    .line 710
    :cond_0
    return-void
.end method

.method public setVerticalCorrection(I)V
    .locals 0
    .param p1, "verticalOffset"    # I

    .line 890
    return-void
.end method

.method protected swipeDown()V
    .locals 1

    .line 2002
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyboardActionListener:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$OnKeyboardActionListener;->swipeDown()V

    .line 2003
    return-void
.end method

.method protected swipeLeft()V
    .locals 1

    .line 1994
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyboardActionListener:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$OnKeyboardActionListener;->swipeLeft()V

    .line 1995
    return-void
.end method

.method protected swipeRight()V
    .locals 1

    .line 1990
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyboardActionListener:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$OnKeyboardActionListener;->swipeRight()V

    .line 1991
    return-void
.end method

.method protected swipeUp()V
    .locals 1

    .line 1998
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->mKeyboardActionListener:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$OnKeyboardActionListener;->swipeUp()V

    .line 1999
    return-void
.end method
