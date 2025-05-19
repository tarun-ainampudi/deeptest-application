.class final Lcom/coui/appcompat/dialog/app/COUIAlertController$BottomSpaceHandler;
.super Landroid/os/Handler;
.source "COUIAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/dialog/app/COUIAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BottomSpaceHandler"
.end annotation


# static fields
.field private static final MSG_ADD_BOTTOM_SPACE:I = 0x1

.field private static final MSG_REMOVE_BOTTOM_SPACE:I = 0x2


# instance fields
.field private mController:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/coui/appcompat/dialog/app/COUIAlertController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/dialog/app/COUIAlertController;)V
    .locals 1
    .param p1, "controller"    # Lcom/coui/appcompat/dialog/app/COUIAlertController;

    .line 559
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 560
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$BottomSpaceHandler;->mController:Ljava/lang/ref/WeakReference;

    .line 561
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 565
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 569
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/coui/appcompat/dialog/app/COUIAlertController;

    .line 570
    .local v0, "controller":Lcom/coui/appcompat/dialog/app/COUIAlertController;
    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->access$300(Lcom/coui/appcompat/dialog/app/COUIAlertController;)V

    .line 571
    nop

    .line 576
    .end local v0    # "controller":Lcom/coui/appcompat/dialog/app/COUIAlertController;
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
