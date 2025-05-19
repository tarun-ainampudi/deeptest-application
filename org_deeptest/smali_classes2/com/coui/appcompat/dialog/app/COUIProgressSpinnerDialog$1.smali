.class Lcom/coui/appcompat/dialog/app/COUIProgressSpinnerDialog$1;
.super Ljava/lang/Object;
.source "COUIProgressSpinnerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/app/COUIProgressSpinnerDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/dialog/app/COUIProgressSpinnerDialog;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/dialog/app/COUIProgressSpinnerDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/dialog/app/COUIProgressSpinnerDialog;

    .line 102
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/COUIProgressSpinnerDialog$1;->this$0:Lcom/coui/appcompat/dialog/app/COUIProgressSpinnerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 105
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIProgressSpinnerDialog$1;->this$0:Lcom/coui/appcompat/dialog/app/COUIProgressSpinnerDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIProgressSpinnerDialog;->access$000(Lcom/coui/appcompat/dialog/app/COUIProgressSpinnerDialog;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIProgressSpinnerDialog$1;->this$0:Lcom/coui/appcompat/dialog/app/COUIProgressSpinnerDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIProgressSpinnerDialog;->access$000(Lcom/coui/appcompat/dialog/app/COUIProgressSpinnerDialog;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 108
    :cond_0
    return-void
.end method
