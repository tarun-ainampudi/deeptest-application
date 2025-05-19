.class public interface abstract Lcom/heytap/usercenter/accountsdk/agent/IAccountDelegate;
.super Ljava/lang/Object;
.source "IAccountDelegate.java"


# virtual methods
.method public abstract clearCache()V
.end method

.method public abstract ipcEntity(Ljava/lang/String;)Lcom/heytap/usercenter/accountsdk/model/IpcAccountEntity;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract isLogin(Ljava/lang/String;)Z
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
