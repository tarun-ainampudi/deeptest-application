.class public Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;
.super Landroidx/appcompat/widget/AppCompatButton;
.source "COUISearchViewAnimate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUISearchViewAnimate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchCancelButton"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton$PerformClickCallback;
    }
.end annotation


# instance fields
.field volatile mIsPerformClicked:Z

.field mPerformClickCallback:Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton$PerformClickCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 1526
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;)V

    .line 1507
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;->mIsPerformClicked:Z

    .line 1527
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 1537
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1507
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;->mIsPerformClicked:Z

    .line 1538
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 1551
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1507
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;->mIsPerformClicked:Z

    .line 1552
    return-void
.end method


# virtual methods
.method public isPerformClicked()Z
    .locals 1

    .line 1569
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;->mIsPerformClicked:Z

    return v0
.end method

.method public performClick()Z
    .locals 1

    .line 1556
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;->mPerformClickCallback:Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton$PerformClickCallback;

    if-eqz v0, :cond_0

    .line 1557
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;->mIsPerformClicked:Z

    .line 1558
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;->mPerformClickCallback:Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton$PerformClickCallback;

    invoke-interface {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton$PerformClickCallback;->performClick()V

    .line 1560
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->performClick()Z

    move-result v0

    return v0
.end method

.method public setPerformClickCallback(Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton$PerformClickCallback;)V
    .locals 0
    .param p1, "mPerformClickCallback"    # Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton$PerformClickCallback;

    .line 1516
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;->mPerformClickCallback:Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton$PerformClickCallback;

    .line 1517
    return-void
.end method

.method public setPerformClicked(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 1579
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;->mIsPerformClicked:Z

    .line 1580
    return-void
.end method
