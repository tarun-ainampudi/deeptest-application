.class Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;
.super Landroid/animation/ValueAnimator;
.source "COUIExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUIExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExpandAnimator"
.end annotation


# instance fields
.field private isFirst:Z

.field private reference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/coui/appcompat/widget/COUIExpandableListView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/widget/COUIExpandableListView;JLandroid/animation/TimeInterpolator;)V
    .locals 1
    .param p1, "listView"    # Lcom/coui/appcompat/widget/COUIExpandableListView;
    .param p2, "during"    # J
    .param p4, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 659
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 660
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;->reference:Ljava/lang/ref/WeakReference;

    .line 661
    invoke-virtual {p0, p2, p3}, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 662
    invoke-virtual {p0, p4}, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 663
    return-void
.end method

.method static synthetic access$1000(Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;

    .line 655
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;->isFirst:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;
    .param p1, "x1"    # Z

    .line 655
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;->isFirst:Z

    return p1
.end method

.method static synthetic access$800(Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;

    .line 655
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;->reference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;

    .line 655
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;->endAnimator()V

    return-void
.end method

.method private endAnimator()V
    .locals 0

    .line 718
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;->removeAllUpdateListeners()V

    .line 719
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;->end()V

    .line 720
    return-void
.end method


# virtual methods
.method public setParam(ZZILandroid/view/View;Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;II)V
    .locals 9
    .param p1, "expand"    # Z
    .param p2, "isLastChild"    # Z
    .param p3, "groupPosition"    # I
    .param p4, "view"    # Landroid/view/View;
    .param p5, "groupInfo"    # Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;
    .param p6, "start"    # I
    .param p7, "end"    # I

    .line 667
    move-object v7, p0

    const/4 v0, 0x1

    iput-boolean v0, v7, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;->isFirst:Z

    .line 668
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p6, v1, v2

    aput p7, v1, v0

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;->setIntValues([I)V

    .line 669
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;->removeAllUpdateListeners()V

    .line 670
    new-instance v8, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator$1;

    move-object v0, v8

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p1

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator$1;-><init>(Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;ZIZLandroid/view/View;Lcom/coui/appcompat/widget/COUIExpandableListView$GroupInfo;)V

    invoke-virtual {p0, v8}, Lcom/coui/appcompat/widget/COUIExpandableListView$ExpandAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 715
    return-void
.end method
