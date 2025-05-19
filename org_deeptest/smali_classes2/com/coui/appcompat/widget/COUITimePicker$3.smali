.class Lcom/coui/appcompat/widget/COUITimePicker$3;
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

    .line 393
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUITimePicker$3;->this$0:Lcom/coui/appcompat/widget/COUITimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/coui/appcompat/widget/COUINumberPicker;II)V
    .locals 3
    .param p1, "arg0"    # Lcom/coui/appcompat/widget/COUINumberPicker;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .line 396
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker$3;->this$0:Lcom/coui/appcompat/widget/COUITimePicker;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUITimePicker;->access$500(Lcom/coui/appcompat/widget/COUITimePicker;)Z

    move-result v0

    const/16 v1, 0xc

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker$3;->this$0:Lcom/coui/appcompat/widget/COUITimePicker;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUITimePicker;->access$100(Lcom/coui/appcompat/widget/COUITimePicker;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->getValue()I

    move-result v2

    mul-int/lit8 v2, v2, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker$3;->this$0:Lcom/coui/appcompat/widget/COUITimePicker;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUITimePicker;->access$100(Lcom/coui/appcompat/widget/COUITimePicker;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 402
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker$3;->this$0:Lcom/coui/appcompat/widget/COUITimePicker;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUITimePicker;->access$200(Lcom/coui/appcompat/widget/COUITimePicker;)Lcom/coui/appcompat/widget/COUITimePicker$OnTimeChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 403
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker$3;->this$0:Lcom/coui/appcompat/widget/COUITimePicker;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUITimePicker;->access$200(Lcom/coui/appcompat/widget/COUITimePicker;)Lcom/coui/appcompat/widget/COUITimePicker$OnTimeChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITimePicker$3;->this$0:Lcom/coui/appcompat/widget/COUITimePicker;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITimePicker$3;->this$0:Lcom/coui/appcompat/widget/COUITimePicker;

    invoke-static {v2}, Lcom/coui/appcompat/widget/COUITimePicker;->access$100(Lcom/coui/appcompat/widget/COUITimePicker;)Ljava/util/Calendar;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/coui/appcompat/widget/COUITimePicker$OnTimeChangeListener;->onTimeChange(Landroid/view/View;Ljava/util/Calendar;)V

    .line 405
    :cond_1
    return-void
.end method
