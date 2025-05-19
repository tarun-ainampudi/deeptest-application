.class Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator$ViewPagerOnTabSelectedListener;
.super Ljava/lang/Object;
.source "COUITabLayoutMediator.java"

# interfaces
.implements Lcom/coui/appcompat/widget/tablayout/COUITabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewPagerOnTabSelectedListener"
.end annotation


# instance fields
.field private final mViewPager:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method constructor <init>(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0
    .param p1, "viewPager"    # Landroidx/viewpager2/widget/ViewPager2;

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    iput-object p1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator$ViewPagerOnTabSelectedListener;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 293
    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;)V
    .locals 0
    .param p1, "tab"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;

    .line 308
    return-void
.end method

.method public onTabSelected(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;)V
    .locals 3
    .param p1, "tab"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;

    .line 297
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator$ViewPagerOnTabSelectedListener;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->getPosition()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 298
    return-void
.end method

.method public onTabUnselected(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;)V
    .locals 0
    .param p1, "tab"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;

    .line 303
    return-void
.end method
