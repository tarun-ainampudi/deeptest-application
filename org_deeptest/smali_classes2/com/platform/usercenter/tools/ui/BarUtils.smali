.class public final Lcom/platform/usercenter/tools/ui/BarUtils;
.super Ljava/lang/Object;
.source "BarUtils.java"


# static fields
.field private static final K_OFFSET:I = -0x7b

.field private static final TAG_OFFSET:Ljava/lang/String; = "TAG_OFFSET"

.field private static final TAG_STATUS_BAR:Ljava/lang/String; = "TAG_STATUS_BAR"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static addMarginTopEqualStatusBarHeight(Landroid/view/View;)V
    .locals 7
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 167
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    return-void

    .line 168
    :cond_0
    const-string v0, "TAG_OFFSET"

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 169
    const/16 v0, -0x7b

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 170
    .local v1, "haveSetOffset":Ljava/lang/Object;
    if-eqz v1, :cond_1

    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 171
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 172
    .local v2, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 173
    invoke-static {}, Lcom/platform/usercenter/tools/ui/BarUtils;->getStatusBarHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 172
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 176
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 177
    return-void
.end method

.method private static addMarginTopEqualStatusBarHeight(Landroid/view/Window;)V
    .locals 2
    .param p0, "window"    # Landroid/view/Window;

    .line 197
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    return-void

    .line 198
    :cond_0
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "TAG_OFFSET"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 199
    .local v0, "withTag":Landroid/view/View;
    if-nez v0, :cond_1

    return-void

    .line 200
    :cond_1
    invoke-static {v0}, Lcom/platform/usercenter/tools/ui/BarUtils;->addMarginTopEqualStatusBarHeight(Landroid/view/View;)V

    .line 201
    return-void
.end method

