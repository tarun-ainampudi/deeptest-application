.class Lcom/coui/appcompat/widget/COUILunarDatePicker$1;
.super Ljava/lang/Object;
.source "COUILunarDatePicker.java"

# interfaces
.implements Lcom/coui/appcompat/widget/COUINumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/COUILunarDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/COUILunarDatePicker;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUILunarDatePicker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUILunarDatePicker;

    .line 153
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$1;->this$0:Lcom/coui/appcompat/widget/COUILunarDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/coui/appcompat/widget/COUINumberPicker;II)V
    .locals 8
    .param p1, "picker"    # Lcom/coui/appcompat/widget/COUINumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .line 155
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$1;->this$0:Lcom/coui/appcompat/widget/COUILunarDatePicker;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->access$100(Lcom/coui/appcompat/widget/COUILunarDatePicker;)Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$1;->this$0:Lcom/coui/appcompat/widget/COUILunarDatePicker;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->access$000(Lcom/coui/appcompat/widget/COUILunarDatePicker;)Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->setWith(Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;)V

    .line 156
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$1;->this$0:Lcom/coui/appcompat/widget/COUILunarDatePicker;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->access$100(Lcom/coui/appcompat/widget/COUILunarDatePicker;)Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result v0

    .line 157
    .local v0, "gregorianYear":I
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$1;->this$0:Lcom/coui/appcompat/widget/COUILunarDatePicker;

    invoke-static {v2}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->access$100(Lcom/coui/appcompat/widget/COUILunarDatePicker;)Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result v2

    add-int/2addr v2, v1

    .line 158
    .local v2, "gregorianMonth":I
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$1;->this$0:Lcom/coui/appcompat/widget/COUILunarDatePicker;

    invoke-static {v4}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->access$100(Lcom/coui/appcompat/widget/COUILunarDatePicker;)Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result v4

    .line 159
    .local v4, "gregorianDay":I
    invoke-static {v0, v2, v4}, Lcom/coui/appcompat/widget/COUILunarUtil;->calculateLunarByGregorian(III)[I

    move-result-object v6

    .line 163
    .local v6, "lunarDates":[I
    iget-object v7, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$1;->this$0:Lcom/coui/appcompat/widget/COUILunarDatePicker;

    invoke-static {v7}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->access$200(Lcom/coui/appcompat/widget/COUILunarDatePicker;)Lcom/coui/appcompat/widget/COUINumberPicker;

    move-result-object v7

    if-ne p1, v7, :cond_0

    .line 164
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$1;->this$0:Lcom/coui/appcompat/widget/COUILunarDatePicker;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->access$100(Lcom/coui/appcompat/widget/COUILunarDatePicker;)Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    move-result-object v1

    invoke-virtual {v1, v5, p2, p3}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->change(III)V

    goto :goto_0

    .line 165
    :cond_0
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$1;->this$0:Lcom/coui/appcompat/widget/COUILunarDatePicker;

    invoke-static {v5}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->access$300(Lcom/coui/appcompat/widget/COUILunarDatePicker;)Lcom/coui/appcompat/widget/COUINumberPicker;

    move-result-object v5

    if-ne p1, v5, :cond_1

    .line 166
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$1;->this$0:Lcom/coui/appcompat/widget/COUILunarDatePicker;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->access$100(Lcom/coui/appcompat/widget/COUILunarDatePicker;)Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    move-result-object v1

    invoke-virtual {v1, v3, p2, p3}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->change(III)V

    goto :goto_0

    .line 167
    :cond_1
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$1;->this$0:Lcom/coui/appcompat/widget/COUILunarDatePicker;

    invoke-static {v3}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->access$400(Lcom/coui/appcompat/widget/COUILunarDatePicker;)Lcom/coui/appcompat/widget/COUINumberPicker;

    move-result-object v3

    if-ne p1, v3, :cond_2

    .line 168
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$1;->this$0:Lcom/coui/appcompat/widget/COUILunarDatePicker;

    invoke-static {v3}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->access$100(Lcom/coui/appcompat/widget/COUILunarDatePicker;)Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    move-result-object v3

    invoke-virtual {v3, v1, p2, p3}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->change(III)V

    .line 173
    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$1;->this$0:Lcom/coui/appcompat/widget/COUILunarDatePicker;

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$1;->this$0:Lcom/coui/appcompat/widget/COUILunarDatePicker;

    invoke-static {v3}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->access$100(Lcom/coui/appcompat/widget/COUILunarDatePicker;)Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->access$500(Lcom/coui/appcompat/widget/COUILunarDatePicker;Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;)V

    .line 174
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$1;->this$0:Lcom/coui/appcompat/widget/COUILunarDatePicker;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->access$600(Lcom/coui/appcompat/widget/COUILunarDatePicker;)V

    .line 175
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$1;->this$0:Lcom/coui/appcompat/widget/COUILunarDatePicker;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->access$700(Lcom/coui/appcompat/widget/COUILunarDatePicker;)V

    .line 176
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker$1;->this$0:Lcom/coui/appcompat/widget/COUILunarDatePicker;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->access$800(Lcom/coui/appcompat/widget/COUILunarDatePicker;)V

    .line 177
    return-void

    .line 170
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method
