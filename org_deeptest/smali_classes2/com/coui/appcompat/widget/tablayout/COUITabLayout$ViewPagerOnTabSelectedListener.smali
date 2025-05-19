.class public Lcom/coui/appcompat/widget/tablayout/COUITabLayout$ViewPagerOnTabSelectedListener;
.super Ljava/lang/Object;
.source "COUITabLayout.java"

# interfaces
.implements Lcom/coui/appcompat/widget/tablayout/COUITabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/tablayout/COUITabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewPagerOnTabSelectedListener"
.end annotation


# instance fields
.field private final mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroidx/viewpager/widget/ViewPager;)V
    .locals 0
    .param p1, "viewPager"    # Landroidx/viewpager/widget/ViewPager;

    .line 2679
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2680
    iput-object p1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$ViewPagerOnTabSelectedListener;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 2681
    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;)V
    .locals 0
    .param p1, "tab"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;

    .line 2701
    return-void
.end method

.method public onTabSelected(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;)V
    .locals 3
    .param p1, "tab"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;

    .line 2689
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$ViewPagerOnTabSelectedListener;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->getPosition()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 2691
    return-void
.end method

.method public onTabUnselected(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;)V
    .locals 0
    .param p1, "tab"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;

    .line 2696
    return-void
.end method
