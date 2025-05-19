.class public Lcom/heytap/service/accountsdk/CallInfoAgent$MyTokenThread;
.super Ljava/lang/Thread;
.source "CallInfoAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/service/accountsdk/CallInfoAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyTokenThread"
.end annotation


# instance fields
.field private appCode:Ljava/lang/String;

.field private reqCode:I

.field final synthetic this$0:Lcom/heytap/service/accountsdk/CallInfoAgent;


# direct methods
.method constructor <init>(Lcom/heytap/service/accountsdk/CallInfoAgent;ILjava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/heytap/service/accountsdk/CallInfoAgent;
    .param p2, "reqCede"    # I
    .param p3, "appCode"    # Ljava/lang/String;

    .line 430
    iput-object p1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent$MyTokenThread;->this$0:Lcom/heytap/service/accountsdk/CallInfoAgent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 427
    const/4 v0, 0x0

    iput v0, p0, Lcom/heytap/service/accountsdk/CallInfoAgent$MyTokenThread;->reqCode:I

    .line 431
    iput p2, p0, Lcom/heytap/service/accountsdk/CallInfoAgent$MyTokenThread;->reqCode:I

    .line 432
    iput-object p3, p0, Lcom/heytap/service/accountsdk/CallInfoAgent$MyTokenThread;->appCode:Ljava/lang/String;

    .line 433
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 439
    iget-object v0, p0, Lcom/heytap/service/accountsdk/CallInfoAgent$MyTokenThread;->this$0:Lcom/heytap/service/accountsdk/CallInfoAgent;

    invoke-static {v0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->access$100(Lcom/heytap/service/accountsdk/CallInfoAgent;)Ljava/lang/Integer;

    move-result-object v0

    monitor-enter v0

    .line 440
    :try_start_0
    invoke-static {}, Lcom/heytap/service/accountsdk/CallInfoAgent;->access$400()Lcom/nearme/aidl/IAskTokenByAppCode;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 443
    :try_start_1
    iget-object v1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent$MyTokenThread;->this$0:Lcom/heytap/service/accountsdk/CallInfoAgent;

    invoke-static {v1}, Lcom/heytap/service/accountsdk/CallInfoAgent;->access$100(Lcom/heytap/service/accountsdk/CallInfoAgent;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 447
    goto :goto_0

    .line 444
    :catch_0
    move-exception v1

    .line 445
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 449
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 452
    new-instance v0, Lcom/nearme/aidl/UserEntity;

    invoke-direct {v0}, Lcom/nearme/aidl/UserEntity;-><init>()V

    .line 454
    .local v0, "userEntity":Lcom/nearme/aidl/UserEntity;
    iget v1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent$MyTokenThread;->reqCode:I

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 463
    :pswitch_0
    iget-object v1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent$MyTokenThread;->this$0:Lcom/heytap/service/accountsdk/CallInfoAgent;

    iget-object v2, p0, Lcom/heytap/service/accountsdk/CallInfoAgent$MyTokenThread;->appCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/heytap/service/accountsdk/CallInfoAgent;->callReqSwitchAccount(Ljava/lang/String;)Lcom/nearme/aidl/UserEntity;

    move-result-object v0

    .line 464
    goto :goto_1

    .line 460
    :pswitch_1
    iget-object v1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent$MyTokenThread;->this$0:Lcom/heytap/service/accountsdk/CallInfoAgent;

    iget-object v2, p0, Lcom/heytap/service/accountsdk/CallInfoAgent$MyTokenThread;->appCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/heytap/service/accountsdk/CallInfoAgent;->callReqSignin(Ljava/lang/String;)Lcom/nearme/aidl/UserEntity;

    move-result-object v0

    .line 461
    goto :goto_1

    .line 457
    :pswitch_2
    iget-object v1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent$MyTokenThread;->this$0:Lcom/heytap/service/accountsdk/CallInfoAgent;

    iget-object v2, p0, Lcom/heytap/service/accountsdk/CallInfoAgent$MyTokenThread;->appCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/heytap/service/accountsdk/CallInfoAgent;->callReqToken(Ljava/lang/String;)Lcom/nearme/aidl/UserEntity;

    move-result-object v0

    .line 458
    nop

    .line 469
    :goto_1
    iget-object v1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent$MyTokenThread;->this$0:Lcom/heytap/service/accountsdk/CallInfoAgent;

    invoke-virtual {v1}, Lcom/heytap/service/accountsdk/CallInfoAgent;->myUnbindNearMeService()V

    .line 471
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/heytap/service/accountsdk/CallInfoAgent;->access$300()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 472
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 473
    .local v1, "message":Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 474
    invoke-static {}, Lcom/heytap/service/accountsdk/CallInfoAgent;->access$300()Landroid/os/Handler;

    move-result-object v2

    .line 475
    .local v2, "temp":Landroid/os/Handler;
    if-eqz v2, :cond_1

    invoke-static {}, Lcom/heytap/service/accountsdk/CallInfoAgent;->access$300()Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 476
    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 490
    .end local v1    # "message":Landroid/os/Message;
    .end local v2    # "temp":Landroid/os/Handler;
    :cond_1
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/heytap/service/accountsdk/CallInfoAgent;->access$402(Lcom/nearme/aidl/IAskTokenByAppCode;)Lcom/nearme/aidl/IAskTokenByAppCode;

    .line 491
    invoke-static {v1}, Lcom/heytap/service/accountsdk/CallInfoAgent;->access$302(Landroid/os/Handler;)Landroid/os/Handler;

    .line 494
    return-void

    .line 449
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
