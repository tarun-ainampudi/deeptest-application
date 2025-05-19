.class Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$9$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "COUIBottomSheetDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$9;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$9;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$9;)V
    .locals 0
    .param p1, "this$1"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$9;

    .line 919
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$9$1;->this$1:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$9;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 929
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$9$1;->this$1:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$9;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$9;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->access$900(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 930
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$9$1;->this$1:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$9;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$9;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->access$900(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$9$1;->this$1:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$9;

    iget-object v1, v1, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$9;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-static {v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->access$1100(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 932
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 922
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$9$1;->this$1:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$9;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$9;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->access$1600(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$9$1;->this$1:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$9;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$9;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->access$1600(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 923
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$9$1;->this$1:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$9;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$9;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->access$1600(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetBehavior;->setPanelState(I)V

    .line 925
    :cond_0
    return-void
.end method
