.class public Lcom/heytap/shield/authcode/PermissionTable;
.super Ljava/lang/Object;
.source "PermissionTable.java"


# instance fields
.field private mPermission:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "info"    # Ljava/lang/String;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/heytap/shield/authcode/PermissionTable;->mPermission:Ljava/util/List;

    .line 15
    iget-object v0, p0, Lcom/heytap/shield/authcode/PermissionTable;->mPermission:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 16
    iget-object v0, p0, Lcom/heytap/shield/authcode/PermissionTable;->mPermission:Ljava/util/List;

    const-string v1, ","

    invoke-static {p1, v1}, Lcom/heytap/shield/utils/SystemUtils;->getSplitString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 17
    return-void
.end method


# virtual methods
.method public hasPermission(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .line 21
    iget-object v0, p0, Lcom/heytap/shield/authcode/PermissionTable;->mPermission:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/heytap/shield/authcode/PermissionTable;->mPermission:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 24
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
