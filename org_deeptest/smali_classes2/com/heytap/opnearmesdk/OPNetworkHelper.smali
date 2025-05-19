.class Lcom/heytap/opnearmesdk/OPNetworkHelper;
.super Ljava/lang/Object;
.source "OPNetworkHelper.java"


# annotations
.annotation build Lcom/platform/usercenter/annotation/Keep;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static requestTask(Landroid/content/Context;ILjava/lang/String;Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ucVersion"    # I
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;

    .line 18
    invoke-static {p2, p3}, Lcom/heytap/usercenter/accountsdk/http/AccountNameProtocol;->requestTask(Ljava/lang/String;Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;)V

    .line 19
    return-void
.end method
