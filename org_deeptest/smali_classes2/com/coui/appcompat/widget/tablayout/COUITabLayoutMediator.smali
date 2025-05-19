.class public final Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;
.super Ljava/lang/Object;
.source "COUITabLayoutMediator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator$PagerAdapterObserver;,
        Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator$ViewPagerOnTabSelectedListener;,
        Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator$TabLayoutOnPageChangeCallback;,
        Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator$OnConfigureTabCallback;
    }
.end annotation


# static fields
.field private static final SELECT_TAB_NAME:Ljava/lang/String; = "TabLayout.selectTab(TabLayout.Tab, boolean)"

.field private static final SET_SCROLL_POSITION_NAME:Ljava/lang/String; = "TabLayout.setScrollPosition(int, float, boolean, boolean)"

.field private static sSelectTab:Ljava/lang/reflect/Method;

.field private static sSetScrollPosition:Ljava/lang/reflect/Method;


# instance fields
.field private mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field private mAttached:Z

.field private final mAutoRefresh:Z

.field private final mOnConfigureTabCallback:Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator$OnConfigureTabCallback;

.field private mOnPageChangeCallback:Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator$TabLayoutOnPageChangeCallback;

.field private mOnTabSelectedListener:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$OnTabSelectedListener;

.field private mPagerAdapterObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field private final mTabLayout:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mViewPager:Landroidx/viewpager2/widget/ViewPager2;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 233
    :try_start_0
    const-class v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    const-string v1, "setScrollPosition"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const/4 v3, 0x3

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;->sSetScrollPosition:Ljava/lang/reflect/Method;

    .line 235
    sget-object v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;->sSetScrollPosition:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 237
    const-class v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    const-string v1, "selectTab"

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;->sSelectTab:Ljava/lang/reflect/Method;

    .line 239
    sget-object v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;->sSelectTab:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    nop

    .line 244
    return-void

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Can\'t reflect into method TabLayout.setScrollPosition(int, float, boolean, boolean)"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator$OnConfigureTabCallback;)V
    .locals 1
    .param p1, "tabLayout"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "viewPager"    # Landroidx/viewpager2/widget/ViewPager2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "onConfigureTabCallback"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator$OnConfigureTabCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 64
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;-><init>(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;Landroidx/viewpager2/widget/ViewPager2;ZLcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator$OnConfigureTabCallback;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;Landroidx/viewpager2/widget/ViewPager2;ZLcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator$OnConfigureTabCallback;)V
    .locals 0
    .param p1, "tabLayout"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "viewPager"    # Landroidx/viewpager2/widget/ViewPager2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "autoRefresh"    # Z
    .param p4, "onConfigureTabCallback"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator$OnConfigureTabCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;->mTabLayout:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    .line 80
    iput-object p2, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 81
    iput-boolean p3, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;->mAutoRefresh:Z

    .line 82
    iput-object p4, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;->mOnConfigureTabCallback:Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator$OnConfigureTabCallback;

    .line 83
    return-void
.end method

