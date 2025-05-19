.class Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$5;
.super Landroid/util/IntProperty;
.source "COUISpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;->createBackgroundAnimation(Landroid/graphics/drawable/Drawable;II)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/IntProperty<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;
    .param p2, "x0"    # Ljava/lang/String;

    .line 889
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$5;->this$1:Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup;

    invoke-direct {p0, p2}, Landroid/util/IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/graphics/drawable/Drawable;)Ljava/lang/Integer;
    .locals 1
    .param p1, "object"    # Landroid/graphics/drawable/Drawable;

    .line 897
    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableCompat;->getAlpha(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 889
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$5;->get(Landroid/graphics/drawable/Drawable;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Landroid/graphics/drawable/Drawable;I)V
    .locals 0
    .param p1, "object"    # Landroid/graphics/drawable/Drawable;
    .param p2, "value"    # I

    .line 892
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 893
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;I)V
    .locals 0

    .line 889
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/widget/COUISpinner$SpinnerDropdownPopup$5;->setValue(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method
