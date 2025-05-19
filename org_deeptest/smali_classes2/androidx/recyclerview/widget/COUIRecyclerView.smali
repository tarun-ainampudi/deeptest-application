.class public Landroidx/recyclerview/widget/COUIRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "COUIRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;
    }
.end annotation


# static fields
.field public static final CENTER_ALIGN:I = 0x2

.field private static final COUI_DEBUG:Z = false

.field private static final HORIZONTAL_SPRING_BACK_TENSION_MULTIPLE:F = 3.2f

.field private static final INVALID_POINTER:I = -0x1

.field public static final START_ALIGN:I = 0x1

.field static final TAG:Ljava/lang/String; = "COUIRecyclerView"

.field private static final VERTICAL_SPRING_BACK_TENSION_MULTIPLE:F = 2.15f


# instance fields
.field final FLING:I

.field final OVER_FLING:I

.field final OVER_SCROLLING:I

.field final SCROLLING:I

.field private mCOUILocateOverScroller:Lcom/coui/appcompat/widget/COUILocateOverScroller;

.field private mIgnoreMotionEventTillDown:Z

.field private mInitialTouchX:I

.field private mInitialTouchY:I

.field private mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

.field private mIsUseNativeOverScroll:Z

.field private mLastTouchX:I

.field private mLastTouchY:I

.field private mLocateHelper:Lcom/coui/appcompat/widget/COUIFlingLocateHelper;

.field private final mMaxFlingVelocity:I

.field private final mMinFlingVelocity:I

