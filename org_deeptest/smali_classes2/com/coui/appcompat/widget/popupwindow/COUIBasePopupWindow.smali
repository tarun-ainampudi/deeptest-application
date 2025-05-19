.class public Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;
.super Landroid/widget/PopupWindow;
.source "COUIBasePopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow$PopupViewContainer;,
        Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow$OnDismissListener;
    }
.end annotation


# static fields
.field private static final ABOVE_ANCHOR_STATE_SET:[I

.field private static final DEFAULT_ANCHORED_GRAVITY:I = 0x800033

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2


# instance fields
.field private mAboveAnchor:Z

.field private mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mAllowScrollingAnchorParent:Z

.field private mAnchor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnchorRelativeX:I

.field private mAnchorRelativeY:I

.field private mAnchorXoff:I

.field private mAnchorYoff:I

.field private mAnchoredGravity:I

.field private mAnimationStyle:I

.field private mAttachedInDecor:Z

.field private mAttachedInDecorSet:Z

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mClipToScreen:Z

.field private mClippingEnabled:Z

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDrawingLocation:[I

.field private mElevation:F

.field private mFocusable:Z

.field private mHeight:I

.field private mHeightMode:I

.field private mIgnoreCheekPress:Z

.field private mInputMethodMode:I

.field private mIsDropdown:Z

.field private mIsShowing:Z

.field private mLastHeight:I

.field private mLastWidth:I

.field private mLayoutInScreen:Z

.field private mLayoutInsetDecor:Z

.field private mNotTouchModal:Z

.field private mOnDismissListener:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow$OnDismissListener;

.field private final mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mOutsideTouchable:Z

.field private mOverlapAnchor:Z

.field private mPopupHeight:I

.field private mPopupView:Landroid/view/View;

.field private mPopupViewInitialLayoutDirectionInherited:Z

.field private mPopupWidth:I

.field private mScreenLocation:[I

.field private mSoftInputMode:I

.field private mSplitTouchEnabled:I

.field private mTempRect:Landroid/graphics/Rect;

.field private mTouchInterceptor:Landroid/view/View$OnTouchListener;

.field private mTouchable:Z

.field private mWidth:I

.field private mWidthMode:I

.field private mWindowLayoutType:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 141
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100aa

    aput v2, v0, v1

    sput-object v0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 228
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;-><init>(Landroid/view/View;II)V

    .line 229
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 255
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;-><init>(Landroid/view/View;II)V

    .line 256
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 175
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 183
    sget v0, Lcoui/support/appcompat/R$attr;->popupWindowStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 184
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 192
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 193
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 200
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mInputMethodMode:I

    .line 94
    const/4 v1, 0x1

    iput v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mSoftInputMode:I

    .line 95
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mTouchable:Z

    .line 96
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mOutsideTouchable:Z

    .line 97
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mClippingEnabled:Z

    .line 98
    const/4 v2, -0x1

    iput v2, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mSplitTouchEnabled:I

    .line 101
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mAllowScrollingAnchorParent:Z

    .line 102
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mLayoutInsetDecor:Z

    .line 104
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mAttachedInDecor:Z

    .line 105
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mAttachedInDecorSet:Z

    .line 121
    const/4 v1, 0x2

    new-array v3, v1, [I

    iput-object v3, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mDrawingLocation:[I

    .line 122
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mScreenLocation:[I

    .line 123
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 134
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mWindowLayoutType:I

    .line 137
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mIgnoreCheekPress:Z

    .line 139
    iput v2, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mAnimationStyle:I

    .line 147
    new-instance v1, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow$1;-><init>(Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;)V

    iput-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 201
    iput-object p1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mContext:Landroid/content/Context;

    .line 202
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 204
    sget-object v1, Lcoui/support/appcompat/R$styleable;->PopupWindow:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 206
    .local v1, "a":Landroid/content/res/TypedArray;
    sget-object v3, Lcoui/support/appcompat/R$styleable;->PopupWindowCompat:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 208
    .local v3, "b":Landroid/content/res/TypedArray;
    sget v4, Lcoui/support/appcompat/R$styleable;->PopupWindow_android_popupBackground:I

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 209
    .local v4, "bg":Landroid/graphics/drawable/Drawable;
    sget v5, Lcoui/support/appcompat/R$styleable;->PopupWindowCompat_supportPopupElevation:I

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mElevation:F

    .line 210
    sget v5, Lcoui/support/appcompat/R$styleable;->PopupWindow_overlapAnchor:I

    invoke-virtual {v1, v5, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mOverlapAnchor:Z

    .line 212
    sget v0, Lcoui/support/appcompat/R$styleable;->PopupWindowCompat_android_popupAnimationStyle:I

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 213
    .local v0, "animStyle":I
    sget v5, Lcoui/support/appcompat/R$style;->Animation_COUI_PopupWindow:I

    if-ne v0, v5, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput v2, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mAnimationStyle:I

    .line 215
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 216
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 218
    invoke-virtual {p0, v4}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 219
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;

    .line 241
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;-><init>(Landroid/view/View;II)V

    .line 242
    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 271
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 272
    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZ)V
    .locals 4
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "focusable"    # Z

    .line 286
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mInputMethodMode:I

    .line 94
    const/4 v1, 0x1

    iput v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mSoftInputMode:I

    .line 95
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mTouchable:Z

    .line 96
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mOutsideTouchable:Z

    .line 97
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mClippingEnabled:Z

    .line 98
    const/4 v2, -0x1

    iput v2, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mSplitTouchEnabled:I

    .line 101
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mAllowScrollingAnchorParent:Z

    .line 102
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mLayoutInsetDecor:Z

    .line 104
    iput-boolean v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mAttachedInDecor:Z

    .line 105
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mAttachedInDecorSet:Z

    .line 121
    const/4 v1, 0x2

    new-array v3, v1, [I

    iput-object v3, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mDrawingLocation:[I

    .line 122
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mScreenLocation:[I

    .line 123
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 134
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mWindowLayoutType:I

    .line 137
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mIgnoreCheekPress:Z

    .line 139
    iput v2, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mAnimationStyle:I

    .line 147
    new-instance v0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow$1;-><init>(Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 287
    if-eqz p1, :cond_0

    .line 288
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mContext:Landroid/content/Context;

    .line 289
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 292
    :cond_0
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->setContentView(Landroid/view/View;)V

    .line 293
    invoke-virtual {p0, p2}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->setWidth(I)V

    .line 294
    invoke-virtual {p0, p3}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->setHeight(I)V

    .line 295
    invoke-virtual {p0, p4}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->setFocusable(Z)V

    .line 296
    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    .line 57
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    .line 57
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mPopupView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    .line 57
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    .line 57
    iget v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mAnchorXoff:I

    return v0
.end method

.method static synthetic access$300(Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    .line 57
    iget v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mAnchorYoff:I

    return v0
.end method

.method static synthetic access$400(Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    .line 57
    iget v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mAnchoredGravity:I

    return v0
.end method

.method static synthetic access$500(Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .line 57
    invoke-direct/range {p0 .. p5}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;
    .param p1, "x1"    # Z

    .line 57
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->updateAboveAnchorOverride(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    .line 57
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mAboveAnchor:Z

    return v0
.end method

.method static synthetic access$800()[I
    .locals 1

    .line 57
    sget-object v0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-object v0
.end method

.method static synthetic access$900(Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;)Landroid/view/View$OnTouchListener;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    .line 57
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method private computeAnimationResource()I
    .locals 2

    .line 1212
    iget v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mAnimationStyle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 1213
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mIsDropdown:Z

    if-eqz v0, :cond_1

    .line 1214
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mAboveAnchor:Z

    if-eqz v0, :cond_0

    sget v0, Lcoui/support/appcompat/R$style;->Animation_COUI_DropDownUp:I

    goto :goto_0

    :cond_0
    sget v0, Lcoui/support/appcompat/R$style;->Animation_COUI_DropDownDown:I

    :goto_0
    return v0

    .line 1218
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 1220
    :cond_2
    iget v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mAnimationStyle:I

    return v0
.end method

.method private computeFlags(I)I
    .locals 3
    .param p1, "curFlags"    # I

    .line 1165
    const v0, -0x868219

    and-int/2addr p1, v0

    .line 1173
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mIgnoreCheekPress:Z

    if-eqz v0, :cond_0

    .line 1174
    const v0, 0x8000

    or-int/2addr p1, v0

    .line 1176
    :cond_0
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mFocusable:Z

    const/high16 v1, 0x20000

    if-nez v0, :cond_1

    .line 1177
    or-int/lit8 p1, p1, 0x8

    .line 1178
    iget v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mInputMethodMode:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 1179
    or-int/2addr p1, v1

    goto :goto_0

    .line 1181
    :cond_1
    iget v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mInputMethodMode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 1182
    or-int/2addr p1, v1

    .line 1184
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mTouchable:Z

    if-nez v0, :cond_3

    .line 1185
    or-int/lit8 p1, p1, 0x10

    .line 1187
    :cond_3
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mOutsideTouchable:Z

    if-eqz v0, :cond_4

    .line 1188
    const/high16 v0, 0x40000

    or-int/2addr p1, v0

    .line 1190
    :cond_4
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mClippingEnabled:Z

    if-nez v0, :cond_5

    .line 1191
    or-int/lit16 p1, p1, 0x200

    .line 1193
    :cond_5
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->isSplitTouchEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1194
    const/high16 v0, 0x800000

    or-int/2addr p1, v0

    .line 1196
    :cond_6
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mLayoutInScreen:Z

    if-eqz v0, :cond_7

    .line 1197
    or-int/lit16 p1, p1, 0x100

    .line 1199
    :cond_7
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mLayoutInsetDecor:Z

    if-eqz v0, :cond_8

    .line 1200
    const/high16 v0, 0x10000

    or-int/2addr p1, v0

    .line 1202
    :cond_8
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mNotTouchModal:Z

    if-eqz v0, :cond_9

    .line 1203
    or-int/lit8 p1, p1, 0x20

    .line 1205
    :cond_9
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mAttachedInDecor:Z

    if-eqz v0, :cond_a

    .line 1206
    const/high16 v0, 0x40000000    # 2.0f

    or-int/2addr p1, v0

    .line 1208
    :cond_a
    return p1
.end method

.method private createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1142
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1147
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1148
    iget v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mWidth:I

    iput v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1149
    iget v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mHeight:I

    iput v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1150
    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1151
    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    goto :goto_0

    .line 1153
    :cond_0
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1155
    :goto_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->computeFlags(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1156
    iget v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mWindowLayoutType:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1157
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1158
    iget v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mSoftInputMode:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PopupWindow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1161
    return-object v0
.end method

.method private findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z
    .locals 16
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "p"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "gravity"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1242
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1243
    .local v3, "anchorHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 1244
    .local v4, "anchorWidth":I
    iget-boolean v5, v0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mOverlapAnchor:Z

    if-eqz v5, :cond_0

    .line 1245
    sub-int v5, p4, v3

    goto :goto_0

    .line 1248
    :cond_0
    move/from16 v5, p4

    .end local p4    # "yoff":I
    .local v5, "yoff":I
    :goto_0
    iget-object v6, v0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mDrawingLocation:[I

    invoke-virtual {v1, v6}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1249
    iget-object v6, v0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mDrawingLocation:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    add-int v6, v6, p3

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1250
    iget-object v6, v0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mDrawingLocation:[I

    const/4 v8, 0x1

    aget v6, v6, v8

    add-int/2addr v6, v3

    add-int/2addr v6, v5

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1252
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v6

    move/from16 v9, p5

    invoke-static {v9, v6}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v6

    and-int/lit8 v6, v6, 0x7

    .line 1254
    .local v6, "hgrav":I
    const/4 v10, 0x5

    if-ne v6, v10, :cond_1

    .line 1257
    iget v11, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v12, v0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mPopupWidth:I

    sub-int/2addr v12, v4

    sub-int/2addr v11, v12

    iput v11, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1260
    :cond_1
    const/4 v11, 0x0

    .line 1262
    .local v11, "onTop":Z
    const/16 v12, 0x33

    iput v12, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1264
    iget-object v12, v0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mScreenLocation:[I

    invoke-virtual {v1, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1265
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 1266
    .local v12, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {v1, v12}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1268
    iget-object v13, v0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mScreenLocation:[I

    aget v13, v13, v8

    add-int/2addr v13, v3

    add-int/2addr v13, v5

    .line 1269
    .local v13, "screenY":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v14

    .line 1270
    .local v14, "root":Landroid/view/View;
    iget v10, v0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mPopupHeight:I

    add-int/2addr v10, v13

    iget v7, v12, Landroid/graphics/Rect;->bottom:I

    if-gt v10, v7, :cond_2

    iget v7, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v10, v0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mPopupWidth:I

    add-int/2addr v7, v10

    .line 1271
    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v10

    sub-int/2addr v7, v10

    if-lez v7, :cond_7

    .line 1275
    :cond_2
    iget-boolean v7, v0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mAllowScrollingAnchorParent:Z

    if-eqz v7, :cond_3

    .line 1276
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v7

    .line 1277
    .local v7, "scrollX":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v10

    .line 1278
    .local v10, "scrollY":I
    new-instance v8, Landroid/graphics/Rect;

    iget v9, v0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mPopupWidth:I

    add-int/2addr v9, v7

    add-int v9, v9, p3

    move v15, v11

    .end local v11    # "onTop":Z
    .local v15, "onTop":Z
    iget v11, v0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mPopupHeight:I

    add-int/2addr v11, v10

    add-int/2addr v11, v3

    add-int/2addr v11, v5

    invoke-direct {v8, v7, v10, v9, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1280
    .local v8, "r":Landroid/graphics/Rect;
    const/4 v9, 0x1

    invoke-virtual {v1, v8, v9}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    goto :goto_1

    .line 1285
    .end local v7    # "scrollX":I
    .end local v8    # "r":Landroid/graphics/Rect;
    .end local v10    # "scrollY":I
    .end local v15    # "onTop":Z
    .restart local v11    # "onTop":Z
    :cond_3
    move v15, v11

    .end local v11    # "onTop":Z
    .restart local v15    # "onTop":Z
    :goto_1
    iget-object v7, v0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mDrawingLocation:[I

    invoke-virtual {v1, v7}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1286
    iget-object v7, v0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mDrawingLocation:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    add-int v7, v7, p3

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1287
    iget-object v7, v0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mDrawingLocation:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    add-int/2addr v7, v3

    add-int/2addr v7, v5

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1290
    const/4 v7, 0x5

    if-ne v6, v7, :cond_4

    .line 1291
    iget v7, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v8, v0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mPopupWidth:I

    sub-int/2addr v8, v4

    sub-int/2addr v7, v8

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1295
    :cond_4
    iget-object v7, v0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mScreenLocation:[I

    invoke-virtual {v1, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1296
    iget v7, v12, Landroid/graphics/Rect;->bottom:I

    iget-object v8, v0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mScreenLocation:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    sub-int/2addr v7, v8

    sub-int/2addr v7, v3

    sub-int/2addr v7, v5

    iget-object v8, v0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mScreenLocation:[I

    aget v8, v8, v9

    sub-int/2addr v8, v5

    iget v9, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    if-ge v7, v8, :cond_5

    const/4 v7, 0x1

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    :goto_2
    move v11, v7

    .line 1298
    .end local v15    # "onTop":Z
    .restart local v11    # "onTop":Z
    if-eqz v11, :cond_6

    .line 1299
    const/16 v7, 0x53

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1300
    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v7

    iget-object v8, v0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mDrawingLocation:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    sub-int/2addr v7, v8

    add-int/2addr v7, v5

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_3

    .line 1302
    :cond_6
    const/4 v9, 0x1

    iget-object v7, v0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mDrawingLocation:[I

    aget v7, v7, v9

    add-int/2addr v7, v3

    add-int/2addr v7, v5

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1306
    :cond_7
    :goto_3
    iget-boolean v7, v0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mClipToScreen:Z

    if-eqz v7, :cond_c

    .line 1307
    iget v7, v12, Landroid/graphics/Rect;->right:I

    iget v8, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    .line 1308
    .local v7, "displayFrameWidth":I
    iget v8, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v9, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v8, v9

    .line 1309
    .local v8, "right":I
    if-le v8, v7, :cond_8

    .line 1310
    iget v9, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v10, v8, v7

    sub-int/2addr v9, v10

    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1313
    :cond_8
    iget v9, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v10, v12, Landroid/graphics/Rect;->left:I

    if-ge v9, v10, :cond_9

    .line 1314
    iget v9, v12, Landroid/graphics/Rect;->left:I

    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1315
    iget v9, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1318
    :cond_9
    if-eqz v11, :cond_b

    .line 1319
    iget-object v9, v0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mScreenLocation:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    add-int/2addr v9, v5

    iget v10, v0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mPopupHeight:I

    sub-int/2addr v9, v10

    .line 1320
    .local v9, "popupTop":I
    if-gez v9, :cond_a

    .line 1321
    iget v10, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v10, v9

    iput v10, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1323
    .end local v9    # "popupTop":I
    :cond_a
    goto :goto_4

    .line 1324
    :cond_b
    iget v9, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v10, v12, Landroid/graphics/Rect;->top:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1328
    .end local v7    # "displayFrameWidth":I
    .end local v8    # "right":I
    :cond_c
    :goto_4
    iget v7, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/high16 v8, 0x10000000

    or-int/2addr v7, v8

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1331
    iget-object v7, v0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mDrawingLocation:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    iget v8, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v7, v8

    div-int/lit8 v8, v3, 0x2

    add-int/2addr v7, v8

    iput v7, v0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mAnchorRelativeX:I

    .line 1332
    iget-object v7, v0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mDrawingLocation:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    iget v8, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v7, v8

    div-int/lit8 v8, v4, 0x2

    add-int/2addr v7, v8

    iput v7, v0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mAnchorRelativeY:I

    .line 1334
    return v11
.end method

.method private preparePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 5
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;

    .line 1071
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_3

    .line 1076
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1077
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1078
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x1

    .line 1079
    .local v1, "height":I
    if-eqz v0, :cond_0

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_0

    .line 1081
    const/4 v1, -0x2

    .line 1086
    :cond_0
    new-instance v2, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow$PopupViewContainer;

    iget-object v3, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow$PopupViewContainer;-><init>(Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;Landroid/content/Context;)V

    .line 1087
    .local v2, "popupViewContainer":Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow$PopupViewContainer;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1090
    .local v3, "listParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow$PopupViewContainer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1091
    iget-object v4, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2, v4, v3}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow$PopupViewContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1093
    iput-object v2, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mPopupView:Landroid/view/View;

    .line 1094
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "height":I
    .end local v2    # "popupViewContainer":Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow$PopupViewContainer;
    .end local v3    # "listParams":Landroid/widget/FrameLayout$LayoutParams;
    goto :goto_0

    .line 1095
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mContentView:Landroid/view/View;

    iput-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mPopupView:Landroid/view/View;

    .line 1098
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mPopupView:Landroid/view/View;

    iget v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mElevation:F

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 1099
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mPopupView:Landroid/view/View;

    .line 1100
    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIViewCompat;->getRawLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mPopupViewInitialLayoutDirectionInherited:Z

    .line 1101
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mPopupWidth:I

    .line 1102
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mPopupHeight:I

    .line 1103
    return-void

    .line 1072
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must specify a valid content view by calling setContentView() before attempting to show the popup."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private registerForScrollChanged(Landroid/view/View;III)V
    .locals 2
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "gravity"    # I

    .line 1684
    invoke-direct {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->unregisterForScrollChanged()V

    .line 1686
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1687
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1688
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 1689
    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 1692
    :cond_0
    iput p2, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mAnchorXoff:I

    .line 1693
    iput p3, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mAnchorYoff:I

    .line 1694
    iput p4, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mAnchoredGravity:I

    .line 1695
    return-void
.end method

.method private setLayoutDirectionFromAnchor()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1124
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 1125
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1126
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mPopupViewInitialLayoutDirectionInherited:Z

    if-eqz v1, :cond_0

    .line 1127
    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutDirection(I)V

    .line 1130
    .end local v0    # "anchor":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private unregisterForScrollChanged()V
    .locals 4

    .line 1671
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1672
    .local v0, "anchorRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 1673
    .local v1, "anchor":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1674
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/view/View;

    .line 1676
    :cond_0
    if-eqz v1, :cond_1

    .line 1677
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 1678
    .local v2, "vto":Landroid/view/ViewTreeObserver;
    iget-object v3, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 1680
    .end local v2    # "vto":Landroid/view/ViewTreeObserver;
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1681
    return-void
.end method

.method private update(Landroid/view/View;ZIIZIII)V
    .locals 20
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "updateLocation"    # Z
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "updateDimension"    # Z
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "gravity"    # I

    .line 1616
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v0, p6

    move/from16 v1, p7

    move/from16 v10, p8

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, v6, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mContentView:Landroid/view/View;

    if-nez v2, :cond_0

    goto/16 :goto_8

    .line 1620
    :cond_0
    iget-object v11, v6, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1621
    .local v11, "oldAnchor":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    if-eqz p2, :cond_2

    iget v2, v6, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mAnchorXoff:I

    if-ne v2, v8, :cond_1

    iget v2, v6, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mAnchorYoff:I

    if-eq v2, v9, :cond_2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    move v14, v2

    .line 1623
    .local v14, "needsUpdate":Z
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v7, :cond_4

    if-eqz v14, :cond_3

    iget-boolean v2, v6, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mIsDropdown:Z

    if-nez v2, :cond_3

    goto :goto_1

    .line 1625
    :cond_3
    if-eqz v14, :cond_5

    .line 1627
    iput v8, v6, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mAnchorXoff:I

    .line 1628
    iput v9, v6, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mAnchorYoff:I

    .line 1629
    iput v10, v6, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mAnchoredGravity:I

    goto :goto_2

    .line 1624
    :cond_4
    :goto_1
    invoke-direct {v6, v7, v8, v9, v10}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->registerForScrollChanged(Landroid/view/View;III)V

    .line 1632
    :cond_5
    :goto_2
    iget-object v2, v6, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/view/WindowManager$LayoutParams;

    .line 1634
    .local v5, "p":Landroid/view/WindowManager$LayoutParams;
    if-eqz p5, :cond_8

    .line 1635
    const/4 v2, -0x1

    if-ne v0, v2, :cond_6

    .line 1636
    iget v0, v6, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mPopupWidth:I

    goto :goto_3

    .line 1638
    :cond_6
    iput v0, v6, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mPopupWidth:I

    .line 1640
    .end local p6    # "width":I
    .local v0, "width":I
    :goto_3
    if-ne v1, v2, :cond_7

    .line 1641
    iget v1, v6, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mPopupHeight:I

    goto :goto_4

    .line 1643
    :cond_7
    iput v1, v6, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mPopupHeight:I

    .line 1647
    .end local v0    # "width":I
    .end local p7    # "height":I
    .local v15, "width":I
    .local v16, "height":I
    :cond_8
    :goto_4
    move v15, v0

    move/from16 v16, v1

    iget v4, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1648
    .local v4, "x":I
    iget v3, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1650
    .local v3, "y":I
    if-eqz p2, :cond_9

    .line 1651
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    move v12, v3

    .end local v3    # "y":I
    .local v12, "y":I
    move/from16 v3, p3

    move v13, v4

    .end local v4    # "x":I
    .local v13, "x":I
    move/from16 v4, p4

    move-object/from16 v19, v5

    .end local v5    # "p":Landroid/view/WindowManager$LayoutParams;
    .local v19, "p":Landroid/view/WindowManager$LayoutParams;
    move/from16 v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v0

    invoke-direct {v6, v0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->updateAboveAnchorOverride(Z)V

    goto :goto_5

    .line 1653
    .end local v12    # "y":I
    .end local v13    # "x":I
    .end local v19    # "p":Landroid/view/WindowManager$LayoutParams;
    .restart local v3    # "y":I
    .restart local v4    # "x":I
    .restart local v5    # "p":Landroid/view/WindowManager$LayoutParams;
    :cond_9
    move v12, v3

    move v13, v4

    move-object/from16 v19, v5

    .end local v3    # "y":I
    .end local v4    # "x":I
    .end local v5    # "p":Landroid/view/WindowManager$LayoutParams;
    .restart local v12    # "y":I
    .restart local v13    # "x":I
    .restart local v19    # "p":Landroid/view/WindowManager$LayoutParams;
    iget v3, v6, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mAnchorXoff:I

    iget v4, v6, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mAnchorYoff:I

    iget v5, v6, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mAnchoredGravity:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v0

    invoke-direct {v6, v0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->updateAboveAnchorOverride(Z)V

    .line 1657
    :goto_5
    move-object/from16 v5, v19

    .end local v19    # "p":Landroid/view/WindowManager$LayoutParams;
    .restart local v5    # "p":Landroid/view/WindowManager$LayoutParams;
    iget v1, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v0, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ne v13, v0, :cond_b

    iget v0, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v12, v0, :cond_a

    goto :goto_6

    :cond_a
    const/16 v17, 0x0

    goto :goto_7

    :cond_b
    :goto_6
    const/16 v17, 0x1

    :goto_7
    move-object/from16 v0, p0

    move v3, v15

    move/from16 v4, v16

    move-object/from16 v18, v5

    .end local v5    # "p":Landroid/view/WindowManager$LayoutParams;
    .local v18, "p":Landroid/view/WindowManager$LayoutParams;
    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->update(IIIIZ)V

    .line 1658
    return-void

    .line 1617
    .end local v11    # "oldAnchor":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    .end local v12    # "y":I
    .end local v13    # "x":I
    .end local v14    # "needsUpdate":Z
    .end local v15    # "width":I
    .end local v16    # "height":I
    .end local v18    # "p":Landroid/view/WindowManager$LayoutParams;
    .restart local p6    # "width":I
    .restart local p7    # "height":I
    :cond_c
    :goto_8
    return-void
.end method

.method private updateAboveAnchorOverride(Z)V
    .locals 2
    .param p1, "aboveAnchor"    # Z

    .line 1027
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mAboveAnchor:Z

    if-eq p1, v0, :cond_2

    .line 1028
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mAboveAnchor:Z

    .line 1030
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 1034
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1035
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mAboveAnchor:Z

    if-eqz v0, :cond_0

    .line 1036
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mPopupView:Landroid/view/View;

    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1038
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mPopupView:Landroid/view/View;

    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1041
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    .line 1045
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    .line 1416
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mPopupView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1417
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mIsShowing:Z

    .line 1419
    invoke-direct {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->unregisterForScrollChanged()V

    .line 1422
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1424
    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mPopupView:Landroid/view/View;

    iget-object v2, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mContentView:Landroid/view/View;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mPopupView:Landroid/view/View;

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 1425
    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mPopupView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1427
    :cond_0
    iput-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mPopupView:Landroid/view/View;

    .line 1429
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mOnDismissListener:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow$OnDismissListener;

    if-eqz v0, :cond_3

    .line 1430
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mOnDismissListener:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow$OnDismissListener;

    invoke-interface {v0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow$OnDismissListener;->onDismiss()V

    goto :goto_0

    .line 1424
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mPopupView:Landroid/view/View;

    iget-object v3, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mContentView:Landroid/view/View;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mPopupView:Landroid/view/View;

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 1425
    iget-object v2, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mPopupView:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1427
    :cond_1
    iput-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mPopupView:Landroid/view/View;

    .line 1429
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mOnDismissListener:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow$OnDismissListener;

    if-eqz v0, :cond_2

    .line 1430
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mOnDismissListener:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow$OnDismissListener;

    invoke-interface {v0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow$OnDismissListener;->onDismiss()V

    :cond_2
    throw v1

    .line 1434
    :cond_3
    :goto_0
    return-void
.end method

.method public getAnimationStyle()I
    .locals 1

    .line 392
    iget v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mAnimationStyle:I

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getElevation()F
    .locals 1

    .line 372
    iget v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mElevation:F

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 844
    iget v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mHeight:I

    return v0
.end method

.method public getInputMethodMode()I
    .locals 1

    .line 524
    iget v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mInputMethodMode:I

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;)I
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;

    .line 1348
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v0

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;I)I
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "yOffset"    # I

    .line 1363
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v0

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;IZ)I
    .locals 8
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "yOffset"    # I
    .param p3, "ignoreBottomDecorations"    # Z

    .line 1384
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1385
    .local v0, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1387
    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mDrawingLocation:[I

    .line 1388
    .local v1, "anchorPos":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1390
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 1391
    .local v2, "bottomEdge":I
    if-eqz p3, :cond_0

    .line 1392
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1393
    .local v3, "res":Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v2, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1395
    .end local v3    # "res":Landroid/content/res/Resources;
    :cond_0
    const/4 v3, 0x1

    aget v4, v1, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    sub-int v4, v2, v4

    sub-int/2addr v4, p2

    .line 1396
    .local v4, "distanceToBottom":I
    aget v3, v1, v3

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v5

    add-int/2addr v3, p2

    .line 1399
    .local v3, "distanceToTop":I
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1400
    .local v5, "returnedHeight":I
    iget-object v6, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_1

    .line 1401
    iget-object v6, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1402
    iget-object v6, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    .line 1405
    :cond_1
    return v5
.end method

.method public getSoftInputMode()I
    .locals 1

    .line 565
    iget v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mSoftInputMode:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 870
    iget v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mWidth:I

    return v0
.end method

.method public getWindowLayoutType()I
    .locals 1

    .line 797
    iget v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mWindowLayoutType:I

    return v0
.end method

.method invokePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;

    .line 1114
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1115
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1117
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mPopupView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mLayoutInsetDecor:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 1118
    invoke-direct {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->setLayoutDirectionFromAnchor()V

    .line 1119
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1120
    return-void
.end method

.method public isAboveAnchor()Z
    .locals 1

    .line 1059
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mAboveAnchor:Z

    return v0
.end method

.method public isAttachedInDecor()Z
    .locals 1

    .line 745
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mAttachedInDecor:Z

    return v0
.end method

.method public isClippingEnabled()Z
    .locals 1

    .line 639
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mClippingEnabled:Z

    return v0
.end method

.method public isFocusable()Z
    .locals 1

    .line 495
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mFocusable:Z

    return v0
.end method

.method public isLayoutInScreenEnabled()Z
    .locals 1

    .line 720
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mLayoutInScreen:Z

    return v0
.end method

.method public isOutsideTouchable()Z
    .locals 1

    .line 607
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mOutsideTouchable:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .line 894
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mIsShowing:Z

    return v0
.end method

.method public isSplitTouchEnabled()Z
    .locals 4

    .line 689
    iget v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mSplitTouchEnabled:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 690
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    .line 692
    :cond_1
    iget v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mSplitTouchEnabled:I

    if-ne v0, v2, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1
.end method

.method public isTouchable()Z
    .locals 1

    .line 576
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mTouchable:Z

    return v0
.end method

.method setAllowScrollingAnchorParent(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 678
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mAllowScrollingAnchorParent:Z

    .line 679
    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 0
    .param p1, "animationStyle"    # I

    .line 425
    iput p1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mAnimationStyle:I

    .line 426
    return-void
.end method

.method public setAttachedInDecor(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 761
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mAttachedInDecor:Z

    .line 762
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mAttachedInDecorSet:Z

    .line 763
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 318
    iput-object p1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 329
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_0

    .line 360
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 361
    iput-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 364
    :cond_0
    return-void
.end method

.method public setClipToScreenEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 667
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mClipToScreen:Z

    .line 668
    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->setClippingEnabled(Z)V

    .line 669
    return-void
.end method

.method public setClippingEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 657
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mClippingEnabled:Z

    .line 658
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "contentView"    # Landroid/view/View;

    .line 451
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    return-void

    .line 455
    :cond_0
    iput-object p1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mContentView:Landroid/view/View;

    .line 457
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 458
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mContext:Landroid/content/Context;

    .line 461
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 462
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 469
    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mAttachedInDecorSet:Z

    if-nez v0, :cond_4

    .line 473
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->setAttachedInDecor(Z)V

    .line 477
    :cond_4
    return-void
.end method

.method public setElevation(F)V
    .locals 0
    .param p1, "elevation"    # F

    .line 383
    iput p1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mElevation:F

    .line 384
    return-void
.end method

.method public setFocusable(Z)V
    .locals 0
    .param p1, "focusable"    # Z

    .line 515
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mFocusable:Z

    .line 516
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .line 859
    iput p1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mHeight:I

    .line 860
    return-void
.end method

.method public setIgnoreCheekPress()V
    .locals 1

    .line 407
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mIgnoreCheekPress:Z

    .line 408
    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 541
    iput p1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mInputMethodMode:I

    .line 542
    return-void
.end method

.method public setLayoutInScreenEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 732
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mLayoutInScreen:Z

    .line 733
    return-void
.end method

.method public setLayoutInsetDecor(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 778
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mLayoutInsetDecor:Z

    .line 779
    return-void
.end method

.method public setOnDismissListener(Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow$OnDismissListener;)V
    .locals 0
    .param p1, "onDismissListener"    # Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow$OnDismissListener;

    .line 1442
    iput-object p1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mOnDismissListener:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow$OnDismissListener;

    .line 1443
    return-void
.end method

.method public setOutsideTouchable(Z)V
    .locals 0
    .param p1, "touchable"    # Z

    .line 628
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mOutsideTouchable:Z

    .line 629
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 555
    iput p1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mSoftInputMode:I

    .line 556
    return-void
.end method

.method public setSplitTouchEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 709
    iput p1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mSplitTouchEnabled:I

    .line 710
    return-void
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .line 484
    iput-object p1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    .line 485
    return-void
.end method

.method public setTouchModal(Z)V
    .locals 1
    .param p1, "touchModal"    # Z

    .line 806
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mNotTouchModal:Z

    .line 807
    return-void
.end method

.method public setTouchable(Z)V
    .locals 0
    .param p1, "touchable"    # Z

    .line 595
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mTouchable:Z

    .line 596
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .line 885
    iput p1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mWidth:I

    .line 886
    return-void
.end method

.method public setWindowLayoutMode(II)V
    .locals 0
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .line 832
    iput p1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mWidthMode:I

    .line 833
    iput p2, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mHeightMode:I

    .line 834
    return-void
.end method

.method public setWindowLayoutType(I)V
    .locals 0
    .param p1, "layoutType"    # I

    .line 789
    iput p1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mWindowLayoutType:I

    .line 790
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;

    .line 963
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 964
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I

    .line 983
    const v0, 0x800033

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 984
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .locals 7
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "gravity"    # I

    .line 1004
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mContentView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1008
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->registerForScrollChanged(Landroid/view/View;III)V

    .line 1010
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mIsShowing:Z

    .line 1011
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mIsDropdown:Z

    .line 1013
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1014
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 1016
    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->updateAboveAnchorOverride(Z)V

    .line 1018
    iget v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mHeightMode:I

    if-gez v1, :cond_1

    iget v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mHeightMode:I

    iput v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1019
    :cond_1
    iget v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mWidthMode:I

    if-gez v1, :cond_2

    iget v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mWidthMode:I

    iput v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1021
    :cond_2
    invoke-direct {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->computeAnimationResource()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1023
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 1024
    return-void

    .line 1005
    .end local v0    # "p":Landroid/view/WindowManager$LayoutParams;
    :cond_3
    :goto_0
    return-void
.end method

.method public showAtLocation(Landroid/os/IBinder;III)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .line 927
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mContentView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .line 931
    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->unregisterForScrollChanged()V

    .line 933
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mIsShowing:Z

    .line 934
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mIsDropdown:Z

    .line 936
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 937
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->computeAnimationResource()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 939
    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 940
    if-nez p2, :cond_1

    .line 941
    const p2, 0x800033

    .line 943
    :cond_1
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 944
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 945
    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 946
    iget v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mHeightMode:I

    if-gez v1, :cond_2

    iget v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mHeightMode:I

    iput v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 947
    :cond_2
    iget v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mWidthMode:I

    if-gez v1, :cond_3

    iget v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mWidthMode:I

    iput v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 948
    :cond_3
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 949
    return-void

    .line 928
    .end local v0    # "p":Landroid/view/WindowManager$LayoutParams;
    :cond_4
    :goto_0
    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .line 912
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    .line 913
    return-void
.end method

.method public update()V
    .locals 6

    .line 1453
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mContentView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1457
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mPopupView:Landroid/view/View;

    .line 1458
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 1460
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x0

    .line 1462
    .local v1, "update":Z
    invoke-direct {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->computeAnimationResource()I

    move-result v2

    .line 1463
    .local v2, "newAnim":I
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v2, v3, :cond_1

    .line 1464
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1465
    const/4 v1, 0x1

    .line 1468
    :cond_1
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v3}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->computeFlags(I)I

    move-result v3

    .line 1469
    .local v3, "newFlags":I
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v3, v4, :cond_2

    .line 1470
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1471
    const/4 v1, 0x1

    .line 1474
    :cond_2
    if-eqz v1, :cond_3

    .line 1475
    invoke-direct {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->setLayoutDirectionFromAnchor()V

    .line 1476
    iget-object v4, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v4, v5, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1478
    :cond_3
    return-void

    .line 1454
    .end local v0    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "update":Z
    .end local v2    # "newAnim":I
    .end local v3    # "newFlags":I
    :cond_4
    :goto_0
    return-void
.end method

.method public update(II)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1489
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mPopupView:Landroid/view/View;

    .line 1490
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 1491
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v6, 0x0

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->update(IIIIZ)V

    .line 1492
    return-void
.end method

.method public update(IIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 1506
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->update(IIIIZ)V

    .line 1507
    return-void
.end method

.method public update(IIIIZ)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "force"    # Z

    .line 1523
    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 1524
    iput p3, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mLastWidth:I

    .line 1525
    invoke-virtual {p0, p3}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->setWidth(I)V

    .line 1528
    :cond_0
    if-eq p4, v0, :cond_1

    .line 1529
    iput p4, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mLastHeight:I

    .line 1530
    invoke-virtual {p0, p4}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->setHeight(I)V

    .line 1533
    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mContentView:Landroid/view/View;

    if-nez v1, :cond_2

    goto :goto_2

    .line 1537
    :cond_2
    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 1539
    .local v1, "p":Landroid/view/WindowManager$LayoutParams;
    move v2, p5

    .line 1541
    .local v2, "update":Z
    iget v3, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mWidthMode:I

    if-gez v3, :cond_3

    iget v3, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mWidthMode:I

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mLastWidth:I

    .line 1542
    .local v3, "finalWidth":I
    :goto_0
    if-eq p3, v0, :cond_4

    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v4, v3, :cond_4

    .line 1543
    iput v3, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mLastWidth:I

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1544
    const/4 v2, 0x1

    .line 1547
    :cond_4
    iget v4, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mHeightMode:I

    if-gez v4, :cond_5

    iget v4, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mHeightMode:I

    goto :goto_1

    :cond_5
    iget v4, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mLastHeight:I

    .line 1548
    .local v4, "finalHeight":I
    :goto_1
    if-eq p4, v0, :cond_6

    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v0, v4, :cond_6

    .line 1549
    iput v4, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mLastHeight:I

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1550
    const/4 v2, 0x1

    .line 1553
    :cond_6
    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eq v0, p1, :cond_7

    .line 1554
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1555
    const/4 v2, 0x1

    .line 1558
    :cond_7
    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v0, p2, :cond_8

    .line 1559
    iput p2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1560
    const/4 v2, 0x1

    .line 1563
    :cond_8
    invoke-direct {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->computeAnimationResource()I

    move-result v0

    .line 1564
    .local v0, "newAnim":I
    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v0, v5, :cond_9

    .line 1565
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1566
    const/4 v2, 0x1

    .line 1569
    :cond_9
    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v5}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->computeFlags(I)I

    move-result v5

    .line 1570
    .local v5, "newFlags":I
    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v5, v6, :cond_a

    .line 1571
    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1572
    const/4 v2, 0x1

    .line 1575
    :cond_a
    if-eqz v2, :cond_b

    .line 1576
    invoke-direct {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->setLayoutDirectionFromAnchor()V

    .line 1577
    iget-object v6, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v7, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v6, v7, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1579
    :cond_b
    return-void

    .line 1534
    .end local v0    # "newAnim":I
    .end local v1    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "update":Z
    .end local v3    # "finalWidth":I
    .end local v4    # "finalHeight":I
    .end local v5    # "newFlags":I
    :cond_c
    :goto_2
    return-void
.end method

.method public update(Landroid/view/View;II)V
    .locals 9
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 1591
    iget v8, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mAnchoredGravity:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v8}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->update(Landroid/view/View;ZIIZIII)V

    .line 1592
    return-void
.end method

.method public update(Landroid/view/View;IIII)V
    .locals 9
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .line 1610
    iget v8, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->mAnchoredGravity:I

    const/4 v2, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->update(Landroid/view/View;ZIIZIII)V

    .line 1611
    return-void
.end method
