.class Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl$2;
.super Landroidx/room/SharedSQLiteStatement;
.source "AuthenticationDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl;


# direct methods
.method constructor <init>(Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl;
    .param p2, "x0"    # Landroidx/room/RoomDatabase;

    .line 67
    iput-object p1, p0, Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl$2;->this$0:Lcom/heytap/shield/authcode/dao/AuthenticationDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 2

    .line 70
    const-string v0, "DELETE from a_e WHERE a_e.uid = (?)AND a_e.capability_name = (?)AND a_e.auth_code = (?)"

    .line 71
    .local v0, "_query":Ljava/lang/String;
    const-string v1, "DELETE from a_e WHERE a_e.uid = (?)AND a_e.capability_name = (?)AND a_e.auth_code = (?)"

    return-object v1
.end method
