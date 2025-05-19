.class public Lcom/heytap/compat/content/pm/PackageManagerNative;
.super Ljava/lang/Object;
.source "PackageManagerNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/compat/content/pm/PackageManagerNative$ReflectInfo;,
        Lcom/heytap/compat/content/pm/PackageManagerNative$PackageDataObserver;,
        Lcom/heytap/compat/content/pm/PackageManagerNative$IPackageStatsObserverNative;
    }
.end annotation


# static fields
.field private static final ACTION_GET_PACKAGE_INFO_AS_USER:Ljava/lang/String; = "getPackageInfoAsUser"

.field private static final ACTION_MATCH_ANY_USER:Ljava/lang/String; = "MATCH_ANY_USER"

.field public static COLOR_STATE_FREEZE_FREEZED:I = 0x0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation
.end field

.field public static COLOR_UNFREEZE_FLAG_NORMAL:I = 0x0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation
.end field

.field private static final COMPONENT_NAME:Ljava/lang/String; = "android.content.pm.PackageManager"

.field public static FLAG_PERMISSION_REVIEW_REQUIRED:I = 0x0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation
.end field

.field public static INSTALL_FAILED_INVALID_URI:I = 0x0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation
.end field

.field public static INSTALL_REPLACE_EXISTING:I = 0x0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation
.end field

.field public static MATCH_ANY_USER:I = 0x0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "MATCH_ANY_USER"
        type = "epona"
    .end annotation
.end field

.field private static final PACKAGE_ACTION:Ljava/lang/String; = "package"

.field private static final RESULT:Ljava/lang/String; = "result"

.field private static final TAG:Ljava/lang/String; = "PackageManagerNative"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 76
    :try_start_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->appPlatformExists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    const/high16 v0, 0x400000

    sput v0, Lcom/heytap/compat/content/pm/PackageManagerNative;->MATCH_ANY_USER:I

    goto :goto_0

    .line 79
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    new-instance v0, Lcom/heytap/epona/Request$Builder;

    invoke-direct {v0}, Lcom/heytap/epona/Request$Builder;-><init>()V

    const-string v1, "android.content.pm.PackageManager"

    .line 81
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "MATCH_ANY_USER"

    .line 82
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lcom/heytap/epona/Request$Builder;->build()Lcom/heytap/epona/Request;

    move-result-object v0

    .line 80
    invoke-static {v0}, Lcom/heytap/epona/Epona;->newCall(Lcom/heytap/epona/Request;)Lcom/heytap/epona/internal/RealCall;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/heytap/epona/internal/RealCall;->execute()Lcom/heytap/epona/Response;

    move-result-object v0

    .line 85
    .local v0, "response":Lcom/heytap/epona/Response;
    invoke-virtual {v0}, Lcom/heytap/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "result"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/heytap/compat/content/pm/PackageManagerNative;->MATCH_ANY_USER:I

    .line 86
    .end local v0    # "response":Lcom/heytap/epona/Response;
    nop

    .line 92
    :goto_0
    goto :goto_1

    .line 87
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before R"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PackageManagerNative"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_1
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    .line 96
    sput v1, Lcom/heytap/compat/content/pm/PackageManagerNative;->INSTALL_REPLACE_EXISTING:I

    .line 97
    const/16 v0, 0x40

    sput v0, Lcom/heytap/compat/content/pm/PackageManagerNative;->FLAG_PERMISSION_REVIEW_REQUIRED:I

    .line 98
    const/4 v0, 0x1

    sput v0, Lcom/heytap/compat/content/pm/PackageManagerNative;->COLOR_UNFREEZE_FLAG_NORMAL:I

    .line 99
    sput v1, Lcom/heytap/compat/content/pm/PackageManagerNative;->COLOR_STATE_FREEZE_FREEZED:I

    .line 100
    const/4 v0, -0x3

    sput v0, Lcom/heytap/compat/content/pm/PackageManagerNative;->INSTALL_FAILED_INVALID_URI:I

    goto :goto_2

    .line 101
    :cond_2
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isL()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 102
    sput v1, Lcom/heytap/compat/content/pm/PackageManagerNative;->INSTALL_REPLACE_EXISTING:I

    .line 108
    :goto_2
    goto :goto_3

    .line 104
    :cond_3
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 106
    :catch_1
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "PackageManagerNative"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_3
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    return-void
.end method

