.class Lcom/coui/appcompat/widget/COUITimePicker$Format;
.super Ljava/lang/Object;
.source "COUITimePicker.java"

# interfaces
.implements Lcom/coui/appcompat/widget/COUINumberPicker$Formatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUITimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Format"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/COUITimePicker;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUITimePicker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUITimePicker;

    .line 444
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUITimePicker$Format;->this$0:Lcom/coui/appcompat/widget/COUITimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public format(I)Ljava/lang/String;
    .locals 5
    .param p1, "arg0"    # I

    .line 448
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker$Format;->this$0:Lcom/coui/appcompat/widget/COUITimePicker;

    invoke-static {v0, p1}, Lcom/coui/appcompat/widget/COUITimePicker;->access$700(Lcom/coui/appcompat/widget/COUITimePicker;I)Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITimePicker$Format;->this$0:Lcom/coui/appcompat/widget/COUITimePicker;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUITimePicker;->access$800(Lcom/coui/appcompat/widget/COUITimePicker;)[Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, p1, -0x1

    aput-object v0, v1, v2

    .line 450
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITimePicker$Format;->this$0:Lcom/coui/appcompat/widget/COUITimePicker;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUITimePicker;->access$900(Lcom/coui/appcompat/widget/COUITimePicker;)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 451
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITimePicker$Format;->this$0:Lcom/coui/appcompat/widget/COUITimePicker;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUITimePicker;->access$1000(Lcom/coui/appcompat/widget/COUITimePicker;)[Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, p1, -0x1

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUITimePicker$Format;->this$0:Lcom/coui/appcompat/widget/COUITimePicker;

    invoke-static {v3}, Lcom/coui/appcompat/widget/COUITimePicker;->access$1100(Lcom/coui/appcompat/widget/COUITimePicker;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 452
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITimePicker$Format;->this$0:Lcom/coui/appcompat/widget/COUITimePicker;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUITimePicker;->access$1000(Lcom/coui/appcompat/widget/COUITimePicker;)[Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    return-object v1

    .line 454
    :cond_0
    const v1, 0x8001a

    .line 455
    .local v1, "flags":I
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITimePicker$Format;->this$0:Lcom/coui/appcompat/widget/COUITimePicker;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUITimePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUITimePicker$Format;->this$0:Lcom/coui/appcompat/widget/COUITimePicker;

    invoke-static {v3}, Lcom/coui/appcompat/widget/COUITimePicker;->access$1200(Lcom/coui/appcompat/widget/COUITimePicker;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v2, v3, v4, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
