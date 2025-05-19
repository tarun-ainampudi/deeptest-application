.class public Lcom/heytap/compat/net/INetworkStatsSessionNative;
.super Ljava/lang/Object;
.source "INetworkStatsSessionNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/compat/net/INetworkStatsSessionNative$ReflectInnerClass;,
        Lcom/heytap/compat/net/INetworkStatsSessionNative$ReflectInfo;
    }
.end annotation


# static fields
.field private static final COMPONENT_NAME:Ljava/lang/String; = "android.net.INetworkStatsSession"

.field private static final RESULT:Ljava/lang/String; = "result"

.field private static final TAG:Ljava/lang/String; = "INetworkStatsSessionNative"


# instance fields
.field private mINetworkStatsSession:Landroid/net/INetworkStatsSession;

.field private mINetworkStatsSessionWrapper:Lcom/color/inner/net/INetworkStatsSessionWrapper;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heytap/compat/net/INetworkStatsSessionNative;->mINetworkStatsSessionWrapper:Lcom/color/inner/net/INetworkStatsSessionWrapper;

    .line 34
    iput-object v0, p0, Lcom/heytap/compat/net/INetworkStatsSessionNative;->mINetworkStatsSession:Landroid/net/INetworkStatsSession;

    .line 49
    return-void
.end method

.method constructor <init>(Landroid/net/INetworkStatsSession;)V
    .locals 1
    .param p1, "iNetworkStatsSession"    # Landroid/net/INetworkStatsSession;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heytap/compat/net/INetworkStatsSessionNative;->mINetworkStatsSessionWrapper:Lcom/color/inner/net/INetworkStatsSessionWrapper;

    .line 34
    iput-object v0, p0, Lcom/heytap/compat/net/INetworkStatsSessionNative;->mINetworkStatsSession:Landroid/net/INetworkStatsSession;

    .line 59
    iput-object p1, p0, Lcom/heytap/compat/net/INetworkStatsSessionNative;->mINetworkStatsSession:Landroid/net/INetworkStatsSession;

    .line 60
    return-void
.end method

