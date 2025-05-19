.class Lcom/example/deeptesting/activity/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/deeptesting/activity/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/deeptesting/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/example/deeptesting/activity/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/deeptesting/activity/MainActivity;

    .line 223
    iput-object p1, p0, Lcom/example/deeptesting/activity/MainActivity$4;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 226
    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity$4;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    invoke-static {v0}, Lcom/example/deeptesting/activity/MainActivity;->access$600(Lcom/example/deeptesting/activity/MainActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/example/deeptesting/utils/UserCenterHelper;->isLogin(Landroid/content/Context;)Z

    move-result v0

    # const v0, 0x1

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity$4;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    invoke-static {v0}, Lcom/example/deeptesting/utils/Utils;->hasAvaiablelNet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity$4;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    invoke-virtual {v0}, Lcom/example/deeptesting/activity/MainActivity;->showProgressDialog()V

    .line 229
    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity$4;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    const/16 v1, 0x3e9

    iget-object v2, p0, Lcom/example/deeptesting/activity/MainActivity$4;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    .line 230
    invoke-static {v2}, Lcom/example/deeptesting/activity/MainActivity;->access$700(Lcom/example/deeptesting/activity/MainActivity;)Landroid/os/Handler;

    move-result-object v2

    .line 229
    invoke-static {v0, v1, v2}, Lcom/example/deeptesting/utils/Utils;->requestService(Landroid/content/Context;ILandroid/os/Handler;)V

    .line 231
    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity$4;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/example/deeptesting/activity/MainActivity;->access$102(Lcom/example/deeptesting/activity/MainActivity;I)I

    goto :goto_0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity$4;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    const v1, 0x7f1000a2

    invoke-virtual {v0, v1}, Lcom/example/deeptesting/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "title":Ljava/lang/String;
    iget-object v1, p0, Lcom/example/deeptesting/activity/MainActivity$4;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    const v2, 0x7f1000a0

    invoke-virtual {v1, v2}, Lcom/example/deeptesting/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, "str":Ljava/lang/String;
    iget-object v2, p0, Lcom/example/deeptesting/activity/MainActivity$4;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v0, v1, v3, v4}, Lcom/example/deeptesting/utils/Utils;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Z)V

    .line 236
    .end local v0    # "title":Ljava/lang/String;
    .end local v1    # "str":Ljava/lang/String;
    goto :goto_0

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity$4;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    invoke-static {v0}, Lcom/example/deeptesting/activity/MainActivity;->access$600(Lcom/example/deeptesting/activity/MainActivity;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-static {v0, v1}, Lcom/example/deeptesting/utils/UserCenterHelper;->startUserCenterColorOSUpgrade(Landroid/content/Context;Landroid/os/Handler;)V

    .line 240
    :goto_0
    return-void
.end method
