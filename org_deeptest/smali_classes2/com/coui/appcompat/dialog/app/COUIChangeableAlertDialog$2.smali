.class Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$2;
.super Ljava/lang/Object;
.source "COUIChangeableAlertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->initCancelable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    .line 1103
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$2;->this$0:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 1106
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$2;->this$0:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->access$800(Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1107
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$2;->this$0:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1108
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog$2;->this$0:Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/COUIChangeableAlertDialog;->dismiss()V

    .line 1111
    :cond_0
    return-void
.end method
