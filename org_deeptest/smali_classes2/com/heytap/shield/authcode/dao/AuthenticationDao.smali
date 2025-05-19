.class public interface abstract Lcom/heytap/shield/authcode/dao/AuthenticationDao;
.super Ljava/lang/Object;
.source "AuthenticationDao.java"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation


# virtual methods
.method public abstract deleteAuthCode(ILjava/lang/String;Ljava/lang/String;)V
    .annotation build Landroidx/room/Query;
        value = "DELETE from a_e WHERE a_e.uid = (:uid)AND a_e.capability_name = (:capabilityName)AND a_e.auth_code = (:authCode)"
    .end annotation
.end method

.method public abstract deleteAuthCodeAll()V
    .annotation build Landroidx/room/Query;
        value = "DELETE from a_e"
    .end annotation
.end method

.method public abstract getAuthenticationDbBean(ILjava/lang/String;Ljava/lang/String;)Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM a_e WHERE a_e.uid = (:uid)AND a_e.packageName = (:packageName)AND a_e.capability_name = (:capabilityName)"
    .end annotation
.end method

.method public abstract getAuthenticationDbBean(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM a_e WHERE a_e.uid = (:uid)AND a_e.packageName = (:packageName)AND a_e.capability_name = (:capabilityName)AND a_e.auth_code = (:authCode)"
    .end annotation
.end method

.method public abstract getAuthenticationList()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM a_e"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insert(Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;)V
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation
.end method

.method public varargs abstract insertAll([Lcom/heytap/shield/authcode/dao/AuthenticationDbBean;)V
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation
.end method