.field private final mNestedOffsets:[I

.field private mOnFlingListener:Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;

.field private mOnItemTouchListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field mOverScrollEnable:Z

.field private mOverScroller:Lcom/coui/appcompat/widget/COUIIOverScroller;

.field private mOverflingDistance:I

.field private mOverscrollDistance:I

.field private final mScrollOffset:[I

.field private mScrollPointerId:I

.field private mScrollState:I

.field private mScrollType:I

.field private mSpringOverScroller:Lcom/coui/appcompat/widget/SpringOverScroller;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewFlinger:Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 117
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

    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyle"    # I

    .line 124
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScrollEnable:Z

    .line 59
    const/4 v1, 0x0

    iput v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->SCROLLING:I

    .line 60
    iput v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->FLING:I

    .line 61
    const/4 v0, 0x2

    iput v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->OVER_SCROLLING:I

    .line 62
    const/4 v2, 0x3

    iput v2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->OVER_FLING:I

    .line 97
    iput v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollState:I

    .line 98
    const/4 v1, -0x1

    iput v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollPointerId:I

    .line 111
    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollOffset:[I

    .line 112
    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mNestedOffsets:[I

    .line 126
    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->initViewFlinger()V

    .line 127
    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->initOnItemTouchListeners()V

    .line 131
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 132
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mTouchSlop:I

    .line 133
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mMinFlingVelocity:I

    .line 134
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mMaxFlingVelocity:I

    .line 135
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->initProperty(Landroid/content/Context;)V

    .line 143
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->initOverScroller(Landroid/content/Context;)V

    .line 144
    new-instance v1, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;

    invoke-direct {v1}, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLocateHelper:Lcom/coui/appcompat/widget/COUIFlingLocateHelper;

    .line 145
    iget-object v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLocateHelper:Lcom/coui/appcompat/widget/COUIFlingLocateHelper;

    invoke-virtual {v1, p0}, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/COUIRecyclerView;)V

    .line 147
    return-void
.end method

.method static synthetic access$000(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/widget/COUIIOverScroller;
    .locals 1
    .param p0, "x0"    # Landroidx/recyclerview/widget/COUIRecyclerView;

    .line 47
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScroller:Lcom/coui/appcompat/widget/COUIIOverScroller;

    return-object v0
.end method

.method static synthetic access$100(Landroidx/recyclerview/widget/COUIRecyclerView;)I
    .locals 1
    .param p0, "x0"    # Landroidx/recyclerview/widget/COUIRecyclerView;

    .line 47
    iget v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollType:I

    return v0
.end method

.method static synthetic access$102(Landroidx/recyclerview/widget/COUIRecyclerView;I)I
    .locals 0
    .param p0, "x0"    # Landroidx/recyclerview/widget/COUIRecyclerView;
    .param p1, "x1"    # I

    .line 47
    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollType:I

    return p1
.end method

.method static synthetic access$200(Landroidx/recyclerview/widget/COUIRecyclerView;)I
    .locals 1
    .param p0, "x0"    # Landroidx/recyclerview/widget/COUIRecyclerView;

    .line 47
    iget v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverflingDistance:I

    return v0
.end method

.method static synthetic access$300(Landroidx/recyclerview/widget/COUIRecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/recyclerview/widget/COUIRecyclerView;

    .line 47
    iget-boolean v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mIsUseNativeOverScroll:Z

    return v0
.end method

.method static synthetic access$400(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/widget/SpringOverScroller;
    .locals 1
    .param p0, "x0"    # Landroidx/recyclerview/widget/COUIRecyclerView;

    .line 47
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSpringOverScroller:Lcom/coui/appcompat/widget/SpringOverScroller;

    return-object v0
.end method

.method static synthetic access$500(Landroidx/recyclerview/widget/COUIRecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/recyclerview/widget/COUIRecyclerView;

    .line 47
    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroidx/recyclerview/widget/COUIRecyclerView;)Lcom/coui/appcompat/widget/COUIFlingLocateHelper;
    .locals 1
    .param p0, "x0"    # Landroidx/recyclerview/widget/COUIRecyclerView;

    .line 47
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLocateHelper:Lcom/coui/appcompat/widget/COUIFlingLocateHelper;

    return-object v0
.end method

.method static synthetic access$700(Landroidx/recyclerview/widget/COUIRecyclerView;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroidx/recyclerview/widget/COUIRecyclerView;
    .param p1, "x1"    # Landroid/content/Context;

    .line 47
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->initOverScroller(Landroid/content/Context;)V

    return-void
.end method

.method private cancelScroll()V
    .locals 1

    .line 1144
    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->resetScroll()V

    .line 1145
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->setScrollState(I)V

    .line 1148
    invoke-static {p0, v0}, Lcom/coui/appcompat/util/ViewNative;->setScrollX(Landroid/view/View;I)V

    .line 1149
    invoke-static {p0, v0}, Lcom/coui/appcompat/util/ViewNative;->setScrollY(Landroid/view/View;I)V

    .line 1151
    return-void
.end method

.method private dispatchToOnItemTouchListeners(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 758
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    if-nez v0, :cond_1

    .line 759
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 760
    const/4 v0, 0x0

    return v0

    .line 762
    :cond_0
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->findInterceptingOnItemTouchListener(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 764
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    invoke-interface {v0, p0, p1}, Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;->onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V

    .line 765
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 766
    .local v0, "action":I
    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    if-ne v0, v2, :cond_3

    .line 767
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 769
    :cond_3
    return v2
.end method

.method private findInterceptingOnItemTouchListener(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 787
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 788
    .local v0, "action":I
    iget-object v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 789
    .local v1, "listenerCount":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 790
    iget-object v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 791
    .local v4, "listener":Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;
    invoke-interface {v4, p0, p1}, Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;->onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x3

    if-eq v0, v5, :cond_0

    .line 792
    iput-object v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 793
    const/4 v2, 0x1

    return v2

    .line 789
    .end local v4    # "listener":Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 796
    .end local v3    # "i":I
    :cond_1
    return v2
.end method

.method private getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "className"    # Ljava/lang/String;

    .line 241
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 244
    :cond_0
    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    return-object p2

    .line 247
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initOnItemTouchListeners()V
    .locals 1

    .line 164
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    .line 167
    :cond_0
    return-void
.end method

.method private initOverScroller(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 156
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScroller:Lcom/coui/appcompat/widget/COUIIOverScroller;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Lcom/coui/appcompat/widget/SpringOverScroller;

    invoke-direct {v0, p1}, Lcom/coui/appcompat/widget/SpringOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSpringOverScroller:Lcom/coui/appcompat/widget/SpringOverScroller;

    .line 158
    new-instance v0, Lcom/coui/appcompat/widget/COUILocateOverScroller;

    invoke-direct {v0, p1}, Lcom/coui/appcompat/widget/COUILocateOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mCOUILocateOverScroller:Lcom/coui/appcompat/widget/COUILocateOverScroller;

    .line 159
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->setIsUseNativeOverScroll(Z)V

    .line 161
    :cond_0
    return-void
.end method

.method private initProperty(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 478
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 479
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverscrollDistance:I

    iput v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverflingDistance:I

    .line 480
    return-void
.end method

.method private initViewFlinger()V
    .locals 1

    .line 150
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;-><init>(Landroidx/recyclerview/widget/COUIRecyclerView;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;

    .line 153
    :cond_0
    return-void
.end method

.method private needLocate()Z
    .locals 1

    .line 1171
    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1172
    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    .line 1173
    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 1154
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 1155
    .local v0, "actionIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollPointerId:I

    if-ne v1, v2, :cond_1

    .line 1157
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1158
    .local v1, "newIndex":I
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollPointerId:I

    .line 1159
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLastTouchX:I

    iput v2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mInitialTouchX:I

    .line 1160
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLastTouchY:I

    iput v2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mInitialTouchY:I

    .line 1162
    .end local v1    # "newIndex":I
    :cond_1
    return-void
.end method

.method private resetScroll()V
    .locals 1

    .line 1131
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1132
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 1134
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->stopNestedScroll(I)V

    .line 1141
    return-void
.end method

.method private stopScrollersInternal()V
    .locals 1

    .line 677
    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->initViewFlinger()V

    .line 678
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->stop()V

    .line 679
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->stopSmoothScroller()V

    .line 682
    :cond_0
    return-void
.end method


# virtual methods
.method public addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 717
    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->initOnItemTouchListeners()V

    .line 718
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 719
    return-void
.end method

.method public cancelHorizontalItemAlign()V
    .locals 1

    .line 185
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLocateHelper:Lcom/coui/appcompat/widget/COUIFlingLocateHelper;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->cancelHorizontalItemAlign()V

    .line 186
    return-void
.end method

.method public computeScroll()V
    .locals 18

    .line 524
    move-object/from16 v10, p0

    iget-boolean v0, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScrollEnable:Z

    if-eqz v0, :cond_4

    iget v0, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollType:I

    const/4 v11, 0x2

    if-eq v0, v11, :cond_0

    iget v0, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 525
    :cond_0
    iget-object v12, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mSpringOverScroller:Lcom/coui/appcompat/widget/SpringOverScroller;

    .line 526
    .local v12, "scroller":Lcom/coui/appcompat/widget/COUIIOverScroller;
    invoke-interface {v12}, Lcom/coui/appcompat/widget/COUIIOverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 527
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getScrollX()I

    move-result v13

    .line 528
    .local v13, "oldX":I
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getScrollY()I

    move-result v14

    .line 529
    .local v14, "oldY":I
    invoke-interface {v12}, Lcom/coui/appcompat/widget/COUIIOverScroller;->getCOUICurrX()I

    move-result v15

    .line 530
    .local v15, "x":I
    invoke-interface {v12}, Lcom/coui/appcompat/widget/COUIIOverScroller;->getCOUICurrY()I

    move-result v9

    .line 531
    .local v9, "y":I
    if-ne v13, v15, :cond_2

    if-eq v14, v9, :cond_1

    goto :goto_0

    .line 537
    :cond_1
    move/from16 v17, v9

    goto :goto_1

    .line 532
    :cond_2
    :goto_0
    sub-int v1, v15, v13

    sub-int v2, v9, v14

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverflingDistance:I

    iget v8, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverflingDistance:I

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move v3, v13

    move v4, v14

    move/from16 v17, v9

    .end local v9    # "y":I
    .local v17, "y":I
    move/from16 v9, v16

    invoke-virtual/range {v0 .. v9}, Landroidx/recyclerview/widget/COUIRecyclerView;->overScrollBy(IIIIIIIIZ)Z

    .line 534
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getScrollX()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getScrollY()I

    move-result v1

    invoke-virtual {v10, v0, v1, v13, v14}, Landroidx/recyclerview/widget/COUIRecyclerView;->onScrollChanged(IIII)V

    .line 537
    :goto_1
    invoke-interface {v12}, Lcom/coui/appcompat/widget/COUIIOverScroller;->isCOUIFinished()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 538
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->setScrollState(I)V

    goto :goto_2

    .line 540
    :cond_3
    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/COUIRecyclerView;->setScrollState(I)V

    .line 543
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_4

    .line 545
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->postInvalidateOnAnimation()V

    .line 549
    .end local v12    # "scroller":Lcom/coui/appcompat/widget/COUIIOverScroller;
    .end local v13    # "oldX":I
    .end local v14    # "oldY":I
    .end local v15    # "x":I
    .end local v17    # "y":I
    :cond_4
    return-void
.end method

.method public fling(II)Z
    .locals 7
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .line 608
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 609
    const-string v0, "COUIRecyclerView"

    const-string v2, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    return v1

    .line 613
    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLayoutSuppressed:Z

    if-eqz v0, :cond_1

    .line 614
    return v1

    .line 617
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    .line 618
    .local v0, "canScrollHorizontal":Z
    iget-object v2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v2

    .line 620
    .local v2, "canScrollVertical":Z
    if-eqz v0, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mMinFlingVelocity:I

    if-ge v3, v4, :cond_3

    .line 621
    :cond_2
    const/4 p1, 0x0

    .line 623
    :cond_3
    if-eqz v2, :cond_4

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mMinFlingVelocity:I

    if-ge v3, v4, :cond_5

    .line 624
    :cond_4
    const/4 p2, 0x0

    .line 626
    :cond_5
    if-nez p1, :cond_6

    if-nez p2, :cond_6

    .line 628
    return v1

    .line 631
    :cond_6
    iget-object v3, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSpringOverScroller:Lcom/coui/appcompat/widget/SpringOverScroller;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRefreshRate()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/coui/appcompat/widget/SpringOverScroller;->setRefreshRate(F)V

    .line 633
    int-to-float v3, p1

    int-to-float v4, p2

    invoke-virtual {p0, v3, v4}, Landroidx/recyclerview/widget/COUIRecyclerView;->dispatchNestedPreFling(FF)Z

    move-result v3

    if-nez v3, :cond_c

    .line 636
    const/4 v3, 0x1

    iput v3, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollType:I

    .line 638
    if-nez v0, :cond_8

    if-eqz v2, :cond_7

    goto :goto_0

    :cond_7
    move v4, v1

    goto :goto_1

    :cond_8
    :goto_0
    move v4, v3

    .line 639
    .local v4, "canScroll":Z
    :goto_1
    int-to-float v5, p1

    int-to-float v6, p2

    invoke-virtual {p0, v5, v6, v4}, Landroidx/recyclerview/widget/COUIRecyclerView;->dispatchNestedFling(FFZ)Z

    .line 641
    iget-object v5, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOnFlingListener:Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;

    if-eqz v5, :cond_9

    iget-object v5, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOnFlingListener:Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;

    invoke-virtual {v5, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;->onFling(II)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 642
    return v3

    .line 645
    :cond_9
    if-eqz v4, :cond_c

    .line 646
    const/4 v1, 0x0

    .line 647
    .local v1, "nestedScrollAxis":I
    if-eqz v0, :cond_a

    .line 648
    or-int/lit8 v1, v1, 0x1

    .line 650
    :cond_a
    if-eqz v2, :cond_b

    .line 651
    or-int/lit8 v1, v1, 0x2

    .line 653
    :cond_b
    invoke-virtual {p0, v1, v3}, Landroidx/recyclerview/widget/COUIRecyclerView;->startNestedScroll(II)Z

    .line 655
    iget v5, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mMaxFlingVelocity:I

    neg-int v5, v5

    iget v6, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mMaxFlingVelocity:I

    invoke-static {p1, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 656
    iget v5, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mMaxFlingVelocity:I

    neg-int v5, v5

    iget v6, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mMaxFlingVelocity:I

    invoke-static {p2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 657
    iget-object v5, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;

    invoke-virtual {v5, p1, p2}, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->fling(II)V

    .line 658
    return v3

    .line 661
    .end local v1    # "nestedScrollAxis":I
    .end local v4    # "canScroll":Z
    :cond_c
    return v1
.end method

.method public getHorizontalItemAlign()I
    .locals 1

    .line 194
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLocateHelper:Lcom/coui/appcompat/widget/COUIFlingLocateHelper;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->getHorizontalItemAlign()I

    move-result v0

    return v0
.end method

.method public getIsUseNativeOverScroll()Z
    .locals 1

    .line 217
    iget-boolean v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mIsUseNativeOverScroll:Z

    return v0
.end method

.method public getMaxFlingVelocity()I
    .locals 1

    .line 700
    iget v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mMaxFlingVelocity:I

    return v0
.end method

.method public getMinFlingVelocity()I
    .locals 1

    .line 690
    iget v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mMinFlingVelocity:I

    return v0
.end method

.method public getOnFlingListener()Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 295
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOnFlingListener:Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;

    return-object v0
.end method

.method public getScrollState()I
    .locals 1

    .line 305
    iget v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollState:I

    return v0
.end method

.method public getViewFlinger()Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;
    .locals 1

    .line 1177
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;

    return-object v0
.end method

.method protected invalidateParentIfNeeded()V
    .locals 1

    .line 498
    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 499
    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 501
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 801
    iget-boolean v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLayoutSuppressed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 804
    return v1

    .line 809
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 810
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->findInterceptingOnItemTouchListener(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 811
    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->cancelScroll()V

    .line 812
    return v2

    .line 815
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_2

    .line 816
    return v1

    .line 819
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    .line 820
    .local v0, "canScrollHorizontally":Z
    iget-object v3, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    .line 822
    .local v3, "canScrollVertically":Z
    iget-object v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_3

    .line 823
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 825
    :cond_3
    iget-object v4, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 827
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    .line 828
    .local v4, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    .line 830
    .local v5, "actionIndex":I
    const/high16 v6, 0x3f000000    # 0.5f

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 894
    :pswitch_1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    .line 896
    goto/16 :goto_0

    .line 859
    :pswitch_2
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollPointerId:I

    .line 860
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    add-float/2addr v7, v6

    float-to-int v7, v7

    iput v7, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLastTouchX:I

    iput v7, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mInitialTouchX:I

    .line 861
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    add-float/2addr v7, v6

    float-to-int v6, v7

    iput v6, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLastTouchY:I

    iput v6, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mInitialTouchY:I

    .line 862
    goto/16 :goto_0

    .line 905
    :pswitch_3
    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->cancelScroll()V

    goto/16 :goto_0

    .line 865
    :pswitch_4
    iget v7, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollPointerId:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v7

    .line 866
    .local v7, "index":I
    if-gez v7, :cond_4

    .line 867
    const-string v2, "COUIRecyclerView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error processing scroll; pointer index for id "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollPointerId:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    return v1

    .line 872
    :cond_4
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    add-float/2addr v8, v6

    float-to-int v8, v8

    .line 873
    .local v8, "x":I
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    add-float/2addr v9, v6

    float-to-int v6, v9

    .line 874
    .local v6, "y":I
    iget v9, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollState:I

    if-eq v9, v2, :cond_7

    .line 875
    iget v9, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mInitialTouchX:I

    sub-int v9, v8, v9

    .line 876
    .local v9, "dx":I
    iget v10, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mInitialTouchY:I

    sub-int v10, v6, v10

    .line 877
    .local v10, "dy":I
    const/4 v11, 0x0

    .line 878
    .local v11, "startScroll":Z
    if-eqz v0, :cond_5

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v12

    iget v13, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mTouchSlop:I

    if-le v12, v13, :cond_5

    .line 879
    iput v8, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLastTouchX:I

    .line 880
    const/4 v11, 0x1

    .line 882
    :cond_5
    if-eqz v3, :cond_6

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v12

    iget v13, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mTouchSlop:I

    if-le v12, v13, :cond_6

    .line 883
    iput v6, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLastTouchY:I

    .line 884
    const/4 v11, 0x1

    .line 886
    :cond_6
    if-eqz v11, :cond_7

    .line 887
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/COUIRecyclerView;->setScrollState(I)V

    .line 891
    .end local v6    # "y":I
    .end local v7    # "index":I
    .end local v8    # "x":I
    .end local v9    # "dx":I
    .end local v10    # "dy":I
    .end local v11    # "startScroll":Z
    :cond_7
    goto :goto_0

    .line 899
    :pswitch_5
    iget-object v6, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->clear()V

    .line 900
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->stopNestedScroll(I)V

    .line 902
    goto :goto_0

    .line 832
    :pswitch_6
    iget-boolean v7, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mIgnoreMotionEventTillDown:Z

    if-eqz v7, :cond_8

    .line 833
    iput-boolean v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mIgnoreMotionEventTillDown:Z

    .line 835
    :cond_8
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollPointerId:I

    .line 836
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    add-float/2addr v7, v6

    float-to-int v7, v7

    iput v7, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLastTouchX:I

    iput v7, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mInitialTouchX:I

    .line 837
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    add-float/2addr v7, v6

    float-to-int v6, v7

    iput v6, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLastTouchY:I

    iput v6, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mInitialTouchY:I

    .line 839
    iget v6, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollState:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_9

    .line 840
    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 841
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/COUIRecyclerView;->setScrollState(I)V

    .line 842
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/COUIRecyclerView;->stopNestedScroll(I)V

    .line 846
    :cond_9
    iget-object v6, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mNestedOffsets:[I

    iget-object v7, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mNestedOffsets:[I

    aput v1, v7, v2

    aput v1, v6, v1

    .line 848
    const/4 v6, 0x0

    .line 849
    .local v6, "nestedScrollAxis":I
    if-eqz v0, :cond_a

    .line 850
    or-int/lit8 v6, v6, 0x1

    .line 852
    :cond_a
    if-eqz v3, :cond_b

    .line 853
    or-int/lit8 v6, v6, 0x2

    .line 855
    :cond_b
    invoke-virtual {p0, v6, v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->startNestedScroll(II)Z

    .line 856
    nop

    .line 908
    .end local v6    # "nestedScrollAxis":I
    :goto_0
    iget v6, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollState:I

    if-ne v6, v2, :cond_c

    move v1, v2

    nop

    :cond_c
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 2
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .line 485
    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getScrollY()I

    move-result v0

    if-ne v0, p2, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getScrollX()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 489
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->onScrollChanged(IIII)V

    .line 490
    invoke-static {p0, p1}, Lcom/coui/appcompat/util/ViewNative;->setScrollX(Landroid/view/View;I)V

    .line 491
    invoke-static {p0, p2}, Lcom/coui/appcompat/util/ViewNative;->setScrollY(Landroid/view/View;I)V

    .line 492
    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->invalidateParentIfNeeded()V

    .line 493
    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->awakenScrollBars()Z

    .line 495
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 23
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 923
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-boolean v0, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mLayoutSuppressed:Z

    const/4 v8, 0x0

    if-nez v0, :cond_20

    iget-boolean v0, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mIgnoreMotionEventTillDown:Z

    if-eqz v0, :cond_0

    goto/16 :goto_7

    .line 926
    :cond_0
    invoke-direct/range {p0 .. p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->dispatchToOnItemTouchListeners(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v9, 0x1

    if-eqz v0, :cond_1

    .line 927
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->cancelScroll()V

    .line 928
    return v9

    .line 931
    :cond_1
    iget-object v0, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_2

    .line 932
    return v8

    .line 935
    :cond_2
    iget-object v0, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v10

    .line 936
    .local v10, "canScrollHorizontally":Z
    iget-object v0, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v11

    .line 938
    .local v11, "canScrollVertically":Z
    iget-object v0, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_3

    .line 939
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 942
    :cond_3
    const/4 v12, 0x0

    .line 945
    .local v12, "eventAddedToVelocityTracker":Z
    iget-boolean v0, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScrollEnable:Z

    if-eqz v0, :cond_4

    .line 946
    iget-object v0, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 949
    :cond_4
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v13

    .line 950
    .local v13, "vtev":Landroid/view/MotionEvent;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v14

    .line 951
    .local v14, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v15

    .line 953
    .local v15, "actionIndex":I
    if-nez v14, :cond_5

    .line 954
    iget-object v0, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mNestedOffsets:[I

    iget-object v1, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mNestedOffsets:[I

    aput v8, v1, v9

    aput v8, v0, v8

    .line 956
    :cond_5
    iget-object v0, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mNestedOffsets:[I

    aget v0, v0, v8

    int-to-float v0, v0

    iget-object v1, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mNestedOffsets:[I

    aget v1, v1, v9

    int-to-float v1, v1

    invoke-virtual {v13, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 958
    const/high16 v0, 0x3f000000    # 0.5f

    packed-switch v14, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_6

    .line 1060
    :pswitch_1
    invoke-direct/range {p0 .. p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    .line 1062
    goto/16 :goto_6

    .line 983
    :pswitch_2
    invoke-virtual {v7, v15}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollPointerId:I

    .line 984
    invoke-virtual {v7, v15}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mLastTouchX:I

    iput v1, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mInitialTouchX:I

    .line 985
    invoke-virtual {v7, v15}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mLastTouchY:I

    iput v0, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mInitialTouchY:I

    .line 987
    goto/16 :goto_6

    .line 1109
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->cancelScroll()V

    goto/16 :goto_6

    .line 990
    :pswitch_4
    iget v1, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollPointerId:I

    invoke-virtual {v7, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 991
    .local v5, "index":I
    if-gez v5, :cond_6

    .line 992
    const-string v0, "COUIRecyclerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error processing scroll; pointer index for id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollPointerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    return v8

    .line 997
    :cond_6
    invoke-virtual {v7, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v1, v0

    float-to-int v4, v1

    .line 998
    .local v4, "x":I
    invoke-virtual {v7, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v1, v0

    float-to-int v3, v1

    .line 999
    .local v3, "y":I
    iget v0, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mLastTouchX:I

    sub-int v16, v0, v4

    .line 1000
    .local v16, "dx":I
    iget v0, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mLastTouchY:I

    sub-int v17, v0, v3

    .line 1002
    .local v17, "dy":I
    iget-object v0, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mReusableIntPair:[I

    aput v8, v0, v8

    .line 1003
    iget-object v0, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mReusableIntPair:[I

    aput v8, v0, v9

    .line 1004
    iget-object v2, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mReusableIntPair:[I

    iget-object v1, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollOffset:[I

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v19, v1

    move/from16 v1, v16

    move-object/from16 v20, v2

    move/from16 v2, v17

    move/from16 v21, v3

    .end local v3    # "y":I
    .local v21, "y":I
    move-object/from16 v3, v20

    move/from16 v20, v4

    .end local v4    # "x":I
    .local v20, "x":I
    move-object/from16 v4, v19

    move/from16 v19, v5

    .end local v5    # "index":I
    .local v19, "index":I
    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/COUIRecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1005
    iget-object v0, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mReusableIntPair:[I

    aget v0, v0, v8

    sub-int v16, v16, v0

    .line 1006
    iget-object v0, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mReusableIntPair:[I

    aget v0, v0, v9

    sub-int v17, v17, v0

    .line 1007
    iget-object v0, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollOffset:[I

    aget v0, v0, v8

    int-to-float v0, v0

    iget-object v1, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollOffset:[I

    aget v1, v1, v9

    int-to-float v1, v1

    invoke-virtual {v13, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1009
    iget-object v0, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mNestedOffsets:[I

    aget v1, v0, v8

    iget-object v2, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollOffset:[I

    aget v2, v2, v8

    add-int/2addr v1, v2

    aput v1, v0, v8

    .line 1010
    iget-object v0, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mNestedOffsets:[I

    aget v1, v0, v9

    iget-object v2, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollOffset:[I

    aget v2, v2, v9

    add-int/2addr v1, v2

    aput v1, v0, v9

    .line 1013
    :cond_7
    iget v0, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollState:I

    if-eq v0, v9, :cond_c

    .line 1014
    const/4 v0, 0x0

    .line 1015
    .local v0, "startScroll":Z
    if-eqz v10, :cond_9

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mTouchSlop:I

    if-le v1, v2, :cond_9

    .line 1016
    if-lez v16, :cond_8

    .line 1017
    iget v1, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mTouchSlop:I

    sub-int v16, v16, v1

    goto :goto_0

    .line 1019
    :cond_8
    iget v1, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mTouchSlop:I

    add-int v16, v16, v1

    .line 1021
    :goto_0
    const/4 v0, 0x1

    .line 1023
    :cond_9
    if-eqz v11, :cond_b

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mTouchSlop:I

    if-le v1, v2, :cond_b

    .line 1024
    if-lez v17, :cond_a

    .line 1025
    iget v1, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mTouchSlop:I

    sub-int v17, v17, v1

    goto :goto_1

    .line 1027
    :cond_a
    iget v1, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mTouchSlop:I

    add-int v17, v17, v1

    .line 1029
    :goto_1
    const/4 v0, 0x1

    .line 1031
    :cond_b
    if-eqz v0, :cond_c

    .line 1032
    invoke-virtual {v6, v9}, Landroidx/recyclerview/widget/COUIRecyclerView;->setScrollState(I)V

    .line 1036
    .end local v0    # "startScroll":Z
    :cond_c
    move/from16 v0, v16

    move/from16 v1, v17

    .end local v16    # "dx":I
    .end local v17    # "dy":I
    .local v0, "dx":I
    .local v1, "dy":I
    iget v2, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollState:I

    if-ne v2, v9, :cond_12

    .line 1037
    iget-object v2, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollOffset:[I

    aget v2, v2, v8

    sub-int v4, v20, v2

    iput v4, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mLastTouchX:I

    .line 1038
    iget-object v2, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollOffset:[I

    aget v2, v2, v9

    sub-int v3, v21, v2

    iput v3, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mLastTouchY:I

    .line 1041
    iget-boolean v2, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScrollEnable:Z

    if-eqz v2, :cond_d

    .line 1042
    iput v8, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollType:I

    .line 1046
    :cond_d
    if-eqz v10, :cond_e

    move v2, v0

    goto :goto_2

    :cond_e
    move v2, v8

    :goto_2
    if-eqz v11, :cond_f

    move v8, v1

    nop

    :cond_f
    invoke-virtual {v6, v2, v8, v13}, Landroidx/recyclerview/widget/COUIRecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1050
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1052
    :cond_10
    iget-object v2, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    if-eqz v2, :cond_12

    if-nez v0, :cond_11

    if-eqz v1, :cond_12

    .line 1053
    :cond_11
    iget-object v2, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    invoke-virtual {v2, v6, v0, v1}, Landroidx/recyclerview/widget/GapWorker;->postFromTraversal(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 1057
    .end local v0    # "dx":I
    .end local v1    # "dy":I
    .end local v19    # "index":I
    .end local v20    # "x":I
    .end local v21    # "y":I
    :cond_12
    goto/16 :goto_6

    .line 1072
    :pswitch_5
    iget-boolean v0, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScrollEnable:Z

    if-nez v0, :cond_13

    .line 1073
    iget-object v0, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v13}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1074
    const/4 v12, 0x1

    .line 1078
    :cond_13
    iget-object v0, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mMaxFlingVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1079
    const/4 v0, 0x0

    if-eqz v10, :cond_14

    iget-object v1, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollPointerId:I

    .line 1080
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v1

    neg-float v1, v1

    goto :goto_3

    :cond_14
    move v1, v0

    .line 1081
    .local v1, "xvel":F
    :goto_3
    if-eqz v11, :cond_15

    iget-object v2, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollPointerId:I

    .line 1082
    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    neg-float v2, v2

    goto :goto_4

    :cond_15
    move v2, v0

    .line 1086
    .local v2, "yvel":F
    :goto_4
    iget v3, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_17

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getScrollX()I

    move-result v3

    if-nez v3, :cond_16

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getScrollY()I

    move-result v3

    if-eqz v3, :cond_17

    :cond_16
    iget-boolean v3, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScrollEnable:Z

    if-eqz v3, :cond_17

    .line 1087
    iget-object v0, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mSpringOverScroller:Lcom/coui/appcompat/widget/SpringOverScroller;

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getScrollX()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getScrollY()I

    move-result v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v22}, Lcom/coui/appcompat/widget/SpringOverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1089
    const/16 v0, 0xe

    invoke-virtual {v6, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->performHapticFeedback(I)Z

    .line 1090
    iget-object v0, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mSpringOverScroller:Lcom/coui/appcompat/widget/SpringOverScroller;

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRefreshRate()F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/widget/SpringOverScroller;->setRefreshRate(F)V

    .line 1091
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->postInvalidateOnAnimation()V

    .line 1092
    iget v0, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollState:I

    if-eqz v0, :cond_1a

    .line 1093
    iput v8, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollState:I

    .line 1094
    iget v0, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollState:I

    invoke-virtual {v6, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->dispatchOnScrollStateChanged(I)V

    goto :goto_5

    .line 1097
    :cond_17
    cmpl-float v3, v1, v0

    if-nez v3, :cond_18

    cmpl-float v0, v2, v0

    if-eqz v0, :cond_19

    :cond_18
    float-to-int v0, v1

    float-to-int v3, v2

    invoke-virtual {v6, v0, v3}, Landroidx/recyclerview/widget/COUIRecyclerView;->fling(II)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1098
    :cond_19
    invoke-virtual {v6, v8}, Landroidx/recyclerview/widget/COUIRecyclerView;->setScrollState(I)V

    .line 1103
    :cond_1a
    :goto_5
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->resetScroll()V

    .line 1106
    .end local v1    # "xvel":F
    .end local v2    # "yvel":F
    goto :goto_6

    .line 960
    :pswitch_6
    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollPointerId:I

    .line 961
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    add-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mLastTouchX:I

    iput v1, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mInitialTouchX:I

    .line 962
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mLastTouchY:I

    iput v0, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mInitialTouchY:I

    .line 965
    iget-object v0, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScroller:Lcom/coui/appcompat/widget/COUIIOverScroller;

    invoke-interface {v0}, Lcom/coui/appcompat/widget/COUIIOverScroller;->isCOUIFinished()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mSpringOverScroller:Lcom/coui/appcompat/widget/SpringOverScroller;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/SpringOverScroller;->isCOUIFinished()Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_1b
    iget-boolean v0, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScrollEnable:Z

    if-eqz v0, :cond_1c

    .line 966
    iget-object v0, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScroller:Lcom/coui/appcompat/widget/COUIIOverScroller;

    invoke-interface {v0}, Lcom/coui/appcompat/widget/COUIIOverScroller;->abortAnimation()V

    .line 967
    iget-object v0, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mSpringOverScroller:Lcom/coui/appcompat/widget/SpringOverScroller;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/SpringOverScroller;->abortAnimation()V

    .line 971
    :cond_1c
    const/4 v0, 0x0

    .line 972
    .local v0, "nestedScrollAxis":I
    if-eqz v10, :cond_1d

    .line 973
    or-int/lit8 v0, v0, 0x1

    .line 975
    :cond_1d
    if-eqz v11, :cond_1e

    .line 976
    or-int/lit8 v0, v0, 0x2

    .line 978
    :cond_1e
    invoke-virtual {v6, v0, v8}, Landroidx/recyclerview/widget/COUIRecyclerView;->startNestedScroll(II)Z

    .line 980
    .end local v0    # "nestedScrollAxis":I
    nop

    .line 1121
    :goto_6
    if-nez v12, :cond_1f

    iget-boolean v0, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScrollEnable:Z

    if-nez v0, :cond_1f

    .line 1122
    iget-object v0, v6, Landroidx/recyclerview/widget/COUIRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v13}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1125
    :cond_1f
    invoke-virtual {v13}, Landroid/view/MotionEvent;->recycle()V

    .line 1127
    return v9

    .line 924
    .end local v10    # "canScrollHorizontally":Z
    .end local v11    # "canScrollVertically":Z
    .end local v12    # "eventAddedToVelocityTracker":Z
    .end local v13    # "vtev":Landroid/view/MotionEvent;
    .end local v14    # "action":I
    .end local v15    # "actionIndex":I
    :cond_20
    :goto_7
    return v8

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 3
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "scrollX"    # I
    .param p4, "scrollY"    # I
    .param p5, "scrollRangeX"    # I
    .param p6, "scrollRangeY"    # I
    .param p7, "maxOverScrollX"    # I
    .param p8, "maxOverScrollY"    # I
    .param p9, "isTouchEvent"    # Z

    .line 509
    add-int v0, p3, p1

    .line 510
    .local v0, "newScrollX":I
    add-int v1, p4, p2

    .line 512
    .local v1, "newScrollY":I
    if-gez p3, :cond_0

    if-gtz v0, :cond_1

    :cond_0
    if-lez p3, :cond_2

    if-gez v0, :cond_2

    .line 513
    :cond_1
    const/4 v0, 0x0

    .line 515
    :cond_2
    if-gez p4, :cond_3

    if-gtz v1, :cond_4

    :cond_3
    if-lez p4, :cond_5

    if-gez v1, :cond_5

    .line 516
    :cond_4
    const/4 v1, 0x0

    .line 519
    :cond_5
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Landroidx/recyclerview/widget/COUIRecyclerView;->onOverScrolled(IIZZ)V

    .line 520
    return v2
.end method

.method public removeOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 727
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 728
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    if-ne v0, p1, :cond_0

    .line 729
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 731
    :cond_0
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 3
    .param p1, "disallowIntercept"    # Z

    .line 913
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 914
    .local v0, "listenerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 915
    iget-object v2, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 916
    .local v2, "listener":Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;
    invoke-interface {v2, p1}, Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;->onRequestDisallowInterceptTouchEvent(Z)V

    .line 914
    .end local v2    # "listener":Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 918
    .end local v1    # "i":I
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    .line 919
    return-void
.end method

.method public scrollBy(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 327
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    .line 328
    const-string v0, "COUIRecyclerView"

    const-string v1, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return-void

    .line 332
    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLayoutSuppressed:Z

    if-eqz v0, :cond_1

    .line 333
    return-void

    .line 335
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    .line 336
    .local v0, "canScrollHorizontal":Z
    iget-object v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    .line 337
    .local v1, "canScrollVertical":Z
    if-nez v0, :cond_2

    if-eqz v1, :cond_5

    .line 338
    :cond_2
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    move v3, p1

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    if-eqz v1, :cond_4

    move v2, p2

    nop

    :cond_4
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v2, v4}, Landroidx/recyclerview/widget/COUIRecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    .line 340
    :cond_5
    return-void
.end method

.method scrollByInternal(IILandroid/view/MotionEvent;)Z
    .locals 26
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "ev"    # Landroid/view/MotionEvent;

    .line 353
    move-object/from16 v10, p0

    move/from16 v11, p1

    move/from16 v12, p2

    move-object/from16 v13, p3

    const/4 v0, 0x0

    .line 354
    .local v0, "unconsumedX":I
    const/4 v1, 0x0

    .line 355
    .local v1, "unconsumedY":I
    const/4 v2, 0x0

    .line 356
    .local v2, "consumedX":I
    const/4 v3, 0x0

    .line 358
    .local v3, "consumedY":I
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->consumePendingUpdateOperations()V

    .line 359
    iget-object v4, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v4, :cond_5

    .line 372
    if-nez v11, :cond_0

    if-eqz v12, :cond_5

    .line 373
    :cond_0
    iget-boolean v4, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScrollEnable:Z

    if-eqz v4, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getScrollY()I

    move-result v4

    if-gez v4, :cond_1

    if-gtz v12, :cond_5

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getScrollY()I

    move-result v4

    if-lez v4, :cond_2

    if-ltz v12, :cond_5

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getScrollX()I

    move-result v4

    if-gez v4, :cond_3

    if-gtz v11, :cond_5

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getScrollX()I

    move-result v4

    if-lez v4, :cond_4

    if-gez v11, :cond_4

    goto :goto_0

    .line 376
    :cond_4
    iget-object v4, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mReusableIntPair:[I

    aput v15, v4, v15

    .line 377
    iget-object v4, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mReusableIntPair:[I

    aput v15, v4, v14

    .line 378
    iget-object v4, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mReusableIntPair:[I

    invoke-virtual {v10, v11, v12, v4}, Landroidx/recyclerview/widget/COUIRecyclerView;->scrollStep(II[I)V

    .line 379
    iget-object v4, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mReusableIntPair:[I

    aget v2, v4, v15

    .line 380
    iget-object v4, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mReusableIntPair:[I

    aget v3, v4, v14

    .line 381
    sub-int v0, v11, v2

    .line 382
    sub-int v1, v12, v3

    .line 390
    .end local v0    # "unconsumedX":I
    .end local v1    # "unconsumedY":I
    .end local v2    # "consumedX":I
    .end local v3    # "consumedY":I
    .local v8, "consumedY":I
    .local v9, "consumedX":I
    .local v16, "unconsumedX":I
    .local v17, "unconsumedY":I
    :cond_5
    :goto_0
    move/from16 v16, v0

    move/from16 v17, v1

    move v9, v2

    move v8, v3

    iget-object v0, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 391
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->invalidate()V

    .line 394
    :cond_6
    iget-object v0, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mReusableIntPair:[I

    aput v15, v0, v15

    .line 395
    iget-object v0, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mReusableIntPair:[I

    aput v15, v0, v14

    .line 396
    iget-object v5, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollOffset:[I

    const/4 v6, 0x0

    iget-object v7, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mReusableIntPair:[I

    move-object/from16 v0, p0

    move v1, v9

    move v2, v8

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-virtual/range {v0 .. v7}, Landroidx/recyclerview/widget/COUIRecyclerView;->dispatchNestedScroll(IIII[II[I)V

    .line 398
    iget-object v0, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mReusableIntPair:[I

    aget v0, v0, v15

    sub-int v16, v16, v0

    .line 399
    iget-object v0, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mReusableIntPair:[I

    aget v0, v0, v14

    sub-int v17, v17, v0

    .line 402
    iget v0, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mLastTouchX:I

    iget-object v1, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollOffset:[I

    aget v1, v1, v15

    sub-int/2addr v0, v1

    iput v0, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mLastTouchX:I

    .line 403
    iget v0, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mLastTouchY:I

    iget-object v1, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollOffset:[I

    aget v1, v1, v14

    sub-int/2addr v0, v1

    iput v0, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mLastTouchY:I

    .line 404
    if-eqz v13, :cond_7

    .line 405
    iget-object v0, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollOffset:[I

    aget v0, v0, v15

    int-to-float v0, v0

    iget-object v1, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollOffset:[I

    aget v1, v1, v14

    int-to-float v1, v1

    invoke-virtual {v13, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 407
    :cond_7
    iget-object v0, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mNestedOffsets:[I

    aget v1, v0, v15

    iget-object v2, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollOffset:[I

    aget v2, v2, v15

    add-int/2addr v1, v2

    aput v1, v0, v15

    .line 408
    iget-object v0, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mNestedOffsets:[I

    aget v1, v0, v14

    iget-object v2, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollOffset:[I

    aget v2, v2, v14

    add-int/2addr v1, v2

    aput v1, v0, v14

    .line 410
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 421
    if-eqz v13, :cond_16

    iget-boolean v0, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScrollEnable:Z

    if-eqz v0, :cond_16

    .line 422
    if-nez v17, :cond_8

    if-eqz v16, :cond_9

    .line 423
    :cond_8
    iput v1, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollType:I

    .line 426
    :cond_9
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-nez v0, :cond_a

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mTouchSlop:I

    if-ge v0, v2, :cond_a

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mTouchSlop:I

    if-ge v0, v2, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getScrollY()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mTouchSlop:I

    if-le v0, v2, :cond_a

    .line 427
    iput v1, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollType:I

    .line 430
    :cond_a
    if-nez v17, :cond_b

    if-nez v8, :cond_b

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mTouchSlop:I

    if-le v0, v2, :cond_b

    .line 431
    iput v1, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollType:I

    .line 434
    :cond_b
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-nez v0, :cond_c

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mTouchSlop:I

    if-ge v0, v2, :cond_c

    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mTouchSlop:I

    if-ge v0, v2, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getScrollX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mTouchSlop:I

    if-le v0, v2, :cond_c

    .line 435
    iput v1, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollType:I

    .line 438
    :cond_c
    if-nez v16, :cond_d

    if-nez v9, :cond_d

    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mTouchSlop:I

    if-le v0, v2, :cond_d

    .line 439
    iput v1, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollType:I

    .line 442
    :cond_d
    move/from16 v0, v17

    .line 443
    .local v0, "overY":I
    move/from16 v1, v16

    .line 445
    .local v1, "overX":I
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getScrollX()I

    move-result v7

    .line 446
    .local v7, "scrollX":I
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getScrollY()I

    move-result v6

    .line 448
    .local v6, "scrollY":I
    iget v2, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverscrollDistance:I

    invoke-static {v0, v6, v2}, Lcom/coui/appcompat/util/COUIPhysicalAnimationUtil;->calcRealOverScrollDist(III)I

    move-result v0

    .line 449
    iget v2, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverscrollDistance:I

    invoke-static {v1, v7, v2}, Lcom/coui/appcompat/util/COUIPhysicalAnimationUtil;->calcRealOverScrollDist(III)I

    move-result v1

    .line 451
    if-gez v6, :cond_e

    if-gtz v12, :cond_f

    :cond_e
    if-lez v6, :cond_10

    if-gez v12, :cond_10

    .line 452
    :cond_f
    iget v2, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverscrollDistance:I

    invoke-static {v12, v7, v2}, Lcom/coui/appcompat/util/COUIPhysicalAnimationUtil;->calcRealOverScrollDist(III)I

    move-result v0

    .line 455
    .end local v0    # "overY":I
    .local v18, "overY":I
    :cond_10
    move/from16 v18, v0

    if-gez v7, :cond_11

    if-gtz v11, :cond_12

    :cond_11
    if-lez v7, :cond_13

    if-gez v11, :cond_13

    .line 456
    :cond_12
    iget v0, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverscrollDistance:I

    invoke-static {v11, v7, v0}, Lcom/coui/appcompat/util/COUIPhysicalAnimationUtil;->calcRealOverScrollDist(III)I

    move-result v0

    .line 459
    move/from16 v19, v0

    goto :goto_1

    :cond_13
    move/from16 v19, v1

    .end local v1    # "overX":I
    .local v19, "overX":I
    :goto_1
    if-nez v18, :cond_15

    if-eqz v19, :cond_14

    goto :goto_2

    .line 466
    .end local v6    # "scrollY":I
    .end local v7    # "scrollX":I
    .end local v18    # "overY":I
    .end local v19    # "overX":I
    :cond_14
    move v14, v8

    move v15, v9

    goto :goto_3

    .line 460
    .restart local v6    # "scrollY":I
    .restart local v7    # "scrollX":I
    .restart local v18    # "overY":I
    .restart local v19    # "overX":I
    :cond_15
    :goto_2
    const/4 v5, 0x0

    const/16 v20, 0x0

    iget v4, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverscrollDistance:I

    iget v3, v10, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverscrollDistance:I

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v18

    move/from16 v22, v3

    move v3, v7

    move/from16 v23, v4

    move v4, v6

    move/from16 v24, v6

    .end local v6    # "scrollY":I
    .local v24, "scrollY":I
    move/from16 v6, v20

    move/from16 v20, v7

    .end local v7    # "scrollX":I
    .local v20, "scrollX":I
    move/from16 v7, v23

    move v14, v8

    .end local v8    # "consumedY":I
    .local v14, "consumedY":I
    move/from16 v8, v22

    move v15, v9

    .end local v9    # "consumedX":I
    .local v15, "consumedX":I
    move/from16 v9, v21

    invoke-virtual/range {v0 .. v9}, Landroidx/recyclerview/widget/COUIRecyclerView;->overScrollBy(IIIIIIIIZ)Z

    goto :goto_3

    .line 466
    .end local v14    # "consumedY":I
    .end local v15    # "consumedX":I
    .end local v18    # "overY":I
    .end local v19    # "overX":I
    .end local v20    # "scrollX":I
    .end local v24    # "scrollY":I
    .restart local v8    # "consumedY":I
    .restart local v9    # "consumedX":I
    :cond_16
    move v14, v8

    move v15, v9

    .end local v8    # "consumedY":I
    .end local v9    # "consumedX":I
    .restart local v14    # "consumedY":I
    .restart local v15    # "consumedX":I
    :goto_3
    if-nez v15, :cond_17

    if-eqz v14, :cond_18

    .line 467
    :cond_17
    invoke-virtual {v10, v15, v14}, Landroidx/recyclerview/widget/COUIRecyclerView;->dispatchOnScrolled(II)V

    .line 469
    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_19

    .line 470
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->invalidate()V

    .line 472
    :cond_19
    if-nez v15, :cond_1b

    if-eqz v14, :cond_1a

    goto :goto_4

    :cond_1a
    const/16 v25, 0x0

    goto :goto_5

    :cond_1b
    :goto_4
    const/16 v25, 0x1

    :goto_5
    return v25
.end method

.method public setHorizontalFlingFriction(F)V
    .locals 1
    .param p1, "friction"    # F

    .line 225
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mCOUILocateOverScroller:Lcom/coui/appcompat/widget/COUILocateOverScroller;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUILocateOverScroller;->setFlingFriction(F)V

    .line 226
    return-void
.end method

.method public setHorizontalItemAlign(I)V
    .locals 1
    .param p1, "itemAlign"    # I

    .line 175
    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->needLocate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->setIsUseNativeOverScroll(Z)V

    .line 177
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLocateHelper:Lcom/coui/appcompat/widget/COUIFlingLocateHelper;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUIFlingLocateHelper;->setHorizontalItemAlign(I)V

    .line 179
    :cond_0
    return-void
.end method

.method public setIsUseNativeOverScroll(Z)V
    .locals 1
    .param p1, "isUseNativeOverScroll"    # Z

    .line 203
    iput-boolean p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mIsUseNativeOverScroll:Z

    .line 204
    iget-boolean v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mIsUseNativeOverScroll:Z

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mCOUILocateOverScroller:Lcom/coui/appcompat/widget/COUILocateOverScroller;

    iput-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScroller:Lcom/coui/appcompat/widget/COUIIOverScroller;

    goto :goto_0

    .line 207
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSpringOverScroller:Lcom/coui/appcompat/widget/SpringOverScroller;

    iput-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScroller:Lcom/coui/appcompat/widget/COUIIOverScroller;

    .line 209
    :goto_0
    return-void
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 2
    .param p1, "layout"    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 230
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 231
    if-eqz p1, :cond_1

    .line 232
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSpringOverScroller:Lcom/coui/appcompat/widget/SpringOverScroller;

    const v1, 0x404ccccd    # 3.2f

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/SpringOverScroller;->setSpringBackTensionMultiple(F)V

    goto :goto_0

    .line 235
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mSpringOverScroller:Lcom/coui/appcompat/widget/SpringOverScroller;

    const v1, 0x4009999a    # 2.15f

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/SpringOverScroller;->setSpringBackTensionMultiple(F)V

    .line 238
    :cond_1
    :goto_0
    return-void
.end method

.method public setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;)V
    .locals 0
    .param p1, "onFlingListener"    # Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 285
    iput-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOnFlingListener:Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;

    .line 286
    return-void
.end method

.method public setOverScrollEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 552
    iput-boolean p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mOverScrollEnable:Z

    .line 553
    return-void
.end method

.method setScrollState(I)V
    .locals 1
    .param p1, "state"    # I

    .line 309
    iget v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollState:I

    if-ne p1, v0, :cond_0

    .line 310
    return-void

    .line 316
    :cond_0
    iput p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mScrollState:I

    .line 317
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 318
    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->stopScrollersInternal()V

    .line 320
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->dispatchOnScrollStateChanged(I)V

    .line 321
    return-void
.end method

.method public setScrollingTouchSlop(I)V
    .locals 4
    .param p1, "slopConstant"    # I

    .line 260
    invoke-virtual {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 261
    .local v0, "vc":Landroid/view/ViewConfiguration;
    packed-switch p1, :pswitch_data_0

    .line 263
    const-string v1, "COUIRecyclerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScrollingTouchSlop(): bad argument constant "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; using default value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 271
    :pswitch_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mTouchSlop:I

    goto :goto_1

    .line 267
    :goto_0
    :pswitch_1
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mTouchSlop:I

    .line 268
    nop

    .line 274
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public smoothScrollBy(II)V
    .locals 1
    .param p1, "dx"    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2, "dy"    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .line 564
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    .line 565
    return-void
.end method

.method public smoothScrollBy(IILandroid/view/animation/Interpolator;)V
    .locals 2
    .param p1, "dx"    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2, "dy"    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p3, "interpolator"    # Landroid/view/animation/Interpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 576
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    .line 577
    const-string v0, "COUIRecyclerView"

    const-string v1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    return-void

    .line 581
    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLayoutSuppressed:Z

    if-eqz v0, :cond_1

    .line 582
    return-void

    .line 584
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-nez v0, :cond_2

    .line 585
    const/4 p1, 0x0

    .line 587
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-nez v0, :cond_3

    .line 588
    const/4 p2, 0x0

    .line 590
    :cond_3
    if-nez p1, :cond_4

    if-eqz p2, :cond_5

    .line 591
    :cond_4
    iget-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;

    const/high16 v1, -0x80000000

    invoke-virtual {v0, p1, p2, v1, p3}, Landroidx/recyclerview/widget/COUIRecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    .line 593
    :cond_5
    return-void
.end method

.method public stopScroll()V
    .locals 1

    .line 669
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->setScrollState(I)V

    .line 670
    invoke-direct {p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->stopScrollersInternal()V

    .line 671
    return-void
.end method
