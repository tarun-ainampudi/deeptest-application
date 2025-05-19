.class public Lcom/heytap/compat/net/wifi/p2p/WifiP2pGroupNative;
.super Ljava/lang/Object;
.source "WifiP2pGroupNative.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiP2pGroupNative"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static getNetworkId(Landroid/net/wifi/p2p/WifiP2pGroup;)I
    .locals 1
    .param p0, "wifiP2pGroup"    # Landroid/net/wifi/p2p/WifiP2pGroup;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 20
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    invoke-static {p0}, Lcom/color/inner/net/wifi/p2p/WifiP2pGroupWrapper;->getNetworkId(Landroid/net/wifi/p2p/WifiP2pGroup;)I

    move-result v0

    return v0

    .line 23
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method
