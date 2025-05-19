.class Lcom/coui/appcompat/widget/COUISearchViewAnimate$2;
.super Ljava/lang/Object;
.source "COUISearchViewAnimate.java"

# interfaces
.implements Lcom/coui/appcompat/widget/COUISearchViewAnimate$OnStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUISearchViewAnimate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    .line 197
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$2;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChange(II)V
    .locals 1
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 200
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$2;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->showInToolBar()V

    goto :goto_0

    .line 202
    :cond_0
    if-nez p2, :cond_1

    .line 203
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$2;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->hideInToolBar()V

    .line 205
    :cond_1
    :goto_0
    return-void
.end method
