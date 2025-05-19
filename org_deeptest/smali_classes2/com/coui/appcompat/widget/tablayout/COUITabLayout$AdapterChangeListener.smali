.class Lcom/coui/appcompat/widget/tablayout/COUITabLayout$AdapterChangeListener;
.super Ljava/lang/Object;
.source "COUITabLayout.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/tablayout/COUITabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterChangeListener"
.end annotation


# instance fields
.field private mAutoRefresh:Z

.field final synthetic this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;)V
    .locals 0

    .line 2722
    iput-object p1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$AdapterChangeListener;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2723
    return-void
.end method


# virtual methods
.method public onAdapterChanged(Landroidx/viewpager/widget/ViewPager;Landroidx/viewpager/widget/PagerAdapter;Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 2
    .param p1, "viewPager"    # Landroidx/viewpager/widget/ViewPager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "pagerAdapter"    # Landroidx/viewpager/widget/PagerAdapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "newAdapter"    # Landroidx/viewpager/widget/PagerAdapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2731
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$AdapterChangeListener;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    iget-object v0, v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-ne v0, p1, :cond_0

    .line 2732
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$AdapterChangeListener;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    iget-boolean v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$AdapterChangeListener;->mAutoRefresh:Z

    invoke-virtual {v0, p3, v1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->setPagerAdapter(Landroidx/viewpager/widget/PagerAdapter;Z)V

    .line 2734
    :cond_0
    return-void
.end method

.method setAutoRefresh(Z)V
    .locals 0
    .param p1, "autoRefresh"    # Z

    .line 2726
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$AdapterChangeListener;->mAutoRefresh:Z

    .line 2727
    return-void
.end method
