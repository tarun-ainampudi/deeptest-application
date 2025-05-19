.class Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "AuthenticationDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl;


# direct methods
.method constructor <init>(Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl;
    .param p2, "x0"    # Landroidx/room/RoomDatabase;

    .line 29
    iput-object p1, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl$1;->this$0:Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;)V
    .locals 4
    .param p1, "stmt"    # Landroidx/sqlite/db/SupportSQLiteStatement;
    .param p2, "value"    # Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;

    .line 37
    invoke-virtual {p2}, Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;->getId()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 38
    invoke-virtual {p2}, Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;->getAuthCode()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 39
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p2}, Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;->getAuthCode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 44
    :goto_0
    invoke-virtual {p2}, Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;->isEnable()Z

    move-result v0

    .line 45
    .local v0, "_tmp":I
    const/4 v1, 0x3

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 46
    const/4 v1, 0x4

    invoke-virtual {p2}, Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;->getUid()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 47
    invoke-virtual {p2}, Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    if-nez v1, :cond_1

    .line 48
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 50
    :cond_1
    invoke-virtual {p2}, Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 52
    :goto_1
    invoke-virtual {p2}, Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;->getCapabilityName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    if-nez v1, :cond_2

    .line 53
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 55
    :cond_2
    invoke-virtual {p2}, Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;->getCapabilityName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 57
    :goto_2
    const/4 v1, 0x7

    invoke-virtual {p2}, Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;->getExpiration()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 58
    invoke-virtual {p2}, Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;->getPermissions()[B

    move-result-object v1

    const/16 v2, 0x8

    if-nez v1, :cond_3

    .line 59
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 61
    :cond_3
    invoke-virtual {p2}, Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;->getPermissions()[B

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 63
    :goto_3
    const/16 v1, 0x9

    invoke-virtual {p2}, Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;->getLastUpdateTime()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 64
    const/16 v1, 0xa

    invoke-virtual {p2}, Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;->getCacheTime()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 65
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p2, Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;

    invoke-virtual {p0, p1, p2}, Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    .line 32
    const-string v0, "INSERT OR REPLACE INTO `a_e` (`id`,`auth_code`,`is_enable`,`uid`,`packageName`,`capability_name`,`expiration`,`permission`,`last_update_time`,`cache_time`) VALUES (nullif(?, 0),?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
