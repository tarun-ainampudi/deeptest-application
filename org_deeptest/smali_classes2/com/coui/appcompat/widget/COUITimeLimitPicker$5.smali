.class Lcom/coui/appcompat/widget/COUITimeLimitPicker$5;
.super Ljava/lang/Object;
.source "COUITimeLimitPicker.java"

# interfaces
.implements Lcom/coui/appcompat/widget/COUINumberPicker$OnValueChangeListener;


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

    .line 168
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker$5;->this$0:Lcom/coui/appcompat/widget/COUITimeLimitPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/coui/appcompat/widget/COUINumberPicker;II)V
    .locals 2
    .param p1, "picker"    # Lcom/coui/appcompat/widget/COUINumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .line 171
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->requestFocus()Z

    .line 172
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker$5;->this$0:Lcom/coui/appcompat/widget/COUITimeLimitPicker;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker$5;->this$0:Lcom/coui/appcompat/widget/COUITimeLimitPicker;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->access$100(Lcom/coui/appcompat/widget/COUITimeLimitPicker;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->access$102(Lcom/coui/appcompat/widget/COUITimeLimitPicker;Z)Z

    .line 173
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker$5;->this$0:Lcom/coui/appcompat/widget/COUITimeLimitPicker;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->access$200(Lcom/coui/appcompat/widget/COUITimeLimitPicker;)V

    .line 174
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker$5;->this$0:Lcom/coui/appcompat/widget/COUITimeLimitPicker;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->access$000(Lcom/coui/appcompat/widget/COUITimeLimitPicker;)V

    .line 175
    return-void
.end method
