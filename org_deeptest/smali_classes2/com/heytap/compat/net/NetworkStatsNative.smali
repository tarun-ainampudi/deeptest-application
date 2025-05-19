.class public Lcom/heytap/compat/net/NetworkStatsNative;
.super Ljava/lang/Object;
.source "NetworkStatsNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/compat/net/NetworkStatsNative$EntryNative;
    }
.end annotation


# instance fields
.field private mNetworkStats:Landroid/net/NetworkStats;

.field private mNetworkStatsWrapper:Lcom/color/inner/net/NetworkStatsWrapper;


# direct methods
.method constructor <init>(Landroid/net/NetworkStats;)V
    .locals 0
    .param p1, "networkStats"    # Landroid/net/NetworkStats;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/heytap/compat/net/NetworkStatsNative;->mNetworkStats:Landroid/net/NetworkStats;

    .line 25
    return-void
.end method

.method constructor <init>(Lcom/color/inner/net/NetworkStatsWrapper;)V
    .locals 0
    .param p1, "networkStatsWrapper"    # Lcom/color/inner/net/NetworkStatsWrapper;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/heytap/compat/net/NetworkStatsNative;->mNetworkStatsWrapper:Lcom/color/inner/net/NetworkStatsWrapper;

    .line 21
    return-void
.end method


# virtual methods
.method public getTotalBytes()J
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1c
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 30
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/heytap/compat/net/NetworkStatsNative;->mNetworkStats:Landroid/net/NetworkStats;

    invoke-virtual {v0}, Landroid/net/NetworkStats;->getTotalBytes()J

    move-result-wide v0

    return-wide v0

    .line 32
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    iget-object v0, p0, Lcom/heytap/compat/net/NetworkStatsNative;->mNetworkStatsWrapper:Lcom/color/inner/net/NetworkStatsWrapper;

    invoke-virtual {v0}, Lcom/color/inner/net/NetworkStatsWrapper;->getTotalBytes()J

    move-result-wide v0

    return-wide v0

    .line 34
    :cond_1
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isP()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 35
    iget-object v0, p0, Lcom/heytap/compat/net/NetworkStatsNative;->mNetworkStats:Landroid/net/NetworkStats;

    invoke-virtual {v0}, Landroid/net/NetworkStats;->getTotalBytes()J

    move-result-wide v0

    return-wide v0

    .line 37
    :cond_2
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public getValues(ILcom/heytap/compat/net/NetworkStatsNative$EntryNative;)Lcom/heytap/compat/net/NetworkStatsNative$EntryNative;
    .locals 3
    .param p1, "i"    # I
    .param p2, "entryNative"    # Lcom/heytap/compat/net/NetworkStatsNative$EntryNative;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1c
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 58
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/heytap/compat/net/NetworkStatsNative;->mNetworkStats:Landroid/net/NetworkStats;

    if-nez p2, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/heytap/compat/net/NetworkStatsNative$EntryNative;->access$000(Lcom/heytap/compat/net/NetworkStatsNative$EntryNative;)Landroid/net/NetworkStats$Entry;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, p1, v2}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    .line 60
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    new-instance v2, Lcom/heytap/compat/net/NetworkStatsNative$EntryNative;

    invoke-direct {v2, v0, v1}, Lcom/heytap/compat/net/NetworkStatsNative$EntryNative;-><init>(Landroid/net/NetworkStats$Entry;Lcom/heytap/compat/net/NetworkStatsNative$1;)V

    return-object v2

    .line 61
    .end local v0    # "entry":Landroid/net/NetworkStats$Entry;
    :cond_1
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 62
    iget-object v0, p0, Lcom/heytap/compat/net/NetworkStatsNative;->mNetworkStatsWrapper:Lcom/color/inner/net/NetworkStatsWrapper;

    if-nez p2, :cond_2

    move-object v2, v1

    goto :goto_1

    :cond_2
    invoke-static {p2}, Lcom/heytap/compat/net/NetworkStatsNative$EntryNative;->access$200(Lcom/heytap/compat/net/NetworkStatsNative$EntryNative;)Lcom/color/inner/net/NetworkStatsWrapper$EntryWrapper;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, p1, v2}, Lcom/color/inner/net/NetworkStatsWrapper;->getValues(ILcom/color/inner/net/NetworkStatsWrapper$EntryWrapper;)Lcom/color/inner/net/NetworkStatsWrapper$EntryWrapper;

    move-result-object v0

    .line 63
    .local v0, "entryWrapper":Lcom/color/inner/net/NetworkStatsWrapper$EntryWrapper;
    new-instance v2, Lcom/heytap/compat/net/NetworkStatsNative$EntryNative;

    invoke-direct {v2, v0, v1}, Lcom/heytap/compat/net/NetworkStatsNative$EntryNative;-><init>(Lcom/color/inner/net/NetworkStatsWrapper$EntryWrapper;Lcom/heytap/compat/net/NetworkStatsNative$1;)V

    return-object v2

    .line 64
    .end local v0    # "entryWrapper":Lcom/color/inner/net/NetworkStatsWrapper$EntryWrapper;
    :cond_3
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isP()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 65
    iget-object v0, p0, Lcom/heytap/compat/net/NetworkStatsNative;->mNetworkStats:Landroid/net/NetworkStats;

    if-nez p2, :cond_4

    move-object v2, v1

    goto :goto_2

    :cond_4
    invoke-static {p2}, Lcom/heytap/compat/net/NetworkStatsNative$EntryNative;->access$000(Lcom/heytap/compat/net/NetworkStatsNative$EntryNative;)Landroid/net/NetworkStats$Entry;

    move-result-object v2

    :goto_2
    invoke-virtual {v0, p1, v2}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    .line 66
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    new-instance v2, Lcom/heytap/compat/net/NetworkStatsNative$EntryNative;

    invoke-direct {v2, v0, v1}, Lcom/heytap/compat/net/NetworkStatsNative$EntryNative;-><init>(Landroid/net/NetworkStats$Entry;Lcom/heytap/compat/net/NetworkStatsNative$1;)V

    return-object v2

    .line 68
    .end local v0    # "entry":Landroid/net/NetworkStats$Entry;
    :cond_5
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1c
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 44
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/heytap/compat/net/NetworkStatsNative;->mNetworkStats:Landroid/net/NetworkStats;

    invoke-virtual {v0}, Landroid/net/NetworkStats;->size()I

    move-result v0

    return v0

    .line 46
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/heytap/compat/net/NetworkStatsNative;->mNetworkStatsWrapper:Lcom/color/inner/net/NetworkStatsWrapper;

    invoke-virtual {v0}, Lcom/color/inner/net/NetworkStatsWrapper;->size()I

    move-result v0

    return v0

    .line 48
    :cond_1
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isP()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    iget-object v0, p0, Lcom/heytap/compat/net/NetworkStatsNative;->mNetworkStats:Landroid/net/NetworkStats;

    invoke-virtual {v0}, Landroid/net/NetworkStats;->size()I

    move-result v0

    return v0

    .line 51
    :cond_2
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method
