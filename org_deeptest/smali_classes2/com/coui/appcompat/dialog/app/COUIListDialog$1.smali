.class Lcom/coui/appcompat/dialog/app/COUIListDialog$1;
.super Ljava/lang/Object;
.source "COUIListDialog.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/app/COUIListDialog;->setupMessage(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/dialog/app/COUIListDialog;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/dialog/app/COUIListDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/dialog/app/COUIListDialog;

    .line 205
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog$1;->this$0:Lcom/coui/appcompat/dialog/app/COUIListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 208
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog$1;->this$0:Lcom/coui/appcompat/dialog/app/COUIListDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIListDialog;->access$000(Lcom/coui/appcompat/dialog/app/COUIListDialog;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    .line 209
    .local v0, "lineCount":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog$1;->this$0:Lcom/coui/appcompat/dialog/app/COUIListDialog;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/app/COUIListDialog;->access$000(Lcom/coui/appcompat/dialog/app/COUIListDialog;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAlignment(I)V

    goto :goto_0

    .line 212
    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog$1;->this$0:Lcom/coui/appcompat/dialog/app/COUIListDialog;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/app/COUIListDialog;->access$000(Lcom/coui/appcompat/dialog/app/COUIListDialog;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 214
    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog$1;->this$0:Lcom/coui/appcompat/dialog/app/COUIListDialog;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/app/COUIListDialog;->access$000(Lcom/coui/appcompat/dialog/app/COUIListDialog;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog$1;->this$0:Lcom/coui/appcompat/dialog/app/COUIListDialog;

    invoke-static {v2}, Lcom/coui/appcompat/dialog/app/COUIListDialog;->access$000(Lcom/coui/appcompat/dialog/app/COUIListDialog;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIListDialog$1;->this$0:Lcom/coui/appcompat/dialog/app/COUIListDialog;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/app/COUIListDialog;->access$000(Lcom/coui/appcompat/dialog/app/COUIListDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 216
    return-void
.end method
