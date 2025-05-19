.class public interface abstract Lcom/heytap/epona/Interceptor$Chain;
.super Ljava/lang/Object;
.source "Interceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/epona/Interceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Chain"
.end annotation


# virtual methods
.method public abstract callback()Lcom/heytap/epona/Call$Callback;
.end method

.method public abstract isAsync()Z
.end method

.method public abstract proceed()V
.end method

.method public abstract request()Lcom/heytap/epona/Request;
.end method
