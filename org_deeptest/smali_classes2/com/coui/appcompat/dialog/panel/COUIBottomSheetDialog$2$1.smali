.class Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$2$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "COUIBottomSheetDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$2;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$2;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$2;

    .line 448
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$2$1;->this$1:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$2;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 451
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$2$1;->this$1:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$2;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog$2;->this$0:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->access$800(Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)V

    .line 452
    return-void
.end method
