.class public Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;
.super Ljava/lang/Object;
.source "COUIBaseListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$PopupScrollListener;,
        Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$PopupTouchInterceptor;,
        Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$ResizePopupRunnable;,
        Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$ListSelectorHider;,
        Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$PopupDataSetObserver;,
        Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;,
        Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$AnimListAdapter;,
        Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$ForwardingListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EXPAND_LIST_TIMEOUT:I = 0xfa

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2

.field public static final MATCH_PARENT:I = -0x1

.field public static final POSITION_PROMPT_ABOVE:I = 0x0

.field public static final POSITION_PROMPT_BELOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BaseListPopupWindow"

.field public static final WRAP_CONTENT:I = -0x2

.field private static sClipToWindowEnabledMethod:Ljava/lang/reflect/Method;


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mContext:Landroid/content/Context;

.field private mDropDownAlwaysVisible:Z

.field private mDropDownAnchorView:Landroid/view/View;

.field private mDropDownGravity:I

.field private mDropDownHeight:I

.field private mDropDownHorizontalOffset:I

.field private mDropDownList:Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;

.field private mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

.field private mDropDownVerticalOffset:I

.field private mDropDownVerticalOffsetSet:Z

.field private mDropDownWidth:I

.field private mForceIgnoreOutsideTouch:Z

.field private mHandler:Landroid/os/Handler;

.field private final mHideSelector:Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$ListSelectorHider;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mLayoutDirection:I

.field mListItemExpandMaximum:I

.field private mModal:Z

.field private mObserver:Landroid/database/DataSetObserver;

.field protected mPopup:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

.field private mPromptPosition:I

.field private mPromptView:Landroid/view/View;

.field private final mResizePopupRunnable:Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$ResizePopupRunnable;

.field private final mScrollListener:Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$PopupScrollListener;

.field private mShowDropDownRunnable:Ljava/lang/Runnable;

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTouchInterceptor:Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$PopupTouchInterceptor;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 82
    :try_start_0
    const-class v0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    const-string v1, "setClipToScreenEnabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->sClipToWindowEnabledMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "BaseListPopupWindow"

    const-string v2, "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 194
    sget v0, Lcoui/support/appcompat/R$attr;->listPopupWindowStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 195
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 205
    sget v0, Lcoui/support/appcompat/R$attr;->listPopupWindowStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 206
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 217
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 218
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, -0x2

    iput v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownHeight:I

    .line 95
    iput v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownWidth:I

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownGravity:I

    .line 102
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownAlwaysVisible:Z

    .line 103
    iput-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mForceIgnoreOutsideTouch:Z

    .line 104
    const v1, 0x7fffffff

    iput v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mListItemExpandMaximum:I

    .line 107
    iput v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mPromptPosition:I

    .line 118
    new-instance v1, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$ResizePopupRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$ResizePopupRunnable;-><init>(Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$1;)V

    iput-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mResizePopupRunnable:Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$ResizePopupRunnable;

    .line 119
    new-instance v1, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$PopupTouchInterceptor;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$PopupTouchInterceptor;-><init>(Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;)V

    iput-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mTouchInterceptor:Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$PopupTouchInterceptor;

    .line 120
    new-instance v1, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$PopupScrollListener;

    invoke-direct {v1, p0, v2}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$PopupScrollListener;-><init>(Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$1;)V

    iput-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mScrollListener:Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$PopupScrollListener;

    .line 121
    new-instance v1, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$ListSelectorHider;

    invoke-direct {v1, p0, v2}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$ListSelectorHider;-><init>(Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$1;)V

    iput-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mHideSelector:Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$ListSelectorHider;

    .line 124
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mHandler:Landroid/os/Handler;

    .line 126
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 230
    iput-object p1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mContext:Landroid/content/Context;

    .line 232
    sget-object v1, Lcoui/support/appcompat/R$styleable;->ListPopupWindow:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 234
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v2, Lcoui/support/appcompat/R$styleable;->ListPopupWindow_android_dropDownHorizontalOffset:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownHorizontalOffset:I

    .line 236
    sget v2, Lcoui/support/appcompat/R$styleable;->ListPopupWindow_android_dropDownVerticalOffset:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownVerticalOffset:I

    .line 238
    iget v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownVerticalOffset:I

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 239
    iput-boolean v2, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownVerticalOffsetSet:Z

    .line 241
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 243
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->createPopupWindow(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mPopup:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    .line 244
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mPopup:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->setInputMethodMode(I)V

    .line 247
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 248
    .local v0, "locale":Ljava/util/Locale;
    invoke-static {v0}, Landroidx/core/text/TextUtilsCompat;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mLayoutDirection:I

    .line 249
    return-void
.end method

.method static synthetic access$1000(Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;)Landroid/widget/ListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;

    .line 67
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;)Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$ResizePopupRunnable;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;

    .line 67
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mResizePopupRunnable:Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$ResizePopupRunnable;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;

    .line 67
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;)Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;

    .line 67
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownList:Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;

    return-object v0
