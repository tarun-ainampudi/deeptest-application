.class public interface abstract Lcom/heytap/compat/app/ITaskStackListenerNative;
.super Ljava/lang/Object;
.source "ITaskStackListenerNative.java"


# virtual methods
.method public abstract onActivityPinned(Ljava/lang/String;III)V
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation
.end method

.method public abstract onActivityUnpinned()V
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation
.end method

.method public abstract onTaskSnapshotChanged(ILjava/lang/Object;)V
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation
.end method
