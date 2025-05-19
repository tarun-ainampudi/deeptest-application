.class Lcom/heytap/opnearmesdk/OPAccountAgentWrapper$4;
.super Landroid/os/Handler;
.source "OPAccountAgentWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->reqSignInAccount(Landroid/content/Context;Ljava/lang/String;Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;

.field final synthetic val$callback:Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;Landroid/content/Context;Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;

    .line 332
    iput-object p1, p0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper$4;->this$0:Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;

    iput-object p2, p0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper$4;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper$4;->val$callback:Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 335
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 336
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/nearme/aidl/UserEntity;

    .line 337
    .local v0, "entity":Lcom/nearme/aidl/UserEntity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nearme/aidl/UserEntity;->getResult()I

    move-result v1

    const v2, 0x1c9c769

    if-ne v1, v2, :cond_0

    .line 338
    iget-object v1, p0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper$4;->this$0:Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;

    iget-object v2, p0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper$4;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/nearme/aidl/UserEntity;->getAuthToken()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper$4;->val$callback:Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;

    invoke-static {v1, v2, v3, v4}, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->access$300(Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;Landroid/content/Context;Ljava/lang/String;Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;)V

    goto :goto_0

    .line 340
    :cond_0
    iget-object v1, p0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper$4;->val$callback:Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;

    if-eqz v1, :cond_1

    .line 341
    iget-object v1, p0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper$4;->this$0:Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;

    new-instance v2, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;

    invoke-direct {v2}, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;-><init>()V

    invoke-static {v1, v2}, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->access$402(Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;Lcom/heytap/usercenter/accountsdk/model/SignInAccount;)Lcom/heytap/usercenter/accountsdk/model/SignInAccount;

    .line 342
    iget-object v1, p0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper$4;->this$0:Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;

    invoke-static {v1}, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->access$400(Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;)Lcom/heytap/usercenter/accountsdk/model/SignInAccount;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;->isLogin:Z

    .line 343
    iget-object v1, p0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper$4;->this$0:Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;

    invoke-static {v1}, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->access$400(Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;)Lcom/heytap/usercenter/accountsdk/model/SignInAccount;

    move-result-object v1

    const-string v2, "1002"

    iput-object v2, v1, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;->resultCode:Ljava/lang/String;

    .line 344
    iget-object v1, p0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper$4;->this$0:Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;

    invoke-static {v1}, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->access$400(Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;)Lcom/heytap/usercenter/accountsdk/model/SignInAccount;

    move-result-object v1

    const-string v2, "1002"

    .line 345
    invoke-static {v2}, Lcom/heytap/opnearmesdk/OPStatusCodeUtil;->matchResultMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;->resultMsg:Ljava/lang/String;

    .line 346
    iget-object v1, p0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper$4;->val$callback:Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;

    iget-object v2, p0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper$4;->this$0:Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;

    invoke-static {v2}, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->access$400(Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;)Lcom/heytap/usercenter/accountsdk/model/SignInAccount;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;->onReqFinish(Ljava/lang/Object;)V

    .line 349
    :cond_1
    :goto_0
    return-void
.end method
