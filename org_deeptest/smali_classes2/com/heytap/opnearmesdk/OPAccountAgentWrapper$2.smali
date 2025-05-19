.class Lcom/heytap/opnearmesdk/OPAccountAgentWrapper$2;
.super Ljava/lang/Object;
.source "OPAccountAgentWrapper.java"

# interfaces
.implements Lcom/heytap/opnearmesdk/OPAccountTask$OnTaskFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->getAccountResult(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;


# direct methods
.method constructor <init>(Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;

    .line 131
    iput-object p1, p0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper$2;->this$0:Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskFailed()V
    .locals 2

    .line 145
    new-instance v0, Lcom/nearme/aidl/UserEntity;

    invoke-direct {v0}, Lcom/nearme/aidl/UserEntity;-><init>()V

    .line 146
    .local v0, "entity":Lcom/nearme/aidl/UserEntity;
    const v1, 0x1c9c76a

    invoke-virtual {v0, v1}, Lcom/nearme/aidl/UserEntity;->setResult(I)V

    .line 147
    const-string v1, "get account info failed"

    invoke-virtual {v0, v1}, Lcom/nearme/aidl/UserEntity;->setResultMsg(Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper$2;->this$0:Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;

    invoke-virtual {v1, v0}, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->sendSingleReqMessage(Lcom/nearme/aidl/UserEntity;)V

    .line 149
    return-void
.end method

.method public onTaskSuccessfully(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 135
    new-instance v0, Lcom/nearme/aidl/UserEntity;

    invoke-direct {v0}, Lcom/nearme/aidl/UserEntity;-><init>()V

    .line 136
    .local v0, "entity":Lcom/nearme/aidl/UserEntity;
    const v1, 0x1c9c769

    invoke-virtual {v0, v1}, Lcom/nearme/aidl/UserEntity;->setResult(I)V

    .line 137
    const-string v1, "success"

    invoke-virtual {v0, v1}, Lcom/nearme/aidl/UserEntity;->setResultMsg(Ljava/lang/String;)V

    .line 138
    const-string v1, "username"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nearme/aidl/UserEntity;->setUsername(Ljava/lang/String;)V

    .line 139
    const-string v1, "oplustoken"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nearme/aidl/UserEntity;->setAuthToken(Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper$2;->this$0:Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;

    invoke-virtual {v1, v0}, Lcom/heytap/opnearmesdk/OPAccountAgentWrapper;->sendSingleReqMessage(Lcom/nearme/aidl/UserEntity;)V

    .line 141
    return-void
.end method