.method private static applyStatusBarColor(Landroid/app/Activity;IZ)Landroid/view/View;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "color"    # I
    .param p2, "isDecor"    # Z

    .line 354
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/platform/usercenter/tools/ui/BarUtils;->applyStatusBarColor(Landroid/view/Window;IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private static applyStatusBarColor(Landroid/view/Window;IZ)Landroid/view/View;
    .locals 4
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "color"    # I
    .param p2, "isDecor"    # Z

    .line 360
    if-eqz p2, :cond_0

    .line 361
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const v0, 0x1020002

    .line 362
    invoke-virtual {p0, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 363
    .local v0, "parent":Landroid/view/ViewGroup;
    :goto_0
    const-string v1, "TAG_STATUS_BAR"

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 364
    .local v1, "fakeStatusBarView":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 365
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    .line 366
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 368
    :cond_1
    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 370
    :cond_2
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/platform/usercenter/tools/ui/BarUtils;->createStatusBarView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v1

    .line 371
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 373
    :goto_1
    return-object v1
.end method

.method private static createStatusBarView(Landroid/content/Context;I)Landroid/view/View;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "color"    # I

    .line 396
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 397
    .local v0, "statusBarView":Landroid/view/View;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 398
    invoke-static {}, Lcom/platform/usercenter/tools/ui/BarUtils;->getStatusBarHeight()I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 397
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 399
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 400
    const-string v1, "TAG_STATUS_BAR"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 401
    return-object v0
.end method

.method public static getActionBarHeight(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 441
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 442
    .local v0, "tv":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x10102eb

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 443
    iget v1, v0, Landroid/util/TypedValue;->data:I

    .line 444
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 443
    invoke-static {v1, v2}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v1

    return v1

    .line 447
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private static getActivityByContext(Landroid/content/Context;)Landroid/app/Activity;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 726
    invoke-static {p0}, Lcom/platform/usercenter/tools/ui/BarUtils;->getActivityByContextInner(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 727
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Lcom/platform/usercenter/tools/ui/BarUtils;->isActivityAlive(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 728
    :cond_0
    return-object v0
.end method

.method private static getActivityByContextInner(Landroid/content/Context;)Landroid/app/Activity;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 732
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 733
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 734
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/Context;>;"
    :goto_0
    instance-of v2, p0, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_5

    .line 735
    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_1

    .line 736
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    return-object v0

    .line 738
    :cond_1
    invoke-static {p0}, Lcom/platform/usercenter/tools/ui/BarUtils;->getActivityFromDecorContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    .line 739
    .local v2, "activity":Landroid/app/Activity;
    if-eqz v2, :cond_2

    return-object v2

    .line 740
    :cond_2
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 741
    move-object v3, p0

    check-cast v3, Landroid/content/ContextWrapper;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    .line 742
    if-nez p0, :cond_3

    .line 743
    return-object v0

    .line 745
    :cond_3
    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 747
    return-object v0

    .line 749
    .end local v2    # "activity":Landroid/app/Activity;
    :cond_4
    goto :goto_0

    .line 750
    :cond_5
    return-object v0
.end method

.method private static getActivityFromDecorContext(Landroid/content/Context;)Landroid/app/Activity;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 754
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 755
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.internal.policy.DecorContext"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 757
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mActivityContext"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 758
    .local v1, "mActivityContextField":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 760
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 761
    .end local v1    # "mActivityContextField":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 764
    :cond_1
    return-object v0
.end method

.method public static getNavBarColor(Landroid/app/Activity;)I
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .line 623
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/platform/usercenter/tools/ui/BarUtils;->getNavBarColor(Landroid/view/Window;)I

    move-result v0

    return v0
.end method

.method public static getNavBarColor(Landroid/view/Window;)I
    .locals 1
    .param p0, "window"    # Landroid/view/Window;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .line 634
    invoke-virtual {p0}, Landroid/view/Window;->getNavigationBarColor()I

    move-result v0

    return v0
.end method

.method public static getNavBarHeight()I
    .locals 4

    .line 494
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 495
    .local v0, "res":Landroid/content/res/Resources;
    const-string v1, "navigation_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 496
    .local v1, "resourceId":I
    if-eqz v1, :cond_0

    .line 497
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    return v2

    .line 499
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private static getResNameById(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .line 586
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 587
    :catch_0
    move-exception v0

    .line 588
    .local v0, "ignore":Ljava/lang/Exception;
    const-string v1, ""

    return-object v1
.end method

.method public static getStatusBarHeight()I
    .locals 4

    .line 59
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 60
    .local v0, "resources":Landroid/content/res/Resources;
    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 61
    .local v1, "resourceId":I
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    return v2
.end method

.method private static hideStatusBarView(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .line 377
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/platform/usercenter/tools/ui/BarUtils;->hideStatusBarView(Landroid/view/Window;)V

    .line 378
    return-void
.end method

.method private static hideStatusBarView(Landroid/view/Window;)V
    .locals 3
    .param p0, "window"    # Landroid/view/Window;

    .line 381
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 382
    .local v0, "decorView":Landroid/view/ViewGroup;
    const-string v1, "TAG_STATUS_BAR"

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 383
    .local v1, "fakeStatusBarView":Landroid/view/View;
    if-nez v1, :cond_0

    return-void

    .line 384
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 385
    return-void
.end method

.method private static invokePanels(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "methodName"    # Ljava/lang/String;

    .line 474
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 476
    .local v0, "service":Ljava/lang/Object;
    const-string v1, "android.app.StatusBarManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 477
    .local v1, "statusBarManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, p1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 478
    .local v3, "expand":Ljava/lang/reflect/Method;
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    .end local v0    # "service":Ljava/lang/Object;
    .end local v1    # "statusBarManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "expand":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 479
    :catch_0
    move-exception v0

    .line 480
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 482
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private static isActivityAlive(Landroid/app/Activity;)Z
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .line 715
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 716
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNavBarLightMode(Landroid/app/Activity;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 689
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/platform/usercenter/tools/ui/BarUtils;->isNavBarLightMode(Landroid/view/Window;)Z

    move-result v0

    return v0
.end method

.method public static isNavBarLightMode(Landroid/view/Window;)Z
    .locals 4
    .param p0, "window"    # Landroid/view/Window;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 699
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_1

    .line 700
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 701
    .local v0, "decorView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    .line 702
    .local v2, "vis":I
    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    .line 704
    .end local v0    # "decorView":Landroid/view/View;
    .end local v2    # "vis":I
    :cond_1
    return v1
.end method

.method public static isNavBarVisible(Landroid/app/Activity;)Z
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 552
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/platform/usercenter/tools/ui/BarUtils;->isNavBarVisible(Landroid/content/Context;Landroid/view/Window;)Z

    move-result v0

    return v0
.end method

.method public static isNavBarVisible(Landroid/content/Context;Landroid/view/Window;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "window"    # Landroid/view/Window;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 563
    const/4 v0, 0x0

    .line 564
    .local v0, "isVisible":Z
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 565
    .local v1, "decorView":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .local v3, "count":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 566
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 567
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    .line 568
    .local v5, "id":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 569
    invoke-static {p0, v5}, Lcom/platform/usercenter/tools/ui/BarUtils;->getResNameById(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 570
    .local v6, "resourceEntryName":Ljava/lang/String;
    const-string v7, "navigationBarBackground"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 571
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_0

    .line 572
    const/4 v0, 0x1

    .line 573
    goto :goto_1

    .line 565
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "id":I
    .end local v6    # "resourceEntryName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 577
    .end local v2    # "i":I
    .end local v3    # "count":I
    :cond_1
    :goto_1
    if-eqz v0, :cond_3

    .line 578
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getSystemUiVisibility()I

    move-result v2

    .line 579
    .local v2, "visibility":I
    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    move v0, v3

    .line 581
    .end local v2    # "visibility":I
    :cond_3
    return v0
.end method

.method public static isStatusBarLightMode(Landroid/app/Activity;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 143
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/platform/usercenter/tools/ui/BarUtils;->isStatusBarLightMode(Landroid/view/Window;)Z

    move-result v0

    return v0
.end method

.method public static isStatusBarLightMode(Landroid/view/Window;)Z
    .locals 4
    .param p0, "window"    # Landroid/view/Window;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 153
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    .line 154
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 155
    .local v0, "decorView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    .line 156
    .local v2, "vis":I
    and-int/lit16 v3, v2, 0x2000

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    .line 158
    .end local v0    # "decorView":Landroid/view/View;
    .end local v2    # "vis":I
    :cond_1
    return v1
.end method

.method public static isStatusBarVisible(Landroid/app/Activity;)Z
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 101
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 102
    .local v0, "flags":I
    and-int/lit16 v1, v0, 0x400

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isSupportNavBar(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 643
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 644
    .local v0, "wm":Landroid/view/WindowManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 645
    return v1

    .line 647
    :cond_0
    invoke-static {p0}, Lcom/platform/usercenter/tools/ui/DisplayUtil;->getRealScreenHeight(Landroid/content/Context;)I

    move-result v2

    invoke-static {p0}, Lcom/platform/usercenter/tools/ui/DisplayUtil;->getScreenDisplayHeight(Landroid/content/Context;)I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 648
    invoke-static {p0}, Lcom/platform/usercenter/tools/ui/DisplayUtil;->getRealScreenWidth(Landroid/content/Context;)I

    move-result v2

    invoke-static {p0}, Lcom/platform/usercenter/tools/ui/DisplayUtil;->getScreenDisplayWidth(Landroid/content/Context;)I

    move-result v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public static setNavBarColor(Landroid/app/Activity;I)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "color"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .line 600
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/platform/usercenter/tools/ui/BarUtils;->setNavBarColor(Landroid/view/Window;I)V

    .line 601
    return-void
.end method

.method public static setNavBarColor(Landroid/view/Window;I)V
    .locals 1
    .param p0, "window"    # Landroid/view/Window;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "color"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .line 611
    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    .line 612
    invoke-virtual {p0, p1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 613
    return-void
.end method

.method public static setNavBarLightMode(Landroid/app/Activity;Z)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "isLightMode"    # Z

    .line 659
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/platform/usercenter/tools/ui/BarUtils;->setNavBarLightMode(Landroid/view/Window;Z)V

    .line 660
    return-void
.end method

.method public static setNavBarLightMode(Landroid/view/Window;Z)V
    .locals 2
    .param p0, "window"    # Landroid/view/Window;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "isLightMode"    # Z

    .line 670
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 671
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 672
    .local v0, "decorView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    .line 673
    .local v1, "vis":I
    if-eqz p1, :cond_0

    .line 674
    or-int/lit8 v1, v1, 0x10

    goto :goto_0

    .line 676
    :cond_0
    and-int/lit8 v1, v1, -0x11

    .line 678
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 680
    .end local v0    # "decorView":Landroid/view/View;
    .end local v1    # "vis":I
    :cond_1
    return-void
.end method

.method public static setNavBarVisibility(Landroid/app/Activity;Z)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "isVisible"    # Z

    .line 510
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    return-void

    .line 511
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/platform/usercenter/tools/ui/BarUtils;->setNavBarVisibility(Landroid/content/Context;Landroid/view/Window;Z)V

    .line 513
    return-void
.end method

.method public static setNavBarVisibility(Landroid/content/Context;Landroid/view/Window;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "window"    # Landroid/view/Window;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "isVisible"    # Z

    .line 522
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    return-void

    .line 523
    :cond_0
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 524
    .local v0, "decorView":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .local v2, "count":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 525
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 526
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    .line 527
    .local v4, "id":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 528
    invoke-static {p0, v4}, Lcom/platform/usercenter/tools/ui/BarUtils;->getResNameById(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 529
    .local v5, "resourceEntryName":Ljava/lang/String;
    const-string v6, "navigationBarBackground"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 530
    if-eqz p2, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    const/4 v6, 0x4

    :goto_1
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 524
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "id":I
    .end local v5    # "resourceEntryName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 534
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_3
    const/16 v1, 0x1202

    .line 537
    .local v1, "uiOptions":I
    if-eqz p2, :cond_4

    .line 538
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getSystemUiVisibility()I

    move-result v2

    and-int/lit16 v2, v2, -0x1203

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    goto :goto_2

    .line 540
    :cond_4
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getSystemUiVisibility()I

    move-result v2

    or-int/lit16 v2, v2, 0x1202

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    .line 542
    :goto_2
    return-void
.end method

.method public static setNotificationBarVisibility(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isVisible"    # Z
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.EXPAND_STATUS_BAR"
    .end annotation

    .line 463
    const/16 v0, 0x10

    if-eqz p1, :cond_1

    .line 464
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v1, v0, :cond_0

    const-string v0, "expand"

    goto :goto_0

    :cond_0
    const-string v0, "expandNotificationsPanel"

    :goto_0
    goto :goto_1

    .line 466
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v1, v0, :cond_2

    const-string v0, "collapse"

    goto :goto_1

    :cond_2
    const-string v0, "collapsePanels"

    .line 468
    .local v0, "methodName":Ljava/lang/String;
    :goto_1
    invoke-static {p0, v0}, Lcom/platform/usercenter/tools/ui/BarUtils;->invokePanels(Landroid/content/Context;Ljava/lang/String;)V

    .line 469
    return-void
.end method

.method public static setStatusBarColor(Landroid/app/Activity;I)Landroid/view/View;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "color"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 218
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/platform/usercenter/tools/ui/BarUtils;->setStatusBarColor(Landroid/app/Activity;IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static setStatusBarColor(Landroid/app/Activity;IZ)Landroid/view/View;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "color"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p2, "isDecor"    # Z

    .line 232
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 233
    :cond_0
    invoke-static {p0}, Lcom/platform/usercenter/tools/ui/BarUtils;->transparentStatusBar(Landroid/app/Activity;)V

    .line 234
    invoke-static {p0, p1, p2}, Lcom/platform/usercenter/tools/ui/BarUtils;->applyStatusBarColor(Landroid/app/Activity;IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static setStatusBarColor(Landroid/view/Window;I)Landroid/view/View;
    .locals 1
    .param p0, "window"    # Landroid/view/Window;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "color"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 246
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/platform/usercenter/tools/ui/BarUtils;->setStatusBarColor(Landroid/view/Window;IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static setStatusBarColor(Landroid/view/Window;IZ)Landroid/view/View;
    .locals 2
    .param p0, "window"    # Landroid/view/Window;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "color"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p2, "isDecor"    # Z

    .line 260
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 261
    :cond_0
    invoke-static {p0}, Lcom/platform/usercenter/tools/ui/BarUtils;->transparentStatusBar(Landroid/view/Window;)V

    .line 262
    invoke-static {p0, p1, p2}, Lcom/platform/usercenter/tools/ui/BarUtils;->applyStatusBarColor(Landroid/view/Window;IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static setStatusBarColor(Landroid/view/View;I)V
    .locals 3
    .param p0, "fakeStatusBar"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "color"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 273
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    return-void

    .line 274
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/platform/usercenter/tools/ui/BarUtils;->getActivityByContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 275
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_1

    return-void

    .line 276
    :cond_1
    invoke-static {v0}, Lcom/platform/usercenter/tools/ui/BarUtils;->transparentStatusBar(Landroid/app/Activity;)V

    .line 277
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 278
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 279
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 280
    invoke-static {}, Lcom/platform/usercenter/tools/ui/BarUtils;->getStatusBarHeight()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 281
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 282
    return-void
.end method

.method public static setStatusBarColor4Drawer(Landroidx/drawerlayout/widget/DrawerLayout;Landroid/view/View;I)V
    .locals 1
    .param p0, "drawer"    # Landroidx/drawerlayout/widget/DrawerLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "fakeStatusBar"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "color"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 319
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/platform/usercenter/tools/ui/BarUtils;->setStatusBarColor4Drawer(Landroidx/drawerlayout/widget/DrawerLayout;Landroid/view/View;IZ)V

    .line 320
    return-void
.end method

.method public static setStatusBarColor4Drawer(Landroidx/drawerlayout/widget/DrawerLayout;Landroid/view/View;IZ)V
    .locals 5
    .param p0, "drawer"    # Landroidx/drawerlayout/widget/DrawerLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "fakeStatusBar"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "color"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p3, "isTop"    # Z

    .line 335
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    return-void

    .line 336
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/platform/usercenter/tools/ui/BarUtils;->getActivityByContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 337
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_1

    return-void

    .line 338
    :cond_1
    invoke-static {v0}, Lcom/platform/usercenter/tools/ui/BarUtils;->transparentStatusBar(Landroid/app/Activity;)V

    .line 339
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->setFitsSystemWindows(Z)V

    .line 340
    invoke-static {p1, p2}, Lcom/platform/usercenter/tools/ui/BarUtils;->setStatusBarColor(Landroid/view/View;I)V

    .line 341
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v3

    .local v3, "count":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 342
    invoke-virtual {p0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 341
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 344
    .end local v2    # "i":I
    .end local v3    # "count":I
    :cond_2
    if-eqz p3, :cond_3

    .line 345
    invoke-static {v0}, Lcom/platform/usercenter/tools/ui/BarUtils;->hideStatusBarView(Landroid/app/Activity;)V

    goto :goto_1

    .line 347
    :cond_3
    invoke-static {v0, p2, v1}, Lcom/platform/usercenter/tools/ui/BarUtils;->setStatusBarColor(Landroid/app/Activity;IZ)Landroid/view/View;

    .line 349
    :goto_1
    return-void
.end method

.method public static setStatusBarCustom(Landroid/view/View;)V
    .locals 5
    .param p0, "fakeStatusBar"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 290
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    return-void

    .line 291
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/platform/usercenter/tools/ui/BarUtils;->getActivityByContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 292
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_1

    return-void

    .line 293
    :cond_1
    invoke-static {v0}, Lcom/platform/usercenter/tools/ui/BarUtils;->transparentStatusBar(Landroid/app/Activity;)V

    .line 294
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 295
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 296
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v2, -0x1

    if-nez v1, :cond_2

    .line 297
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 299
    invoke-static {}, Lcom/platform/usercenter/tools/ui/BarUtils;->getStatusBarHeight()I

    move-result v4

    invoke-direct {v3, v2, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v1, v3

    .line 301
    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 303
    :cond_2
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 304
    invoke-static {}, Lcom/platform/usercenter/tools/ui/BarUtils;->getStatusBarHeight()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 306
    :goto_0
    return-void
.end method

.method public static setStatusBarLightMode(Landroid/app/Activity;Z)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "isLightMode"    # Z

    .line 113
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/platform/usercenter/tools/ui/BarUtils;->setStatusBarLightMode(Landroid/view/Window;Z)V

    .line 114
    return-void
.end method

.method public static setStatusBarLightMode(Landroid/view/Window;Z)V
    .locals 2
    .param p0, "window"    # Landroid/view/Window;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "isLightMode"    # Z

    .line 124
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 125
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 126
    .local v0, "decorView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    .line 127
    .local v1, "vis":I
    if-eqz p1, :cond_0

    .line 128
    or-int/lit16 v1, v1, 0x2000

    goto :goto_0

    .line 130
    :cond_0
    and-int/lit16 v1, v1, -0x2001

    .line 132
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 134
    .end local v0    # "decorView":Landroid/view/View;
    .end local v1    # "vis":I
    :cond_1
    return-void
.end method

.method public static setStatusBarVisibility(Landroid/app/Activity;Z)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "isVisible"    # Z

    .line 72
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/platform/usercenter/tools/ui/BarUtils;->setStatusBarVisibility(Landroid/view/Window;Z)V

    .line 73
    return-void
.end method

.method public static setStatusBarVisibility(Landroid/view/Window;Z)V
    .locals 1
    .param p0, "window"    # Landroid/view/Window;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "isVisible"    # Z

    .line 83
    const/16 v0, 0x400

    if-eqz p1, :cond_0

    .line 84
    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 85
    invoke-static {p0}, Lcom/platform/usercenter/tools/ui/BarUtils;->showStatusBarView(Landroid/view/Window;)V

    .line 86
    invoke-static {p0}, Lcom/platform/usercenter/tools/ui/BarUtils;->addMarginTopEqualStatusBarHeight(Landroid/view/Window;)V

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    .line 89
    invoke-static {p0}, Lcom/platform/usercenter/tools/ui/BarUtils;->hideStatusBarView(Landroid/view/Window;)V

    .line 90
    invoke-static {p0}, Lcom/platform/usercenter/tools/ui/BarUtils;->subtractMarginTopEqualStatusBarHeight(Landroid/view/Window;)V

    .line 92
    :goto_0
    return-void
.end method

.method private static showStatusBarView(Landroid/view/Window;)V
    .locals 3
    .param p0, "window"    # Landroid/view/Window;

    .line 388
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 389
    .local v0, "decorView":Landroid/view/ViewGroup;
    const-string v1, "TAG_STATUS_BAR"

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 390
    .local v1, "fakeStatusBarView":Landroid/view/View;
    if-nez v1, :cond_0

    return-void

    .line 391
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 392
    return-void
.end method

.method public static subtractMarginTopEqualStatusBarHeight(Landroid/view/View;)V
    .locals 7
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 185
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    return-void

    .line 186
    :cond_0
    const/16 v0, -0x7b

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 187
    .local v1, "haveSetOffset":Ljava/lang/Object;
    if-eqz v1, :cond_2

    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 188
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 189
    .local v2, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 190
    invoke-static {}, Lcom/platform/usercenter/tools/ui/BarUtils;->getStatusBarHeight()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 189
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 193
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 194
    return-void

    .line 187
    .end local v2    # "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    :goto_0
    return-void
.end method

.method private static subtractMarginTopEqualStatusBarHeight(Landroid/view/Window;)V
    .locals 2
    .param p0, "window"    # Landroid/view/Window;

    .line 204
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    return-void

    .line 205
    :cond_0
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "TAG_OFFSET"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 206
    .local v0, "withTag":Landroid/view/View;
    if-nez v0, :cond_1

    return-void

    .line 207
    :cond_1
    invoke-static {v0}, Lcom/platform/usercenter/tools/ui/BarUtils;->subtractMarginTopEqualStatusBarHeight(Landroid/view/View;)V

    .line 208
    return-void
.end method

.method public static transparentStatusBar(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .line 409
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/platform/usercenter/tools/ui/BarUtils;->transparentStatusBar(Landroid/view/Window;)V

    .line 410
    return-void
.end method

.method public static transparentStatusBar(Landroid/view/Window;)V
    .locals 4
    .param p0, "window"    # Landroid/view/Window;

    .line 418
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    return-void

    .line 419
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/high16 v2, 0x4000000

    if-lt v0, v1, :cond_1

    .line 420
    invoke-virtual {p0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 421
    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    .line 422
    const/16 v0, 0x500

    .line 423
    .local v0, "option":I
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    .line 424
    .local v1, "vis":I
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    or-int v3, v0, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 425
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 426
    .end local v0    # "option":I
    .end local v1    # "vis":I
    goto :goto_0

    .line 427
    :cond_1
    invoke-virtual {p0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 429
    :goto_0
    return-void
.end method
