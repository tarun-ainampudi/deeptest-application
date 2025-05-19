.class public abstract Lcom/heytap/shield/authcode/dao/AuthenticationDb;
.super Landroidx/room/RoomDatabase;
.source "AuthenticationDb.java"


# annotations
.annotation build Landroidx/room/Database;
    entities = {
        Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;
    }
    exportSchema = false
    version = 0x1
.end annotation


# static fields
.field public static final AUTHENTICATION_DATABASE_VERSION:I = 0x1

.field private static final DB_NAME:Ljava/lang/String; = "authentication.db"

.field private static volatile mInstance:Lcom/heytap/shield/authcode/dao/AuthenticationDb;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/heytap/shield/authcode/dao/AuthenticationDb;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 26
    sget-object v0, Lcom/heytap/shield/authcode/dao/AuthenticationDb;->mInstance:Lcom/heytap/shield/authcode/dao/AuthenticationDb;

    if-nez v0, :cond_1

    .line 27
    const-class v0, Lcom/heytap/shield/authcode/dao/AuthenticationDb;

    monitor-enter v0

    .line 28
    :try_start_0
    sget-object v1, Lcom/heytap/shield/authcode/dao/AuthenticationDb;->mInstance:Lcom/heytap/shield/authcode/dao/AuthenticationDb;

    if-nez v1, :cond_0

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/heytap/shield/authcode/dao/AuthenticationDb;

    const-string v3, "authentication.db"

    invoke-static {v1, v2, v3}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase$Builder;->allowMainThreadQueries()Landroidx/room/RoomDatabase$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object v1

    check-cast v1, Lcom/heytap/shield/authcode/dao/AuthenticationDb;

    sput-object v1, Lcom/heytap/shield/authcode/dao/AuthenticationDb;->mInstance:Lcom/heytap/shield/authcode/dao/AuthenticationDb;

    .line 31
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 33
    :cond_1
    :goto_0
    sget-object v0, Lcom/heytap/shield/authcode/dao/AuthenticationDb;->mInstance:Lcom/heytap/shield/authcode/dao/AuthenticationDb;

    return-object v0
.end method


# virtual methods
.method public abstract dao()Lcom/heytap/shield/authcode/dao/AuthenticationDao;
.end method
