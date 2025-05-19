.class Lcom/coui/appcompat/widget/COUITimePicker$4;
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

    .line 416
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUITimePicker$4;->this$0:Lcom/coui/appcompat/widget/COUITimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/coui/appcompat/widget/COUINumberPicker;II)V
    .locals 4
    .param p1, "arg0"    # Lcom/coui/appcompat/widget/COUINumberPicker;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .line 419
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker$4;->this$0:Lcom/coui/appcompat/widget/COUITimePicker;

    invoke-virtual {p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->getValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUITimePicker;->access$600(Lcom/coui/appcompat/widget/COUITimePicker;I)Ljava/util/Date;

    move-result-object v0

    .line 421
    .local v0, "pickeddate":Ljava/util/Date;
    if-eqz v0, :cond_0

    .line 422
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITimePicker$4;->this$0:Lcom/coui/appcompat/widget/COUITimePicker;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUITimePicker;->access$100(Lcom/coui/appcompat/widget/COUITimePicker;)Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 423
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITimePicker$4;->this$0:Lcom/coui/appcompat/widget/COUITimePicker;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUITimePicker;->access$100(Lcom/coui/appcompat/widget/COUITimePicker;)Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 424
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITimePicker$4;->this$0:Lcom/coui/appcompat/widget/COUITimePicker;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUITimePicker;->access$100(Lcom/coui/appcompat/widget/COUITimePicker;)Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v3

    add-int/lit16 v3, v3, 0x76c

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 425
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITimePicker$4;->this$0:Lcom/coui/appcompat/widget/COUITimePicker;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUITimePicker;->access$200(Lcom/coui/appcompat/widget/COUITimePicker;)Lcom/coui/appcompat/widget/COUITimePicker$OnTimeChangeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 426
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITimePicker$4;->this$0:Lcom/coui/appcompat/widget/COUITimePicker;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUITimePicker;->access$200(Lcom/coui/appcompat/widget/COUITimePicker;)Lcom/coui/appcompat/widget/COUITimePicker$OnTimeChangeListener;

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITimePicker$4;->this$0:Lcom/coui/appcompat/widget/COUITimePicker;

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUITimePicker$4;->this$0:Lcom/coui/appcompat/widget/COUITimePicker;

    invoke-static {v3}, Lcom/coui/appcompat/widget/COUITimePicker;->access$100(Lcom/coui/appcompat/widget/COUITimePicker;)Ljava/util/Calendar;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/coui/appcompat/widget/COUITimePicker$OnTimeChangeListener;->onTimeChange(Landroid/view/View;Ljava/util/Calendar;)V

    .line 429
    :cond_0
    return-void
.end method
