.class Lcom/coui/appcompat/widget/COUITimePicker$2;
.super Ljava/lang/Object;
.source "COUITimePicker.java"

# interfaces
.implements Lcom/coui/appcompat/widget/COUINumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/COUITimePicker;->getTimePicker()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/COUITimePicker;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUITimePicker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUITimePicker;

    .line 347
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUITimePicker$2;->this$0:Lcom/coui/appcompat/widget/COUITimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/coui/appcompat/widget/COUINumberPicker;II)V
    .locals 5
    .param p1, "arg0"    # Lcom/coui/appcompat/widget/COUINumberPicker;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .line 350
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker$2;->this$0:Lcom/coui/appcompat/widget/COUITimePicker;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUITimePicker;->access$300(Lcom/coui/appcompat/widget/COUITimePicker;)Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0xc

    const/16 v3, 0xb

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker$2;->this$0:Lcom/coui/appcompat/widget/COUITimePicker;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUITimePicker;->access$000(Lcom/coui/appcompat/widget/COUITimePicker;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker$2;->this$0:Lcom/coui/appcompat/widget/COUITimePicker;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUITimePicker;->access$000(Lcom/coui/appcompat/widget/COUITimePicker;)I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 353
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->getValue()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 354
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker$2;->this$0:Lcom/coui/appcompat/widget/COUITimePicker;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUITimePicker;->access$100(Lcom/coui/appcompat/widget/COUITimePicker;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->getValue()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    goto :goto_1

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker$2;->this$0:Lcom/coui/appcompat/widget/COUITimePicker;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUITimePicker;->access$100(Lcom/coui/appcompat/widget/COUITimePicker;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    goto :goto_1

    .line 351
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker$2;->this$0:Lcom/coui/appcompat/widget/COUITimePicker;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUITimePicker;->access$100(Lcom/coui/appcompat/widget/COUITimePicker;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->getValue()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 359
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker$2;->this$0:Lcom/coui/appcompat/widget/COUITimePicker;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUITimePicker;->access$300(Lcom/coui/appcompat/widget/COUITimePicker;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 360
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->getValue()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 361
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker$2;->this$0:Lcom/coui/appcompat/widget/COUITimePicker;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITimePicker$2;->this$0:Lcom/coui/appcompat/widget/COUITimePicker;

    invoke-static {v2}, Lcom/coui/appcompat/widget/COUITimePicker;->access$000(Lcom/coui/appcompat/widget/COUITimePicker;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUITimePicker;->access$002(Lcom/coui/appcompat/widget/COUITimePicker;I)I

    .line 362
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker$2;->this$0:Lcom/coui/appcompat/widget/COUITimePicker;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUITimePicker;->access$400(Lcom/coui/appcompat/widget/COUITimePicker;)Lcom/coui/appcompat/widget/COUINumberPicker;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITimePicker$2;->this$0:Lcom/coui/appcompat/widget/COUITimePicker;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUITimePicker;->access$000(Lcom/coui/appcompat/widget/COUITimePicker;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setValue(I)V

    .line 366
    :cond_4
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker$2;->this$0:Lcom/coui/appcompat/widget/COUITimePicker;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUITimePicker;->access$200(Lcom/coui/appcompat/widget/COUITimePicker;)Lcom/coui/appcompat/widget/COUITimePicker$OnTimeChangeListener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 367
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker$2;->this$0:Lcom/coui/appcompat/widget/COUITimePicker;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUITimePicker;->access$200(Lcom/coui/appcompat/widget/COUITimePicker;)Lcom/coui/appcompat/widget/COUITimePicker$OnTimeChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITimePicker$2;->this$0:Lcom/coui/appcompat/widget/COUITimePicker;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITimePicker$2;->this$0:Lcom/coui/appcompat/widget/COUITimePicker;

    invoke-static {v2}, Lcom/coui/appcompat/widget/COUITimePicker;->access$100(Lcom/coui/appcompat/widget/COUITimePicker;)Ljava/util/Calendar;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/coui/appcompat/widget/COUITimePicker$OnTimeChangeListener;->onTimeChange(Landroid/view/View;Ljava/util/Calendar;)V

    .line 369
    :cond_5
    return-void
.end method
