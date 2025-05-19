.class public Lcom/heytap/service/accountsdk/CallInfoAgent$TokenThread;
.super Ljava/lang/Thread;
.source "CallInfoAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/service/accountsdk/CallInfoAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TokenThread"
.end annotation


# instance fields
.field private reqCode:I

.field final synthetic this$0:Lcom/heytap/service/accountsdk/CallInfoAgent;


# direct methods
.method constructor <init>(Lcom/heytap/service/accountsdk/CallInfoAgent;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/heytap/service/accountsdk/CallInfoAgent;
    .param p2, "reqCede"    # I

    .line 213
    iput-object p1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent$TokenThread;->this$0:Lcom/heytap/service/accountsdk/CallInfoAgent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 211
    const/4 v0, 0x0

    iput v0, p0, Lcom/heytap/service/accountsdk/CallInfoAgent$TokenThread;->reqCode:I

    .line 214
    iput p2, p0, Lcom/heytap/service/accountsdk/CallInfoAgent$TokenThread;->reqCode:I

    .line 215
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 219
    iget-object v0, p0, Lcom/heytap/service/accountsdk/CallInfoAgent$TokenThread;->this$0:Lcom/heytap/service/accountsdk/CallInfoAgent;

    invoke-static {v0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->access$100(Lcom/heytap/service/accountsdk/CallInfoAgent;)Ljava/lang/Integer;

    move-result-object v0

    monitor-enter v0

    .line 220
    :try_start_0
    invoke-static {}, Lcom/heytap/service/accountsdk/CallInfoAgent;->access$200()Lcom/nearme/aidl/IAskToken;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 222
    :try_start_1
    iget-object v1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent$TokenThread;->this$0:Lcom/heytap/service/accountsdk/CallInfoAgent;

    invoke-static {v1}, Lcom/heytap/service/accountsdk/CallInfoAgent;->access$100(Lcom/heytap/service/accountsdk/CallInfoAgent;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    goto :goto_0

    .line 223
    :catch_0
    move-exception v1

    .line 224
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 227
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 229
    new-instance v0, Lcom/nearme/aidl/UserEntity;

    invoke-direct {v0}, Lcom/nearme/aidl/UserEntity;-><init>()V

    .line 231
    .local v0, "userEntity":Lcom/nearme/aidl/UserEntity;
    iget v1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent$TokenThread;->reqCode:I

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 239
    :pswitch_0
    iget-object v1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent$TokenThread;->this$0:Lcom/heytap/service/accountsdk/CallInfoAgent;

    invoke-virtual {v1}, Lcom/heytap/service/accountsdk/CallInfoAgent;->callReqCheckPwd()Lcom/nearme/aidl/UserEntity;

    move-result-object v0

    .line 240
    goto :goto_1

    .line 236
    :pswitch_1
    iget-object v1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent$TokenThread;->this$0:Lcom/heytap/service/accountsdk/CallInfoAgent;

    invoke-virtual {v1}, Lcom/heytap/service/accountsdk/CallInfoAgent;->callReqSignin()Lcom/nearme/aidl/UserEntity;

    move-result-object v0

    .line 237
    goto :goto_1

    .line 233
    :pswitch_2
    iget-object v1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent$TokenThread;->this$0:Lcom/heytap/service/accountsdk/CallInfoAgent;

    invoke-virtual {v1}, Lcom/heytap/service/accountsdk/CallInfoAgent;->callReqToken()Lcom/nearme/aidl/UserEntity;

    move-result-object v0

    .line 234
    nop

    .line 245
    :goto_1
    iget-object v1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent$TokenThread;->this$0:Lcom/heytap/service/accountsdk/CallInfoAgent;

    invoke-virtual {v1}, Lcom/heytap/service/accountsdk/CallInfoAgent;->unbindNearMeService()V

    .line 247
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/heytap/service/accountsdk/CallInfoAgent;->access$300()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 248
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 249
    .local v1, "message":Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 250
    invoke-static {}, Lcom/heytap/service/accountsdk/CallInfoAgent;->access$300()Landroid/os/Handler;

    move-result-object v2

    .line 251
    .local v2, "temp":Landroid/os/Handler;
    if-eqz v2, :cond_1

    invoke-static {}, Lcom/heytap/service/accountsdk/CallInfoAgent;->access$300()Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 252
    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 261
    .end local v1    # "message":Landroid/os/Message;
    .end local v2    # "temp":Landroid/os/Handler;
    :cond_1
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/heytap/service/accountsdk/CallInfoAgent;->access$202(Lcom/nearme/aidl/IAskToken;)Lcom/nearme/aidl/IAskToken;

    .line 262
    invoke-static {v1}, Lcom/heytap/service/accountsdk/CallInfoAgent;->access$302(Landroid/os/Handler;)Landroid/os/Handler;

    .line 263
    return-void

    .line 227
    .end local v0    # "userEntity":Lcom/nearme/aidl/UserEntity;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
