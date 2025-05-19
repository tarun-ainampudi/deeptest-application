.class public Lcom/heytap/compat/net/ConnectivityManagerNative;
.super Ljava/lang/Object;
.source "ConnectivityManagerNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/compat/net/ConnectivityManagerNative$OnStartTetheringCallbackNative;
    }
.end annotation


# static fields
.field private static final ACTION:Ljava/lang/String; = "action"

.field private static final COMPONENT_NAME:Ljava/lang/String; = "android.net.ConnectivityManager"

.field private static final CONSTANT_TETHERING_WIFI:Ljava/lang/String; = "TETHERING_WIFI"

.field private static final TAG:Ljava/lang/String; = "ConnectivityManagerNative"

.field public static TETHERING_WIFI:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "getConstant"
        type = "epona"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 40
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    new-instance v0, Lcom/heytap/epona/Request$Builder;

    invoke-direct {v0}, Lcom/heytap/epona/Request$Builder;-><init>()V

    const-string v1, "android.net.ConnectivityManager"

    .line 42
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "getConstant"

    .line 43
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/heytap/epona/Request$Builder;->build()Lcom/heytap/epona/Request;

    move-result-object v0

    .line 45
    .local v0, "request":Lcom/heytap/epona/Request;
    invoke-static {v0}, Lcom/heytap/epona/Epona;->newCall(Lcom/heytap/epona/Request;)Lcom/heytap/epona/internal/RealCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heytap/epona/internal/RealCall;->execute()Lcom/heytap/epona/Response;

    move-result-object v1

    .line 46
    .local v1, "response":Lcom/heytap/epona/Response;
    invoke-virtual {v1}, Lcom/heytap/epona/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    invoke-virtual {v1}, Lcom/heytap/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "TETHERING_WIFI"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/heytap/compat/net/ConnectivityManagerNative;->TETHERING_WIFI:I

    goto :goto_0

    .line 49
    :cond_0
    const-string v2, "ConnectivityManagerNative"

    const-string v3, "Epona Communication failed, static initializer failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .end local v0    # "request":Lcom/heytap/epona/Request;
    .end local v1    # "response":Lcom/heytap/epona/Response;
    :goto_0
    goto :goto_1

    .line 52
    :cond_1
    const-string v0, "ConnectivityManagerNative"

    const-string v1, "Not supported before R"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :goto_1
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static readArpFile(Landroid/net/ConnectivityManager;)Ljava/util/List;
    .locals 1
    .param p0, "connectivityManager"    # Landroid/net/ConnectivityManager;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/ConnectivityManager;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 224
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    invoke-static {p0}, Lcom/color/inner/net/ConnectivityManagerWrapper;->readArpFile(Landroid/net/ConnectivityManager;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 227
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public static setAirplaneMode(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "setAirplaneMode"
        type = "epona"
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/System;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 60
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    new-instance v0, Lcom/heytap/epona/Request$Builder;

    invoke-direct {v0}, Lcom/heytap/epona/Request$Builder;-><init>()V

    const-string v1, "android.net.ConnectivityManager"

    .line 62
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "setAirplaneMode"

    .line 63
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "enable"

    .line 64
    invoke-virtual {v0, v1, p1}, Lcom/heytap/epona/Request$Builder;->withBoolean(Ljava/lang/String;Z)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/heytap/epona/Request$Builder;->build()Lcom/heytap/epona/Request;

    move-result-object v0

    .line 66
    .local v0, "request":Lcom/heytap/epona/Request;
    invoke-static {v0}, Lcom/heytap/epona/Epona;->newCall(Lcom/heytap/epona/Request;)Lcom/heytap/epona/internal/RealCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heytap/epona/internal/RealCall;->execute()Lcom/heytap/epona/Response;

    move-result-object v1

    .line 67
    .local v1, "response":Lcom/heytap/epona/Response;
    invoke-virtual {v1}, Lcom/heytap/epona/Response;->isSuccessful()Z

    move-result v2

    if-nez v2, :cond_0

    .line 68
    const-string v2, "ConnectivityManagerNative"

    const-string v3, "setAirplaneMode: call failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .end local v0    # "request":Lcom/heytap/epona/Request;
    .end local v1    # "response":Lcom/heytap/epona/Response;
    :cond_0
    nop

    .line 73
    return-void

    .line 71
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "Not Supported Before R"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static startTethering(IZLcom/heytap/compat/net/ConnectivityManagerNative$OnStartTetheringCallbackNative;)V
    .locals 3
    .param p0, "type"    # I
    .param p1, "showProvisioningUi"    # Z
    .param p2, "onStartTetheringCallbackNative"    # Lcom/heytap/compat/net/ConnectivityManagerNative$OnStartTetheringCallbackNative;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "startTethering"
        type = "epona"
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/System;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 114
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    new-instance v0, Lcom/heytap/epona/Request$Builder;

    invoke-direct {v0}, Lcom/heytap/epona/Request$Builder;-><init>()V

    const-string v1, "android.net.ConnectivityManager"

    .line 116
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "startTethering"

    .line 117
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "type"

    .line 118
    invoke-virtual {v0, v1, p0}, Lcom/heytap/epona/Request$Builder;->withInt(Ljava/lang/String;I)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "showProvisioningUi"

    .line 119
    invoke-virtual {v0, v1, p1}, Lcom/heytap/epona/Request$Builder;->withBoolean(Ljava/lang/String;Z)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Lcom/heytap/epona/Request$Builder;->build()Lcom/heytap/epona/Request;

    move-result-object v0

    .line 121
    .local v0, "request":Lcom/heytap/epona/Request;
    if-eqz p2, :cond_0

    .line 122
    new-instance v1, Lcom/heytap/compat/net/ConnectivityManagerNative$1;

    invoke-direct {v1, p2}, Lcom/heytap/compat/net/ConnectivityManagerNative$1;-><init>(Lcom/heytap/compat/net/ConnectivityManagerNative$OnStartTetheringCallbackNative;)V

    .line 152
    .local v1, "callback":Lcom/heytap/epona/Call$Callback;
    invoke-static {v0}, Lcom/heytap/epona/Epona;->newCall(Lcom/heytap/epona/Request;)Lcom/heytap/epona/internal/RealCall;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/heytap/epona/internal/RealCall;->asyncExecute(Lcom/heytap/epona/Call$Callback;)V

    .line 154
    .end local v0    # "request":Lcom/heytap/epona/Request;
    .end local v1    # "callback":Lcom/heytap/epona/Call$Callback;
    :cond_0
    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isO()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, "onStartTetheringCallback":Landroid/net/ConnectivityManager$OnStartTetheringCallback;
    if-eqz p2, :cond_2

    .line 157
    new-instance v1, Lcom/heytap/compat/net/ConnectivityManagerNative$2;

    invoke-direct {v1, p2}, Lcom/heytap/compat/net/ConnectivityManagerNative$2;-><init>(Lcom/heytap/compat/net/ConnectivityManagerNative$OnStartTetheringCallbackNative;)V

    move-object v0, v1

    .line 170
    :cond_2
    invoke-static {}, Lcom/heytap/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "connectivity"

    .line 171
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 172
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1, p0, p1, v0}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;)V

    .line 173
    .end local v0    # "onStartTetheringCallback":Landroid/net/ConnectivityManager$OnStartTetheringCallback;
    .end local v1    # "connectivityManager":Landroid/net/ConnectivityManager;
    nop

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_3
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "Not Supported Before O"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static startTethering(Landroid/net/ConnectivityManager;IZLcom/heytap/compat/net/ConnectivityManagerNative$OnStartTetheringCallbackNative;Landroid/os/Handler;)V
    .locals 2
    .param p0, "connectivityManager"    # Landroid/net/ConnectivityManager;
    .param p1, "type"    # I
    .param p2, "showProvisioningUi"    # Z
    .param p3, "callback"    # Lcom/heytap/compat/net/ConnectivityManagerNative$OnStartTetheringCallbackNative;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 183
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, "onStartTetheringCallbackWrapper":Lcom/color/inner/net/ConnectivityManagerWrapper$OnStartTetheringCallbackWrapper;
    if-eqz p3, :cond_0

    .line 186
    new-instance v1, Lcom/heytap/compat/net/ConnectivityManagerNative$3;

    invoke-direct {v1, p3}, Lcom/heytap/compat/net/ConnectivityManagerNative$3;-><init>(Lcom/heytap/compat/net/ConnectivityManagerNative$OnStartTetheringCallbackNative;)V

    move-object v0, v1

    .line 198
    :cond_0
    invoke-static {p0, p1, p2, v0, p4}, Lcom/color/inner/net/ConnectivityManagerWrapper;->startTethering(Landroid/net/ConnectivityManager;IZLcom/color/inner/net/ConnectivityManagerWrapper$OnStartTetheringCallbackWrapper;Landroid/os/Handler;)V

    .line 200
    .end local v0    # "onStartTetheringCallbackWrapper":Lcom/color/inner/net/ConnectivityManagerWrapper$OnStartTetheringCallbackWrapper;
    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isN()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 201
    const/4 v0, 0x0

    .line 202
    .local v0, "onStartTetheringCallback":Landroid/net/ConnectivityManager$OnStartTetheringCallback;
    if-eqz p3, :cond_2

    .line 203
    new-instance v1, Lcom/heytap/compat/net/ConnectivityManagerNative$4;

    invoke-direct {v1, p3}, Lcom/heytap/compat/net/ConnectivityManagerNative$4;-><init>(Lcom/heytap/compat/net/ConnectivityManagerNative$OnStartTetheringCallbackNative;)V

    move-object v0, v1

    .line 215
    :cond_2
    invoke-virtual {p0, p1, p2, v0, p4}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;Landroid/os/Handler;)V

    .line 216
    .end local v0    # "onStartTetheringCallback":Landroid/net/ConnectivityManager$OnStartTetheringCallback;
    nop

    .line 219
    :goto_0
    return-void

    .line 217
    :cond_3
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public static stopTethering(I)V
    .locals 4
    .param p0, "type"    # I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "stopTethering"
        type = "epona"
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/System;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 79
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    new-instance v0, Lcom/heytap/epona/Request$Builder;

    invoke-direct {v0}, Lcom/heytap/epona/Request$Builder;-><init>()V

    const-string v1, "android.net.ConnectivityManager"

    .line 81
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "stopTethering"

    .line 82
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "type"

    .line 83
    invoke-virtual {v0, v1, p0}, Lcom/heytap/epona/Request$Builder;->withInt(Ljava/lang/String;I)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/heytap/epona/Request$Builder;->build()Lcom/heytap/epona/Request;

    move-result-object v0

    .line 85
    .local v0, "request":Lcom/heytap/epona/Request;
    invoke-static {v0}, Lcom/heytap/epona/Epona;->newCall(Lcom/heytap/epona/Request;)Lcom/heytap/epona/internal/RealCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heytap/epona/internal/RealCall;->execute()Lcom/heytap/epona/Response;

    move-result-object v1

    .line 86
    .local v1, "response":Lcom/heytap/epona/Response;
    invoke-virtual {v1}, Lcom/heytap/epona/Response;->isSuccessful()Z

    move-result v2

    if-nez v2, :cond_0

    .line 87
    const-string v2, "ConnectivityManagerNative"

    const-string v3, "stopTethering is not connected with Epona"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .end local v0    # "request":Lcom/heytap/epona/Request;
    .end local v1    # "response":Lcom/heytap/epona/Response;
    :cond_0
    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    invoke-static {}, Lcom/heytap/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 91
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-static {v0, p0}, Lcom/color/inner/net/ConnectivityManagerWrapper;->stopTethering(Landroid/net/ConnectivityManager;I)V

    .line 92
    .end local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isN()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 93
    invoke-static {}, Lcom/heytap/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 94
    .restart local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    .line 95
    .end local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    nop

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_3
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "Not Supported Before N"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
