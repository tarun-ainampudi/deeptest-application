.class Lcom/coui/appcompat/widget/COUITimeLimitPicker$4;
.super Ljava/lang/Object;
.source "COUITimeLimitPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/COUITimeLimitPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/COUITimeLimitPicker;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUITimeLimitPicker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUITimeLimitPicker;

    .line 154
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker$4;->this$0:Lcom/coui/appcompat/widget/COUITimeLimitPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "button"    # Landroid/view/View;

    .line 157
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 158
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker$4;->this$0:Lcom/coui/appcompat/widget/COUITimeLimitPicker;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker$4;->this$0:Lcom/coui/appcompat/widget/COUITimeLimitPicker;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->access$100(Lcom/coui/appcompat/widget/COUITimeLimitPicker;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->access$102(Lcom/coui/appcompat/widget/COUITimeLimitPicker;Z)Z

    .line 159
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker$4;->this$0:Lcom/coui/appcompat/widget/COUITimeLimitPicker;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->access$200(Lcom/coui/appcompat/widget/COUITimeLimitPicker;)V

    .line 160
    return-void
.end method