.method public static clearCachedIconForActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)V
    .locals 3
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "activityName"    # Landroid/content/ComponentName;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation

    .line 611
    :try_start_0
    invoke-static {p0, p1}, Lcom/color/inner/content/pm/PackageManagerWrapper;->clearCachedIconForActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 614
    goto :goto_0

    .line 612
    :catch_0
    move-exception v0

    .line 613
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PackageManagerNative"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private static createPackageDeleteObserver(Lcom/heytap/compat/content/pm/IPackageDeleteObserverNative;)Landroid/content/pm/IPackageDeleteObserver$Stub;
    .locals 2
    .param p0, "observer"    # Lcom/heytap/compat/content/pm/IPackageDeleteObserverNative;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 217
    const/4 v0, 0x0

    .line 218
    .local v0, "iPackageDeleteObserver":Landroid/content/pm/IPackageDeleteObserver$Stub;
    if-eqz p0, :cond_0

    .line 219
    new-instance v1, Lcom/heytap/compat/content/pm/PackageManagerNative$3;

    invoke-direct {v1, p0}, Lcom/heytap/compat/content/pm/PackageManagerNative$3;-><init>(Lcom/heytap/compat/content/pm/IPackageDeleteObserverNative;)V

    move-object v0, v1

    .line 226
    :cond_0
    return-object v0
.end method

