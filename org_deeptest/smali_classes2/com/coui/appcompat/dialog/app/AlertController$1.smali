.class Lcom/coui/appcompat/dialog/app/AlertController$1;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/dialog/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/dialog/app/AlertController;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/dialog/app/AlertController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/dialog/app/AlertController;

    .line 166
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/AlertController$1;->this$0:Lcom/coui/appcompat/dialog/app/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 170
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController$1;->this$0:Lcom/coui/appcompat/dialog/app/AlertController;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController$1;->this$0:Lcom/coui/appcompat/dialog/app/AlertController;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController$1;->this$0:Lcom/coui/appcompat/dialog/app/AlertController;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController$1;->this$0:Lcom/coui/appcompat/dialog/app/AlertController;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController$1;->this$0:Lcom/coui/appcompat/dialog/app/AlertController;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController$1;->this$0:Lcom/coui/appcompat/dialog/app/AlertController;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController$1;->this$0:Lcom/coui/appcompat/dialog/app/AlertController;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController$1;->this$0:Lcom/coui/appcompat/dialog/app/AlertController;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    if-eqz v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/AlertController$1;->this$0:Lcom/coui/appcompat/dialog/app/AlertController;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    .line 177
    :cond_2
    const/4 v0, 0x0

    .line 180
    .local v0, "m":Landroid/os/Message;
    :goto_0
    if-eqz v0, :cond_3

    .line 181
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 185
    :cond_3
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/AlertController$1;->this$0:Lcom/coui/appcompat/dialog/app/AlertController;

    iget-object v1, v1, Lcom/coui/appcompat/dialog/app/AlertController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/coui/appcompat/dialog/app/AlertController$1;->this$0:Lcom/coui/appcompat/dialog/app/AlertController;

    iget-object v3, v3, Lcom/coui/appcompat/dialog/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 186
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 187
    return-void
.end method
