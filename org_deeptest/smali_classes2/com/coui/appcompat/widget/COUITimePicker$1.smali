.class Lcom/coui/appcompat/widget/COUITimePicker$1;
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

    .line 335
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUITimePicker$1;->this$0:Lcom/coui/appcompat/widget/COUITimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/coui/appcompat/widget/COUINumberPicker;II)V
    .locals 3
    .param p1, "arg0"    # Lcom/coui/appcompat/widget/COUINumberPicker;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .line 338
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker$1;->this$0:Lcom/coui/appcompat/widget/COUITimePicker;

    invoke-virtual {p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->getValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUITimePicker;->access$002(Lcom/coui/appcompat/widget/COUITimePicker;I)I

    .line 340
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker$1;->this$0:Lcom/coui/appcompat/widget/COUITimePicker;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUITimePicker;->access$100(Lcom/coui/appcompat/widget/COUITimePicker;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->getValue()I

    move-result v1

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 341
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker$1;->this$0:Lcom/coui/appcompat/widget/COUITimePicker;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUITimePicker;->access$200(Lcom/coui/appcompat/widget/COUITimePicker;)Lcom/coui/appcompat/widget/COUITimePicker$OnTimeChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker$1;->this$0:Lcom/coui/appcompat/widget/COUITimePicker;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUITimePicker;->access$200(Lcom/coui/appcompat/widget/COUITimePicker;)Lcom/coui/appcompat/widget/COUITimePicker$OnTimeChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITimePicker$1;->this$0:Lcom/coui/appcompat/widget/COUITimePicker;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITimePicker$1;->this$0:Lcom/coui/appcompat/widget/COUITimePicker;

    invoke-static {v2}, Lcom/coui/appcompat/widget/COUITimePicker;->access$100(Lcom/coui/appcompat/widget/COUITimePicker;)Ljava/util/Calendar;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/coui/appcompat/widget/COUITimePicker$OnTimeChangeListener;->onTimeChange(Landroid/view/View;Ljava/util/Calendar;)V

    .line 344
    :cond_0
    return-void
.end method
