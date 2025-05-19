.class Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$AnimSetListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "COUISpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimSetListener"
.end annotation


# instance fields
.field private final mPopup:Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;

.field final synthetic this$1:Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;)V
    .locals 0
    .param p2, "popup"    # Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;

    .line 1164
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$AnimSetListener;->this$1:Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1165
    iput-object p2, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$AnimSetListener;->mPopup:Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;

    .line 1166
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 1170
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$AnimSetListener;->this$1:Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;

    iget-object v0, v0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->this$0:Lcom/coui/appcompat/widget/COUISpinner;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUISpinner;->access$1802(Lcom/coui/appcompat/widget/COUISpinner;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 1171
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$AnimSetListener;->mPopup:Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;

    if-eqz v0, :cond_0

    .line 1172
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$AnimSetListener;->mPopup:Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/popupwindow/COUIPopupWindow;->superDismiss()V

    .line 1174
    :cond_0
    return-void
.end method
