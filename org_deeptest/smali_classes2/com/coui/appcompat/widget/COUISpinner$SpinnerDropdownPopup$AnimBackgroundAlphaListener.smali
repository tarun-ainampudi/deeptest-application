.class Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$AnimBackgroundAlphaListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "COUISpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimBackgroundAlphaListener"
.end annotation


# instance fields
.field private final mBackground:Landroid/graphics/drawable/Drawable;

.field private final mEndValue:I

.field final synthetic this$1:Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;Landroid/graphics/drawable/Drawable;I)V
    .locals 0
    .param p2, "background"    # Landroid/graphics/drawable/Drawable;
    .param p3, "endValue"    # I

    .line 1135
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$AnimBackgroundAlphaListener;->this$1:Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1136
    iput-object p2, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$AnimBackgroundAlphaListener;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 1137
    iput p3, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$AnimBackgroundAlphaListener;->mEndValue:I

    .line 1138
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 1142
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$AnimBackgroundAlphaListener;->mBackground:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$AnimBackgroundAlphaListener;->mEndValue:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1143
    return-void
.end method
