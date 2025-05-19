.class Lcom/coui/appcompat/widget/COUISearchViewAnimate$3;
.super Ljava/lang/Object;
.source "COUISearchViewAnimate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/COUISearchViewAnimate;->changeStateImmediately(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

.field final synthetic val$targetState:I


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUISearchViewAnimate;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    .line 552
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$3;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    iput p2, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$3;->val$targetState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 555
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$3;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    iget v1, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$3;->val$targetState:I

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$300(Lcom/coui/appcompat/widget/COUISearchViewAnimate;I)V

    .line 556
    return-void
.end method
