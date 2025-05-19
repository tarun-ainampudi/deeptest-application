.class Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView$2;
.super Landroid/view/View$AccessibilityDelegate;
.source "COUIKeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;

    .line 129
    iput-object p1, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView$2;->this$0:Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 132
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 133
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView$2;->this$0:Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;

    invoke-static {v0}, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->access$100(Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView$2;->this$0:Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;

    invoke-static {v0}, Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;->access$100(Lcom/coui/appcompat/widget/keyboard/COUIKeyboardView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 136
    :cond_0
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 137
    return-void
.end method
