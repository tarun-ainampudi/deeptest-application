.class Lcom/coui/appcompat/preference/COUIActivityDialogFragment$2;
.super Ljava/lang/Object;
.source "COUIActivityDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
.method constructor <init>(Lcom/coui/appcompat/preference/COUIActivityDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/preference/COUIActivityDialogFragment;

    .line 132
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$2;->this$0:Lcom/coui/appcompat/preference/COUIActivityDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 135
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$2;->this$0:Lcom/coui/appcompat/preference/COUIActivityDialogFragment;

    invoke-static {v0}, Lcom/coui/appcompat/preference/COUIActivityDialogFragment;->access$000(Lcom/coui/appcompat/preference/COUIActivityDialogFragment;)Landroidx/appcompat/app/AppCompatDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 136
    return-void
.end method
