.class abstract Lcom/coui/appcompat/widget/COUIExpandableListView$EndAnimatorListener;
.super Ljava/lang/Object;
.source "COUIExpandableListView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUIExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "EndAnimatorListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 723
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coui/appcompat/widget/COUIExpandableListView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/coui/appcompat/widget/COUIExpandableListView$1;

    .line 723
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIExpandableListView$EndAnimatorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "var1"    # Landroid/animation/Animator;

    .line 728
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "var1"    # Landroid/animation/Animator;

    .line 731
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "var1"    # Landroid/animation/Animator;

    .line 725
    return-void
.end method
