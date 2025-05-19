.class Lcom/coui/appcompat/widget/COUIFullPageStatement$2;
.super Ljava/lang/Object;
.source "COUIFullPageStatement.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/COUIFullPageStatement;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/COUIFullPageStatement;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUIFullPageStatement;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUIFullPageStatement;

    .line 146
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement$2;->this$0:Lcom/coui/appcompat/widget/COUIFullPageStatement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 149
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement$2;->this$0:Lcom/coui/appcompat/widget/COUIFullPageStatement;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIFullPageStatement;->access$000(Lcom/coui/appcompat/widget/COUIFullPageStatement;)Lcom/coui/appcompat/widget/COUIFullPageStatement$OnButtonClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIFullPageStatement$2;->this$0:Lcom/coui/appcompat/widget/COUIFullPageStatement;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIFullPageStatement;->access$000(Lcom/coui/appcompat/widget/COUIFullPageStatement;)Lcom/coui/appcompat/widget/COUIFullPageStatement$OnButtonClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/coui/appcompat/widget/COUIFullPageStatement$OnButtonClickListener;->onExitButtonClick()V

    .line 152
    :cond_0
    return-void
.end method