.end method

.method private static isConfirmKey(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .line 1871
    const/16 v0, 0x42

    if-eq p0, v0, :cond_1

    const/16 v0, 0x17

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private removePromptView()V
    .locals 3

    .line 696
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 698
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 699
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 700
    .local v1, "group":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 703
    .end local v0    # "parent":Landroid/view/ViewParent;
    .end local v1    # "group":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private setPopupClipToScreenEnabled(Z)V
    .locals 5
    .param p1, "clip"    # Z

    .line 1875
    sget-object v0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->sClipToWindowEnabledMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 1877
    :try_start_0
    sget-object v0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->sClipToWindowEnabledMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mPopup:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1880
    goto :goto_0

    .line 1878
    :catch_0
    move-exception v0

    .line 1879
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BaseListPopupWindow"

    const-string v2, "Could not call setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1882
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method protected buildDropDown()I
    .locals 14

    .line 1057
    const/4 v0, 0x0

    .line 1059
    .local v0, "otherHeights":I
    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownList:Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;

    const/high16 v2, -0x80000000

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v1, :cond_3

    .line 1060
    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mContext:Landroid/content/Context;

    .line 1068
    .local v1, "context":Landroid/content/Context;
    new-instance v6, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$2;

    invoke-direct {v6, p0}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$2;-><init>(Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;)V

    iput-object v6, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    .line 1078
    new-instance v6, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;

    iget-boolean v7, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mModal:Z

    xor-int/2addr v7, v5

    invoke-direct {v6, v1, v7}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;-><init>(Landroid/content/Context;Z)V

    iput-object v6, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownList:Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;

    .line 1079
    iget-object v6, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_0

    .line 1080
    iget-object v6, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownList:Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;

    iget-object v7, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1082
    :cond_0
    iget-object v6, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownList:Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;

    new-instance v7, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$AnimListAdapter;

    iget-object v8, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-direct {v7, p0, v8}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$AnimListAdapter;-><init>(Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;Landroid/widget/ListAdapter;)V

    invoke-virtual {v6, v7}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1083
    iget-object v6, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownList:Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;

    iget-object v7, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v6, v7}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1084
    iget-object v6, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownList:Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;

    invoke-virtual {v6, v5}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->setFocusable(Z)V

    .line 1085
    iget-object v6, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownList:Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;

    invoke-virtual {v6, v5}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->setFocusableInTouchMode(Z)V

    .line 1086
    iget-object v6, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownList:Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;

    new-instance v7, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$3;

    invoke-direct {v7, p0}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$3;-><init>(Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;)V

    invoke-virtual {v6, v7}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1102
    iget-object v6, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownList:Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;

    iget-object v7, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mScrollListener:Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$PopupScrollListener;

    invoke-virtual {v6, v7}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1104
    iget-object v6, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v6, :cond_1

    .line 1105
    iget-object v6, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownList:Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;

    iget-object v7, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v6, v7}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1108
    :cond_1
    iget-object v6, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownList:Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;

    .line 1110
    .local v6, "dropDownView":Landroid/view/ViewGroup;
    iget-object v7, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mPromptView:Landroid/view/View;

    .line 1111
    .local v7, "hintView":Landroid/view/View;
    if-eqz v7, :cond_2

    .line 1114
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1115
    .local v8, "hintContainer":Landroid/widget/LinearLayout;
    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1117
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v9, v3, v4, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1121
    .local v9, "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    iget v10, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mPromptPosition:I

    packed-switch v10, :pswitch_data_0

    .line 1133
    const-string v10, "BaseListPopupWindow"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid hint position "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mPromptPosition:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1123
    :pswitch_0
    invoke-virtual {v8, v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1124
    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1125
    goto :goto_0

    .line 1128
    :pswitch_1
    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1129
    invoke-virtual {v8, v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1130
    nop

    .line 1139
    :goto_0
    iget v10, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownWidth:I

    invoke-static {v10, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 1140
    .local v10, "widthSpec":I
    const/4 v11, 0x0

    .line 1141
    .local v11, "heightSpec":I
    invoke-virtual {v7, v10, v11}, Landroid/view/View;->measure(II)V

    .line 1143
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    move-object v9, v12

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 1144
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    iget v13, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v12, v13

    iget v13, v9, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v12, v13

    .line 1147
    .end local v0    # "otherHeights":I
    .local v12, "otherHeights":I
    move-object v6, v8

    .line 1150
    move v0, v12

    .end local v8    # "hintContainer":Landroid/widget/LinearLayout;
    .end local v9    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v10    # "widthSpec":I
    .end local v11    # "heightSpec":I
    .end local v12    # "otherHeights":I
    .restart local v0    # "otherHeights":I
    :cond_2
    iget-object v8, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mPopup:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    invoke-virtual {v8, v6}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->setContentView(Landroid/view/View;)V

    .line 1151
    .end local v1    # "context":Landroid/content/Context;
    .end local v7    # "hintView":Landroid/view/View;
    goto :goto_1

    .line 1152
    .end local v6    # "dropDownView":Landroid/view/ViewGroup;
    :cond_3
    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mPopup:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/view/ViewGroup;

    .line 1153
    .restart local v6    # "dropDownView":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mPromptView:Landroid/view/View;

    .line 1154
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_4

    .line 1155
    nop

    .line 1156
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 1157
    .local v7, "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    iget v9, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v8, v9

    iget v9, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v0, v8, v9

    .line 1164
    .end local v1    # "view":Landroid/view/View;
    .end local v7    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    :goto_1
    const/4 v1, 0x0

    .line 1165
    .local v1, "padding":I
    iget-object v7, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mPopup:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    invoke-virtual {v7}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1166
    .local v7, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_5

    .line 1167
    iget-object v8, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1168
    iget-object v8, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int v1, v8, v9

    .line 1172
    iget-boolean v8, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v8, :cond_6

    .line 1173
    iget-object v8, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    neg-int v8, v8

    iput v8, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownVerticalOffset:I

    goto :goto_2

    .line 1176
    :cond_5
    iget-object v8, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->setEmpty()V

    .line 1180
    :cond_6
    :goto_2
    iget-object v8, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mPopup:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    .line 1181
    invoke-virtual {v8}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->getInputMethodMode()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_7

    move v4, v5

    nop

    .line 1182
    .local v4, "ignoreBottomDecorations":Z
    :cond_7
    iget-object v5, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mPopup:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    .line 1183
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v8

    iget v9, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownVerticalOffset:I

    .line 1182
    invoke-virtual {v5, v8, v9}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v5

    .line 1185
    .local v5, "maxHeight":I
    iget-boolean v8, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v8, :cond_a

    iget v8, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownHeight:I

    if-ne v8, v3, :cond_8

    goto :goto_5

    .line 1190
    :cond_8
    iget v3, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownWidth:I

    const/high16 v8, 0x40000000    # 2.0f

    packed-switch v3, :pswitch_data_1

    .line 1204
    iget v2, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownWidth:I

    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .local v9, "childWidthSpec":I
    :goto_3
    move v9, v2

    goto :goto_4

    .line 1198
    .end local v9    # "childWidthSpec":I
    :pswitch_2
    iget-object v2, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mContext:Landroid/content/Context;

    .line 1199
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v3, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v9

    sub-int/2addr v2, v3

    .line 1198
    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1202
    .local v2, "childWidthSpec":I
    goto :goto_3

    .line 1192
    .end local v2    # "childWidthSpec":I
    :pswitch_3
    iget-object v3, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mContext:Landroid/content/Context;

    .line 1193
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v8, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    sub-int/2addr v3, v8

    .line 1192
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1196
    .restart local v2    # "childWidthSpec":I
    goto :goto_3

    .line 1204
    .end local v2    # "childWidthSpec":I
    .restart local v9    # "childWidthSpec":I
    :goto_4
    nop

    .line 1208
    iget-object v8, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownList:Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;

    const/4 v10, 0x0

    const/4 v11, -0x1

    sub-int v12, v5, v0

    const/4 v13, -0x1

    invoke-virtual/range {v8 .. v13}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->measureHeightOfChildrenCompat(IIIII)I

    move-result v2

    .line 1212
    .local v2, "listContent":I
    if-lez v2, :cond_9

    add-int/2addr v0, v1

    .line 1214
    :cond_9
    add-int v3, v2, v0

    return v3

    .line 1186
    .end local v2    # "listContent":I
    .end local v9    # "childWidthSpec":I
    :cond_a
    :goto_5
    add-int v2, v5, v1

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public clearListSelection()V
    .locals 2

    .line 755
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownList:Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;

    .line 756
    .local v0, "list":Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;
    if-eqz v0, :cond_0

    .line 758
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->access$402(Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;Z)Z

    .line 760
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->requestLayout()V

    .line 762
    :cond_0
    return-void
.end method

.method public createDragToOpenListener(Landroid/view/View;)Landroid/view/View$OnTouchListener;
    .locals 1
    .param p1, "src"    # Landroid/view/View;

    .line 1041
    new-instance v0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$1;

    invoke-direct {v0, p0, p1}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$1;-><init>(Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;Landroid/view/View;)V

    return-object v0
.end method

.method createPopupWindow(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 1885
    new-instance v0, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-object v0
.end method

.method public dismiss()V
    .locals 2

    .line 679
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mPopup:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->dismiss()V

    .line 680
    invoke-direct {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->removePromptView()V

    .line 681
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mPopup:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->setContentView(Landroid/view/View;)V

    .line 682
    iput-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownList:Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;

    .line 683
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mResizePopupRunnable:Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$ResizePopupRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 684
    return-void
.end method

.method public getAnchorView()Landroid/view/View;
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    return-object v0
.end method

.method public getAnimationStyle()I
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mPopup:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->getAnimationStyle()I

    move-result v0

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mPopup:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 523
    iget v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownHeight:I

    return v0
.end method

.method public getHorizontalOffset()I
    .locals 1

    .line 444
    iget v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownHorizontalOffset:I

    return v0
.end method

.method public getInputMethodMode()I
    .locals 1

    .line 727
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mPopup:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->getInputMethodMode()I

    move-result v0

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 853
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownList:Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;

    return-object v0
.end method

.method public getPromptPosition()I
    .locals 1

    .line 293
    iget v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mPromptPosition:I

    return v0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 1

    .line 803
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 804
    const/4 v0, 0x0

    return-object v0

    .line 806
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownList:Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItemId()J
    .locals 2

    .line 829
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 830
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 832
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownList:Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .line 816
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 817
    const/4 v0, -0x1

    return v0

    .line 819
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownList:Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    .line 842
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 843
    const/4 v0, 0x0

    return-object v0

    .line 845
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownList:Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getSoftInputMode()I
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mPopup:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->getSoftInputMode()I

    move-result v0

    return v0
.end method

.method public getVerticalOffset()I
    .locals 1

    .line 460
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v0, :cond_0

    .line 461
    const/4 v0, 0x0

    return v0

    .line 463
    :cond_0
    iget v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownVerticalOffset:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 490
    iget v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownWidth:I

    return v0
.end method

.method public isDropDownAlwaysVisible()Z
    .locals 1

    .line 351
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownAlwaysVisible:Z

    return v0
.end method

.method public isInputMethodNotNeeded()Z
    .locals 2

    .line 776
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mPopup:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isModal()Z
    .locals 1

    .line 316
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mModal:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .line 768
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mPopup:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 878
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->isShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 884
    const/16 v0, 0x3e

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownList:Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;

    .line 885
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v0

    if-gez v0, :cond_0

    .line 886
    invoke-static {p1}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->isConfirmKey(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 887
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownList:Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v0

    .line 890
    .local v0, "curIndex":I
    iget-object v2, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mPopup:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->isAboveAnchor()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 892
    .local v2, "below":Z
    iget-object v4, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 895
    .local v4, "adapter":Landroid/widget/ListAdapter;
    const v5, 0x7fffffff

    .line 896
    .local v5, "firstItem":I
    const/high16 v6, -0x80000000

    .line 898
    .local v6, "lastItem":I
    if-eqz v4, :cond_3

    .line 899
    invoke-interface {v4}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v7

    .line 900
    .local v7, "allEnabled":Z
    if-eqz v7, :cond_1

    .line 901
    move v8, v1

    goto :goto_0

    .line 900
    :cond_1
    iget-object v8, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownList:Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;

    .line 901
    invoke-virtual {v8, v1, v3}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->lookForSelectablePosition(IZ)I

    move-result v8

    :goto_0
    move v5, v8

    .line 902
    if-eqz v7, :cond_2

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    sub-int/2addr v8, v3

    goto :goto_1

    :cond_2
    iget-object v8, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownList:Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;

    .line 903
    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-virtual {v8, v9, v1}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->lookForSelectablePosition(IZ)I

    move-result v8

    :goto_1
    move v6, v8

    .line 906
    .end local v7    # "allEnabled":Z
    :cond_3
    const/16 v7, 0x13

    if-eqz v2, :cond_4

    if-ne p1, v7, :cond_4

    if-le v0, v5, :cond_5

    :cond_4
    const/16 v8, 0x14

    if-nez v2, :cond_6

    if-ne p1, v8, :cond_6

    if-lt v0, v6, :cond_6

    .line 910
    :cond_5
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->clearListSelection()V

    .line 911
    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mPopup:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->setInputMethodMode(I)V

    .line 912
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->show()V

    .line 913
    return v3

    .line 917
    :cond_6
    iget-object v9, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownList:Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;

    invoke-static {v9, v1}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->access$402(Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;Z)Z

    .line 920
    iget-object v9, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownList:Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;

    invoke-virtual {v9, p1, p2}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v9

    .line 923
    .local v9, "consumed":Z
    if-eqz v9, :cond_8

    .line 926
    iget-object v7, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mPopup:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->setInputMethodMode(I)V

    .line 931
    iget-object v7, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownList:Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;

    invoke-virtual {v7}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->requestFocusFromTouch()Z

    .line 932
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->show()V

    .line 934
    const/16 v7, 0x17

    if-eq p1, v7, :cond_7

    const/16 v7, 0x42

    if-eq p1, v7, :cond_7

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 941
    :cond_7
    :pswitch_0
    return v3

    .line 944
    :cond_8
    if-eqz v2, :cond_9

    if-ne p1, v8, :cond_9

    .line 947
    if-ne v0, v6, :cond_a

    .line 948
    return v3

    .line 950
    :cond_9
    if-nez v2, :cond_a

    if-ne p1, v7, :cond_a

    if-ne v0, v5, :cond_a

    .line 952
    return v3

    .line 958
    .end local v0    # "curIndex":I
    .end local v2    # "below":Z
    .end local v4    # "adapter":Landroid/widget/ListAdapter;
    .end local v5    # "firstItem":I
    .end local v6    # "lastItem":I
    .end local v9    # "consumed":Z
    :cond_a
    :goto_2
    return v1

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 996
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 999
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    .line 1000
    .local v0, "anchorView":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 1001
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 1002
    .local v1, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_0

    .line 1003
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 1005
    :cond_0
    return v2

    .line 1006
    .end local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 1007
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 1008
    .restart local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_2

    .line 1009
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 1011
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1012
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->dismiss()V

    .line 1013
    return v2

    .line 1017
    .end local v0    # "anchorView":Landroid/view/View;
    .end local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 972
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownList:Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v0

    if-ltz v0, :cond_1

    .line 973
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownList:Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;

    invoke-virtual {v0, p1, p2}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 974
    .local v0, "consumed":Z
    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->isConfirmKey(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 977
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->dismiss()V

    .line 979
    :cond_0
    return v0

    .line 981
    .end local v0    # "consumed":Z
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public performItemClick(I)Z
    .locals 9
    .param p1, "position"    # I

    .line 787
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 788
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownList:Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;

    .line 790
    .local v0, "list":Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 791
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    .line 792
    .local v8, "adapter":Landroid/widget/ListAdapter;
    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-interface {v8, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v5

    move-object v2, v0

    move-object v3, v7

    move v4, p1

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 794
    .end local v0    # "list":Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "adapter":Landroid/widget/ListAdapter;
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 796
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public postShow()V
    .locals 2

    .line 578
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 579
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .line 258
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    if-nez v0, :cond_0

    .line 259
    new-instance v0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$PopupDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$PopupDataSetObserver;-><init>(Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$1;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    goto :goto_0

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 263
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 264
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    .line 265
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 268
    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownList:Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;

    if-eqz v0, :cond_3

    .line 269
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownList:Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;

    new-instance v1, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$AnimListAdapter;

    iget-object v2, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-direct {v1, p0, v2}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$AnimListAdapter;-><init>(Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;Landroid/widget/ListAdapter;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 271
    :cond_3
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;

    .line 437
    iput-object p1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    .line 438
    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 1
    .param p1, "animationStyle"    # I

    .line 409
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mPopup:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->setAnimationStyle(I)V

    .line 410
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 400
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mPopup:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 401
    return-void
.end method

.method public setContentWidth(I)V
    .locals 3
    .param p1, "width"    # I

    .line 510
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mPopup:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 511
    .local v0, "popupBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 512
    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 513
    iget-object v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    add-int/2addr v1, p1

    iput v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownWidth:I

    goto :goto_0

    .line 515
    :cond_0
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->setWidth(I)V

    .line 517
    :goto_0
    return-void
.end method

.method public setDropDownAlwaysVisible(Z)V
    .locals 0
    .param p1, "dropDownAlwaysVisible"    # Z

    .line 342
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownAlwaysVisible:Z

    .line 343
    return-void
.end method

.method public setDropDownGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .line 483
    iput p1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownGravity:I

    .line 484
    return-void
.end method

.method public setForceIgnoreOutsideTouch(Z)V
    .locals 0
    .param p1, "forceIgnoreOutsideTouch"    # Z

    .line 327
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mForceIgnoreOutsideTouch:Z

    .line 328
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .line 532
    iput p1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownHeight:I

    .line 533
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .line 453
    iput p1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownHorizontalOffset:I

    .line 454
    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 718
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mPopup:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->setInputMethodMode(I)V

    .line 719
    return-void
.end method

.method setListItemExpandMax(I)V
    .locals 0
    .param p1, "max"    # I

    .line 863
    iput p1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mListItemExpandMaximum:I

    .line 864
    return-void
.end method

.method public setListSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "selector"    # Landroid/graphics/drawable/Drawable;

    .line 384
    iput-object p1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    .line 385
    return-void
.end method

.method public setModal(Z)V
    .locals 1
    .param p1, "modal"    # Z

    .line 306
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mModal:Z

    .line 307
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mPopup:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->setFocusable(Z)V

    .line 308
    return-void
.end method

.method public setOnDismissListener(Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow$OnDismissListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow$OnDismissListener;

    .line 692
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mPopup:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->setOnDismissListener(Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow$OnDismissListener;)V

    .line 693
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "clickListener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .line 543
    iput-object p1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 544
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .param p1, "selectedListener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 554
    iput-object p1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 555
    return-void
.end method

.method public setPromptPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .line 283
    iput p1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mPromptPosition:I

    .line 284
    return-void
.end method

.method public setPromptView(Landroid/view/View;)V
    .locals 1
    .param p1, "prompt"    # Landroid/view/View;

    .line 564
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->isShowing()Z

    move-result v0

    .line 565
    .local v0, "showing":Z
    if-eqz v0, :cond_0

    .line 566
    invoke-direct {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->removePromptView()V

    .line 568
    :cond_0
    iput-object p1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mPromptView:Landroid/view/View;

    .line 569
    if-eqz v0, :cond_1

    .line 570
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->show()V

    .line 572
    :cond_1
    return-void
.end method

.method public setSelection(I)V
    .locals 3
    .param p1, "position"    # I

    .line 737
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownList:Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;

    .line 738
    .local v0, "list":Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 739
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->access$402(Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;Z)Z

    .line 740
    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->setSelection(I)V

    .line 742
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 743
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->getChoiceMode()I

    move-result v1

    if-eqz v1, :cond_0

    .line 744
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->setItemChecked(IZ)V

    .line 748
    :cond_0
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 365
    iget-object v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mPopup:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->setSoftInputMode(I)V

    .line 366
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .line 472
    iput p1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownVerticalOffset:I

    .line 473
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownVerticalOffsetSet:Z

    .line 474
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .line 500
    iput p1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownWidth:I

    .line 501
    return-void
.end method

.method public show()V
    .locals 15

    .line 586
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->buildDropDown()I

    move-result v0

    .line 588
    .local v0, "height":I
    const/4 v1, 0x0

    .line 589
    .local v1, "widthSpec":I
    const/4 v2, 0x0

    .line 591
    .local v2, "heightSpec":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->isInputMethodNotNeeded()Z

    move-result v3

    .line 593
    .local v3, "noInputMethod":Z
    iget-object v4, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mPopup:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    invoke-virtual {v4}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->isShowing()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, -0x2

    const/4 v7, 0x0

    const/4 v8, -0x1

    if-eqz v4, :cond_9

    .line 594
    iget v4, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownWidth:I

    if-ne v4, v8, :cond_0

    .line 597
    const/4 v1, -0x1

    goto :goto_0

    .line 598
    :cond_0
    iget v4, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownWidth:I

    if-ne v4, v6, :cond_1

    .line 599
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v1

    goto :goto_0

    .line 601
    :cond_1
    iget v1, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownWidth:I

    .line 604
    :goto_0
    iget v4, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownHeight:I

    if-ne v4, v8, :cond_6

    .line 607
    if-eqz v3, :cond_2

    move v4, v0

    goto :goto_1

    :cond_2
    move v4, v8

    :goto_1
    move v2, v4

    .line 608
    if-eqz v3, :cond_4

    .line 609
    iget-object v4, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mPopup:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    iget v6, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownWidth:I

    if-ne v6, v8, :cond_3

    goto :goto_2

    :cond_3
    move v8, v7

    :goto_2
    invoke-virtual {v4, v8, v7}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->setWindowLayoutMode(II)V

    goto :goto_4

    .line 613
    :cond_4
    iget-object v4, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mPopup:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    iget v6, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownWidth:I

    if-ne v6, v8, :cond_5

    move v6, v8

    goto :goto_3

    :cond_5
    move v6, v7

    :goto_3
    invoke-virtual {v4, v6, v8}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->setWindowLayoutMode(II)V

    goto :goto_4

    .line 618
    :cond_6
    iget v4, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownHeight:I

    if-ne v4, v6, :cond_7

    .line 619
    move v2, v0

    goto :goto_4

    .line 621
    :cond_7
    iget v2, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownHeight:I

    .line 624
    :goto_4
    iget-object v4, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mPopup:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    iget-boolean v6, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v6, :cond_8

    iget-boolean v6, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v6, :cond_8

    goto :goto_5

    :cond_8
    move v5, v7

    :goto_5
    invoke-virtual {v4, v5}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->setOutsideTouchable(Z)V

    .line 626
    iget-object v9, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mPopup:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v10

    iget v11, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownHorizontalOffset:I

    iget v12, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownVerticalOffset:I

    move v13, v1

    move v14, v2

    invoke-virtual/range {v9 .. v14}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->update(Landroid/view/View;IIII)V

    goto/16 :goto_a

    .line 629
    :cond_9
    iget v4, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownWidth:I

    if-ne v4, v8, :cond_a

    .line 630
    const/4 v1, -0x1

    goto :goto_6

    .line 632
    :cond_a
    iget v4, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownWidth:I

    if-ne v4, v6, :cond_b

    .line 633
    iget-object v4, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mPopup:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    invoke-virtual {v4, v9}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->setWidth(I)V

    goto :goto_6

    .line 635
    :cond_b
    iget-object v4, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mPopup:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    iget v9, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownWidth:I

    invoke-virtual {v4, v9}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->setWidth(I)V

    .line 639
    :goto_6
    iget v4, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownHeight:I

    if-ne v4, v8, :cond_c

    .line 640
    const/4 v2, -0x1

    goto :goto_7

    .line 642
    :cond_c
    iget v4, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownHeight:I

    if-ne v4, v6, :cond_d

    .line 643
    iget-object v4, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mPopup:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    invoke-virtual {v4, v0}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->setHeight(I)V

    goto :goto_7

    .line 645
    :cond_d
    iget-object v4, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mPopup:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    iget v6, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownHeight:I

    invoke-virtual {v4, v6}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->setHeight(I)V

    .line 649
    :goto_7
    iget-object v4, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mPopup:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    invoke-virtual {v4, v1, v2}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->setWindowLayoutMode(II)V

    .line 652
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Lcom/coui/appcompat/widget/COUISpinner;

    if-eqz v4, :cond_e

    .line 653
    invoke-direct {p0, v7}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->setPopupClipToScreenEnabled(Z)V

    goto :goto_8

    .line 655
    :cond_e
    invoke-direct {p0, v5}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->setPopupClipToScreenEnabled(Z)V

    .line 660
    :goto_8
    iget-object v4, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mPopup:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    iget-boolean v6, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v6, :cond_f

    iget-boolean v6, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v6, :cond_f

    goto :goto_9

    :cond_f
    move v5, v7

    :goto_9
    invoke-virtual {v4, v5}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->setOutsideTouchable(Z)V

    .line 661
    iget-object v4, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mPopup:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    iget-object v5, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mTouchInterceptor:Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$PopupTouchInterceptor;

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 662
    iget-object v4, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mPopup:Lcom/coui/appcompat/widget/popupwindow/COUIBasePopupWindow;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v5

    iget v6, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownHorizontalOffset:I

    iget v7, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownVerticalOffset:I

    iget v9, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownGravity:I

    invoke-static {v4, v5, v6, v7, v9}, Landroidx/core/widget/PopupWindowCompat;->showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    .line 664
    iget-object v4, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownList:Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;

    invoke-virtual {v4, v8}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->setSelection(I)V

    .line 666
    iget-boolean v4, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mModal:Z

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mDropDownList:Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;

    invoke-virtual {v4}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$DropDownListView;->isInTouchMode()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 667
    :cond_10
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->clearListSelection()V

    .line 669
    :cond_11
    iget-boolean v4, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mModal:Z

    if-nez v4, :cond_12

    .line 670
    iget-object v4, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow;->mHideSelector:Lcom/coui/appcompat/widget/popupwindow/COUIBaseListPopupWindow$ListSelectorHider;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 673
    :cond_12
    :goto_a
    return-void
.end method
