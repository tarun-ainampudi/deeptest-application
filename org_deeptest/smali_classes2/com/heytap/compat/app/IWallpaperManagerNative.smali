.class public Lcom/heytap/compat/app/IWallpaperManagerNative;
.super Ljava/lang/Object;
.source "IWallpaperManagerNative.java"


# static fields
.field private static final COMPONENT_NAME:Ljava/lang/String; = "android.app.IWallpaperManager"

.field private static final RESULT:Ljava/lang/String; = "result"

.field private static final TAG:Ljava/lang/String; = "IWallpaperManagerNative"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static getWallpaperWithFeature(Ljava/lang/String;Ljava/lang/String;Landroid/app/IWallpaperManagerCallbackNative;ILandroid/os/Bundle;I)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .param p0, "callingPkg"    # Ljava/lang/String;
    .param p1, "callingFeatureId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/app/IWallpaperManagerCallbackNative;
    .param p3, "which"    # I
    .param p4, "outParams"    # Landroid/os/Bundle;
    .param p5, "wallpaperUserId"    # I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Black;
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "getWallpaperWithFeature"
        type = "epona"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 42
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "callingPkg"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v1, "callingFeatureId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v1, "iWallpaperManagerCallback"

    invoke-interface {p2}, Landroid/app/IWallpaperManagerCallbackNative;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 45
    const-string v1, "which"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 46
    const-string v1, "outParams"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 47
    const-string v1, "wallpaperUserId"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 49
    new-instance v1, Lcom/heytap/epona/Request$Builder;

    invoke-direct {v1}, Lcom/heytap/epona/Request$Builder;-><init>()V

    const-string v2, "android.app.IWallpaperManager"

    .line 50
    invoke-virtual {v1, v2}, Lcom/heytap/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v1

    const-string v2, "getWallpaperWithFeature"

    .line 51
    invoke-virtual {v1, v2}, Lcom/heytap/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v1

    .line 52
    invoke-virtual {v1}, Lcom/heytap/epona/Request$Builder;->build()Lcom/heytap/epona/Request;

    move-result-object v1

    .line 54
    .local v1, "request":Lcom/heytap/epona/Request;
    invoke-virtual {v1, v0}, Lcom/heytap/epona/Request;->putBundle(Landroid/os/Bundle;)V

    .line 55
    invoke-static {v1}, Lcom/heytap/epona/Epona;->newCall(Lcom/heytap/epona/Request;)Lcom/heytap/epona/internal/RealCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/heytap/epona/internal/RealCall;->execute()Lcom/heytap/epona/Response;

    move-result-object v2

    .line 57
    .local v2, "response":Lcom/heytap/epona/Response;
    invoke-virtual {v2}, Lcom/heytap/epona/Response;->isSuccessful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 58
    invoke-virtual {v2}, Lcom/heytap/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "result"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    return-object v3

    .line 60
    :cond_0
    const-string v3, "IWallpaperManagerNative"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getWallpaperWithFeature error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/heytap/epona/Response;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const/4 v3, 0x0

    return-object v3

    .line 63
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "request":Lcom/heytap/epona/Request;
    .end local v2    # "response":Lcom/heytap/epona/Response;
    :cond_1
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, "iWallpaperManager":Landroid/app/IWallpaperManagerCallback$Stub;
    if-eqz p2, :cond_2

    .line 66
    new-instance v1, Lcom/heytap/compat/app/IWallpaperManagerNative$1;

    invoke-direct {v1, p2}, Lcom/heytap/compat/app/IWallpaperManagerNative$1;-><init>(Landroid/app/IWallpaperManagerCallbackNative;)V

    move-object v0, v1

    .line 79
    :cond_2
    const-string v1, "wallpaper"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    .line 80
    .local v7, "iBinder":Landroid/os/IBinder;
    invoke-static {v7}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v8

    .line 81
    .local v8, "service":Landroid/app/IWallpaperManager;
    move-object v1, v8

    move-object v2, p0

    move-object v3, v0

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/app/IWallpaperManager;->getWallpaper(Ljava/lang/String;Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    return-object v1

    .line 83
    .end local v0    # "iWallpaperManager":Landroid/app/IWallpaperManagerCallback$Stub;
    .end local v7    # "iBinder":Landroid/os/IBinder;
    .end local v8    # "service":Landroid/app/IWallpaperManager;
    :cond_3
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before Q"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
