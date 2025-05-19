.class Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder$7;
.super Ljava/lang/Object;
.source "COUISecurityAlertDialog.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->relayoutMessageView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;

    .line 505
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder$7;->this$0:Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 508
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder$7;->this$0:Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->access$000(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;)Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;->access$500(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    .line 509
    .local v0, "lineCount":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 510
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder$7;->this$0:Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->access$000(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;)Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;

    move-result-object v1

    invoke-static {v1}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;->access$500(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAlignment(I)V

    goto :goto_0

    .line 512
    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder$7;->this$0:Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->access$000(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;)Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;

    move-result-object v1

    invoke-static {v1}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;->access$500(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 514
    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder$7;->this$0:Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->access$000(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;)Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;

    move-result-object v1

    invoke-static {v1}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;->access$500(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder$7;->this$0:Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;

    invoke-static {v2}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->access$000(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;)Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;

    move-result-object v2

    invoke-static {v2}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;->access$500(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 515
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder$7;->this$0:Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;->access$000(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog$Builder;)Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;

    move-result-object v1

    invoke-static {v1}, Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;->access$500(Lcom/coui/appcompat/dialog/app/COUISecurityAlertDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 516
    return-void
.end method
