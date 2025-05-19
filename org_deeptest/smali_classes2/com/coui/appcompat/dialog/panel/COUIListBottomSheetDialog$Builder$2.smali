.class Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder$2;
.super Ljava/lang/Object;
.source "COUIListBottomSheetDialog.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->createDialog()Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;

    .line 337
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder$2;->this$0:Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 340
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder$2;->this$0:Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mOnMenuItemClick:Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$OnMenuItemClickListener;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder$2;->this$0:Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;->mOnMenuItemClick:Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$OnMenuItemClickListener;

    invoke-interface {v0}, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$OnMenuItemClickListener;->onSaveItemClick()V

    .line 343
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