.method public static deleteApplicationCacheFiles(Landroid/content/Context;Ljava/lang/String;Lcom/heytap/compat/content/pm/IPackageDataObserverNative;)V
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Lcom/heytap/compat/content/pm/IPackageDataObserverNative;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .line 519
    :try_start_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 520
    const/4 v0, 0x0

    .line 521
    .local v0, "packageDataObserverWrapper":Lcom/color/inner/content/pm/PackageManagerWrapper$IPackageDataObserverWrapper;
    if-eqz p2, :cond_0

    .line 522
    new-instance v1, Lcom/heytap/compat/content/pm/PackageManagerNative$6;

    invoke-direct {v1, p2}, Lcom/heytap/compat/content/pm/PackageManagerNative$6;-><init>(Lcom/heytap/compat/content/pm/IPackageDataObserverNative;)V

    move-object v0, v1

    .line 529
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/color/inner/content/pm/PackageManagerWrapper;->deleteApplicationCacheFiles(Landroid/content/Context;Ljava/lang/String;Lcom/color/inner/content/pm/PackageManagerWrapper$IPackageDataObserverWrapper;)V

    .line 530
    .end local v0    # "packageDataObserverWrapper":Lcom/color/inner/content/pm/PackageManagerWrapper$IPackageDataObserverWrapper;
    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isL()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 531
    const/4 v0, 0x0

    .line 532
    .local v0, "iPackageDataObserver":Landroid/content/pm/IPackageDataObserver$Stub;
    if-eqz p2, :cond_2

    .line 533
    new-instance v1, Lcom/heytap/compat/content/pm/PackageManagerNative$7;

    invoke-direct {v1, p2}, Lcom/heytap/compat/content/pm/PackageManagerNative$7;-><init>(Lcom/heytap/compat/content/pm/IPackageDataObserverNative;)V

    move-object v0, v1

    .line 540
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 541
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Lcom/heytap/compat/content/pm/PackageManagerNative$ReflectInfo;->access$100()Lcom/heytap/reflect/RefMethod;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v2, v1, v3}, Lcom/heytap/reflect/RefMethod;->callWithException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    .end local v0    # "iPackageDataObserver":Landroid/content/pm/IPackageDataObserver$Stub;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_3
    :goto_0
    goto :goto_1

    .line 543
    :catch_0
    move-exception v0

    .line 544
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "PackageManagerNative"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method public static deleteApplicationCacheFilesAsUser(Landroid/content/Context;Ljava/lang/String;ILcom/heytap/compat/content/pm/IPackageDataObserverNative;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "observerNative"    # Lcom/heytap/compat/content/pm/IPackageDataObserverNative;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .line 568
    const/4 v0, 0x0

    .line 569
    .local v0, "mIPackageDataObserverWrapper":Lcom/color/inner/content/pm/PackageManagerWrapper$IPackageDataObserverWrapper;
    if-eqz p3, :cond_0

    .line 570
    new-instance v1, Lcom/heytap/compat/content/pm/PackageManagerNative$8;

    invoke-direct {v1, p3}, Lcom/heytap/compat/content/pm/PackageManagerNative$8;-><init>(Lcom/heytap/compat/content/pm/IPackageDataObserverNative;)V

    move-object v0, v1

    .line 579
    :cond_0
    :try_start_0
    invoke-static {p0, p1, p2, v0}, Lcom/color/inner/content/pm/PackageManagerWrapper;->deleteApplicationCacheFilesAsUser(Landroid/content/Context;Ljava/lang/String;ILcom/color/inner/content/pm/PackageManagerWrapper$IPackageDataObserverWrapper;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    goto :goto_0

    .line 580
    :catch_0
    move-exception v1

    .line 581
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "PackageManagerNative"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public static deleteApplicationCacheFilesAsUser(Ljava/lang/String;ILcom/heytap/compat/content/pm/IPackageDataObserverNative;)V
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "packageDataObserver"    # Lcom/heytap/compat/content/pm/IPackageDataObserverNative;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "deleteApplicationCacheFilesAsUser"
        type = "epona"
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/System;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 403
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 404
    new-instance v0, Lcom/heytap/epona/Request$Builder;

    invoke-direct {v0}, Lcom/heytap/epona/Request$Builder;-><init>()V

    const-string v2, "android.content.pm.PackageManager"

    .line 405
    invoke-virtual {v0, v2}, Lcom/heytap/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v2, "deleteApplicationCacheFilesAsUser"

    .line 406
    invoke-virtual {v0, v2}, Lcom/heytap/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v2, "packageName"

    .line 407
    invoke-virtual {v0, v2, p0}, Lcom/heytap/epona/Request$Builder;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v2, "userId"

    .line 408
    invoke-virtual {v0, v2, p1}, Lcom/heytap/epona/Request$Builder;->withInt(Ljava/lang/String;I)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    .line 409
    invoke-virtual {v0}, Lcom/heytap/epona/Request$Builder;->build()Lcom/heytap/epona/Request;

    move-result-object v0

    .line 410
    .local v0, "request":Lcom/heytap/epona/Request;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 411
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v3, "packageDataObserver"

    new-instance v4, Lcom/heytap/compat/content/pm/PackageManagerNative$PackageDataObserver;

    invoke-direct {v4, p2, v1}, Lcom/heytap/compat/content/pm/PackageManagerNative$PackageDataObserver;-><init>(Lcom/heytap/compat/content/pm/IPackageDataObserverNative;Lcom/heytap/compat/content/pm/PackageManagerNative$1;)V

    invoke-virtual {v4}, Lcom/heytap/compat/content/pm/PackageManagerNative$PackageDataObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 412
    invoke-virtual {v0, v2}, Lcom/heytap/epona/Request;->putBundle(Landroid/os/Bundle;)V

    .line 413
    invoke-static {v0}, Lcom/heytap/epona/Epona;->newCall(Lcom/heytap/epona/Request;)Lcom/heytap/epona/internal/RealCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heytap/epona/internal/RealCall;->execute()Lcom/heytap/epona/Response;

    .line 414
    .end local v0    # "request":Lcom/heytap/epona/Request;
    .end local v2    # "bundle":Landroid/os/Bundle;
    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 415
    new-instance v0, Lcom/heytap/compat/content/pm/PackageManagerNative$PackageDataObserver;

    invoke-direct {v0, p2, v1}, Lcom/heytap/compat/content/pm/PackageManagerNative$PackageDataObserver;-><init>(Lcom/heytap/compat/content/pm/IPackageDataObserverNative;Lcom/heytap/compat/content/pm/PackageManagerNative$1;)V

    .line 416
    invoke-virtual {v0}, Lcom/heytap/compat/content/pm/PackageManagerNative$PackageDataObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 415
    invoke-static {v0}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v0

    .line 417
    .local v0, "observer":Landroid/content/pm/IPackageDataObserver;
    invoke-static {}, Lcom/heytap/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 418
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p0, p1, v0}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFilesAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V

    .line 419
    .end local v0    # "observer":Landroid/content/pm/IPackageDataObserver;
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    nop

    .line 422
    :goto_0
    return-void

    .line 420
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before Q"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static deletePackage(Landroid/content/Context;Ljava/lang/String;Lcom/heytap/compat/content/pm/IPackageDeleteObserverNative;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "observer"    # Lcom/heytap/compat/content/pm/IPackageDeleteObserverNative;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "flags"    # I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "deletePackage"
        type = "epona"
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/System;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 174
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    new-instance v0, Lcom/heytap/epona/Request$Builder;

    invoke-direct {v0}, Lcom/heytap/epona/Request$Builder;-><init>()V

    const-string v1, "android.content.pm.PackageManager"

    .line 176
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "deletePackage"

    .line 177
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "packageName"

    .line 178
    invoke-virtual {v0, v1, p1}, Lcom/heytap/epona/Request$Builder;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "flags"

    .line 179
    invoke-virtual {v0, v1, p3}, Lcom/heytap/epona/Request$Builder;->withInt(Ljava/lang/String;I)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "uid"

    .line 180
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/heytap/epona/Request$Builder;->withInt(Ljava/lang/String;I)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "pid"

    .line 181
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/heytap/epona/Request$Builder;->withInt(Ljava/lang/String;I)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Lcom/heytap/epona/Request$Builder;->build()Lcom/heytap/epona/Request;

    move-result-object v0

    .line 184
    .local v0, "request":Lcom/heytap/epona/Request;
    new-instance v1, Lcom/heytap/compat/content/pm/PackageManagerNative$1;

    invoke-direct {v1, p2}, Lcom/heytap/compat/content/pm/PackageManagerNative$1;-><init>(Lcom/heytap/compat/content/pm/IPackageDeleteObserverNative;)V

    .line 195
    .local v1, "callback":Lcom/heytap/epona/Call$Callback;
    invoke-static {v0}, Lcom/heytap/epona/Epona;->newCall(Lcom/heytap/epona/Request;)Lcom/heytap/epona/internal/RealCall;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/heytap/epona/internal/RealCall;->asyncExecute(Lcom/heytap/epona/Call$Callback;)V

    .line 196
    .end local v0    # "request":Lcom/heytap/epona/Request;
    .end local v1    # "callback":Lcom/heytap/epona/Call$Callback;
    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 197
    const/4 v0, 0x0

    .line 198
    .local v0, "packageDeleteObserverWrapper":Lcom/color/inner/content/pm/PackageManagerWrapper$IPackageDeleteObserverWrapper;
    if-eqz p2, :cond_1

    .line 199
    new-instance v1, Lcom/heytap/compat/content/pm/PackageManagerNative$2;

    invoke-direct {v1, p2}, Lcom/heytap/compat/content/pm/PackageManagerNative$2;-><init>(Lcom/heytap/compat/content/pm/IPackageDeleteObserverNative;)V

    move-object v0, v1

    .line 206
    :cond_1
    invoke-static {p0, p1, v0, p3}, Lcom/color/inner/content/pm/PackageManagerWrapper;->deletePackage(Landroid/content/Context;Ljava/lang/String;Lcom/color/inner/content/pm/PackageManagerWrapper$IPackageDeleteObserverWrapper;I)V

    .line 207
    .end local v0    # "packageDeleteObserverWrapper":Lcom/color/inner/content/pm/PackageManagerWrapper$IPackageDeleteObserverWrapper;
    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isL()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 208
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 209
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    invoke-static {p2}, Lcom/heytap/compat/content/pm/PackageManagerNative;->createPackageDeleteObserver(Lcom/heytap/compat/content/pm/IPackageDeleteObserverNative;)Landroid/content/pm/IPackageDeleteObserver$Stub;

    move-result-object v1

    .line 210
    .local v1, "iPackageDeleteObserver":Landroid/content/pm/IPackageDeleteObserver$Stub;
    invoke-virtual {v0, p1, v1, p3}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 211
    .end local v0    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v1    # "iPackageDeleteObserver":Landroid/content/pm/IPackageDeleteObserver$Stub;
    nop

    .line 214
    :goto_0
    return-void

    .line 212
    :cond_3
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "Not Supported Before L"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static deletePackageAsUser(Ljava/lang/String;Lcom/heytap/compat/content/pm/IPackageDeleteObserverNative;II)V
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "observer"    # Lcom/heytap/compat/content/pm/IPackageDeleteObserverNative;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "deletePackageAsUser"
        type = "epona"
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/System;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 236
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    new-instance v0, Lcom/heytap/epona/Request$Builder;

    invoke-direct {v0}, Lcom/heytap/epona/Request$Builder;-><init>()V

    const-string v1, "android.content.pm.PackageManager"

    .line 238
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "deletePackageAsUser"

    .line 239
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "packageName"

    .line 240
    invoke-virtual {v0, v1, p0}, Lcom/heytap/epona/Request$Builder;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "flags"

    .line 241
    invoke-virtual {v0, v1, p2}, Lcom/heytap/epona/Request$Builder;->withInt(Ljava/lang/String;I)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "userId"

    .line 242
    invoke-virtual {v0, v1, p3}, Lcom/heytap/epona/Request$Builder;->withInt(Ljava/lang/String;I)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "uid"

    .line 243
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/heytap/epona/Request$Builder;->withInt(Ljava/lang/String;I)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "pid"

    .line 244
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/heytap/epona/Request$Builder;->withInt(Ljava/lang/String;I)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    .line 245
    invoke-virtual {v0}, Lcom/heytap/epona/Request$Builder;->build()Lcom/heytap/epona/Request;

    move-result-object v0

    .line 247
    .local v0, "request":Lcom/heytap/epona/Request;
    new-instance v1, Lcom/heytap/compat/content/pm/PackageManagerNative$4;

    invoke-direct {v1, p1}, Lcom/heytap/compat/content/pm/PackageManagerNative$4;-><init>(Lcom/heytap/compat/content/pm/IPackageDeleteObserverNative;)V

    .line 258
    .local v1, "callback":Lcom/heytap/epona/Call$Callback;
    invoke-static {v0}, Lcom/heytap/epona/Epona;->newCall(Lcom/heytap/epona/Request;)Lcom/heytap/epona/internal/RealCall;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/heytap/epona/internal/RealCall;->asyncExecute(Lcom/heytap/epona/Call$Callback;)V

    .line 259
    .end local v0    # "request":Lcom/heytap/epona/Request;
    .end local v1    # "callback":Lcom/heytap/epona/Call$Callback;
    goto :goto_3

    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 260
    invoke-static {}, Lcom/heytap/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 262
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x0

    .line 263
    .local v1, "packageDeleteObserverWrapper":Lcom/color/inner/content/pm/PackageManagerWrapper$IPackageDeleteObserverWrapper;
    if-eqz p1, :cond_1

    .line 264
    :try_start_0
    new-instance v2, Lcom/heytap/compat/content/pm/PackageManagerNative$5;

    invoke-direct {v2, p1}, Lcom/heytap/compat/content/pm/PackageManagerNative$5;-><init>(Lcom/heytap/compat/content/pm/IPackageDeleteObserverNative;)V

    move-object v1, v2

    goto :goto_0

    .line 273
    .end local v1    # "packageDeleteObserverWrapper":Lcom/color/inner/content/pm/PackageManagerWrapper$IPackageDeleteObserverWrapper;
    :catch_0
    move-exception v1

    goto :goto_1

    .line 272
    .restart local v1    # "packageDeleteObserverWrapper":Lcom/color/inner/content/pm/PackageManagerWrapper$IPackageDeleteObserverWrapper;
    :cond_1
    :goto_0
    invoke-static {v0, p0, v1, p2, p3}, Lcom/color/inner/content/pm/PackageManagerWrapper;->deletePackageAsUser(Landroid/content/Context;Ljava/lang/String;Lcom/color/inner/content/pm/PackageManagerWrapper$IPackageDeleteObserverWrapper;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    .end local v1    # "packageDeleteObserverWrapper":Lcom/color/inner/content/pm/PackageManagerWrapper$IPackageDeleteObserverWrapper;
    goto :goto_2

    .line 273
    :goto_1
    nop

    .line 274
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "PackageManagerNative"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_2
    nop

    .line 279
    :goto_3
    return-void

    .line 277
    :cond_2
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "Not Supported Before Q"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getApplicationEnabledSetting(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "getApplicationEnabledSetting"
        type = "epona"
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/System;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 362
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    new-instance v0, Lcom/heytap/epona/Request$Builder;

    invoke-direct {v0}, Lcom/heytap/epona/Request$Builder;-><init>()V

    const-string v1, "android.content.pm.PackageManager"

    .line 364
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "getApplicationEnabledSetting"

    .line 365
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "packageName"

    .line 366
    invoke-virtual {v0, v1, p1}, Lcom/heytap/epona/Request$Builder;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    .line 367
    invoke-virtual {v0}, Lcom/heytap/epona/Request$Builder;->build()Lcom/heytap/epona/Request;

    move-result-object v0

    .line 368
    .local v0, "request":Lcom/heytap/epona/Request;
    invoke-static {v0}, Lcom/heytap/epona/Epona;->newCall(Lcom/heytap/epona/Request;)Lcom/heytap/epona/internal/RealCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heytap/epona/internal/RealCall;->execute()Lcom/heytap/epona/Response;

    move-result-object v1

    .line 369
    .local v1, "response":Lcom/heytap/epona/Response;
    invoke-virtual {v1}, Lcom/heytap/epona/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 370
    invoke-virtual {v1}, Lcom/heytap/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "result"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 372
    :cond_0
    const-string v2, "PackageManagerNative"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "response error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/heytap/epona/Response;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const/4 v2, 0x0

    return v2

    .line 375
    .end local v0    # "request":Lcom/heytap/epona/Request;
    .end local v1    # "response":Lcom/heytap/epona/Response;
    :cond_1
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isL()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 376
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 378
    :cond_2
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "Not Supported Before L"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getHomeActivities(Landroid/content/pm/PackageManager;Ljava/util/List;)Landroid/content/ComponentName;
    .locals 4
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1c
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    .line 588
    .local p1, "outActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .line 590
    .local v0, "result":Landroid/content/ComponentName;
    :try_start_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 591
    invoke-static {p0, p1}, Lcom/color/inner/content/pm/PackageManagerWrapper;->getHomeActivities(Landroid/content/pm/PackageManager;Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 592
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isP()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 593
    invoke-static {}, Lcom/heytap/compat/content/pm/PackageManagerNative$ReflectInfo;->access$200()Lcom/heytap/reflect/RefMethod;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, p0, v2}, Lcom/heytap/reflect/RefMethod;->callWithException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    move-object v0, v1

    .line 599
    :goto_0
    goto :goto_1

    .line 595
    :cond_1
    new-instance v1, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    :catch_0
    move-exception v1

    .line 598
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "PackageManagerNative"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_1
    return-object v0
.end method

.method public static getInstalledApplicationsAsUser(Landroid/content/pm/PackageManager;II)Ljava/util/List;
    .locals 1
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "flags"    # I
    .param p2, "userId"    # I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 498
    invoke-static {p0, p1, p2}, Lcom/color/inner/content/pm/PackageManagerWrapper;->getInstalledApplicationsAsUser(Landroid/content/pm/PackageManager;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "flags"    # I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "getPackageInfo"
        type = "epona"
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/System;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;,
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 429
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->appPlatformExists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 430
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    invoke-static {}, Lcom/heytap/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0

    .line 433
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before R"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 437
    :cond_1
    new-instance v0, Lcom/heytap/epona/Request$Builder;

    invoke-direct {v0}, Lcom/heytap/epona/Request$Builder;-><init>()V

    const-string v1, "android.content.pm.PackageManager"

    .line 438
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "getPackageInfo"

    .line 439
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "packageName"

    .line 440
    invoke-virtual {v0, v1, p0}, Lcom/heytap/epona/Request$Builder;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "flags"

    .line 441
    invoke-virtual {v0, v1, p1}, Lcom/heytap/epona/Request$Builder;->withInt(Ljava/lang/String;I)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    .line 442
    invoke-virtual {v0}, Lcom/heytap/epona/Request$Builder;->build()Lcom/heytap/epona/Request;

    move-result-object v0

    .line 444
    .local v0, "request":Lcom/heytap/epona/Request;
    invoke-static {v0}, Lcom/heytap/epona/Epona;->newCall(Lcom/heytap/epona/Request;)Lcom/heytap/epona/internal/RealCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heytap/epona/internal/RealCall;->execute()Lcom/heytap/epona/Response;

    move-result-object v1

    .line 445
    .local v1, "response":Lcom/heytap/epona/Response;
    invoke-virtual {v1}, Lcom/heytap/epona/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 446
    invoke-virtual {v1}, Lcom/heytap/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "result"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    return-object v2

    .line 448
    :cond_2
    const-class v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {v1, v2}, Lcom/heytap/epona/Response;->checkThrowable(Ljava/lang/Class;)V

    .line 449
    const/4 v2, 0x0

    return-object v2
.end method

.method public static getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "flags"    # I
    .param p2, "userId"    # I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "getPackageInfoAsUser"
        type = "epona"
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/System;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;,
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 313
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    new-instance v0, Lcom/heytap/epona/Request$Builder;

    invoke-direct {v0}, Lcom/heytap/epona/Request$Builder;-><init>()V

    const-string v1, "android.content.pm.PackageManager"

    .line 315
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "getPackageInfoAsUser"

    .line 316
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "packageName"

    .line 317
    invoke-virtual {v0, v1, p0}, Lcom/heytap/epona/Request$Builder;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "flags"

    .line 318
    invoke-virtual {v0, v1, p1}, Lcom/heytap/epona/Request$Builder;->withInt(Ljava/lang/String;I)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "userId"

    .line 319
    invoke-virtual {v0, v1, p2}, Lcom/heytap/epona/Request$Builder;->withInt(Ljava/lang/String;I)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    .line 320
    invoke-virtual {v0}, Lcom/heytap/epona/Request$Builder;->build()Lcom/heytap/epona/Request;

    move-result-object v0

    .line 321
    .local v0, "request":Lcom/heytap/epona/Request;
    invoke-static {v0}, Lcom/heytap/epona/Epona;->newCall(Lcom/heytap/epona/Request;)Lcom/heytap/epona/internal/RealCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heytap/epona/internal/RealCall;->execute()Lcom/heytap/epona/Response;

    move-result-object v1

    .line 322
    .local v1, "response":Lcom/heytap/epona/Response;
    invoke-virtual {v1}, Lcom/heytap/epona/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 323
    invoke-virtual {v1}, Lcom/heytap/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "result"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    return-object v2

    .line 325
    :cond_0
    const-class v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {v1, v2}, Lcom/heytap/epona/Response;->checkThrowable(Ljava/lang/Class;)V

    .line 326
    const-string v2, "PackageManagerNative"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "response error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/heytap/epona/Response;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const/4 v2, 0x0

    return-object v2

    .line 330
    .end local v0    # "request":Lcom/heytap/epona/Request;
    .end local v1    # "response":Lcom/heytap/epona/Response;
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before R"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getUxIconDrawable(Landroid/content/pm/PackageManager;Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "src"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isForegroundDrawable"    # Z
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation

    .line 626
    const/4 v0, 0x0

    .line 628
    .local v0, "result":Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/color/inner/content/pm/PackageManagerWrapper;->getUxIconDrawable(Landroid/content/pm/PackageManager;Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 631
    goto :goto_0

    .line 629
    :catch_0
    move-exception v1

    .line 630
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PackageManagerNative"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public static getUxIconDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "src"    # Landroid/graphics/drawable/Drawable;
    .param p3, "isForegroundDrawable"    # Z
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation

    .line 645
    move-object v0, p2

    .line 647
    .local v0, "result":Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/color/inner/content/pm/PackageManagerWrapper;->getUxIconDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 650
    goto :goto_0

    .line 648
    :catch_0
    move-exception v1

    .line 649
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "PackageManagerNative"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    return-object v0
.end method

.method public static grantRuntimePermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "userHandle"    # Landroid/os/UserHandle;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "grantRuntimePermission"
        type = "epona"
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/System;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 146
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    new-instance v0, Lcom/heytap/epona/Request$Builder;

    invoke-direct {v0}, Lcom/heytap/epona/Request$Builder;-><init>()V

    const-string v1, "android.content.pm.PackageManager"

    .line 148
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "grantRuntimePermission"

    .line 149
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "packageName"

    .line 150
    invoke-virtual {v0, v1, p1}, Lcom/heytap/epona/Request$Builder;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "permName"

    .line 151
    invoke-virtual {v0, v1, p2}, Lcom/heytap/epona/Request$Builder;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "userHandle"

    .line 152
    invoke-virtual {v0, v1, p3}, Lcom/heytap/epona/Request$Builder;->withParcelable(Ljava/lang/String;Landroid/os/Parcelable;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Lcom/heytap/epona/Request$Builder;->build()Lcom/heytap/epona/Request;

    move-result-object v0

    .line 154
    .local v0, "request":Lcom/heytap/epona/Request;
    invoke-static {v0}, Lcom/heytap/epona/Epona;->newCall(Lcom/heytap/epona/Request;)Lcom/heytap/epona/internal/RealCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heytap/epona/internal/RealCall;->execute()Lcom/heytap/epona/Response;

    .line 155
    .end local v0    # "request":Lcom/heytap/epona/Request;
    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 157
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    invoke-static {v0, p1, p2, p3}, Lcom/color/inner/content/pm/PackageManagerWrapper;->grantRuntimePermission(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 158
    .end local v0    # "packageManager":Landroid/content/pm/PackageManager;
    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isM()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 160
    .restart local v0    # "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 161
    .end local v0    # "packageManager":Landroid/content/pm/PackageManager;
    nop

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not Supported Before M"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static installExistingPackageAsUser(Ljava/lang/String;II)I
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "installReason"    # I
    .param p2, "userId"    # I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .line 467
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/color/inner/content/pm/PackageManagerWrapper;->installExistingPackageAsUser(Ljava/lang/String;II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 468
    :catch_0
    move-exception v0

    .line 469
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "PackageManagerNative"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    .end local v0    # "e":Ljava/lang/Throwable;
    sget v0, Lcom/heytap/compat/content/pm/PackageManagerNative;->INSTALL_FAILED_INVALID_URI:I

    return v0
.end method

.method public static installPackage(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Landroid/net/Uri;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/System;
    .end annotation

    .line 386
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->appPlatformExists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 387
    const-string v0, "content://com.oneplus.gameinstaller.InstallProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 388
    .local v0, "installUri":Landroid/net/Uri;
    const-string v1, "com.oneplus.gameinstaller"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, p1, v2}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 390
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 391
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "apkUri"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 392
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "silentInstall"

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 394
    .end local v0    # "installUri":Landroid/net/Uri;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public static movePackage(Landroid/content/pm/PackageManager;Ljava/lang/String;Lcom/heytap/compat/os/storage/VolumeInfoNative;)I
    .locals 4
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "vol"    # Lcom/heytap/compat/os/storage/VolumeInfoNative;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 658
    :try_start_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 659
    invoke-virtual {p2}, Lcom/heytap/compat/os/storage/VolumeInfoNative;->getVolumeInfoWrapper()Lcom/color/inner/os/storage/VolumeInfoWrapper;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/color/inner/content/pm/PackageManagerWrapper;->movePackage(Landroid/content/pm/PackageManager;Ljava/lang/String;Lcom/color/inner/os/storage/VolumeInfoWrapper;)I

    move-result v0

    return v0

    .line 660
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isL()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 661
    invoke-static {}, Lcom/heytap/compat/content/pm/PackageManagerNative$ReflectInfo;->access$300()Lcom/heytap/reflect/RefMethod;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p2}, Lcom/heytap/compat/os/storage/VolumeInfoNative;->getVolumeInfo()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/heytap/reflect/RefMethod;->callWithException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 663
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "Not supported before L"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    :catch_0
    move-exception v0

    .line 666
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v1, v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "flags"    # I
    .param p2, "userId"    # I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "queryIntentActivities"
        type = "epona"
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/System;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 287
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    new-instance v0, Lcom/heytap/epona/Request$Builder;

    invoke-direct {v0}, Lcom/heytap/epona/Request$Builder;-><init>()V

    const-string v1, "android.content.pm.PackageManager"

    .line 289
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "queryIntentActivities"

    .line 290
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "intent"

    .line 291
    invoke-virtual {v0, v1, p0}, Lcom/heytap/epona/Request$Builder;->withParcelable(Ljava/lang/String;Landroid/os/Parcelable;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "flags"

    .line 292
    invoke-virtual {v0, v1, p1}, Lcom/heytap/epona/Request$Builder;->withInt(Ljava/lang/String;I)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "userId"

    .line 293
    invoke-virtual {v0, v1, p2}, Lcom/heytap/epona/Request$Builder;->withInt(Ljava/lang/String;I)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    .line 294
    invoke-virtual {v0}, Lcom/heytap/epona/Request$Builder;->build()Lcom/heytap/epona/Request;

    move-result-object v0

    .line 295
    .local v0, "request":Lcom/heytap/epona/Request;
    invoke-static {v0}, Lcom/heytap/epona/Epona;->newCall(Lcom/heytap/epona/Request;)Lcom/heytap/epona/internal/RealCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heytap/epona/internal/RealCall;->execute()Lcom/heytap/epona/Response;

    move-result-object v1

    .line 296
    .local v1, "response":Lcom/heytap/epona/Response;
    invoke-virtual {v1}, Lcom/heytap/epona/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 297
    invoke-virtual {v1}, Lcom/heytap/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "result"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    return-object v2

    .line 299
    :cond_0
    const-string v2, "PackageManagerNative"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "response error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/heytap/epona/Response;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const/4 v2, 0x0

    return-object v2

    .line 303
    .end local v0    # "request":Lcom/heytap/epona/Request;
    .end local v1    # "response":Lcom/heytap/epona/Response;
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before R"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setApplicationEnabledSetting(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newState"    # I
    .param p3, "flags"    # I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "setApplicationEnabledSetting"
        type = "epona"
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/System;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 340
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    new-instance v0, Lcom/heytap/epona/Request$Builder;

    invoke-direct {v0}, Lcom/heytap/epona/Request$Builder;-><init>()V

    const-string v1, "android.content.pm.PackageManager"

    .line 342
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "setApplicationEnabledSetting"

    .line 343
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "packageName"

    .line 344
    invoke-virtual {v0, v1, p1}, Lcom/heytap/epona/Request$Builder;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "newState"

    .line 345
    invoke-virtual {v0, v1, p2}, Lcom/heytap/epona/Request$Builder;->withInt(Ljava/lang/String;I)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "flags"

    .line 346
    invoke-virtual {v0, v1, p3}, Lcom/heytap/epona/Request$Builder;->withInt(Ljava/lang/String;I)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    .line 347
    invoke-virtual {v0}, Lcom/heytap/epona/Request$Builder;->build()Lcom/heytap/epona/Request;

    move-result-object v0

    .line 348
    .local v0, "request":Lcom/heytap/epona/Request;
    invoke-static {v0}, Lcom/heytap/epona/Epona;->newCall(Lcom/heytap/epona/Request;)Lcom/heytap/epona/internal/RealCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heytap/epona/internal/RealCall;->execute()Lcom/heytap/epona/Response;

    .line 349
    .end local v0    # "request":Lcom/heytap/epona/Request;
    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isL()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 354
    :goto_0
    return-void

    .line 352
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "Not Supported Before L"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setDistractingPackageRestrictions(Landroid/content/Context;[Ljava/lang/String;I)[Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packages"    # [Ljava/lang/String;
    .param p2, "restrictionFlags"    # I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "setDistractingPackageRestrictionsAsUser"
        type = "epona"
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/System;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 119
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    new-instance v0, Lcom/heytap/epona/Request$Builder;

    invoke-direct {v0}, Lcom/heytap/epona/Request$Builder;-><init>()V

    const-string v1, "android.content.pm.PackageManager"

    .line 121
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "setDistractingPackageRestrictionsAsUser"

    .line 122
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "packages"

    .line 123
    invoke-virtual {v0, v1, p1}, Lcom/heytap/epona/Request$Builder;->withStringArray(Ljava/lang/String;[Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "restrictionFlags"

    .line 124
    invoke-virtual {v0, v1, p2}, Lcom/heytap/epona/Request$Builder;->withInt(Ljava/lang/String;I)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lcom/heytap/epona/Request$Builder;->build()Lcom/heytap/epona/Request;

    move-result-object v0

    .line 126
    .local v0, "request":Lcom/heytap/epona/Request;
    invoke-static {v0}, Lcom/heytap/epona/Epona;->newCall(Lcom/heytap/epona/Request;)Lcom/heytap/epona/internal/RealCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heytap/epona/internal/RealCall;->execute()Lcom/heytap/epona/Response;

    move-result-object v1

    .line 127
    .local v1, "response":Lcom/heytap/epona/Response;
    invoke-virtual {v1}, Lcom/heytap/epona/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    invoke-virtual {v1}, Lcom/heytap/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "result"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 130
    :cond_0
    const-string v2, "PackageManagerNative"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "response error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/heytap/epona/Response;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v2, 0x0

    return-object v2

    .line 133
    .end local v0    # "request":Lcom/heytap/epona/Request;
    .end local v1    # "response":Lcom/heytap/epona/Response;
    :cond_1
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 135
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->setDistractingPackageRestrictions([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 137
    .end local v0    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_2
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "Not Supported Before Q"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
