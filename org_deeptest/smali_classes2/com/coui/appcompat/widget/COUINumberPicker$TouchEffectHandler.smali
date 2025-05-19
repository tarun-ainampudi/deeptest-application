.class Lcom/coui/appcompat/widget/COUINumberPicker$TouchEffectHandler;
.super Landroid/os/Handler;
.source "COUINumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUINumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchEffectHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/COUINumberPicker;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUINumberPicker;Landroid/os/Looper;)V
    .locals 0
    .param p1    # Lcom/coui/appcompat/widget/COUINumberPicker;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "looper"    # Landroid/os/Looper;

    .line 2048
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUINumberPicker$TouchEffectHandler;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    .line 2049
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2050
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2054
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2060
    :pswitch_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$TouchEffectHandler;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->access$800(Lcom/coui/appcompat/widget/COUINumberPicker;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2061
    .local v0, "text":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2062
    return-void

    .line 2064
    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker$TouchEffectHandler;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->access$1000(Lcom/coui/appcompat/widget/COUINumberPicker;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2065
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUINumberPicker$TouchEffectHandler;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-static {v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->access$1000(Lcom/coui/appcompat/widget/COUINumberPicker;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2067
    :cond_1
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUINumberPicker$TouchEffectHandler;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 2068
    goto :goto_0

    .line 2056
    .end local v0    # "text":Ljava/lang/String;
    :pswitch_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$TouchEffectHandler;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->access$1100(Lcom/coui/appcompat/widget/COUINumberPicker;)V

    .line 2057
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUINumberPicker$TouchEffectHandler;->this$0:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->access$1200(Lcom/coui/appcompat/widget/COUINumberPicker;)V

    .line 2058
    nop

    .line 2072
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2073
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
