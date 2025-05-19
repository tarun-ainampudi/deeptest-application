.class Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$2;
.super Landroid/os/Handler;
.source "SecurityKeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    .line 576
    iput-object p1, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$2;->this$0:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 579
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 594
    :pswitch_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$2;->this$0:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/MotionEvent;

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->access$400(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;Landroid/view/MotionEvent;)Z

    .line 595
    goto :goto_0

    .line 588
    :pswitch_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$2;->this$0:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    invoke-static {v0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->access$300(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 590
    .local v0, "repeat":Landroid/os/Message;
    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$2;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 591
    .end local v0    # "repeat":Landroid/os/Message;
    goto :goto_0

    .line 584
    :pswitch_2
    const-string v0, "SecurityKeyboardView"

    const-string v1, "handleMessage MSG_REMOVE_PREVIEW"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$2;->this$0:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    invoke-static {v0}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->access$200(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 586
    goto :goto_0

    .line 581
    :pswitch_3
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView$2;->this$0:Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;->access$100(Lcom/coui/appcompat/widget/keyboard/SecurityKeyboardView;I)V

    .line 582
    nop

    .line 600
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
