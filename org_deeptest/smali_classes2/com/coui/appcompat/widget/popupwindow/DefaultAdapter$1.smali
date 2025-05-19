.class Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "DefaultAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;

    .line 68
    iput-object p1, p0, Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter$1;->this$0:Lcom/coui/appcompat/widget/popupwindow/DefaultAdapter;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 71
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 72
    const-string v0, ""

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 73
    return-void
.end method
