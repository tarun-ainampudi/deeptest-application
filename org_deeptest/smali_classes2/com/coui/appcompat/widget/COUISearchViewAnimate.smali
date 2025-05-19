.class public Lcom/coui/appcompat/widget/COUISearchViewAnimate;
.super Landroid/widget/LinearLayout;
.source "COUISearchViewAnimate.java"

# interfaces
.implements Landroidx/appcompat/view/CollapsibleActionView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;,
        Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;,
        Lcom/coui/appcompat/widget/COUISearchViewAnimate$OnCancelButtonClickListener;,
        Lcom/coui/appcompat/widget/COUISearchViewAnimate$OnAnimationListener;,
        Lcom/coui/appcompat/widget/COUISearchViewAnimate$OnStateChangeListener;,
        Lcom/coui/appcompat/widget/COUISearchViewAnimate$AddToolBarWay;,
        Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchViewState;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field public static final STATE_EDIT:I = 0x1

.field public static final STATE_NORMAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "COUISearchViewAnimate"

.field private static final WAY_AT_BEHIND:I = 0x1

.field private static final WAY_AT_FRONT:I = 0x2

.field private static final WAY_NONE:I


# instance fields
.field private mAddToToolbarWay:I

.field private volatile mAnimatorHelper:Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;

.field private mAtToolbarFrontStateChangeListener:Lcom/coui/appcompat/widget/COUISearchViewAnimate$OnStateChangeListener;

.field private mCancelButton:Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;

.field private mCancelDivider:Landroid/widget/ImageView;

.field private mCloseBtn:Landroid/widget/ImageView;

.field private mFadeDuration:J

.field private mGravity:I

.field private mGravityInToolBar:I

.field private mHasAddedToToolbar:Z

.field private mHintTextView:Landroid/widget/TextView;

.field private mHintViewLayout:Landroid/widget/LinearLayout;

.field private mMenuItem:Landroid/view/MenuItem;

.field private mOnAnimationListener:Lcom/coui/appcompat/widget/COUISearchViewAnimate$OnAnimationListener;

.field private mOnCancelButtonClickListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coui/appcompat/widget/COUISearchViewAnimate$OnCancelButtonClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnStateChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coui/appcompat/widget/COUISearchViewAnimate$OnStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaceAtFrontRunnable:Ljava/lang/Runnable;

.field private mSearchIcon:Landroid/widget/ImageView;

.field private mSearchIconCanAnimate:Z

.field private mSearchView:Lcom/coui/appcompat/widget/COUISearchView;

.field private mState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mStyle:I

.field private mToolBar:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

