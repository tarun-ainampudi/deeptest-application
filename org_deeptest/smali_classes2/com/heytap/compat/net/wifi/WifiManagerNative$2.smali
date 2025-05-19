.class final Lcom/heytap/compat/net/wifi/WifiManagerNative$2;
.super Ljava/lang/Object;
.source "WifiManagerNative.java"

# interfaces
.implements Lcom/color/inner/net/wifi/WifiManagerWrapper$ActionListenerWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heytap/compat/net/wifi/WifiManagerNative;->connect(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;Lcom/heytap/compat/net/wifi/WifiManagerNative$ActionListenerNative;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/heytap/compat/net/wifi/WifiManagerNative$ActionListenerNative;


# direct methods
.method constructor <init>(Lcom/heytap/compat/net/wifi/WifiManagerNative$ActionListenerNative;)V
    .locals 0

    .line 489
    iput-object p1, p0, Lcom/heytap/compat/net/wifi/WifiManagerNative$2;->val$listener:Lcom/heytap/compat/net/wifi/WifiManagerNative$ActionListenerNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 1
    .param p1, "reason"    # I

    .line 497
    iget-object v0, p0, Lcom/heytap/compat/net/wifi/WifiManagerNative$2;->val$listener:Lcom/heytap/compat/net/wifi/WifiManagerNative$ActionListenerNative;

    invoke-interface {v0, p1}, Lcom/heytap/compat/net/wifi/WifiManagerNative$ActionListenerNative;->onFailure(I)V

    .line 498
    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/heytap/compat/net/wifi/WifiManagerNative$2;->val$listener:Lcom/heytap/compat/net/wifi/WifiManagerNative$ActionListenerNative;

    invoke-interface {v0}, Lcom/heytap/compat/net/wifi/WifiManagerNative$ActionListenerNative;->onSuccess()V

    .line 493
    return-void
.end method
