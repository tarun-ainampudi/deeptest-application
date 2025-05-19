.class public Lcom/heytap/compat/net/NetworkStatsNative$EntryNative;
.super Ljava/lang/Object;
.source "NetworkStatsNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/compat/net/NetworkStatsNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EntryNative"
.end annotation


# instance fields
.field private mEntry:Landroid/net/NetworkStats$Entry;

.field private mEntryWrapper:Lcom/color/inner/net/NetworkStatsWrapper$EntryWrapper;


# direct methods
.method private constructor <init>(Landroid/net/NetworkStats$Entry;)V
    .locals 0
    .param p1, "entry"    # Landroid/net/NetworkStats$Entry;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/heytap/compat/net/NetworkStatsNative$EntryNative;->mEntry:Landroid/net/NetworkStats$Entry;

    .line 83
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/NetworkStats$Entry;Lcom/heytap/compat/net/NetworkStatsNative$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/net/NetworkStats$Entry;
    .param p2, "x1"    # Lcom/heytap/compat/net/NetworkStatsNative$1;

    .line 73
    invoke-direct {p0, p1}, Lcom/heytap/compat/net/NetworkStatsNative$EntryNative;-><init>(Landroid/net/NetworkStats$Entry;)V

    return-void
.end method

.method private constructor <init>(Lcom/color/inner/net/NetworkStatsWrapper$EntryWrapper;)V
    .locals 0
    .param p1, "entryWrapper"    # Lcom/color/inner/net/NetworkStatsWrapper$EntryWrapper;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/heytap/compat/net/NetworkStatsNative$EntryNative;->mEntryWrapper:Lcom/color/inner/net/NetworkStatsWrapper$EntryWrapper;

    .line 79
    return-void
.end method

.method synthetic constructor <init>(Lcom/color/inner/net/NetworkStatsWrapper$EntryWrapper;Lcom/heytap/compat/net/NetworkStatsNative$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/color/inner/net/NetworkStatsWrapper$EntryWrapper;
    .param p2, "x1"    # Lcom/heytap/compat/net/NetworkStatsNative$1;

    .line 73
    invoke-direct {p0, p1}, Lcom/heytap/compat/net/NetworkStatsNative$EntryNative;-><init>(Lcom/color/inner/net/NetworkStatsWrapper$EntryWrapper;)V

    return-void
.end method

.method static synthetic access$000(Lcom/heytap/compat/net/NetworkStatsNative$EntryNative;)Landroid/net/NetworkStats$Entry;
    .locals 1
    .param p0, "x0"    # Lcom/heytap/compat/net/NetworkStatsNative$EntryNative;

    .line 73
    iget-object v0, p0, Lcom/heytap/compat/net/NetworkStatsNative$EntryNative;->mEntry:Landroid/net/NetworkStats$Entry;

    return-object v0
.end method

.method static synthetic access$200(Lcom/heytap/compat/net/NetworkStatsNative$EntryNative;)Lcom/color/inner/net/NetworkStatsWrapper$EntryWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/heytap/compat/net/NetworkStatsNative$EntryNative;

    .line 73
    iget-object v0, p0, Lcom/heytap/compat/net/NetworkStatsNative$EntryNative;->mEntryWrapper:Lcom/color/inner/net/NetworkStatsWrapper$EntryWrapper;

    return-object v0
.end method


# virtual methods
.method public getRxBytes()J
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

    .line 88
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/heytap/compat/net/NetworkStatsNative$EntryNative;->mEntry:Landroid/net/NetworkStats$Entry;

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    return-wide v0

    .line 90
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/heytap/compat/net/NetworkStatsNative$EntryNative;->mEntryWrapper:Lcom/color/inner/net/NetworkStatsWrapper$EntryWrapper;

    invoke-virtual {v0}, Lcom/color/inner/net/NetworkStatsWrapper$EntryWrapper;->getRxBytes()J

    move-result-wide v0

    return-wide v0

    .line 92
    :cond_1
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isP()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    iget-object v0, p0, Lcom/heytap/compat/net/NetworkStatsNative$EntryNative;->mEntry:Landroid/net/NetworkStats$Entry;

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    return-wide v0

    .line 95
    :cond_2
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public getTxBytes()J
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

    .line 102
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/heytap/compat/net/NetworkStatsNative$EntryNative;->mEntry:Landroid/net/NetworkStats$Entry;

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    return-wide v0

    .line 104
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/heytap/compat/net/NetworkStatsNative$EntryNative;->mEntryWrapper:Lcom/color/inner/net/NetworkStatsWrapper$EntryWrapper;

    invoke-virtual {v0}, Lcom/color/inner/net/NetworkStatsWrapper$EntryWrapper;->getTxBytes()J

    move-result-wide v0

    return-wide v0

    .line 106
    :cond_1
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isP()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    iget-object v0, p0, Lcom/heytap/compat/net/NetworkStatsNative$EntryNative;->mEntry:Landroid/net/NetworkStats$Entry;

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    return-wide v0

    .line 109
    :cond_2
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method
