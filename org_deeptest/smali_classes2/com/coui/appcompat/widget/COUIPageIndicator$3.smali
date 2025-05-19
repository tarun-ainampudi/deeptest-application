.class Lcom/coui/appcompat/widget/COUIPageIndicator$3;
.super Landroid/os/Handler;
.source "COUIPageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/COUIPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/COUIPageIndicator;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUIPageIndicator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUIPageIndicator;

    .line 244
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator$3;->this$0:Lcom/coui/appcompat/widget/COUIPageIndicator;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 247
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    .line 248
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator$3;->this$0:Lcom/coui/appcompat/widget/COUIPageIndicator;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIPageIndicator;->access$1100(Lcom/coui/appcompat/widget/COUIPageIndicator;)V

    .line 250
    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 251
    return-void
.end method
