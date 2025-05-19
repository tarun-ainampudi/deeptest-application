.class Lcom/heytap/opnearmesdk/OPAccountAgentWrapper$1;
.super Ljava/lang/Object;
.source "OPAccountAgentWrapper.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->reqToken(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;

.field final synthetic val$appCode:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;

    .line 98
    iput-object p1, p0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper$1;->this$0:Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;

    iput-object p2, p0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper$1;->val$appCode:Ljava/lang/String;

    iput-object p4, p0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 101
    .local p1, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    const/4 v0, 0x0

    .line 102
    .local v0, "visibility":I
    const-string v1, ""

    .line 104
    .local v1, "action":Ljava/lang/String;
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    const-string v3, "visibility"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    move v0, v2

    .line 105
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 106
    iget-object v2, p0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper$1;->this$0:Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;

    iget-object v3, p0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper$1;->val$context:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->access$000(Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;Landroid/content/Context;)V

    goto :goto_0

    .line 107
    :cond_0
    nop

    .line 110
    :goto_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    const-string v3, "extra_activity_action"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 111
    iget-object v2, p0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper$1;->this$0:Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;

    iget-object v3, p0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper$1;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper$1;->val$appCode:Ljava/lang/String;

    invoke-static {v2, v1, v3, v4}, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->access$100(Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 118
    :catch_0
    move-exception v2

    .line 119
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    iget-object v3, p0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper$1;->this$0:Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;

    iget-object v4, p0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper$1;->val$handler:Landroid/os/Handler;

    new-instance v5, Lcom/nearme/aidl/UserEntity;

    const v6, 0x1c9cf63

    const-string v7, "usercenter is not exist!"

    const-string v8, ""

    const-string v9, ""

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/nearme/aidl/UserEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, v4, v5}, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->access$200(Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;Landroid/os/Handler;Lcom/nearme/aidl/UserEntity;)V

    goto :goto_2

    .line 116
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v2

    .line 117
    .local v2, "e":Landroid/accounts/AuthenticatorException;
    invoke-virtual {v2}, Landroid/accounts/AuthenticatorException;->printStackTrace()V

    .end local v2    # "e":Landroid/accounts/AuthenticatorException;
    goto :goto_1

    .line 114
    :catch_2
    move-exception v2

    .line 115
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 112
    :catch_3
    move-exception v2

    .line 113
    .local v2, "e":Landroid/accounts/OperationCanceledException;
    invoke-virtual {v2}, Landroid/accounts/OperationCanceledException;->printStackTrace()V

    .line 121
    .end local v2    # "e":Landroid/accounts/OperationCanceledException;
    :goto_1
    nop

    .line 122
    :goto_2
    return-void
.end method
