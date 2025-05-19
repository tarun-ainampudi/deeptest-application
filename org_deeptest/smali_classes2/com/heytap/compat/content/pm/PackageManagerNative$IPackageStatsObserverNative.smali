.class public interface abstract Lcom/heytap/compat/content/pm/PackageManagerNative$IPackageStatsObserverNative;
.super Ljava/lang/Object;
.source "PackageManagerNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/compat/content/pm/PackageManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IPackageStatsObserverNative"
.end annotation


# virtual methods
.method public abstract onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation
.end method
