.class public interface abstract Lcom/heytap/epona/Repo;
.super Ljava/lang/Object;
.source "Repo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/epona/Repo$SnapshotCallBack;
    }
.end annotation


# virtual methods
.method public abstract findProvider(Ljava/lang/String;)Lcom/heytap/epona/DynamicProvider;
.end method

.method public abstract findProviderProviderInfo(Ljava/lang/String;)Lcom/heytap/epona/provider/ProviderInfo;
.end method

.method public abstract registerProvider(Lcom/heytap/epona/DynamicProvider;)V
.end method

.method public abstract registerProviderInfo(Lcom/heytap/epona/provider/ProviderInfo;)V
.end method

.method public abstract requestSnapshot(Lcom/heytap/epona/Repo$SnapshotCallBack;)V
.end method

.method public abstract unRegisterProvider(Lcom/heytap/epona/DynamicProvider;)V
.end method

.method public abstract unRegisterProviderInfo(Lcom/heytap/epona/provider/ProviderInfo;)V
.end method
