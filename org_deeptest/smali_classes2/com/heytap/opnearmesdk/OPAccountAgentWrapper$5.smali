.class Lcom/heytap/opnearmesdk/OPAccountAgentWrapper$5;
.super Ljava/lang/Object;
.source "OPAccountAgentWrapper.java"

# interfaces
.implements Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->reqAccountInfo(Landroid/content/Context;Ljava/lang/String;Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback<",
        "Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse<",
        "Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;

.field final synthetic val$callback:Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;

.field final synthetic val$token:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;Ljava/lang/String;Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;

    .line 453
    iput-object p1, p0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper$5;->this$0:Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;

    iput-object p2, p0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper$5;->val$token:Ljava/lang/String;

    iput-object p3, p0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper$5;->val$callback:Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReqFinish(Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse<",
            "Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;",
            ">;)V"
        }
    .end annotation

    .line 466
    .local p1, "reqResult":Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse;, "Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse<Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;>;"
    iget-object v0, p0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper$5;->this$0:Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;

    new-instance v1, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;

    invoke-direct {v1}, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;-><init>()V

    invoke-static {v0, v1}, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->access$402(Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;Lcom/heytap/usercenter/accountsdk/model/SignInAccount;)Lcom/heytap/usercenter/accountsdk/model/SignInAccount;

    .line 467
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper$5;->this$0:Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;

    invoke-static {v0}, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->access$400(Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;)Lcom/heytap/usercenter/accountsdk/model/SignInAccount;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;->isLogin:Z

    .line 469
    iget-object v0, p0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper$5;->this$0:Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;

    invoke-static {v0}, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->access$400(Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;)Lcom/heytap/usercenter/accountsdk/model/SignInAccount;

    move-result-object v0

    const-string v1, "1000"

    iput-object v1, v0, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;->resultCode:Ljava/lang/String;

    .line 470
    iget-object v0, p0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper$5;->this$0:Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;

    invoke-static {v0}, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->access$400(Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;)Lcom/heytap/usercenter/accountsdk/model/SignInAccount;

    move-result-object v0

    const-string v1, "1000"

    invoke-static {v1}, Lcom/heytap/opnearmesdk/OPStatusCodeUtil;->matchResultMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;->resultMsg:Ljava/lang/String;

    .line 471
    iget-object v0, p0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper$5;->this$0:Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;

    invoke-static {v0}, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->access$400(Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;)Lcom/heytap/usercenter/accountsdk/model/SignInAccount;

    move-result-object v0

    iget-object v1, p0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper$5;->val$token:Ljava/lang/String;

    iput-object v1, v0, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;->token:Ljava/lang/String;

    .line 473
    iget-object v0, p0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper$5;->this$0:Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;

    invoke-static {v0}, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->access$400(Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;)Lcom/heytap/usercenter/accountsdk/model/SignInAccount;

    move-result-object v0

    iget-object v1, p1, Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse;->data:Ljava/lang/Object;

    check-cast v1, Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;

    iput-object v1, v0, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;->userInfo:Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;

    goto :goto_0

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper$5;->this$0:Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;

    invoke-static {v0}, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->access$400(Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;)Lcom/heytap/usercenter/accountsdk/model/SignInAccount;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;->isLogin:Z

    .line 482
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse;->error:Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse$ErrorResp;

    if-eqz v0, :cond_2

    .line 483
    iget-object v0, p0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper$5;->this$0:Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;

    invoke-static {v0}, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->access$400(Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;)Lcom/heytap/usercenter/accountsdk/model/SignInAccount;

    move-result-object v0

    iget-object v1, p1, Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse;->error:Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse$ErrorResp;

    iget-object v1, v1, Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse$ErrorResp;->code:Ljava/lang/String;

    iput-object v1, v0, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;->resultCode:Ljava/lang/String;

    .line 484
    const-string v0, "3040"

    iget-object v1, p1, Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse;->error:Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse$ErrorResp;

    iget-object v1, v1, Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse$ErrorResp;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 485
    iget-object v0, p0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper$5;->this$0:Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;

    invoke-static {v0}, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->access$400(Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;)Lcom/heytap/usercenter/accountsdk/model/SignInAccount;

    move-result-object v0

    const-string v1, "3040"

    .line 486
    invoke-static {v1}, Lcom/heytap/opnearmesdk/OPStatusCodeUtil;->matchResultMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;->resultMsg:Ljava/lang/String;

    goto :goto_0

    .line 488
    :cond_1
    iget-object v0, p0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper$5;->this$0:Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;

    invoke-static {v0}, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->access$400(Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;)Lcom/heytap/usercenter/accountsdk/model/SignInAccount;

    move-result-object v0

    iget-object v1, p1, Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse;->error:Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse$ErrorResp;

    iget-object v1, v1, Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse$ErrorResp;->message:Ljava/lang/String;

    iput-object v1, v0, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;->resultMsg:Ljava/lang/String;

    goto :goto_0

    .line 491
    :cond_2
    iget-object v0, p0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper$5;->this$0:Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;

    invoke-static {v0}, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->access$400(Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;)Lcom/heytap/usercenter/accountsdk/model/SignInAccount;

    move-result-object v0

    const-string v1, "1003"

    iput-object v1, v0, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;->resultCode:Ljava/lang/String;

    .line 492
    iget-object v0, p0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper$5;->this$0:Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;

    invoke-static {v0}, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->access$400(Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;)Lcom/heytap/usercenter/accountsdk/model/SignInAccount;

    move-result-object v0

    const-string v1, "1003"

    .line 493
    invoke-static {v1}, Lcom/heytap/opnearmesdk/OPStatusCodeUtil;->matchResultMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;->resultMsg:Ljava/lang/String;

    .line 497
    :goto_0
    iget-object v0, p0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper$5;->val$callback:Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;

    if-eqz v0, :cond_3

    .line 498
    iget-object v0, p0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper$5;->val$callback:Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;

    iget-object v1, p0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper$5;->this$0:Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;

    invoke-static {v1}, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->access$400(Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;)Lcom/heytap/usercenter/accountsdk/model/SignInAccount;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;->onReqFinish(Ljava/lang/Object;)V

    .line 500
    :cond_3
    return-void
.end method

.method public bridge synthetic onReqFinish(Ljava/lang/Object;)V
    .locals 0

    .line 453
    check-cast p1, Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse;

    invoke-virtual {p0, p1}, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper$5;->onReqFinish(Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse;)V

    return-void
.end method

.method public onReqLoading()V
    .locals 0

    .line 462
    return-void
.end method

.method public onReqStart()V
    .locals 0

    .line 457
    return-void
.end method
