.class Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$4;
.super Ljava/lang/Object;
.source "COUIGuideBehavior.java"

# interfaces
.implements Landroidx/core/view/accessibility/AccessibilityViewCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->addAccessibilityActionForState(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    .line 1844
    .local p0, "this":Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$4;, "Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$4;"
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$4;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    iput p2, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$4;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public perform(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "arguments"    # Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1847
    .local p0, "this":Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$4;, "Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$4;"
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$4;->this$0:Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;

    iget v1, p0, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior$4;->val$state:I

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/panel/COUIGuideBehavior;->setState(I)V

    .line 1848
    const/4 v0, 0x1

    return v0
.end method
