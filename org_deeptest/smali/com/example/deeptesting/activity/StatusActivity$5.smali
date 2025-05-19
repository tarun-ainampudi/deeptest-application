.class Lcom/example/deeptesting/activity/StatusActivity$5;
.super Ljava/lang/Object;
.source "StatusActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/deeptesting/activity/StatusActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/deeptesting/activity/StatusActivity;


# direct methods
.method constructor <init>(Lcom/example/deeptesting/activity/StatusActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/deeptesting/activity/StatusActivity;

    .line 133
    iput-object p1, p0, Lcom/example/deeptesting/activity/StatusActivity$5;->this$0:Lcom/example/deeptesting/activity/StatusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 136
    iget-object v0, p0, Lcom/example/deeptesting/activity/StatusActivity$5;->this$0:Lcom/example/deeptesting/activity/StatusActivity;

    invoke-static {v0}, Lcom/example/deeptesting/utils/Utils;->hasAvaiablelNet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/example/deeptesting/activity/StatusActivity$5;->this$0:Lcom/example/deeptesting/activity/StatusActivity;

    const v1, 0x7f1000a2

    invoke-virtual {v0, v1}, Lcom/example/deeptesting/activity/StatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "title":Ljava/lang/String;
    iget-object v1, p0, Lcom/example/deeptesting/activity/StatusActivity$5;->this$0:Lcom/example/deeptesting/activity/StatusActivity;

    const v2, 0x7f1000a0

    invoke-virtual {v1, v2}, Lcom/example/deeptesting/activity/StatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "str":Ljava/lang/String;
    iget-object v2, p0, Lcom/example/deeptesting/activity/StatusActivity$5;->this$0:Lcom/example/deeptesting/activity/StatusActivity;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v0, v1, v3, v4}, Lcom/example/deeptesting/utils/Utils;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Z)V

    .line 140
    .end local v0    # "title":Ljava/lang/String;
    .end local v1    # "str":Ljava/lang/String;
    goto :goto_0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/example/deeptesting/activity/StatusActivity$5;->this$0:Lcom/example/deeptesting/activity/StatusActivity;

    invoke-virtual {v0}, Lcom/example/deeptesting/activity/StatusActivity;->showProgressDialog()V

    .line 142
    iget-object v0, p0, Lcom/example/deeptesting/activity/StatusActivity$5;->this$0:Lcom/example/deeptesting/activity/StatusActivity;

    const/16 v1, 0x3ea

    iget-object v2, p0, Lcom/example/deeptesting/activity/StatusActivity$5;->this$0:Lcom/example/deeptesting/activity/StatusActivity;

    invoke-static {v2}, Lcom/example/deeptesting/activity/StatusActivity;->access$300(Lcom/example/deeptesting/activity/StatusActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/example/deeptesting/utils/Utils;->requestService(Landroid/content/Context;ILandroid/os/Handler;)V

    .line 144
    :goto_0
    return-void
.end method
