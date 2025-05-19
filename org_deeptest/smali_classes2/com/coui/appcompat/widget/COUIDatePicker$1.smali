.class Lcom/coui/appcompat/widget/COUIDatePicker$1;
.super Ljava/lang/Object;
.source "COUIDatePicker.java"

# interfaces
.implements Lcom/coui/appcompat/widget/COUINumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/COUIDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/COUIDatePicker;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUIDatePicker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUIDatePicker;

    .line 153
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIDatePicker$1;->this$0:Lcom/coui/appcompat/widget/COUIDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/coui/appcompat/widget/COUINumberPicker;II)V
    .locals 2
    .param p1, "picker"    # Lcom/coui/appcompat/widget/COUINumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .line 155
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$1;->this$0:Lcom/coui/appcompat/widget/COUIDatePicker;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIDatePicker;->access$100(Lcom/coui/appcompat/widget/COUIDatePicker;)Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIDatePicker$1;->this$0:Lcom/coui/appcompat/widget/COUIDatePicker;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUIDatePicker;->access$000(Lcom/coui/appcompat/widget/COUIDatePicker;)Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->setWith(Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;)V

    .line 157
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$1;->this$0:Lcom/coui/appcompat/widget/COUIDatePicker;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIDatePicker;->access$200(Lcom/coui/appcompat/widget/COUIDatePicker;)Lcom/coui/appcompat/widget/COUINumberPicker;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$1;->this$0:Lcom/coui/appcompat/widget/COUIDatePicker;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIDatePicker;->access$100(Lcom/coui/appcompat/widget/COUIDatePicker;)Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->set(II)V

    goto :goto_0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$1;->this$0:Lcom/coui/appcompat/widget/COUIDatePicker;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIDatePicker;->access$300(Lcom/coui/appcompat/widget/COUIDatePicker;)Lcom/coui/appcompat/widget/COUINumberPicker;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$1;->this$0:Lcom/coui/appcompat/widget/COUIDatePicker;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIDatePicker;->access$100(Lcom/coui/appcompat/widget/COUIDatePicker;)Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p3}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->set(II)V

    goto :goto_0

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$1;->this$0:Lcom/coui/appcompat/widget/COUIDatePicker;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIDatePicker;->access$400(Lcom/coui/appcompat/widget/COUIDatePicker;)Lcom/coui/appcompat/widget/COUINumberPicker;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 162
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$1;->this$0:Lcom/coui/appcompat/widget/COUIDatePicker;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIDatePicker;->access$100(Lcom/coui/appcompat/widget/COUIDatePicker;)Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->set(II)V

    .line 167
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$1;->this$0:Lcom/coui/appcompat/widget/COUIDatePicker;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIDatePicker$1;->this$0:Lcom/coui/appcompat/widget/COUIDatePicker;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUIDatePicker;->access$100(Lcom/coui/appcompat/widget/COUIDatePicker;)Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUIDatePicker;->access$500(Lcom/coui/appcompat/widget/COUIDatePicker;Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;)V

    .line 168
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$1;->this$0:Lcom/coui/appcompat/widget/COUIDatePicker;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIDatePicker;->access$600(Lcom/coui/appcompat/widget/COUIDatePicker;)V

    .line 169
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$1;->this$0:Lcom/coui/appcompat/widget/COUIDatePicker;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIDatePicker;->access$700(Lcom/coui/appcompat/widget/COUIDatePicker;)V

    .line 170
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker$1;->this$0:Lcom/coui/appcompat/widget/COUIDatePicker;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIDatePicker;->access$800(Lcom/coui/appcompat/widget/COUIDatePicker;)V

    .line 171
    return-void

    .line 164
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
