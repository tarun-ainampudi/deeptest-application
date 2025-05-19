.class final Lcom/heytap/compat/net/ConnectivityManagerNative$4;
.super Landroid/net/ConnectivityManager$OnStartTetheringCallback;
.source "ConnectivityManagerNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heytap/compat/net/ConnectivityManagerNative;->startTethering(Landroid/net/ConnectivityManager;IZLcom/heytap/compat/net/ConnectivityManagerNative$OnStartTetheringCallbackNative;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/heytap/compat/net/ConnectivityManagerNative$OnStartTetheringCallbackNative;


# direct methods
.method constructor <init>(Lcom/heytap/compat/net/ConnectivityManagerNative$OnStartTetheringCallbackNative;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/heytap/compat/net/ConnectivityManagerNative$4;->val$callback:Lcom/heytap/compat/net/ConnectivityManagerNative$OnStartTetheringCallbackNative;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTetheringFailed()V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/heytap/compat/net/ConnectivityManagerNative$4;->val$callback:Lcom/heytap/compat/net/ConnectivityManagerNative$OnStartTetheringCallbackNative;

    invoke-interface {v0}, Lcom/heytap/compat/net/ConnectivityManagerNative$OnStartTetheringCallbackNative;->onTetheringFailed()V

    .line 212
    return-void
.end method

.method public onTetheringStarted()V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/heytap/compat/net/ConnectivityManagerNative$4;->val$callback:Lcom/heytap/compat/net/ConnectivityManagerNative$OnStartTetheringCallbackNative;

    invoke-interface {v0}, Lcom/heytap/compat/net/ConnectivityManagerNative$OnStartTetheringCallbackNative;->onTetheringStarted()V

    .line 207
    return-void
.end method
