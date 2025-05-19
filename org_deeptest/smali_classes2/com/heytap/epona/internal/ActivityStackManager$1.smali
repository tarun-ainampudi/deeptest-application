.class Lcom/heytap/epona/internal/ActivityStackManager$1;
.super Ljava/lang/Object;
.source "ActivityStackManager.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/epona/internal/ActivityStackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heytap/epona/internal/ActivityStackManager;


# direct methods
.method constructor <init>(Lcom/heytap/epona/internal/ActivityStackManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/heytap/epona/internal/ActivityStackManager;

    .line 33
    iput-object p1, p0, Lcom/heytap/epona/internal/ActivityStackManager$1;->this$0:Lcom/heytap/epona/internal/ActivityStackManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 37
    iget-object v0, p0, Lcom/heytap/epona/internal/ActivityStackManager$1;->this$0:Lcom/heytap/epona/internal/ActivityStackManager;

    invoke-static {v0, p1}, Lcom/heytap/epona/internal/ActivityStackManager;->access$000(Lcom/heytap/epona/internal/ActivityStackManager;Landroid/app/Activity;)V

    .line 38
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 63
    iget-object v0, p0, Lcom/heytap/epona/internal/ActivityStackManager$1;->this$0:Lcom/heytap/epona/internal/ActivityStackManager;

    invoke-static {v0, p1}, Lcom/heytap/epona/internal/ActivityStackManager;->access$100(Lcom/heytap/epona/internal/ActivityStackManager;Landroid/app/Activity;)V

    .line 64
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 51
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 47
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .line 59
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 42
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 55
    return-void
.end method
