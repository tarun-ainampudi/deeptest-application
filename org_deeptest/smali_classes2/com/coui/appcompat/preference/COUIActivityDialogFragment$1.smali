.class Lcom/coui/appcompat/preference/COUIActivityDialogFragment$1;
.super Landroidx/appcompat/app/AppCompatDialog;
.source "COUIActivityDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/preference/COUIActivityDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/preference/COUIActivityDialogFragment;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/preference/COUIActivityDialogFragment;Landroid/content/Context;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/preference/COUIActivityDialogFragment;
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I

    .line 83
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$1;->this$0:Lcom/coui/appcompat/preference/COUIActivityDialogFragment;

    invoke-direct {p0, p2, p3}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 86
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$1;->dismiss()V

    .line 88
    const/4 v0, 0x1

    return v0

    .line 90
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatDialog;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
