.class Lcom/heytap/service/accountsdk/CallInfoAgent$2;
.super Ljava/lang/Object;
.source "CallInfoAgent.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/service/accountsdk/CallInfoAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heytap/service/accountsdk/CallInfoAgent;


# direct methods
.method constructor <init>(Lcom/heytap/service/accountsdk/CallInfoAgent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/heytap/service/accountsdk/CallInfoAgent;

    .line 347
    iput-object p1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent$2;->this$0:Lcom/heytap/service/accountsdk/CallInfoAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 356
    iget-object v0, p0, Lcom/heytap/service/accountsdk/CallInfoAgent$2;->this$0:Lcom/heytap/service/accountsdk/CallInfoAgent;

    invoke-static {v0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->access$100(Lcom/heytap/service/accountsdk/CallInfoAgent;)Ljava/lang/Integer;

    move-result-object v0

    monitor-enter v0

    .line 357
    :try_start_0
    invoke-static {p2}, Lcom/nearme/aidl/IAskToken$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nearme/aidl/IAskToken;

    move-result-object v1

    invoke-static {v1}, Lcom/heytap/service/accountsdk/CallInfoAgent;->access$202(Lcom/nearme/aidl/IAskToken;)Lcom/nearme/aidl/IAskToken;

    .line 358
    iget-object v1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent$2;->this$0:Lcom/heytap/service/accountsdk/CallInfoAgent;

    invoke-static {v1}, Lcom/heytap/service/accountsdk/CallInfoAgent;->access$100(Lcom/heytap/service/accountsdk/CallInfoAgent;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 359
    monitor-exit v0

    .line 360
    return-void

    .line 359
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 352
    return-void
.end method