.method static selectTab(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;Z)V
    .locals 4
    .param p0, "tabLayout"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout;
    .param p1, "tab"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;
    .param p2, "updateIndicator"    # Z

    .line 264
    :try_start_0
    sget-object v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;->sSelectTab:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 265
    sget-object v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;->sSelectTab:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 267
    :cond_0
    const-string v0, "TabLayout.selectTab(TabLayout.Tab, boolean)"

    invoke-static {v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;->throwMethodNotFound(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :goto_0
    goto :goto_1

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TabLayout.selectTab(TabLayout.Tab, boolean)"

    invoke-static {v1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;->throwInvokeFailed(Ljava/lang/String;)V

    .line 272
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method static setScrollPosition(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;IFZZ)V
    .locals 4
    .param p0, "tabLayout"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout;
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "updateSelectedText"    # Z
    .param p4, "updateIndicatorPosition"    # Z

    .line 250
    :try_start_0
    sget-object v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;->sSetScrollPosition:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 251
    sget-object v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;->sSetScrollPosition:Ljava/lang/reflect/Method;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 252
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 251
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 254
    :cond_0
    const-string v0, "TabLayout.setScrollPosition(int, float, boolean, boolean)"

    invoke-static {v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;->throwMethodNotFound(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :goto_0
    goto :goto_1

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TabLayout.setScrollPosition(int, float, boolean, boolean)"

    invoke-static {v1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;->throwInvokeFailed(Ljava/lang/String;)V

    .line 259
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private static throwInvokeFailed(Ljava/lang/String;)V
    .locals 3
    .param p0, "method"    # Ljava/lang/String;

    .line 279
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t invoke method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static throwMethodNotFound(Ljava/lang/String;)V
    .locals 3
    .param p0, "method"    # Ljava/lang/String;

    .line 275
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public attach()V
    .locals 4

    .line 91
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;->mAttached:Z

    if-nez v0, :cond_2

    .line 94
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 95
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_1

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;->mAttached:Z

    .line 102
    new-instance v1, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator$TabLayoutOnPageChangeCallback;

    iget-object v2, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;->mTabLayout:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-direct {v1, v2}, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator$TabLayoutOnPageChangeCallback;-><init>(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;)V

    iput-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;->mOnPageChangeCallback:Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator$TabLayoutOnPageChangeCallback;

    .line 103
    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v2, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;->mOnPageChangeCallback:Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator$TabLayoutOnPageChangeCallback;

    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 106
    new-instance v1, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator$ViewPagerOnTabSelectedListener;

    iget-object v2, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-direct {v1, v2}, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator$ViewPagerOnTabSelectedListener;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    iput-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;->mOnTabSelectedListener:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$OnTabSelectedListener;

    .line 107
    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;->mTabLayout:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    iget-object v2, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;->mOnTabSelectedListener:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$OnTabSelectedListener;

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->addOnTabSelectedListener(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$OnTabSelectedListener;)V

    .line 111
    iget-boolean v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;->mAutoRefresh:Z

    if-eqz v1, :cond_0

    .line 113
    new-instance v1, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator$PagerAdapterObserver;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator$PagerAdapterObserver;-><init>(Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;)V

    iput-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;->mPagerAdapterObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 114
    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iget-object v2, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;->mPagerAdapterObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;->populateTabsFromPagerAdapter()V

    .line 120
    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;->mTabLayout:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    iget-object v2, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->setScrollPosition(IFZ)V

    .line 121
    return-void

    .line 96
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TabLayoutMediator attached before ViewPager2 has an adapter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TabLayoutMediator is already attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public detach()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;->mPagerAdapterObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 128
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;->mTabLayout:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;->mOnTabSelectedListener:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$OnTabSelectedListener;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->removeOnTabSelectedListener(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$OnTabSelectedListener;)V

    .line 129
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;->mOnPageChangeCallback:Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator$TabLayoutOnPageChangeCallback;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;->mPagerAdapterObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 131
    iput-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;->mOnTabSelectedListener:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$OnTabSelectedListener;

    .line 132
    iput-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;->mOnPageChangeCallback:Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator$TabLayoutOnPageChangeCallback;

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;->mAttached:Z

    .line 134
    return-void
.end method

.method populateTabsFromPagerAdapter()V
    .locals 5

    .line 138
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;->mTabLayout:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->removeAllTabs()V

    .line 140
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    .line 142
    .local v0, "adapterCount":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 143
    iget-object v3, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;->mTabLayout:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-virtual {v3}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->newTab()Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;

    move-result-object v3

    .line 144
    .local v3, "tab":Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;
    iget-object v4, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;->mOnConfigureTabCallback:Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator$OnConfigureTabCallback;

    invoke-interface {v4, v3, v2}, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator$OnConfigureTabCallback;->onConfigureTab(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;I)V

    .line 145
    iget-object v4, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;->mTabLayout:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-virtual {v4, v3, v1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->addTab(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;Z)V

    .line 142
    .end local v3    # "tab":Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 149
    .end local v2    # "i":I
    :cond_0
    if-lez v0, :cond_1

    .line 150
    iget-object v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    .line 151
    .local v1, "currItem":I
    iget-object v2, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;->mTabLayout:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getSelectedTabPosition()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 152
    iget-object v2, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayoutMediator;->mTabLayout:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-virtual {v2, v1}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->getTabAt(I)Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$Tab;->select()V

    .line 156
    .end local v0    # "adapterCount":I
    .end local v1    # "currItem":I
    :cond_1
    return-void
.end method
