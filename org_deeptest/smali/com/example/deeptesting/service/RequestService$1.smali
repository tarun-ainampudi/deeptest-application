.class Lcom/example/deeptesting/service/RequestService$1;
.super Landroid/os/Handler;
.source "RequestService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/deeptesting/service/RequestService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/deeptesting/service/RequestService;


# direct methods
.method constructor <init>(Lcom/example/deeptesting/service/RequestService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/deeptesting/service/RequestService;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 70
    iput-object p1, p0, Lcom/example/deeptesting/service/RequestService$1;->this$0:Lcom/example/deeptesting/service/RequestService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 73
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 75
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/example/deeptesting/service/RequestService$1;->this$0:Lcom/example/deeptesting/service/RequestService;

    invoke-virtual {v1}, Lcom/example/deeptesting/service/RequestService;->request()Lcom/example/deeptesting/service/RequestService$Response;

    move-result-object v1

    .line 76
    .local v1, "response":Lcom/example/deeptesting/service/RequestService$Response;
    if-nez v1, :cond_0

    .line 77
    const/16 v2, 0x64

    iput v2, v0, Landroid/os/Message;->what:I

    goto :goto_0

    .line 79
    :cond_0
    iget v2, v1, Lcom/example/deeptesting/service/RequestService$Response;->mResultCode:I

    iput v2, v0, Landroid/os/Message;->what:I

    .line 80
    iget-object v2, v1, Lcom/example/deeptesting/service/RequestService$Response;->mMsg:Ljava/lang/String;

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 81
    iget-object v2, v1, Lcom/example/deeptesting/service/RequestService$Response;->mData:Lcom/example/deeptesting/service/RequestService$Response$Unlock;

    if-eqz v2, :cond_4

    .line 82
    iget-object v2, v1, Lcom/example/deeptesting/service/RequestService$Response;->mData:Lcom/example/deeptesting/service/RequestService$Response$Unlock;

    invoke-static {v2}, Lcom/example/deeptesting/service/RequestService$Response$Unlock;->access$000(Lcom/example/deeptesting/service/RequestService$Response$Unlock;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 83
    iget-object v2, v1, Lcom/example/deeptesting/service/RequestService$Response;->mData:Lcom/example/deeptesting/service/RequestService$Response$Unlock;

    invoke-static {v2}, Lcom/example/deeptesting/service/RequestService$Response$Unlock;->access$000(Lcom/example/deeptesting/service/RequestService$Response$Unlock;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 84
    :cond_1
    iget-object v2, v1, Lcom/example/deeptesting/service/RequestService$Response;->mData:Lcom/example/deeptesting/service/RequestService$Response$Unlock;

    invoke-static {v2}, Lcom/example/deeptesting/service/RequestService$Response$Unlock;->access$100(Lcom/example/deeptesting/service/RequestService$Response$Unlock;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 85
    iput v3, v0, Landroid/os/Message;->what:I

    .line 86
    iget-object v2, v1, Lcom/example/deeptesting/service/RequestService$Response;->mData:Lcom/example/deeptesting/service/RequestService$Response$Unlock;

    invoke-static {v2}, Lcom/example/deeptesting/service/RequestService$Response$Unlock;->access$100(Lcom/example/deeptesting/service/RequestService$Response$Unlock;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 88
    :cond_2
    iget-object v2, v1, Lcom/example/deeptesting/service/RequestService$Response;->mData:Lcom/example/deeptesting/service/RequestService$Response$Unlock;

    invoke-static {v2}, Lcom/example/deeptesting/service/RequestService$Response$Unlock;->access$200(Lcom/example/deeptesting/service/RequestService$Response$Unlock;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 89
    iget-object v2, v1, Lcom/example/deeptesting/service/RequestService$Response;->mData:Lcom/example/deeptesting/service/RequestService$Response$Unlock;

    invoke-static {v2}, Lcom/example/deeptesting/service/RequestService$Response$Unlock;->access$300(Lcom/example/deeptesting/service/RequestService$Response$Unlock;)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    move v3, v4

    nop

    :cond_3
    sput-boolean v3, Lcom/example/deeptesting/activity/MainActivity;->mApplyRecord:Z

    .line 94
    :cond_4
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/example/deeptesting/service/RequestService$1;->this$0:Lcom/example/deeptesting/service/RequestService;

    invoke-static {v2}, Lcom/example/deeptesting/service/RequestService;->access$400(Lcom/example/deeptesting/service/RequestService;)Landroid/os/Messenger;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    goto :goto_1

    .line 95
    :catch_0
    move-exception v2

    .line 96
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 98
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method
