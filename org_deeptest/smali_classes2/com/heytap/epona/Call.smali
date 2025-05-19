.class public interface abstract Lcom/heytap/epona/Call;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/epona/Call$Callback;
    }
.end annotation


# virtual methods
.method public abstract asyncExecute(Lcom/heytap/epona/Call$Callback;)V
.end method

.method public abstract execute()Lcom/heytap/epona/Response;
.end method

.method public abstract request()Lcom/heytap/epona/Request;
.end method
