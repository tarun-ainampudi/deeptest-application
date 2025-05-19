.class Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;
.super Landroid/animation/ValueAnimator;
.source "ExpandableRecyclerConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/ExpandableRecyclerConnector;
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
            "Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;JLandroid/animation/TimeInterpolator;)V
    .locals 1
    .param p1, "listView"    # Lcom/coui/appcompat/widget/COUIExpandableRecyclerView;
    .param p2, "during"    # J
    .param p4, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 755
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 756
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;->reference:Ljava/lang/ref/WeakReference;

    .line 757
    invoke-virtual {p0, p2, p3}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 758
    invoke-virtual {p0, p4}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 759
    return-void
.end method

.method static synthetic access$500(Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;

    .line 751
    iget-object v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;->reference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;

    .line 751
    invoke-direct {p0}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;->endAnimator()V

    return-void
.end method

.method static synthetic access$700(Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;

    .line 751
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;->isFirst:Z

    return v0
.end method

.method static synthetic access$702(Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;
    .param p1, "x1"    # Z

    .line 751
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;->isFirst:Z

    return p1
.end method

.method private endAnimator()V
    .locals 0

    .line 814
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;->removeAllUpdateListeners()V

    .line 815
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;->end()V

    .line 816
    return-void
.end method


# virtual methods
.method public setParam(ZZILandroid/view/View;Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;II)V
    .locals 14
    .param p1, "expand"    # Z
    .param p2, "isLastChild"    # Z
    .param p3, "flatPos"    # I
    .param p4, "view"    # Landroid/view/View;
    .param p5, "groupInfo"    # Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;
    .param p6, "start"    # I
    .param p7, "end"    # I

    .line 763
    move-object v7, p0

    move/from16 v8, p6

    move/from16 v9, p7

    const-string v0, "ExpandRecyclerConnector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setParam: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v10, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isLastChild:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p2

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ,flatPos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p3

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,start:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,end:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    const/4 v0, 0x1

    iput-boolean v0, v7, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;->isFirst:Z

    .line 766
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v8, v1, v2

    aput v9, v1, v0

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;->setIntValues([I)V

    .line 767
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;->removeAllUpdateListeners()V

    .line 768
    new-instance v13, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator$1;

    move-object v0, v13

    move-object v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move v4, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator$1;-><init>(Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;ZIZLandroid/view/View;Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$GroupInfo;)V

    invoke-virtual {p0, v13}, Lcom/coui/appcompat/widget/ExpandableRecyclerConnector$ExpandAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 811
    return-void
.end method