.method constructor <init>(Lcom/color/inner/net/INetworkStatsSessionWrapper;)V
    .locals 1
    .param p1, "iNetworkStatsSessionWrapper"    # Lcom/color/inner/net/INetworkStatsSessionWrapper;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heytap/compat/net/INetworkStatsSessionNative;->mINetworkStatsSessionWrapper:Lcom/color/inner/net/INetworkStatsSessionWrapper;

    .line 34
    iput-object v0, p0, Lcom/heytap/compat/net/INetworkStatsSessionNative;->mINetworkStatsSession:Landroid/net/INetworkStatsSession;

    .line 55
    iput-object p1, p0, Lcom/heytap/compat/net/INetworkStatsSessionNative;->mINetworkStatsSessionWrapper:Lcom/color/inner/net/INetworkStatsSessionWrapper;

    .line 56
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
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

    .line 87
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    return-void

    .line 89
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/heytap/compat/net/INetworkStatsSessionNative;->mINetworkStatsSessionWrapper:Lcom/color/inner/net/INetworkStatsSessionWrapper;

    invoke-virtual {v0}, Lcom/color/inner/net/INetworkStatsSessionWrapper;->close()V

    goto :goto_1

    .line 91
    :cond_1
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isP()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/heytap/compat/net/INetworkStatsSessionNative;->mINetworkStatsSession:Landroid/net/INetworkStatsSession;

    invoke-interface {v0}, Landroid/net/INetworkStatsSession;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "INetworkStatsSessionNative"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 100
    :goto_1
    return-void

    .line 98
    :cond_2
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public getDeviceSummaryForNetwork(Lcom/heytap/compat/net/NetworkTemplateNative;JJ)Lcom/heytap/compat/net/NetworkStatsNative;
    .locals 8
    .param p1, "networkTemplateNative"    # Lcom/heytap/compat/net/NetworkTemplateNative;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1c
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Black;
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "getDeviceSummaryForNetwork"
        type = "epona"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 108
    new-instance v0, Lcom/heytap/epona/Request$Builder;

    invoke-direct {v0}, Lcom/heytap/epona/Request$Builder;-><init>()V

    const-string v2, "android.net.INetworkStatsSession"

    .line 109
    invoke-virtual {v0, v2}, Lcom/heytap/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v2, "getDeviceSummaryForNetwork"

    .line 110
    invoke-virtual {v0, v2}, Lcom/heytap/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v2, "networkTemplate"

    iget-object v3, p1, Lcom/heytap/compat/net/NetworkTemplateNative;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    .line 111
    invoke-virtual {v0, v2, v3}, Lcom/heytap/epona/Request$Builder;->withParcelable(Ljava/lang/String;Landroid/os/Parcelable;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v2, "start"

    .line 112
    invoke-virtual {v0, v2, p2, p3}, Lcom/heytap/epona/Request$Builder;->withLong(Ljava/lang/String;J)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v2, "end"

    .line 113
    invoke-virtual {v0, v2, p4, p5}, Lcom/heytap/epona/Request$Builder;->withLong(Ljava/lang/String;J)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Lcom/heytap/epona/Request$Builder;->build()Lcom/heytap/epona/Request;

    move-result-object v0

    .line 115
    .local v0, "request":Lcom/heytap/epona/Request;
    invoke-static {v0}, Lcom/heytap/epona/Epona;->newCall(Lcom/heytap/epona/Request;)Lcom/heytap/epona/internal/RealCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/heytap/epona/internal/RealCall;->execute()Lcom/heytap/epona/Response;

    move-result-object v2

    .line 116
    .local v2, "response":Lcom/heytap/epona/Response;
    invoke-virtual {v2}, Lcom/heytap/epona/Response;->isSuccessful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    invoke-virtual {v2}, Lcom/heytap/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "result"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkStats;

    .line 118
    .local v1, "networkStats":Landroid/net/NetworkStats;
    new-instance v3, Lcom/heytap/compat/net/NetworkStatsNative;

    invoke-direct {v3, v1}, Lcom/heytap/compat/net/NetworkStatsNative;-><init>(Landroid/net/NetworkStats;)V

    return-object v3

    .line 120
    .end local v0    # "request":Lcom/heytap/epona/Request;
    .end local v1    # "networkStats":Landroid/net/NetworkStats;
    .end local v2    # "response":Lcom/heytap/epona/Response;
    :cond_0
    nop

    .line 136
    return-object v1

    .line 120
    :cond_1
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 121
    iget-object v2, p0, Lcom/heytap/compat/net/INetworkStatsSessionNative;->mINetworkStatsSessionWrapper:Lcom/color/inner/net/INetworkStatsSessionWrapper;

    iget-object v3, p1, Lcom/heytap/compat/net/NetworkTemplateNative;->mNetworkTemplateWrapper:Lcom/color/inner/net/NetworkTemplateWrapper;

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/color/inner/net/INetworkStatsSessionWrapper;->getDeviceSummaryForNetwork(Lcom/color/inner/net/NetworkTemplateWrapper;JJ)Lcom/color/inner/net/NetworkStatsWrapper;

    move-result-object v0

    .line 122
    .local v0, "networkStatsWrapper":Lcom/color/inner/net/NetworkStatsWrapper;
    if-nez v0, :cond_2

    .line 123
    return-object v1

    .line 125
    :cond_2
    new-instance v1, Lcom/heytap/compat/net/NetworkStatsNative;

    invoke-direct {v1, v0}, Lcom/heytap/compat/net/NetworkStatsNative;-><init>(Lcom/color/inner/net/NetworkStatsWrapper;)V

    return-object v1

    .line 126
    .end local v0    # "networkStatsWrapper":Lcom/color/inner/net/NetworkStatsWrapper;
    :cond_3
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isP()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 127
    sget-object v0, Lcom/heytap/compat/net/INetworkStatsSessionNative$ReflectInfo;->getDeviceSummaryForNetwork:Lcom/heytap/reflect/RefMethod;

    iget-object v2, p0, Lcom/heytap/compat/net/INetworkStatsSessionNative;->mINetworkStatsSession:Landroid/net/INetworkStatsSession;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/heytap/compat/net/NetworkTemplateNative;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 128
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/heytap/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStats;

    .line 129
    .local v0, "networkStats":Landroid/net/NetworkStats;
    if-nez v0, :cond_4

    .line 130
    return-object v1

    .line 132
    :cond_4
    new-instance v1, Lcom/heytap/compat/net/NetworkStatsNative;

    invoke-direct {v1, v0}, Lcom/heytap/compat/net/NetworkStatsNative;-><init>(Landroid/net/NetworkStats;)V

    return-object v1

    .line 134
    .end local v0    # "networkStats":Landroid/net/NetworkStats;
    :cond_5
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before P"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIncrementForNetwork(Lcom/heytap/compat/net/NetworkTemplateNative;)Lcom/heytap/compat/net/NetworkStatsNative;
    .locals 6
    .param p1, "networkTemplateNative"    # Lcom/heytap/compat/net/NetworkTemplateNative;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1c
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 65
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-nez v0, :cond_4

    .line 67
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/heytap/compat/net/INetworkStatsSessionNative;->mINetworkStatsSessionWrapper:Lcom/color/inner/net/INetworkStatsSessionWrapper;

    iget-object v2, p1, Lcom/heytap/compat/net/NetworkTemplateNative;->mNetworkTemplateWrapper:Lcom/color/inner/net/NetworkTemplateWrapper;

    invoke-virtual {v0, v2}, Lcom/color/inner/net/INetworkStatsSessionWrapper;->getIncrementForNetwork(Lcom/color/inner/net/NetworkTemplateWrapper;)Lcom/color/inner/net/NetworkStatsWrapper;

    move-result-object v0

    .line 69
    .local v0, "networkStatsWrapper":Lcom/color/inner/net/NetworkStatsWrapper;
    if-nez v0, :cond_0

    .line 70
    return-object v1

    .line 72
    :cond_0
    new-instance v1, Lcom/heytap/compat/net/NetworkStatsNative;

    invoke-direct {v1, v0}, Lcom/heytap/compat/net/NetworkStatsNative;-><init>(Lcom/color/inner/net/NetworkStatsWrapper;)V

    return-object v1

    .line 73
    .end local v0    # "networkStatsWrapper":Lcom/color/inner/net/NetworkStatsWrapper;
    :cond_1
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isP()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 74
    sget-object v0, Lcom/heytap/compat/net/INetworkStatsSessionNative$ReflectInfo;->getIncrementForNetwork:Lcom/heytap/reflect/RefMethod;

    iget-object v2, p0, Lcom/heytap/compat/net/INetworkStatsSessionNative;->mINetworkStatsSession:Landroid/net/INetworkStatsSession;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/heytap/compat/net/NetworkTemplateNative;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/heytap/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStats;

    .line 75
    .local v0, "networkStats":Landroid/net/NetworkStats;
    if-nez v0, :cond_2

    .line 76
    return-object v1

    .line 78
    :cond_2
    new-instance v1, Lcom/heytap/compat/net/NetworkStatsNative;

    invoke-direct {v1, v0}, Lcom/heytap/compat/net/NetworkStatsNative;-><init>(Landroid/net/NetworkStats;)V

    return-object v1

    .line 80
    .end local v0    # "networkStats":Landroid/net/NetworkStats;
    :cond_3
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before P"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_4
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported in R"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
