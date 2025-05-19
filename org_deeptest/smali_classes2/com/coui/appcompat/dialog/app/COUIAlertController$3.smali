.class Lcom/coui/appcompat/dialog/app/COUIAlertController$3;
.super Ljava/lang/Object;
.source "COUIAlertController.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/app/COUIAlertController;->updateWindowAttributes()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/dialog/app/COUIAlertController;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/dialog/app/COUIAlertController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/dialog/app/COUIAlertController;

    .line 179
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$3;->this$0:Lcom/coui/appcompat/dialog/app/COUIAlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/view/WindowInsets;

    .line 182
    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0, p2}, Landroid/view/WindowInsets$Builder;-><init>(Landroid/view/WindowInsets;)V

    .line 183
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    sget-object v2, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 182
    invoke-virtual {v0, v1, v2}, Landroid/view/WindowInsets$Builder;->setInsets(ILandroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Landroid/view/WindowInsets$Builder;->build()Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method
