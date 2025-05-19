.class Lcom/example/deeptesting/activity/MainActivity$3;
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

    .line 175
    iput-object p1, p0, Lcom/example/deeptesting/activity/MainActivity$3;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public showToast(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

        .line 178
    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity$3;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    invoke-static {v0}, Lcom/example/deeptesting/activity/MainActivity;->access$500(Lcom/example/deeptesting/activity/MainActivity;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    # const v0,0x0

    if-eqz v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity$3;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    invoke-static {v0}, Lcom/example/deeptesting/activity/MainActivity;->access$600(Lcom/example/deeptesting/activity/MainActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/example/deeptesting/utils/UserCenterHelper;->isLogin(Landroid/content/Context;)Z

    move-result v0

    # const v0, 0x1

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity$3;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    invoke-static {v0}, Lcom/example/deeptesting/utils/Utils;->hasAvaiablelNet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity$3;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    invoke-virtual {v0}, Lcom/example/deeptesting/activity/MainActivity;->showProgressDialog()V

    .line 182
    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity$3;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    const/16 v3, 0x3eb

    iget-object v4, p0, Lcom/example/deeptesting/activity/MainActivity$3;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    .line 183
    invoke-static {v4}, Lcom/example/deeptesting/activity/MainActivity;->access$700(Lcom/example/deeptesting/activity/MainActivity;)Landroid/os/Handler;

    move-result-object v4

    .line 182
    invoke-static {v0, v3, v4}, Lcom/example/deeptesting/utils/Utils;->requestService(Landroid/content/Context;ILandroid/os/Handler;)V

    .line 184
    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity$3;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lcom/example/deeptesting/activity/MainActivity;->access$102(Lcom/example/deeptesting/activity/MainActivity;I)I
    # return-void
    goto :goto_0

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity$3;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    const v3, 0x7f1000a2

    invoke-virtual {v0, v3}, Lcom/example/deeptesting/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "title":Ljava/lang/String;
    iget-object v3, p0, Lcom/example/deeptesting/activity/MainActivity$3;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    const v4, 0x7f1000a0

    invoke-virtual {v3, v4}, Lcom/example/deeptesting/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, "str":Ljava/lang/String;
    iget-object v4, p0, Lcom/example/deeptesting/activity/MainActivity$3;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    invoke-static {v4, v0, v3, v2, v1}, Lcom/example/deeptesting/utils/Utils;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Z)V

    .line 189
    return-void

    .line 192
    .end local v0    # "title":Ljava/lang/String;
    .end local v3    # "str":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity$3;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    invoke-static {v0}, Lcom/example/deeptesting/activity/MainActivity;->access$600(Lcom/example/deeptesting/activity/MainActivity;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-static {v0, v1}, Lcom/example/deeptesting/utils/UserCenterHelper;->startUserCenterColorOSUpgrade(Landroid/content/Context;Landroid/os/Handler;)V

    .line 193
    return-void

    .line 196
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity$3;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    invoke-static {v0}, Lcom/example/deeptesting/activity/MainActivity;->access$500(Lcom/example/deeptesting/activity/MainActivity;)I

    move-result v0

    const/4 v3, 0x1

    const v4, 0x7f10009d

    packed-switch v0, :pswitch_data_0

    .line 217
    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity$3;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    invoke-static {v0}, Lcom/example/deeptesting/activity/MainActivity;->access$800(Lcom/example/deeptesting/activity/MainActivity;)V

    goto :goto_1

    .line 204
    :pswitch_0
    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity$3;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    invoke-virtual {v0, v4}, Lcom/example/deeptesting/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 205
    .restart local v0    # "title":Ljava/lang/String;
    iget-object v1, p0, Lcom/example/deeptesting/activity/MainActivity$3;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    const v4, 0x7f1000a3

    invoke-virtual {v1, v4}, Lcom/example/deeptesting/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, "str":Ljava/lang/String;
    iget-object v4, p0, Lcom/example/deeptesting/activity/MainActivity$3;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    invoke-static {v4, v0, v1, v2, v3}, Lcom/example/deeptesting/utils/Utils;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Z)V

    .line 207
    goto :goto_1

    .line 209
    .end local v0    # "title":Ljava/lang/String;
    .end local v1    # "str":Ljava/lang/String;
    :pswitch_1
    sget-boolean v0, Lcom/example/deeptesting/activity/MainActivity;->mApplyRecord:Z

    # const/4 v0, 0x1

    if-nez v0, :cond_3

    .line 210
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/deeptesting/activity/MainActivity$3;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    const-class v2, Lcom/example/deeptesting/activity/WarningActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 211
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/example/deeptesting/activity/MainActivity$3;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    invoke-virtual {v1, v0}, Lcom/example/deeptesting/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 212
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 213
    :cond_3
    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity$3;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    iget-object v2, p0, Lcom/example/deeptesting/activity/MainActivity$3;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    const v3, 0x7f10010e

    invoke-virtual {v2, v3}, Lcom/example/deeptesting/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 215
    goto :goto_1

    .line 198
    :pswitch_2
    iget-object v0, p0, Lcom/example/deeptesting/activity/MainActivity$3;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    invoke-virtual {v0, v4}, Lcom/example/deeptesting/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "title":Ljava/lang/String;
    iget-object v1, p0, Lcom/example/deeptesting/activity/MainActivity$3;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    const v2, 0x7f10009e

    invoke-virtual {v1, v2}, Lcom/example/deeptesting/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 200
    .restart local v1    # "str":Ljava/lang/String;
    iget-object v2, p0, Lcom/example/deeptesting/activity/MainActivity$3;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    iget-object v4, p0, Lcom/example/deeptesting/activity/MainActivity$3;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    invoke-static {v4}, Lcom/example/deeptesting/activity/MainActivity;->access$700(Lcom/example/deeptesting/activity/MainActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-static {v2, v0, v1, v4, v3}, Lcom/example/deeptesting/utils/Utils;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Z)V

    .line 201
    iget-object v2, p0, Lcom/example/deeptesting/activity/MainActivity$3;->this$0:Lcom/example/deeptesting/activity/MainActivity;

    const/16 v3, 0xc

    invoke-static {v2, v3}, Lcom/example/deeptesting/activity/MainActivity;->access$102(Lcom/example/deeptesting/activity/MainActivity;I)I

    .line 202
    nop

    .line 220
    .end local v0    # "title":Ljava/lang/String;
    .end local v1    # "str":Ljava/lang/String;
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
