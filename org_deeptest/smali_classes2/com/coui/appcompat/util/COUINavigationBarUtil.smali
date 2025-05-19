.class public Lcom/coui/appcompat/util/COUINavigationBarUtil;
.super Ljava/lang/Object;
.source "COUINavigationBarUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/util/COUINavigationBarUtil$NavigationBarChangeListener;,
        Lcom/coui/appcompat/util/COUINavigationBarUtil$NavigationBarContentObserver;
    }
.end annotation


# static fields
.field private static final HIDE_NAVIGATION_BAR_ENABLE:Ljava/lang/String; = "hide_navigationbar_enable"

.field private static final MANUAL_HIDE_NAVIGATION_BAR:Ljava/lang/String; = "manual_hide_navigationbar"

.field private static final NAVIGATION_BAR_HEIGHT:Ljava/lang/String; = "navigation_bar_height"

.field private static final NAVIGATION_BAR_IMMERSIVE:Ljava/lang/String; = "nav_bar_immersive"

.field private static final NAVIGATION_BAR_IMMERSIVE_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "NavigationBarUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-string v0, "nav_bar_immersive"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/util/COUINavigationBarUtil;->NAVIGATION_BAR_IMMERSIVE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/net/Uri;
    .locals 1

    .line 12
    sget-object v0, Lcom/coui/appcompat/util/COUINavigationBarUtil;->NAVIGATION_BAR_IMMERSIVE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static getNavigationBarHeight(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 56
    if-nez p0, :cond_0

    .line 57
    const/4 v0, 0x0

    return v0

    .line 59
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 60
    .local v0, "resources":Landroid/content/res/Resources;
    const-string v1, "navigation_bar_height"

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

.method public static isNavigationBarShow(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 47
    invoke-static {p0}, Lcom/coui/appcompat/util/COUINavigationBarUtil;->isSupportNavigationBar(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 48
    return v1

    .line 50
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "hide_navigationbar_enable"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 51
    .local v0, "navigationBarStatus":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "manual_hide_navigationbar"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 52
    .local v2, "navigationBarHideStatus":I
    const/4 v3, 0x1

    if-eqz v0, :cond_2

    if-ne v0, v3, :cond_1

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    move v1, v3

    :goto_1
    return v1
.end method

.method public static isSupportNavigationBar(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .line 22
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 23
    return v0

    .line 25
    :cond_0
    const/4 v1, 0x0

    .line 26
    .local v1, "supportNavigationBar":Z
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 27
    .local v2, "rs":Landroid/content/res/Resources;
    const-string v3, "config_showNavigationBar"

    const-string v4, "bool"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 28
    .local v3, "id":I
    if-lez v3, :cond_1

    .line 29
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 32
    :cond_1
    :try_start_0
    const-string v4, "android.os.SystemProperties"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 33
    .local v4, "systemPropertiesClass":Ljava/lang/Class;
    const-string v5, "get"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v0

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 34
    .local v5, "m":Ljava/lang/reflect/Method;
    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "qemu.hw.mainkeys"

    aput-object v7, v6, v0

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 35
    .local v0, "navBarOverride":Ljava/lang/String;
    const-string v6, "1"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 36
    const/4 v1, 0x0

    goto :goto_0

    .line 37
    :cond_2
    const-string v6, "0"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_3

    .line 38
    const/4 v0, 0x1

    .line 42
    move v1, v0

    .end local v0    # "navBarOverride":Ljava/lang/String;
    .end local v4    # "systemPropertiesClass":Ljava/lang/Class;
    .end local v5    # "m":Ljava/lang/reflect/Method;
    :cond_3
    :goto_0
    goto :goto_1

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "NavigationBarUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail to get navigation bar status message is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return v1
.end method

.method public static registerObserver(Landroid/content/Context;Lcom/coui/appcompat/util/COUINavigationBarUtil$NavigationBarChangeListener;)Lcom/coui/appcompat/util/COUINavigationBarUtil$NavigationBarContentObserver;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/coui/appcompat/util/COUINavigationBarUtil$NavigationBarChangeListener;

    .line 65
    if-nez p0, :cond_0

    .line 66
    const/4 v0, 0x0

    return-object v0

    .line 68
    :cond_0
    new-instance v0, Lcom/coui/appcompat/util/COUINavigationBarUtil$NavigationBarContentObserver;

    invoke-direct {v0, p0, p1}, Lcom/coui/appcompat/util/COUINavigationBarUtil$NavigationBarContentObserver;-><init>(Landroid/content/Context;Lcom/coui/appcompat/util/COUINavigationBarUtil$NavigationBarChangeListener;)V

    .line 69
    .local v0, "observer":Lcom/coui/appcompat/util/COUINavigationBarUtil$NavigationBarContentObserver;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/coui/appcompat/util/COUINavigationBarUtil;->NAVIGATION_BAR_IMMERSIVE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 74
    return-object v0
.end method

.method public static unregisterObserver(Landroid/content/Context;Lcom/coui/appcompat/util/COUINavigationBarUtil$NavigationBarContentObserver;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "observer"    # Lcom/coui/appcompat/util/COUINavigationBarUtil$NavigationBarContentObserver;

    .line 78
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 79
    invoke-virtual {p1}, Lcom/coui/appcompat/util/COUINavigationBarUtil$NavigationBarContentObserver;->clearListener()V

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 82
    :cond_0
    return-void
.end method
