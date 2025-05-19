.class public Lcom/heytap/compat/os/storage/StorageEventListenerNative;
.super Ljava/lang/Object;
.source "StorageEventListenerNative.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StorageEventListenerNative"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "oldState"    # Ljava/lang/String;
    .param p3, "newState"    # Ljava/lang/String;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .line 25
    return-void
.end method

.method public onVolumeStateChanged(Lcom/heytap/compat/os/storage/VolumeInfoNative;II)V
    .locals 0
    .param p1, "vol"    # Lcom/heytap/compat/os/storage/VolumeInfoNative;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .line 30
    return-void
.end method
