.class Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog$1;
.super Ljava/lang/Object;
.source "COUIRotatingSpinnerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;

    .line 103
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog$1;->this$0:Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 106
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog$1;->this$0:Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;->access$000(Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog$1;->this$0:Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;->access$000(Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 109
    :cond_0
    return-void
.end method