.field private mToolBarAnimationRunning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    const/4 v0, 0x0

    sput-boolean v0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 276
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 277
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 282
    sget v0, Lcoui/support/appcompat/R$attr;->couiSearchViewAnimateStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 283
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 298
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 125
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 130
    const-wide/16 v2, 0x96

    iput-wide v2, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mFadeDuration:J

    .line 143
    const/16 v0, 0x30

    iput v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mGravityInToolBar:I

    .line 152
    iput v1, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mAddToToolbarWay:I

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mSearchIconCanAnimate:Z

    .line 161
    new-instance v0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$1;-><init>(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mPlaceAtFrontRunnable:Ljava/lang/Runnable;

    .line 197
    new-instance v0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$2;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$2;-><init>(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mAtToolbarFrontStateChangeListener:Lcom/coui/appcompat/widget/COUISearchViewAnimate$OnStateChangeListener;

    .line 207
    const/16 v0, 0x10

    iput v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mGravity:I

    .line 965
    new-instance v0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$9;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$9;-><init>(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 300
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->inflateView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 301
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->loadAttr(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 302
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->setClipToPadding(Z)V

    .line 303
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->setClipChildren(Z)V

    .line 304
    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Lcom/coui/appcompat/widget/toolbar/COUIToolbar;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    .line 70
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mToolBar:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    .line 70
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mHintTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    .line 70
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mHintViewLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1400()Z
    .locals 1

    .line 70
    sget-boolean v0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    .line 70
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->onClickStateNormal()V

    return-void
.end method

.method static synthetic access$1600(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    .line 70
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mCancelButton:Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    .line 70
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->onClickStateEdit()V

    return-void
.end method

.method static synthetic access$1800(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)J
    .locals 2
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    .line 70
    iget-wide v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mFadeDuration:J

    return-wide v0
.end method

.method static synthetic access$1900(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Lcom/coui/appcompat/widget/COUISearchViewAnimate$OnAnimationListener;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    .line 70
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mOnAnimationListener:Lcom/coui/appcompat/widget/COUISearchViewAnimate$OnAnimationListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    .line 70
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->isRtl()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/coui/appcompat/widget/COUISearchViewAnimate;II)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISearchViewAnimate;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->notifyOnStateChange(II)V

    return-void
.end method

.method static synthetic access$2200(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Lcom/coui/appcompat/widget/COUISearchView;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    .line 70
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/widget/COUISearchView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    .line 70
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    .line 70
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mSearchIconCanAnimate:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    .line 70
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mCancelDivider:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    .line 70
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mSearchIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/coui/appcompat/widget/COUISearchViewAnimate;I)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISearchViewAnimate;
    .param p1, "x1"    # I

    .line 70
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->changeStateWithOutAnimation(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/coui/appcompat/widget/COUISearchViewAnimate;F)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISearchViewAnimate;
    .param p1, "x1"    # F

    .line 70
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->setToolBarAlpha(F)V

    return-void
.end method

.method static synthetic access$500(Lcom/coui/appcompat/widget/COUISearchViewAnimate;I)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISearchViewAnimate;
    .param p1, "x1"    # I

    .line 70
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->setToolBarChildVisibility(I)V

    return-void
.end method

.method static synthetic access$602(Lcom/coui/appcompat/widget/COUISearchViewAnimate;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISearchViewAnimate;
    .param p1, "x1"    # Z

    .line 70
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mToolBarAnimationRunning:Z

    return p1
.end method

.method static synthetic access$700(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    .line 70
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->setSearchAutoCompleteFocus()V

    return-void
.end method

.method static synthetic access$800(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    .line 70
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->setSearchAutoCompleteUnFocus()V

    return-void
.end method

.method private changeStateWithOutAnimation(I)V
    .locals 5
    .param p1, "targetState"    # I

    .line 878
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 879
    return-void

    .line 881
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 882
    sget-boolean v0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 883
    const-string v0, "COUISearchViewAnimate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeStateWithOutAnimation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    :cond_1
    const/4 v0, 0x1

    const/16 v1, 0x8

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-ne p1, v0, :cond_2

    .line 886
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/widget/COUISearchView;

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUISearchView;->setAlpha(F)V

    .line 887
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mCancelButton:Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;->setAlpha(F)V

    .line 888
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mCancelDivider:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 889
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/widget/COUISearchView;

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/widget/COUISearchView;->setVisibility(I)V

    .line 890
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mCancelButton:Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;->setVisibility(I)V

    .line 891
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mCancelDivider:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 892
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mHintViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 893
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mSearchIcon:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 894
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->getAnimatorHelper()Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->access$900(Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 895
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->getAnimatorHelper()Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->access$1000(Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 897
    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mSearchIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 898
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mSearchIcon:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setRotationY(F)V

    .line 899
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mHintViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 900
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/widget/COUISearchView;

    const-string v2, ""

    invoke-virtual {v0, v2, v3}, Lcom/coui/appcompat/widget/COUISearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 901
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/widget/COUISearchView;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUISearchView;->setVisibility(I)V

    .line 902
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mCancelButton:Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;->setVisibility(I)V

    .line 903
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mCancelDivider:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 904
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mHintViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 905
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mSearchIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 906
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->getAnimatorHelper()Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->access$1100(Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 907
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->getAnimatorHelper()Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->access$1200(Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 909
    :goto_0
    return-void
.end method

.method private ensureAddedToToolBar()V
    .locals 4

    .line 826
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mHasAddedToToolbar:Z

    if-nez v0, :cond_0

    .line 827
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mHasAddedToToolbar:Z

    .line 828
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mToolBar:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    if-eqz v0, :cond_0

    .line 829
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->removeLast()V

    .line 830
    new-instance v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mToolBar:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mToolBar:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    invoke-virtual {v3}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;-><init>(II)V

    .line 831
    .local v0, "layoutParams":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    iget v1, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mGravityInToolBar:I

    iput v1, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->gravity:I

    .line 832
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mToolBar:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    invoke-virtual {v1, p0, v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setSearchView(Landroid/view/View;Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;)V

    .line 835
    .end local v0    # "layoutParams":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    :cond_0
    return-void
.end method

.method private ensureList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p1, "list"    # Ljava/util/List;

    .line 536
    if-nez p1, :cond_0

    .line 537
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object p1, v0

    .line 539
    :cond_0
    return-object p1
.end method

.method private getAnimatorHelper()Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;
    .locals 1

    .line 931
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mAnimatorHelper:Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;

    if-nez v0, :cond_1

    .line 932
    monitor-enter p0

    .line 933
    :try_start_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mAnimatorHelper:Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;

    if-nez v0, :cond_0

    .line 934
    new-instance v0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;-><init>(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mAnimatorHelper:Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;

    .line 936
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 938
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mAnimatorHelper:Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;

    return-object v0
.end method

.method private inflateView(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 308
    sget v0, Lcoui/support/appcompat/R$layout;->coui_search_view_animate_layout:I

    invoke-static {p1, v0, p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 309
    sget v0, Lcoui/support/appcompat/R$id;->animated_search_icon:I

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mSearchIcon:Landroid/widget/ImageView;

    .line 310
    sget v0, Lcoui/support/appcompat/R$id;->animated_hint:I

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mHintTextView:Landroid/widget/TextView;

    .line 311
    sget v0, Lcoui/support/appcompat/R$id;->animated_search_view:I

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/COUISearchView;

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/widget/COUISearchView;

    .line 312
    sget v0, Lcoui/support/appcompat/R$id;->animated_cancel_button:I

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mCancelButton:Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;

    .line 313
    sget v0, Lcoui/support/appcompat/R$id;->cancel_divider:I

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mCancelDivider:Landroid/widget/ImageView;

    .line 314
    sget v0, Lcoui/support/appcompat/R$id;->animated_hint_layout:I

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mHintViewLayout:Landroid/widget/LinearLayout;

    .line 315
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mHintViewLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 316
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mHintViewLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mCancelButton:Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    return-void
.end method

.method private isRtl()Z
    .locals 3

    .line 923
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-lt v0, v2, :cond_1

    .line 924
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->getLayoutDirection()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    .line 926
    :cond_1
    return v1
.end method

.method private loadAttr(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 322
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    if-eqz v1, :cond_0

    .line 323
    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v3

    iput v3, v0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mStyle:I

    .line 324
    iget v3, v0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mStyle:I

    if-nez v3, :cond_1

    .line 325
    iput v2, v0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mStyle:I

    goto :goto_0

    .line 328
    :cond_0
    iput v2, v0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mStyle:I

    .line 330
    :cond_1
    :goto_0
    sget-object v3, Lcoui/support/appcompat/R$styleable;->COUISearchViewAnimate:[I

    move-object/from16 v4, p1

    move/from16 v5, p4

    invoke-virtual {v4, v1, v3, v2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 331
    .local v3, "ta":Landroid/content/res/TypedArray;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->fontScale:F

    .line 333
    .local v6, "fontScale":F
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcoui/support/appcompat/R$dimen;->coui_search_view_input_text_size:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 334
    .local v7, "textSize":I
    sget v8, Lcoui/support/appcompat/R$styleable;->COUISearchViewAnimate_inputTextSize:I

    invoke-virtual {v3, v8, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    .line 335
    iget-object v8, v0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/widget/COUISearchView;

    invoke-virtual {v8}, Lcom/coui/appcompat/widget/COUISearchView;->getSearchAutoComplete()Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-result-object v8

    int-to-float v9, v7

    const/4 v10, 0x0

    invoke-virtual {v8, v10, v9}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setTextSize(IF)V

    .line 338
    iget-object v8, v0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/widget/COUISearchView;

    invoke-virtual {v8}, Lcom/coui/appcompat/widget/COUISearchView;->getSearchAutoComplete()Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-result-object v8

    .line 339
    .local v8, "searchAutoComplete":Landroid/widget/AutoCompleteTextView;
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v11, Lcoui/support/appcompat/R$dimen;->coui_search_view_cancel_margin:I

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 340
    .local v9, "padding":I
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x10

    if-lt v11, v12, :cond_2

    .line 341
    invoke-virtual {v8, v10, v10, v9, v10}, Landroid/widget/AutoCompleteTextView;->setPaddingRelative(IIII)V

    goto :goto_1

    .line 343
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->isRtl()Z

    move-result v11

    .line 344
    .local v11, "rtl":Z
    if-nez v11, :cond_3

    .line 345
    invoke-virtual {v8, v10, v10, v9, v10}, Landroid/widget/AutoCompleteTextView;->setPadding(IIII)V

    goto :goto_1

    .line 347
    :cond_3
    invoke-virtual {v8, v9, v10, v10, v10}, Landroid/widget/AutoCompleteTextView;->setPadding(IIII)V

    .line 351
    .end local v11    # "rtl":Z
    :goto_1
    sget v11, Lcoui/support/appcompat/R$styleable;->COUISearchViewAnimate_inputTextColor:I

    invoke-virtual {v3, v11, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    .line 352
    .local v11, "textColor":I
    invoke-virtual {v8, v11}, Landroid/widget/AutoCompleteTextView;->setTextColor(I)V

    .line 354
    sget v13, Lcoui/support/appcompat/R$styleable;->COUISearchViewAnimate_inputHintTextColor:I

    invoke-virtual {v3, v13, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v13

    .line 355
    .local v13, "hintTextColor":I
    invoke-virtual {v8, v13}, Landroid/widget/AutoCompleteTextView;->setHintTextColor(I)V

    .line 357
    sget v14, Lcoui/support/appcompat/R$styleable;->COUISearchViewAnimate_couiSearchIcon:I

    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 358
    .local v14, "searchViewIcon":Landroid/graphics/drawable/Drawable;
    iget-object v15, v0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mSearchIcon:Landroid/widget/ImageView;

    sget v12, Lcoui/support/appcompat/R$styleable;->COUISearchViewAnimate_couiSearchIcon:I

    invoke-virtual {v3, v12}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v15, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 359
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x13

    if-le v12, v15, :cond_4

    .line 360
    iget-object v12, v0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mSearchIcon:Landroid/widget/ImageView;

    invoke-virtual {v12, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 362
    :cond_4
    iget-object v12, v0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mSearchIcon:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v10, Lcoui/support/appcompat/R$color;->coui_search_icon_color:I

    invoke-virtual {v15, v10}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-static {v14, v10}, Lcom/coui/appcompat/util/COUITintUtil;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v12, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 366
    :goto_2
    sget v10, Lcoui/support/appcompat/R$styleable;->COUISearchViewAnimate_normalHintColor:I

    invoke-virtual {v3, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 367
    sget v10, Lcoui/support/appcompat/R$styleable;->COUISearchViewAnimate_normalHintColor:I

    invoke-virtual {v3, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    goto :goto_3

    .line 369
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v12, Lcoui/support/appcompat/R$color;->coui_search_view_hint_color_selector:I

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    .line 371
    .local v10, "normalHintColor":Landroid/content/res/ColorStateList;
    :goto_3
    iget-object v12, v0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mHintTextView:Landroid/widget/TextView;

    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 372
    iget-object v12, v0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mHintTextView:Landroid/widget/TextView;

    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 373
    iget-object v12, v0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mHintTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getTextSize()F

    move-result v12

    const/4 v15, 0x2

    invoke-static {v12, v6, v15}, Lcom/coui/appcompat/util/COUIChangeTextUtil;->getSuitableFontSize(FFI)F

    move-result v12

    .line 376
    .local v12, "hintTextSize":F
    iget-object v15, v0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mHintTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v15, v1, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 377
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mHintViewLayout:Landroid/widget/LinearLayout;

    sget v15, Lcoui/support/appcompat/R$styleable;->COUISearchViewAnimate_normalBackground:I

    invoke-virtual {v3, v15}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v1, v15}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 379
    sget v1, Lcoui/support/appcompat/R$styleable;->COUISearchViewAnimate_searchHint:I

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 380
    sget v1, Lcoui/support/appcompat/R$styleable;->COUISearchViewAnimate_searchHint:I

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 381
    .local v1, "hint":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 384
    .end local v1    # "hint":Ljava/lang/String;
    :cond_6
    sget v1, Lcoui/support/appcompat/R$styleable;->COUISearchViewAnimate_cancelTextColor:I

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 385
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mCancelButton:Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;

    sget v15, Lcoui/support/appcompat/R$styleable;->COUISearchViewAnimate_cancelTextColor:I

    const/4 v2, 0x0

    invoke-virtual {v3, v15, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v15

    invoke-virtual {v1, v15}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;->setTextColor(I)V

    .line 387
    :cond_7
    sget v1, Lcoui/support/appcompat/R$styleable;->COUISearchViewAnimate_cancelText:I

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 388
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mCancelButton:Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;

    sget v2, Lcoui/support/appcompat/R$styleable;->COUISearchViewAnimate_cancelText:I

    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 390
    :cond_8
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mCancelButton:Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;

    sget v2, Lcoui/support/appcompat/R$string;->coui_search_view_cancel:I

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;->setText(I)V

    .line 392
    :goto_4
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mCancelButton:Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;->getTextSize()F

    move-result v1

    const/4 v2, 0x2

    invoke-static {v1, v6, v2}, Lcom/coui/appcompat/util/COUIChangeTextUtil;->getSuitableFontSize(FFI)F

    move-result v1

    .line 395
    .local v1, "cancelTextSizePx":F
    iget-object v2, v0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mCancelButton:Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;

    const/4 v15, 0x0

    invoke-virtual {v2, v15, v1}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;->setTextSize(IF)V

    .line 396
    iget-object v2, v0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mCancelButton:Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v17, v1

    .end local v1    # "cancelTextSizePx":F
    .local v17, "cancelTextSizePx":F
    sget v1, Lcoui/support/appcompat/R$drawable;->coui_searchview_cancel_button_bg:I

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v15, v1, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 398
    sget v1, Lcoui/support/appcompat/R$styleable;->COUISearchViewAnimate_cancelDivider:I

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 399
    sget v1, Lcoui/support/appcompat/R$styleable;->COUISearchViewAnimate_cancelDivider:I

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 400
    .local v1, "cancelDivider":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_9

    .line 401
    iget-object v2, v0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mCancelDivider:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 405
    .end local v1    # "cancelDivider":Landroid/graphics/drawable/Drawable;
    :cond_9
    sget v1, Lcoui/support/appcompat/R$styleable;->COUISearchViewAnimate_searchBackground:I

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 406
    .local v1, "searchBackground":I
    iget-object v2, v0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/widget/COUISearchView;

    invoke-virtual {v2, v1}, Lcom/coui/appcompat/widget/COUISearchView;->setBackgroundColor(I)V

    .line 408
    iget-object v2, v0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/widget/COUISearchView;

    sget v4, Lcoui/support/appcompat/R$id;->search_close_btn:I

    invoke-virtual {v2, v4}, Lcom/coui/appcompat/widget/COUISearchView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mCloseBtn:Landroid/widget/ImageView;

    .line 409
    sget v2, Lcoui/support/appcompat/R$styleable;->COUISearchViewAnimate_couiSearchClearSelector:I

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 410
    .local v2, "searchClearSelector":I
    iget-object v4, v0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mCloseBtn:Landroid/widget/ImageView;

    if-eqz v4, :cond_a

    .line 411
    iget-object v4, v0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mCloseBtn:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 414
    :cond_a
    sget v4, Lcoui/support/appcompat/R$styleable;->COUISearchViewAnimate_android_gravity:I

    const/16 v15, 0x10

    invoke-virtual {v3, v4, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 415
    .local v4, "gravity":I
    sget-boolean v15, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->DEBUG:Z

    if-eqz v15, :cond_b

    .line 416
    const-string v15, "COUISearchViewAnimate"

    move/from16 v18, v1

    .end local v1    # "searchBackground":I
    .local v18, "searchBackground":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v2

    .end local v2    # "searchClearSelector":I
    .local v19, "searchClearSelector":I
    const-string v2, "gravity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 418
    .end local v18    # "searchBackground":I
    .end local v19    # "searchClearSelector":I
    .restart local v1    # "searchBackground":I
    .restart local v2    # "searchClearSelector":I
    :cond_b
    move/from16 v18, v1

    move/from16 v19, v2

    .end local v1    # "searchBackground":I
    .end local v2    # "searchClearSelector":I
    .restart local v18    # "searchBackground":I
    .restart local v19    # "searchClearSelector":I
    :goto_5
    invoke-virtual {v0, v4}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->setGravity(I)V

    .line 420
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 421
    return-void
.end method

.method private measureWidth(I)I
    .locals 0
    .param p1, "widthMeasureSpec"    # I

    .line 919
    return p1
.end method

.method private notifyCancelButton()Z
    .locals 4

    .line 996
    const/4 v0, 0x0

    .line 997
    .local v0, "result":Z
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mOnCancelButtonClickListeners:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 998
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mOnCancelButtonClickListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/widget/COUISearchViewAnimate$OnCancelButtonClickListener;

    .line 999
    .local v2, "ref":Lcom/coui/appcompat/widget/COUISearchViewAnimate$OnCancelButtonClickListener;
    if-eqz v2, :cond_0

    .line 1000
    invoke-interface {v2}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$OnCancelButtonClickListener;->onClickCancel()Z

    move-result v3

    or-int/2addr v0, v3

    .line 1002
    .end local v2    # "ref":Lcom/coui/appcompat/widget/COUISearchViewAnimate$OnCancelButtonClickListener;
    :cond_0
    goto :goto_0

    .line 1004
    :cond_1
    return v0
.end method

.method private notifyOnStateChange(II)V
    .locals 2
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 1008
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mOnStateChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1009
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mOnStateChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/widget/COUISearchViewAnimate$OnStateChangeListener;

    .line 1010
    .local v1, "ref":Lcom/coui/appcompat/widget/COUISearchViewAnimate$OnStateChangeListener;
    if-eqz v1, :cond_0

    .line 1011
    invoke-interface {v1, p1, p2}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$OnStateChangeListener;->onStateChange(II)V

    .line 1013
    .end local v1    # "ref":Lcom/coui/appcompat/widget/COUISearchViewAnimate$OnStateChangeListener;
    :cond_0
    goto :goto_0

    .line 1015
    :cond_1
    return-void
.end method

.method private onClickStateEdit()V
    .locals 3

    .line 986
    const/4 v0, 0x0

    .line 987
    .local v0, "intercept":Z
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->notifyCancelButton()Z

    move-result v0

    .line 988
    if-eqz v0, :cond_0

    .line 989
    return-void

    .line 991
    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->getAnimatorHelper()Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->runStateChangeAnimation(I)V

    .line 993
    return-void
.end method

.method private onClickStateNormal()V
    .locals 2

    .line 1022
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->getAnimatorHelper()Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$AnimatorHelper;->runStateChangeAnimation(I)V

    .line 1023
    return-void
.end method

.method private removeLast()V
    .locals 4

    .line 841
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mToolBar:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getChildCount()I

    move-result v0

    .line 843
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 844
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mToolBar:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    invoke-virtual {v2, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 845
    .local v2, "child":Landroid/view/View;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 846
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mToolBar:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    invoke-virtual {v3, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->removeViewAt(I)V

    .line 847
    return-void

    .line 843
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 850
    .end local v1    # "i":I
    .end local v2    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private setMenuItem(Landroid/view/MenuItem;)V
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 653
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mMenuItem:Landroid/view/MenuItem;

    .line 654
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mToolBar:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    .line 658
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 659
    .local v0, "actionView":Landroid/view/View;
    if-ne v0, p0, :cond_0

    .line 660
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mMenuItem:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 663
    .end local v0    # "actionView":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private setRelativeVerticalGravity(Landroid/view/View;I)V
    .locals 5
    .param p1, "target"    # Landroid/view/View;
    .param p2, "gravity"    # I

    .line 446
    if-nez p1, :cond_0

    .line 447
    return-void

    .line 449
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 450
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_4

    instance-of v1, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_4

    .line 451
    move-object v1, v0

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 452
    .local v1, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 453
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    .line 454
    const/16 v2, 0xf

    .line 455
    .local v2, "rule":I
    and-int/lit8 v3, p2, 0x70

    const/16 v4, 0x10

    if-eq v3, v4, :cond_3

    const/16 v4, 0x30

    if-eq v3, v4, :cond_2

    const/16 v4, 0x50

    if-eq v3, v4, :cond_1

    goto :goto_0

    .line 463
    :cond_1
    const/16 v2, 0xc

    goto :goto_0

    .line 460
    :cond_2
    const/16 v2, 0xa

    .line 461
    goto :goto_0

    .line 457
    :cond_3
    const/16 v2, 0xf

    .line 458
    nop

    .line 466
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 467
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 469
    .end local v1    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "rule":I
    :cond_4
    return-void
.end method

.method private setSearchAutoCompleteFocus()V
    .locals 2

    .line 942
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/widget/COUISearchView;

    if-eqz v0, :cond_0

    .line 943
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/widget/COUISearchView;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUISearchView;->getSearchAutoComplete()Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-result-object v0

    .line 944
    .local v0, "autoComplete":Landroid/widget/AutoCompleteTextView;
    if-eqz v0, :cond_0

    .line 945
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setFocusable(Z)V

    .line 946
    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setFocusableInTouchMode(Z)V

    .line 947
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 950
    .end local v0    # "autoComplete":Landroid/widget/AutoCompleteTextView;
    :cond_0
    return-void
.end method

.method private setSearchAutoCompleteUnFocus()V
    .locals 2

    .line 954
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/widget/COUISearchView;

    if-eqz v0, :cond_0

    .line 955
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/widget/COUISearchView;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUISearchView;->clearFocus()V

    .line 956
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/widget/COUISearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUISearchView;->setFocusable(Z)V

    .line 957
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/widget/COUISearchView;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUISearchView;->onWindowFocusChanged(Z)V

    .line 958
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/widget/COUISearchView;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUISearchView;->getSearchAutoComplete()Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-result-object v0

    .line 959
    .local v0, "autoComplete":Landroid/widget/AutoCompleteTextView;
    if-eqz v0, :cond_0

    .line 960
    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setFocusable(Z)V

    .line 963
    .end local v0    # "autoComplete":Landroid/widget/AutoCompleteTextView;
    :cond_0
    return-void
.end method

.method private setToolBarAlpha(F)V
    .locals 4
    .param p1, "alpha"    # F

    .line 639
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mToolBar:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    if-eqz v0, :cond_1

    .line 640
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mToolBar:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getChildCount()I

    move-result v0

    .line 641
    .local v0, "childCount":I
    const/4 v1, 0x0

    .line 642
    .local v1, "child":Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 643
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mToolBar:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    invoke-virtual {v3, v2}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 644
    if-ne v1, p0, :cond_0

    .line 645
    goto :goto_1

    .line 647
    :cond_0
    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    .line 642
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 650
    .end local v0    # "childCount":I
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private setToolBarChildVisibility(I)V
    .locals 4
    .param p1, "visibility"    # I

    .line 625
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mToolBar:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    if-eqz v0, :cond_1

    .line 626
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mToolBar:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getChildCount()I

    move-result v0

    .line 627
    .local v0, "childCount":I
    const/4 v1, 0x0

    .line 628
    .local v1, "child":Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 629
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mToolBar:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    invoke-virtual {v3, v2}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 630
    if-ne v1, p0, :cond_0

    .line 631
    goto :goto_1

    .line 633
    :cond_0
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 628
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 636
    .end local v0    # "childCount":I
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private static state2String(I)Ljava/lang/String;
    .locals 1
    .param p0, "targetState"    # I

    .line 1388
    packed-switch p0, :pswitch_data_0

    .line 1394
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1390
    :pswitch_0
    const-string v0, "state edit"

    return-object v0

    .line 1392
    :pswitch_1
    const-string v0, "state normal"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addOnCancelButtonClickListener(Lcom/coui/appcompat/widget/COUISearchViewAnimate$OnCancelButtonClickListener;)V
    .locals 1
    .param p1, "mOnCancelButtonClickListener"    # Lcom/coui/appcompat/widget/COUISearchViewAnimate$OnCancelButtonClickListener;

    .line 513
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mOnCancelButtonClickListeners:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->ensureList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mOnCancelButtonClickListeners:Ljava/util/List;

    .line 514
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mOnCancelButtonClickListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    return-void
.end method

.method public addOnStateChangeListener(Lcom/coui/appcompat/widget/COUISearchViewAnimate$OnStateChangeListener;)V
    .locals 1
    .param p1, "onStateChangeListener"    # Lcom/coui/appcompat/widget/COUISearchViewAnimate$OnStateChangeListener;

    .line 504
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mOnStateChangeListeners:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->ensureList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mOnStateChangeListeners:Ljava/util/List;

    .line 505
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mOnStateChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 506
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .line 478
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 479
    return-void
.end method

.method public changeStateImmediately(I)V
    .locals 3
    .param p1, "targetState"    # I

    .line 548
    sget-boolean v0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 549
    const-string v0, "COUISearchViewAnimate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeStateImmediately: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->state2String(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :cond_0
    new-instance v0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$3;

    invoke-direct {v0, p0, p1}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$3;-><init>(Lcom/coui/appcompat/widget/COUISearchViewAnimate;I)V

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->post(Ljava/lang/Runnable;)Z

    .line 558
    return-void
.end method

.method public changeStateWithAnimation(I)V
    .locals 2
    .param p1, "targetState"    # I

    .line 566
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 567
    return-void

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 570
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->onClickStateEdit()V

    goto :goto_0

    .line 571
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_2

    .line 572
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->onClickStateNormal()V

    .line 574
    :cond_2
    :goto_0
    return-void
.end method

.method public getAnimatorDuration()J
    .locals 2

    .line 582
    iget-wide v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mFadeDuration:J

    return-wide v0
.end method

.method public getCancelIconAnimating()Z
    .locals 1

    .line 774
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mToolBarAnimationRunning:Z

    return v0
.end method

.method public getGravity()I
    .locals 1

    .line 473
    iget v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mGravity:I

    return v0
.end method

.method public getSearchState()I
    .locals 1

    .line 620
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getSearchView()Lcom/coui/appcompat/widget/COUISearchView;
    .locals 1

    .line 591
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/widget/COUISearchView;

    return-object v0
.end method

.method public hideInToolBar()V
    .locals 4

    .line 781
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mToolBarAnimationRunning:Z

    if-eqz v0, :cond_0

    .line 782
    return-void

    .line 784
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mToolBarAnimationRunning:Z

    .line 785
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mCancelButton:Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;->setVisibility(I)V

    .line 786
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mCancelDivider:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 787
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->ensureAddedToToolBar()V

    .line 789
    iget v1, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mAddToToolbarWay:I

    if-ne v1, v0, :cond_1

    .line 790
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v1, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mFadeDuration:J

    .line 791
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/widget/COUISearchViewAnimate$6;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$6;-><init>(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)V

    .line 792
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 799
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 800
    :cond_1
    iget v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mAddToToolbarWay:I

    .line 804
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->setToolBarChildVisibility(I)V

    .line 805
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 806
    .local v1, "fadeAnimator":Landroid/animation/ValueAnimator;
    iget-wide v2, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mFadeDuration:J

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 807
    new-instance v2, Lcom/coui/appcompat/widget/COUISearchViewAnimate$7;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$7;-><init>(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 813
    new-instance v2, Lcom/coui/appcompat/widget/COUISearchViewAnimate$8;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$8;-><init>(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 821
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 822
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->openSoftInput(Z)V

    .line 823
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public isIconCanAnimate()Z
    .locals 1

    .line 532
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mSearchIconCanAnimate:Z

    return v0
.end method

.method public onActionViewCollapsed()V
    .locals 0

    .line 860
    return-void
.end method

.method public onActionViewExpanded()V
    .locals 0

    .line 855
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 486
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 487
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 914
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->measureWidth(I)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 915
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mHintViewLayout:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mGravity:I

    invoke-direct {p0, v0, v1}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->setRelativeVerticalGravity(Landroid/view/View;I)V

    .line 916
    return-void
.end method

.method public openSoftInput(Z)V
    .locals 4
    .param p1, "open"    # Z

    .line 673
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/widget/COUISearchView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/widget/COUISearchView;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUISearchView;->getSearchAutoComplete()Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 674
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 675
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    sget-boolean v1, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 676
    const-string v1, "COUISearchViewAnimate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openSoftInput: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 679
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->setSearchAutoCompleteFocus()V

    .line 680
    if-eqz v0, :cond_2

    .line 681
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/widget/COUISearchView;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUISearchView;->getSearchAutoComplete()Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 684
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 685
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/widget/COUISearchView;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUISearchView;->getSearchAutoComplete()Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 689
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    :goto_0
    return-void
.end method

.method public refresh()V
    .locals 14

    .line 1442
    const/4 v0, 0x0

    .line 1443
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    .line 1444
    .local v1, "styleAttrType":Ljava/lang/String;
    iget v2, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mStyle:I

    if-eqz v2, :cond_0

    .line 1445
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mStyle:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    .line 1448
    :cond_0
    const-string v2, "attr"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 1449
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v5, Lcoui/support/appcompat/R$styleable;->COUISearchViewAnimate:[I

    iget v6, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mStyle:I

    invoke-virtual {v2, v3, v5, v6, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0

    .line 1451
    :cond_1
    const-string v2, "style"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1452
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v5, Lcoui/support/appcompat/R$styleable;->COUISearchViewAnimate:[I

    iget v6, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mStyle:I

    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1456
    :cond_2
    :goto_0
    if-eqz v0, :cond_7

    .line 1457
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/widget/COUISearchView;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUISearchView;->getSearchAutoComplete()Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-result-object v2

    .line 1458
    .local v2, "searchAutoComplete":Landroid/widget/AutoCompleteTextView;
    sget v3, Lcoui/support/appcompat/R$styleable;->COUISearchViewAnimate_inputTextColor:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 1459
    .local v3, "textColor":I
    invoke-virtual {v2, v3}, Landroid/widget/AutoCompleteTextView;->setTextColor(I)V

    .line 1461
    sget v5, Lcoui/support/appcompat/R$styleable;->COUISearchViewAnimate_inputHintTextColor:I

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .line 1462
    .local v5, "hintTextColor":I
    invoke-virtual {v2, v5}, Landroid/widget/AutoCompleteTextView;->setHintTextColor(I)V

    .line 1464
    sget v6, Lcoui/support/appcompat/R$styleable;->COUISearchViewAnimate_couiSearchIcon:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1465
    .local v6, "searchViewIcon":Landroid/graphics/drawable/Drawable;
    sget v7, Lcoui/support/appcompat/R$styleable;->COUISearchViewAnimate_couiSearchIcon:I

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1466
    iget-object v7, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mSearchIcon:Landroid/widget/ImageView;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1468
    :cond_3
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x13

    if-le v7, v8, :cond_4

    .line 1469
    iget-object v7, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mSearchIcon:Landroid/widget/ImageView;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1471
    :cond_4
    iget-object v7, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mSearchIcon:Landroid/widget/ImageView;

    .line 1472
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcoui/support/appcompat/R$color;->coui_search_icon_color:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    .line 1471
    invoke-static {v6, v8}, Lcom/coui/appcompat/util/COUITintUtil;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1476
    :goto_1
    sget v7, Lcoui/support/appcompat/R$styleable;->COUISearchViewAnimate_normalHintColor:I

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    .line 1477
    .local v7, "normalHintColor":Landroid/content/res/ColorStateList;
    iget-object v8, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mHintTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 1478
    iget-object v8, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mHintTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1480
    sget v8, Lcoui/support/appcompat/R$styleable;->COUISearchViewAnimate_searchBackground:I

    invoke-virtual {v0, v8, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 1481
    .local v4, "searchBackground":I
    iget-object v8, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/widget/COUISearchView;

    invoke-virtual {v8, v4}, Lcom/coui/appcompat/widget/COUISearchView;->setBackgroundColor(I)V

    .line 1483
    iget-object v8, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mHintViewLayout:Landroid/widget/LinearLayout;

    sget v9, Lcoui/support/appcompat/R$styleable;->COUISearchViewAnimate_normalBackground:I

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1485
    iget-object v8, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/widget/COUISearchView;

    sget v9, Lcoui/support/appcompat/R$id;->search_close_btn:I

    invoke-virtual {v8, v9}, Lcom/coui/appcompat/widget/COUISearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mCloseBtn:Landroid/widget/ImageView;

    .line 1486
    sget v8, Lcoui/support/appcompat/R$styleable;->COUISearchViewAnimate_couiSearchClearSelector:I

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 1487
    .local v8, "searchClearSelector":Landroid/graphics/drawable/Drawable;
    iget-object v9, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mCloseBtn:Landroid/widget/ImageView;

    if-eqz v9, :cond_5

    .line 1488
    iget-object v9, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mCloseBtn:Landroid/widget/ImageView;

    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1489
    iget-object v9, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mCloseBtn:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcoui/support/appcompat/R$drawable;->coui_preference_bg_selector:I

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1492
    :cond_5
    sget v9, Lcoui/support/appcompat/R$styleable;->COUISearchViewAnimate_cancelDivider:I

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 1493
    .local v9, "cancelDivider":Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_6

    .line 1494
    iget-object v10, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mCancelDivider:Landroid/widget/ImageView;

    invoke-virtual {v10, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1497
    :cond_6
    iget-object v10, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mCancelButton:Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcoui/support/appcompat/R$drawable;->coui_searchview_cancel_button_bg:I

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1499
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1501
    .end local v2    # "searchAutoComplete":Landroid/widget/AutoCompleteTextView;
    .end local v3    # "textColor":I
    .end local v4    # "searchBackground":I
    .end local v5    # "hintTextColor":I
    .end local v6    # "searchViewIcon":Landroid/graphics/drawable/Drawable;
    .end local v7    # "normalHintColor":Landroid/content/res/ColorStateList;
    .end local v8    # "searchClearSelector":Landroid/graphics/drawable/Drawable;
    .end local v9    # "cancelDivider":Landroid/graphics/drawable/Drawable;
    :cond_7
    return-void
.end method

.method public setAtBehindToolBar(Lcom/coui/appcompat/widget/toolbar/COUIToolbar;ILandroid/view/MenuItem;)V
    .locals 1
    .param p1, "toolbar"    # Lcom/coui/appcompat/widget/toolbar/COUIToolbar;
    .param p2, "searchViewVerticalGravity"    # I
    .param p3, "menuItem"    # Landroid/view/MenuItem;

    .line 700
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mToolBar:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    .line 701
    iput p2, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mGravityInToolBar:I

    .line 702
    const/4 v0, 0x1

    iput v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mAddToToolbarWay:I

    .line 703
    invoke-direct {p0, p3}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->setMenuItem(Landroid/view/MenuItem;)V

    .line 704
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->changeStateImmediately(I)V

    .line 705
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->setVisibility(I)V

    .line 706
    return-void
.end method

.method public setAtFrontToolBar(Lcom/coui/appcompat/widget/toolbar/COUIToolbar;ILandroid/view/MenuItem;)V
    .locals 1
    .param p1, "toolBar"    # Lcom/coui/appcompat/widget/toolbar/COUIToolbar;
    .param p2, "searchViewVerticalGravity"    # I
    .param p3, "menuItem"    # Landroid/view/MenuItem;

    .line 716
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mToolBar:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    .line 717
    iput p2, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mGravityInToolBar:I

    .line 718
    const/4 v0, 0x2

    iput v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mAddToToolbarWay:I

    .line 719
    invoke-direct {p0, p3}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->setMenuItem(Landroid/view/MenuItem;)V

    .line 720
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->ensureAddedToToolBar()V

    .line 721
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 722
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mPlaceAtFrontRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->post(Ljava/lang/Runnable;)Z

    .line 723
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mAtToolbarFrontStateChangeListener:Lcom/coui/appcompat/widget/COUISearchViewAnimate$OnStateChangeListener;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->addOnStateChangeListener(Lcom/coui/appcompat/widget/COUISearchViewAnimate$OnStateChangeListener;)V

    .line 724
    return-void
.end method

.method public setCancelButtonBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 1438
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mCancelButton:Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1439
    return-void
.end method

.method public setCancelDividerImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 1434
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mCancelDivider:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1435
    return-void
.end method

.method public setCloseBtnBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 1430
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mCloseBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1431
    return-void
.end method

.method public setCloseBtnImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 1426
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mCloseBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1427
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 596
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 597
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mSearchIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mSearchIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 600
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mHintTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 601
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mHintTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 603
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mHintViewLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 604
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mHintViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 606
    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/widget/COUISearchView;

    if-eqz v0, :cond_3

    .line 607
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/widget/COUISearchView;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUISearchView;->setEnabled(Z)V

    .line 609
    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mCancelButton:Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;

    if-eqz v0, :cond_4

    .line 610
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mCancelButton:Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;->setEnabled(Z)V

    .line 612
    :cond_4
    return-void
.end method

.method public setGravity(I)V
    .locals 2
    .param p1, "gravity"    # I

    .line 425
    iget v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mGravity:I

    if-eq v0, p1, :cond_2

    .line 426
    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    .line 427
    const v0, 0x800003

    or-int/2addr p1, v0

    .line 430
    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    .line 431
    or-int/lit8 p1, p1, 0x10

    .line 434
    :cond_1
    iput p1, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mGravity:I

    .line 435
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mHintViewLayout:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mGravity:I

    invoke-direct {p0, v0, v1}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->setRelativeVerticalGravity(Landroid/view/View;I)V

    .line 437
    :cond_2
    return-void
.end method

.method public setHintTextViewHintTextColor(I)V
    .locals 1
    .param p1, "hintTextColor"    # I

    .line 1410
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mHintTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 1411
    return-void
.end method

.method public setHintTextViewTextColor(I)V
    .locals 1
    .param p1, "textColor"    # I

    .line 1414
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mHintTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1415
    return-void
.end method

.method public setHintViewBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 1422
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mHintViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1423
    return-void
.end method

.method public setIconCanAnimate(Z)V
    .locals 0
    .param p1, "canAnimate"    # Z

    .line 523
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mSearchIconCanAnimate:Z

    .line 524
    return-void
.end method

.method public setInputHintTextColor(I)V
    .locals 1
    .param p1, "inputHintTextColor"    # I

    .line 1402
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/widget/COUISearchView;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUISearchView;->getSearchAutoComplete()Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setHintTextColor(I)V

    .line 1403
    return-void
.end method

.method public setInputTextColor(I)V
    .locals 1
    .param p1, "textColor"    # I

    .line 1398
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/widget/COUISearchView;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUISearchView;->getSearchAutoComplete()Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setTextColor(I)V

    .line 1399
    return-void
.end method

.method public setOnAnimationListener(Lcom/coui/appcompat/widget/COUISearchViewAnimate$OnAnimationListener;)V
    .locals 0
    .param p1, "onAnimationListener"    # Lcom/coui/appcompat/widget/COUISearchViewAnimate$OnAnimationListener;

    .line 495
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mOnAnimationListener:Lcom/coui/appcompat/widget/COUISearchViewAnimate$OnAnimationListener;

    .line 496
    return-void
.end method

.method public setQueryHint(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .line 868
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mHintTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 869
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mHintTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 871
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/widget/COUISearchView;

    if-eqz v0, :cond_1

    .line 872
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/widget/COUISearchView;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUISearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 874
    :cond_1
    return-void
.end method

.method public setSearchViewBackgroundColor(I)V
    .locals 1
    .param p1, "backgroundColor"    # I

    .line 1418
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mSearchView:Lcom/coui/appcompat/widget/COUISearchView;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUISearchView;->setBackgroundColor(I)V

    .line 1419
    return-void
.end method

.method public setSearchViewIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "searchViewIcon"    # Landroid/graphics/drawable/Drawable;

    .line 1406
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mSearchIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1407
    return-void
.end method

.method public showInToolBar()V
    .locals 4

    .line 730
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mToolBarAnimationRunning:Z

    if-eqz v0, :cond_0

    .line 731
    return-void

    .line 733
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mToolBarAnimationRunning:Z

    .line 734
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->ensureAddedToToolBar()V

    .line 736
    iget v1, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mAddToToolbarWay:I

    if-ne v1, v0, :cond_1

    .line 738
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->setVisibility(I)V

    .line 739
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->setAlpha(F)V

    .line 740
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mCancelButton:Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;

    invoke-virtual {v2, v1}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;->setVisibility(I)V

    .line 741
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mCancelDivider:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 742
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-wide v2, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mFadeDuration:J

    .line 743
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    .line 744
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 745
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 747
    :cond_1
    iget v1, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mAddToToolbarWay:I

    .line 751
    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 752
    .local v1, "fadeAnimator":Landroid/animation/ValueAnimator;
    iget-wide v2, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->mFadeDuration:J

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 753
    new-instance v2, Lcom/coui/appcompat/widget/COUISearchViewAnimate$4;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$4;-><init>(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 759
    new-instance v2, Lcom/coui/appcompat/widget/COUISearchViewAnimate$5;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$5;-><init>(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 768
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 769
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->openSoftInput(Z)V

    .line 770
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
